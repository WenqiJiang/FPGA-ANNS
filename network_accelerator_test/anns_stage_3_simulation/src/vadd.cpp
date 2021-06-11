#include <stdio.h>
#include "vadd.hpp"


#define SESSION_NUM 16


template<const int query_num>
void traffic_generation(
    const ap_uint512_t* HBM_in,
    hls::stream<ap_uint<512> >& s_data_in,
    hls::stream<ap_uint<16> >& s_sessionID_in,
    hls::stream<ap_uint<16> >& s_nextRxPacketLength_in) {

    for (int query_id = 0; query_id < query_num; query_id++) {

        s_sessionID_in.write(0);
        s_nextRxPacketLength_in.write(512);

        for (int r_iter = 0; r_iter < 8; r_iter++) {
            s_data_in.write(HBM_in[r_iter]);
        }
    }
}

void network_query_controller_push(
    ap_uint<64> expectedRxByteCnt,
    hls::stream<ap_uint<512> >& s_data_in,
    hls::stream<ap_uint<16> >& s_sessionID_in,
    hls::stream<ap_uint<16> >& s_nextRxPacketLength_in,
    // output
    hls::stream<float> (&s_query_vectors_per_session)[SESSION_NUM],
    hls::stream<int> &s_session_entry, // which FIFO to pull
    hls::stream<ap_uint<16> >& s_sessionID_out
) {

    ap_uint<16> session_ID_array[SESSION_NUM];
    int remaining_floats_in_FIFO[SESSION_NUM]; // how many floats in each FIFO
    for (int i = 0; i < SESSION_NUM; i++) {
        remaining_floats_in_FIFO[i] = 0;
    }

    int existing_session_count = 0; 

    ap_uint<64> rxByteCnt = 0;

    do{
        // WENQI: The length here is in terms of bytes,
        //    hopefully the network stack has handled it 
        //    such that the bytes is always a multiple of 512-bit (64byte)
        ap_uint<16> byte_length = s_nextRxPacketLength_in.read();
        ap_uint<16> session_ID = s_sessionID_in.read();

        // identify which FIFO to write into
        int session_entry = -1;
        bool session_in_array = false;
        for (int i = 0; i < existing_session_count; i++) {
            if (session_ID == session_ID_array[i]) {
                session_entry = i;
                session_in_array = true;
                break;
            }
        }
        if (!session_in_array) {
            session_entry = existing_session_count;
            session_ID_array[session_entry] = session_ID;
            existing_session_count++;
        }

        // byte counts
        rxByteCnt = rxByteCnt + byte_length;
        int pkt_len = byte_length / 64; // 1 512 bit packet = 64 bytes
        int float_len = pkt_len * 16; // 1 float = 4 bytes

        // should add counter first, send enable signal out, then write 
        //     to prevent deadlock in the case that the puller doesnt know it should pull without the signal
        remaining_floats_in_FIFO[session_entry] += float_len;
        if (remaining_floats_in_FIFO[session_entry] >= 128) {
            s_session_entry.write(session_entry);
            s_sessionID_out.write(session_ID);
            remaining_floats_in_FIFO[session_entry] -= 128;
        }

        // write data to the respective FIFO
        for (int j = 0; j < pkt_len; j++) {
            ap_uint<512> pkt_data = s_data_in.read();
            for (int k = 0; k < 16; k++) {
                ap_uint<32> tmp = pkt_data.range(31 + 32 * k, 32 * k);
                float content = *((float*) (&tmp));
                s_query_vectors_per_session[session_entry].write(content);
            }
        }
    } while(rxByteCnt < expectedRxByteCnt);

}

template<const int query_num>
void network_query_controller_pull(
    // input
    hls::stream<float> (&s_query_vectors_per_session)[SESSION_NUM],
    hls::stream<int> &s_session_entry, 
    // output
    hls::stream<float>& s_query_vectors
) {

    int processed_query_num = 0;
    int ele_per_query_counter = 0;
    int session_entry = 0;
    bool consume_data = false; // whether to read data FIFO
    bool session_lock = false;  // read from one session consecutively


    do {

        if (!s_session_entry.empty() & !session_lock) {
            session_entry = s_session_entry.read();
            consume_data = true;
            session_lock = true;
        }

        // read input & write output
        if (consume_data && (ele_per_query_counter < 128)) {
            if (!s_query_vectors_per_session[session_entry].empty()) {
                s_query_vectors.write(s_query_vectors_per_session[session_entry].read());
                ele_per_query_counter++;
            }
        }

        if (ele_per_query_counter == 128) {
            ele_per_query_counter = 0;
            consume_data = false;
            session_lock = false;
            processed_query_num++;
        }

    } while (processed_query_num < query_num);   
}


template<const int query_num>
void consume_input(
    hls::stream<float>& s_query_vectors,
    hls::stream<dist_cell_ID_t> &s_merged_cell_distance) {

    for (int query_id = 0; query_id < query_num; query_id++) {

        dist_cell_ID_t out;

        for (int r_iter = 0; r_iter < D; r_iter++) {
            out.dist = s_query_vectors.read();
        }

        for (int w_iter = 0; w_iter < NLIST; w_iter++) {
            s_merged_cell_distance.write(out);
        }
    }
}

template<const int query_num>
void select_Voronoi_cell_forward(
    hls::stream<dist_cell_ID_t> &s_merged_cell_distance,
    hls::stream<dist_cell_ID_t> &s_selected_distance_cell_ID) {


    for (int query_id = 0; query_id < query_num; query_id++) {

        dist_cell_ID_t out;
        for (int r_iter = 0; r_iter < NLIST; r_iter++) {
            out = s_merged_cell_distance.read();
        }

        // TODO: dependency
        // TODO: test before/after functionality
        // 17
        for (int w_iter = 0; w_iter < NPROBE; w_iter++) {
            s_selected_distance_cell_ID.write(out);
        }
    }
}

template<const int query_num>
void consume_stage_3(
    hls::stream<dist_cell_ID_t> &s_selected_distance_cell_ID,
    hls::stream<single_PQ_result> &s_output) {

    for (int query_id = 0; query_id < query_num; query_id++) {

        single_PQ_result out;
        out.vec_ID = 0;
        out.dist = 0;

        dist_cell_ID_t tmp;
        for (int r_iter = 0; r_iter < NPROBE; r_iter++) {
            tmp = s_selected_distance_cell_ID.read();
        }

        out.dist = tmp.dist;

        for (int w_iter = 0; w_iter < PRIORITY_QUEUE_LEN; w_iter++) {
            s_output.write(out);
        }
    }
}

template<const int query_num>
void network_output_converter(
    hls::stream<single_PQ_result> &s_tuple_results, 
    hls::stream<ap_uint512_t>& s_network_results) {

    // Output format per query:
    //   pkg0 -> vector IDs
    //   pkg1 -> distances

    // Note! Here PRIORITY_QUEUE_LEN is hard-coded as 10
    int send_buffer_vec_ID[PRIORITY_QUEUE_LEN];
    float send_buffer_dist[PRIORITY_QUEUE_LEN];
#pragma HLS array_partition variable=send_buffer_vec_ID complete
#pragma HLS array_partition variable=send_buffer_dist complete

    int processed_query_num = 0;
    int out_per_query_counter = 0;

    do {

        if ((!s_tuple_results.empty()) && (out_per_query_counter < PRIORITY_QUEUE_LEN)) {
            single_PQ_result reg = s_tuple_results.read();
            send_buffer_vec_ID[out_per_query_counter] = reg.vec_ID;
            send_buffer_dist[out_per_query_counter] = reg.dist;
            out_per_query_counter++;
        }

        if (out_per_query_counter == 10) {
            ap_uint<512> pkg_vec_ID = 0;
            for (int i = 0; i < PRIORITY_QUEUE_LEN; i++) {
#pragma HLS UNROLL
                int vec_ID_reg = send_buffer_vec_ID[i];
                ap_uint<32> tmp = *((ap_uint<32>*) (&vec_ID_reg));
                pkg_vec_ID.range((i + 1) * 32 - 1, i * 32) = tmp;
            }

            ap_uint<512> pkg_dist = 0;
            for (int i = 0; i < PRIORITY_QUEUE_LEN; i++) {
#pragma HLS UNROLL
                float dist_reg = send_buffer_dist[i];
                ap_uint<32> tmp = *((ap_uint<32>*) (&dist_reg));
                pkg_dist.range((i + 1) * 32 - 1, i * 32) = tmp;
            }

            s_network_results.write(pkg_vec_ID);
            s_network_results.write(pkg_dist);

            out_per_query_counter = 0;
            processed_query_num++;
        }

    } while (processed_query_num < query_num);

}


template<const int query_num>
void traffic_consume(
    ap_uint512_t* HBM_out,
    hls::stream<ap_uint<512> >& s_network_results,
    hls::stream<ap_uint<16> >& s_sessionID_out) {

    for (int query_id = 0; query_id < query_num; query_id++) {

        s_sessionID_out.read();

        for (int r_iter = 0; r_iter < 2; r_iter++) {
            HBM_out[r_iter] = s_network_results.read();
        }
    }
}

void vadd(  
    const ap_uint512_t* HBM_in0, 
    // const ap_uint512_t* HBM_in1,
    // const ap_uint512_t* HBM_in2, 
    // const ap_uint512_t* HBM_in3, 
    // const ap_uint512_t* HBM_in4, 
    // const ap_uint512_t* HBM_in5, 
    // const ap_uint512_t* HBM_in6, 
    // const ap_uint512_t* HBM_in7, 
    // const ap_uint512_t* HBM_in8, 
    // const ap_uint512_t* HBM_in9, 
    // const ap_uint512_t* HBM_in10, 
    // const ap_uint512_t* HBM_in11, 
    // const ap_uint512_t* HBM_in12, 
    // const ap_uint512_t* HBM_in13, 
    // const ap_uint512_t* HBM_in14, 
    // const ap_uint512_t* HBM_in15, 
    // const ap_uint512_t* HBM_in16, 
    // const ap_uint512_t* HBM_in17, 
    // const ap_uint512_t* HBM_in18, 
    // const ap_uint512_t* HBM_in19, 
    // const ap_uint512_t* HBM_in20, 
    // HBM21: assigned for HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid
    // const int* HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid, 
    // HBM22: query vectors
    // float* HBM_query_vectors,
    // HBM23: center vector table (Vector_quantizer)
    // float* HBM_vector_quantizer,
    // HBM24: PQ quantizer
    // float* HBM_product_quantizer,
    // HBM25: OPQ Matrix
    // float* HBM_OPQ_matrix,
    // HBM26: output (vector_ID, distance)
    ap_uint512_t* HBM_out
    // const ap_uint512_t* HBM_in22, const ap_uint512_t* HBM_in23, 
    // const ap_uint512_t* HBM_in24, const ap_uint512_t* HBM_in25, 
    // const ap_uint512_t* HBM_in26, const ap_uint512_t* HBM_in27, 
    // const ap_uint512_t* HBM_in28, const ap_uint512_t* HBM_in29, 
    // const ap_uint512_t* HBM_in30, const ap_uint512_t* HBM_in31, 
    // const ap_uint512_t* table_DDR0, const ap_uint512_t* table_DDR1, 
    )
{
#pragma HLS INTERFACE m_axi port=HBM_in0  offset=slave bundle=gmem0
// #pragma HLS INTERFACE m_axi port=HBM_in1  offset=slave bundle=gmem1
// #pragma HLS INTERFACE m_axi port=HBM_in2  offset=slave bundle=gmem2
// #pragma HLS INTERFACE m_axi port=HBM_in3  offset=slave bundle=gmem3
// #pragma HLS INTERFACE m_axi port=HBM_in4  offset=slave bundle=gmem4
// #pragma HLS INTERFACE m_axi port=HBM_in5  offset=slave bundle=gmem5
// #pragma HLS INTERFACE m_axi port=HBM_in6  offset=slave bundle=gmem6
// #pragma HLS INTERFACE m_axi port=HBM_in7  offset=slave bundle=gmem7
// #pragma HLS INTERFACE m_axi port=HBM_in8  offset=slave bundle=gmem8
// #pragma HLS INTERFACE m_axi port=HBM_in9  offset=slave bundle=gmem9
// #pragma HLS INTERFACE m_axi port=HBM_in10  offset=slave bundle=gmem10
// #pragma HLS INTERFACE m_axi port=HBM_in11  offset=slave bundle=gmem11
// #pragma HLS INTERFACE m_axi port=HBM_in12  offset=slave bundle=gmem12
// #pragma HLS INTERFACE m_axi port=HBM_in13  offset=slave bundle=gmem13
// #pragma HLS INTERFACE m_axi port=HBM_in14  offset=slave bundle=gmem14
// #pragma HLS INTERFACE m_axi port=HBM_in15  offset=slave bundle=gmem15
// #pragma HLS INTERFACE m_axi port=HBM_in16  offset=slave bundle=gmem16
// #pragma HLS INTERFACE m_axi port=HBM_in17  offset=slave bundle=gmem17
// #pragma HLS INTERFACE m_axi port=HBM_in18  offset=slave bundle=gmem18
// #pragma HLS INTERFACE m_axi port=HBM_in19  offset=slave bundle=gmem19
// #pragma HLS INTERFACE m_axi port=HBM_in20  offset=slave bundle=gmem20
// #pragma HLS INTERFACE m_axi port=HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid  offset=slave bundle=gmem21
// #pragma HLS INTERFACE m_axi port=HBM_query_vectors  offset=slave bundle=gmem22
// #pragma HLS INTERFACE m_axi port=HBM_vector_quantizer  offset=slave bundle=gmem23
// #pragma HLS INTERFACE m_axi port=HBM_product_quantizer  offset=slave bundle=gmem24
// #pragma HLS INTERFACE m_axi port=HBM_OPQ_matrix  offset=slave bundle=gmem25
// #pragma HLS INTERFACE m_axi port=HBM_in26  offset=slave bundle=gmem26
// #pragma HLS INTERFACE m_axi port=HBM_in27  offset=slave bundle=gmem27
// #pragma HLS INTERFACE m_axi port=HBM_in28  offset=slave bundle=gmem28
// #pragma HLS INTERFACE m_axi port=HBM_in29  offset=slave bundle=gmem29
// #pragma HLS INTERFACE m_axi port=HBM_in30  offset=slave bundle=gmem30
// #pragma HLS INTERFACE m_axi port=HBM_in31  offset=slave bundle=gmem31

// #pragma HLS INTERFACE m_axi port=table_DDR0  offset=slave bundle=gmem32
// #pragma HLS INTERFACE m_axi port=table_DDR1  offset=slave bundle=gmem33

// PLRAM
#pragma HLS INTERFACE m_axi port=HBM_out offset=slave bundle=gmem34

#pragma HLS INTERFACE s_axilite port=HBM_in0  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in1  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in2  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in3  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in4  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in5  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in6  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in7  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in8  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in9  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in10  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in11  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in12  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in13  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in14  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in15  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in16  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in17  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in18  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in19  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in20  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_query_vectors  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_vector_quantizer  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_product_quantizer  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_OPQ_matrix  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in26  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in27  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in28  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in29  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in30  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in31  bundle=control

// #pragma HLS INTERFACE s_axilite port=table_DDR0  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_DDR1  bundle=control

#pragma HLS INTERFACE s_axilite port=HBM_out bundle=control

#pragma HLS INTERFACE s_axilite port=return bundle=control
    
#pragma HLS dataflow



        hls::stream<ap_uint<512> >    s_data_in;
#pragma HLS STREAM variable=s_data_in depth=512

        hls::stream<ap_uint<16> > s_sessionID_in;
#pragma HLS STREAM variable=s_sessionID_in depth=512

        hls::stream<ap_uint<16> > s_nextRxPacketLength_in;
#pragma HLS STREAM variable=s_nextRxPacketLength_in depth=512


        traffic_generation<QUERY_NUM>(
            HBM_in0,
            s_data_in,
            s_sessionID_in,
            s_nextRxPacketLength_in);

        hls::stream<float> s_query_vectors;
#pragma HLS STREAM variable=s_query_vectors depth=512

        hls::stream<ap_uint<16> > s_sessionID_out;
#pragma HLS STREAM variable=s_sessionID_out depth=512


        hls::stream<float> s_query_vectors_per_session[SESSION_NUM];
#pragma HLS STREAM variable=s_query_vectors_per_session depth=512
#pragma HLS array_partition variable=s_query_vectors_per_session complete

        hls::stream<int> s_session_entry;
#pragma HLS STREAM variable=s_session_entry depth=512

        network_query_controller_push(
            // input
            QUERY_NUM * 512,
            s_data_in,
            s_sessionID_in,
            s_nextRxPacketLength_in,
            // output
            s_query_vectors_per_session,
            s_session_entry, // which FIFO to pull
            s_sessionID_out);

        network_query_controller_pull<QUERY_NUM>(
            // input
            s_query_vectors_per_session,
            s_session_entry, 
            // output
            s_query_vectors);


        hls::stream<dist_cell_ID_t> s_merged_cell_distance;
#pragma HLS stream variable=s_merged_cell_distance depth=512
// #pragma HLS resource variable=s_merged_cell_distance core=FIFO_BRAM
        consume_input<QUERY_NUM>(
            s_query_vectors,
            s_merged_cell_distance);

        hls::stream<dist_cell_ID_t> s_selected_distance_cell_ID;
#pragma HLS stream variable=s_selected_distance_cell_ID depth=512
// #pragma HLS resource variable=s_selected_distance_cell_ID core=FIFO_BRAM

        // select_Voronoi_cell(
        //     s_merged_cell_distance,
        //     s_selected_distance_cell_ID);

        select_Voronoi_cell_forward<QUERY_NUM>(
            s_merged_cell_distance,
            s_selected_distance_cell_ID);

        ///////// Debug Consume       /////////

        hls::stream<single_PQ_result> s_output; // the top 10 numbers
#pragma HLS stream variable=s_output depth=512
// #pragma HLS RESOURCE variable=s_output core=FIFO_BRAM

        consume_stage_3<QUERY_NUM>(
            s_selected_distance_cell_ID,
            s_output);

        ///////// Network Send Starts /////////

        hls::stream<ap_uint512_t> s_network_results;
#pragma HLS stream variable=s_network_results depth=512
// #pragma HLS RESOURCE variable=s_output core=FIFO_BRAM

        network_output_converter<QUERY_NUM>(
            s_output, 
            s_network_results);

        traffic_consume<QUERY_NUM>(
            HBM_out,
            s_network_results,
            s_sessionID_out);

}
