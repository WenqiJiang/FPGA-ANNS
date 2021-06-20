#include <stdio.h>
#include "vadd.hpp"

#include "stdio.h"

// #define GUARD
#define FEEDBACK

template<const int query_num>
void load_query_vectors_sing_con(
    // const float* DRAM_query_vector,
    hls::stream<int>& s_control_send,
    hls::stream<float>& s_query_vectors) {

    // 1 st query no need control signal
    for (int d = 0; d < D; d++) {
#pragma HLS pipeline II=1
        float reg = 1;
        s_query_vectors.write(reg);
    }

    // rest query need to wait receiver to finish writing
    for (int query_id = 1; query_id < query_num; query_id++) {

#ifdef FEEDBACK
        int start_send = s_control_send.read();
        if (start_send) {
#endif
            for (int d = 0; d < D; d++) {
#pragma HLS pipeline II=1
                s_query_vectors.write(1);
            }
#ifdef FEEDBACK
        }
#endif
    }
}

void middle_function_single(
    int query_num,
    hls::stream<float>& s_query_vectors,
    hls::stream<single_PQ_result> &s_tuple_results
) {
    for (int query_id = 0; query_id < query_num; query_id++) {

        float acc = 0;
        for (int d = 0; d < D; d++) {
            acc += s_query_vectors.read();
        }

        single_PQ_result out[PRIORITY_QUEUE_LEN];
        for (int w_iter = 0; w_iter < PRIORITY_QUEUE_LEN; w_iter++) {
            out[w_iter].dist = acc;
        }
        for (int w_iter = 0; w_iter < PRIORITY_QUEUE_LEN; w_iter++) {
            s_tuple_results.write(out[w_iter]);
        }
    }
}


void generate_input_scan_controller(
    int query_num,
    hls::stream<float>& s_query_vectors,
    hls::stream<int>& s_searched_cell_id_scan_controller) {


    printf("generate_input_scan_controller starts\n");

    for (int query_id = 0; query_id < query_num; query_id++) {

    	float send_enable = 0;
        for (int d = 0; d < D; d++) {
            send_enable = s_query_vectors.read();
        }
        if (send_enable) {
			for (int nprobe_id = 0; nprobe_id < NPROBE; nprobe_id++) {
				printf("generate_input_scan_controller start query %d nprobe %d\n", query_id, nprobe_id);

				int ID_out = 0;
				s_searched_cell_id_scan_controller.write(ID_out);
				printf("generate_input_scan_controller end query %d nprobe %d\n", query_id, nprobe_id);
			}
			printf("generate_input_scan_controller end query %d\n", query_id);
        }
    }
}


void consume_input(
    int query_num,
    hls::stream<int> &s_searched_cell_id_scan_controller,
    hls::stream<single_PQ_result> &s_tuple_results) {

    printf("consume_input starts\n");
    
    for (int query_id = 0; query_id < query_num; query_id++) {
        printf("consume_input start query %d\n", query_id);
        
        int cnt_sum = 0;
        for (int nprobe_id = 0; nprobe_id < NPROBE; nprobe_id++) {
            cnt_sum += s_searched_cell_id_scan_controller.read();
        }

        single_PQ_result out[PRIORITY_QUEUE_LEN];
        for (int w_iter = 0; w_iter < PRIORITY_QUEUE_LEN; w_iter++) {
            out[w_iter].vec_ID = cnt_sum;
        }
        for (int w_iter = 0; w_iter < PRIORITY_QUEUE_LEN; w_iter++) {
            s_tuple_results.write(out[w_iter]);
        }
        printf("consume_input end query %d\n", query_id);
    }
}

template<const int query_num, const int nlist, const int nprobe>
void scan_controller(
    const int* HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid,
    hls::stream<int> &s_scanned_cell_id_Input, // from the cluster selection unit
    // hls::stream<int> &s_start_addr_every_cell,
    // hls::stream<int> &s_scanned_entries_every_cell_Load_unit,
    // hls::stream<int> &s_scanned_entries_every_cell_Split_unit,
    // hls::stream<int> &s_scanned_entries_every_cell_PQ_lookup_computation,
    // hls::stream<int> &s_scanned_entries_every_cell_Dummy,
    // hls::stream<int> &s_last_valid_channel,
    hls::stream<int> &s_scanned_entries_per_query_Sort_and_reduction,
    hls::stream<int> &s_scanned_entries_per_query_Priority_queue) {
   
    // s_last_element_valid_PQ_lookup_computation -> last element of a channel can 
    //   be padded or not, 1 means valid (not padded), 0 means padded, should be discarded
    // last_valid_channel_LUT -> for each Voronoi cell, the last line in HBM may contain 
    //   padding, this is for storing where the last non-padded element id, ranges from 0~62
    //   e.g., all 63 elements store valid element, then last_valid_channel_LUT[x] = 62
    //   e.g., only the first channels's first element is valid, then last_valid_channel_LUT[x] = 0 
    int start_addr_LUT[nlist];
    int scanned_entries_every_cell_LUT[nlist];
    int last_valid_channel_LUT[nlist];  
#pragma HLS resource variable=start_addr_LUT core=RAM_2P_URAM
#pragma HLS resource variable=scanned_entries_every_cell_LUT core=RAM_2P_URAM
#pragma HLS resource variable=last_valid_channel_LUT core=RAM_2P_URAM

    // init LUTs
    for (int i = 0; i < nlist; i++) {
#pragma HLS pipeline II=1
        start_addr_LUT[i] = HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid[i];
    }
    for (int i = 0; i < nlist; i++) {
#pragma HLS pipeline II=1
        scanned_entries_every_cell_LUT[i] = 
            HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid[nlist + i];
    }
    // ---- Fixed ----
    for (int i = 0; i < nlist; i++) {
#pragma HLS pipeline II=1
        last_valid_channel_LUT[i] = 
            HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid[2 * nlist + i];
    }

    // volatile int guard = 0;
    // while (
    //     s_scanned_cell_id_Input.empty()
    //     ) {
    //     guard++;
    // }

    // send control signals
    for (int query_id = 0; query_id < query_num; query_id++) {
        
        int accumulated_scanned_entries_per_query = 0;

        for (int nprobe_id = 0; nprobe_id < nprobe; nprobe_id++) {

            // volatile int guard = 0;
            // while (
            //     s_scanned_cell_id_Input.empty()
            //     ) {
            //     guard++;
            // }
            printf("scan_controller start query %d nprobe %d\n", query_id, nprobe_id);
            int cell_id = s_scanned_cell_id_Input.read();

            // int start_addr = start_addr_LUT[cell_id];
            // int scanned_entries_every_cell = scanned_entries_every_cell_LUT[cell_id];
            // int last_valid_channel = last_valid_channel_LUT[cell_id];

            accumulated_scanned_entries_per_query += cell_id;

            // s_start_addr_every_cell.write(start_addr);
            // s_scanned_entries_every_cell_Load_unit.write(scanned_entries_every_cell);
            // s_scanned_entries_every_cell_Split_unit.write(scanned_entries_every_cell);
            // s_scanned_entries_every_cell_Dummy.write(scanned_entries_every_cell);
            // s_scanned_entries_every_cell_PQ_lookup_computation.write(scanned_entries_every_cell);
            // s_last_valid_channel.write(last_valid_channel);
            printf("scan_controller end query %d nprobe %d\n", query_id, nprobe_id);
        }

        s_scanned_entries_per_query_Sort_and_reduction.write(accumulated_scanned_entries_per_query);
        s_scanned_entries_per_query_Priority_queue.write(accumulated_scanned_entries_per_query);
        printf("scan_controller end query %d\n", query_id);
    }
}


void consume_scan_controller_stage_A_per_query(
    int query_num,
    hls::stream<int> &s_scanned_entries_per_query_Sort_and_reduction,
    hls::stream<int> &s_scanned_entries_per_query_Priority_queue,
    hls::stream<int> &s_consume_scan_controller_stage_A_per_query) {

#ifdef GUARD
    volatile int guard = 0;
    while (
        s_scanned_entries_per_query_Sort_and_reduction.empty() &
        s_scanned_entries_per_query_Priority_queue.empty()
        ) {
        guard++;
    }
#endif
    printf("consume_scan_controller_stage_A_per_queryconsume_scan_controller_stage_A_per_query starts\n");
    
    // send control signals
    for (int query_id = 0; query_id < query_num; query_id++) {
        printf("consume_scan_controller_stage_A_per_query start query %d\n", query_id);
        
        int cnt_0 = s_scanned_entries_per_query_Sort_and_reduction.read();
        int cnt_1 = s_scanned_entries_per_query_Priority_queue.read();

        int cnt_sum = cnt_0 + cnt_1; 
        s_consume_scan_controller_stage_A_per_query.write(cnt_sum);
        printf("consume_scan_controller_stage_A_per_query end query %d\n", query_id);
    }
}

void consume_scan_controller_stage_B(
    int query_num,
    // hls::stream<int> &s_consume_scan_controller_stage_A_per_cell,
    hls::stream<int> &s_consume_scan_controller_stage_A_per_query,
    hls::stream<single_PQ_result> &s_tuple_results) {

#ifdef GUARD
    volatile int guard = 0;
    while (
        s_consume_scan_controller_stage_A_per_cell.empty() &
        s_consume_scan_controller_stage_A_per_query.empty()
        ) {
        guard++;
    }
#endif
    printf("consume_scan_controller_stage_B starts\n");
    
    // send control signals
    for (int query_id = 0; query_id < query_num; query_id++) {
        printf("consume_scan_controller_stage_B start query %d\n", query_id);
        
        int cnt_sum = s_consume_scan_controller_stage_A_per_query.read();
        // int cnt_A_1 = s_consume_scan_controller_stage_A_per_cell.read();
        // int cnt_A_2 = s_consume_scan_controller_stage_A_per_query.read();
        // int cnt_sum = cnt_A_1 + cnt_A_2; 

        single_PQ_result out[PRIORITY_QUEUE_LEN];
        for (int w_iter = 0; w_iter < PRIORITY_QUEUE_LEN; w_iter++) {
            out[w_iter].vec_ID = cnt_sum;
        }
        for (int w_iter = 0; w_iter < PRIORITY_QUEUE_LEN; w_iter++) {
            s_tuple_results.write(out[w_iter]);
        }
        printf("consume_scan_controller_stage_B end query %d\n", query_id);
    }
}

template<const int query_num>
void write_result_sing_con(
    hls::stream<single_PQ_result> &output_stream, 
    hls::stream<int>& s_control_send,
    float* output) {

    // guarantee there's only 1 query in the pipeline

#ifdef GUARD
    volatile int guard = 0;
    while (output_stream.empty()) {
        guard++;
    }
#endif
    printf("write_result_sing_con starts\n");

    for (int i = 0; i < query_num; i++) {
#pragma HLS pipeline II=1
        printf("write_result_sing_con start query %d\n", i);
        for (int j = 0; j < PRIORITY_QUEUE_LEN; j++) {
            single_PQ_result raw_output = output_stream.read();
            // ap_uint<64> reg;
            int vec_ID = raw_output.vec_ID;
            float dist = raw_output.dist;
            // reg.range(31, 0) = *((ap_uint<32>*) (&vec_ID));
            // reg.range(63, 32) = *((ap_uint<32>*) (&dist));
            output[i * PRIORITY_QUEUE_LEN + j] = dist;
        }
        printf("write_result_sing_con end query %d\n", i);


#ifdef FEEDBACK
        // last query no need to send control signal
        if (i < query_num - 1) {
            s_control_send.write(1);
        }
#endif
    }
}

void vadd(  
    // const ap_uint512_t* HBM_in0, 
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
    const int* HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid, 
    // HBM22: query vectors
    float* HBM_query_vectors,
    // HBM23: center vector table (Vector_quantizer)
    float* HBM_vector_quantizer,
    // HBM24: PQ quantizer
    float* HBM_product_quantizer,
    // HBM25: OPQ Matrix
    float* HBM_OPQ_matrix,
    // HBM26: output (vector_ID, distance)
    float* HBM_out
    // const ap_uint512_t* HBM_in22, const ap_uint512_t* HBM_in23, 
    // const ap_uint512_t* HBM_in24, const ap_uint512_t* HBM_in25, 
    // const ap_uint512_t* HBM_in26, const ap_uint512_t* HBM_in27, 
    // const ap_uint512_t* HBM_in28, const ap_uint512_t* HBM_in29, 
    // const ap_uint512_t* HBM_in30, const ap_uint512_t* HBM_in31, 
    // const ap_uint512_t* table_DDR0, const ap_uint512_t* table_DDR1, 
    )
{
// #pragma HLS INTERFACE m_axi port=HBM_in0  depth=1024 offset=slave bundle=gmem0
// #pragma HLS INTERFACE m_axi port=HBM_in1  depth=1024 offset=slave bundle=gmem1
// #pragma HLS INTERFACE m_axi port=HBM_in2  depth=1024 offset=slave bundle=gmem2
// #pragma HLS INTERFACE m_axi port=HBM_in3  depth=1024 offset=slave bundle=gmem3
// #pragma HLS INTERFACE m_axi port=HBM_in4  depth=1024 offset=slave bundle=gmem4
// #pragma HLS INTERFACE m_axi port=HBM_in5  depth=1024 offset=slave bundle=gmem5
// #pragma HLS INTERFACE m_axi port=HBM_in6  depth=1024 offset=slave bundle=gmem6
// #pragma HLS INTERFACE m_axi port=HBM_in7  depth=1024 offset=slave bundle=gmem7
// #pragma HLS INTERFACE m_axi port=HBM_in8  depth=1024 offset=slave bundle=gmem8
// #pragma HLS INTERFACE m_axi port=HBM_in9  depth=1024 offset=slave bundle=gmem9
// #pragma HLS INTERFACE m_axi port=HBM_in10  depth=1024 offset=slave bundle=gmem10
// #pragma HLS INTERFACE m_axi port=HBM_in11  depth=1024 offset=slave bundle=gmem11
// #pragma HLS INTERFACE m_axi port=HBM_in12  depth=1024 offset=slave bundle=gmem12
// #pragma HLS INTERFACE m_axi port=HBM_in13  depth=1024 offset=slave bundle=gmem13
// #pragma HLS INTERFACE m_axi port=HBM_in14  depth=1024 offset=slave bundle=gmem14
// #pragma HLS INTERFACE m_axi port=HBM_in15  depth=1024 offset=slave bundle=gmem15
// #pragma HLS INTERFACE m_axi port=HBM_in16  depth=1024 offset=slave bundle=gmem16
// #pragma HLS INTERFACE m_axi port=HBM_in17  depth=1024 offset=slave bundle=gmem17
// #pragma HLS INTERFACE m_axi port=HBM_in18  depth=1024 offset=slave bundle=gmem18
// #pragma HLS INTERFACE m_axi port=HBM_in19  depth=1024 offset=slave bundle=gmem19
// #pragma HLS INTERFACE m_axi port=HBM_in20  depth=1024 offset=slave bundle=gmem20
#pragma HLS INTERFACE m_axi port=HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid  depth=HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid_depth offset=slave bundle=gmem21
#pragma HLS INTERFACE m_axi port=HBM_query_vectors  offset=slave bundle=gmem22
#pragma HLS INTERFACE m_axi port=HBM_vector_quantizer offset=slave bundle=gmem23
#pragma HLS INTERFACE m_axi port=HBM_product_quantizer  offset=slave bundle=gmem24
#pragma HLS INTERFACE m_axi port=HBM_OPQ_matrix  offset=slave bundle=gmem25
// #pragma HLS INTERFACE m_axi port=HBM_in26  depth=1024 offset=slave bundle=gmem26
// #pragma HLS INTERFACE m_axi port=HBM_in27  depth=1024 offset=slave bundle=gmem27
// #pragma HLS INTERFACE m_axi port=HBM_in28  depth=1024 offset=slave bundle=gmem28
// #pragma HLS INTERFACE m_axi port=HBM_in29  depth=1024 offset=slave bundle=gmem29
// #pragma HLS INTERFACE m_axi port=HBM_in30  depth=1024 offset=slave bundle=gmem30
// #pragma HLS INTERFACE m_axi port=HBM_in31  depth=1024 offset=slave bundle=gmem31

// #pragma HLS INTERFACE m_axi port=table_DDR0  depth=1024 offset=slave bundle=gmem32
// #pragma HLS INTERFACE m_axi port=table_DDR1  depth=1024 offset=slave bundle=gmem33

// PLRAM
#pragma HLS INTERFACE m_axi port=HBM_out depth=output_size offset=slave bundle=gmem34

// #pragma HLS INTERFACE s_axilite port=HBM_in0  bundle=control
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
#pragma HLS INTERFACE s_axilite port=HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_query_vectors  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_vector_quantizer  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_product_quantizer  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_OPQ_matrix  bundle=control
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

    ////////////////////     Init     ////////////////////

    hls::stream<float> s_query_vectors;
#pragma HLS stream variable=s_query_vectors depth=512
// #pragma HLS resource variable=s_query_vectors core=FIFO_BRAM

    hls::stream<int> s_control_send;
#pragma HLS stream variable=s_control_send depth=512

    load_query_vectors_sing_con<QUERY_NUM>(
        // HBM_query_vectors, 
        s_control_send,
        s_query_vectors);

    hls::stream<single_PQ_result> s_tuple_results; // the top 10 numbers
#pragma HLS stream variable=s_tuple_results depth=512
// #pragma HLS RESOURCE variable=s_tuple_results core=FIFO_BRAM

    hls::stream<int> s_searched_cell_id_scan_controller;
#pragma HLS stream variable=s_searched_cell_id_scan_controller depth=512

    generate_input_scan_controller(
        QUERY_NUM,
        s_query_vectors,
        s_searched_cell_id_scan_controller);

    // consume_input(
    //     QUERY_NUM,
    //     s_searched_cell_id_scan_controller,
    //     s_tuple_results);

    // middle_function_single(
    //     QUERY_NUM,
    //     s_query_vectors,
    //     s_tuple_results);

    ////////////////////     Load PQ Codes     ////////////////////    

    hls::stream<int> s_scanned_entries_every_cell_Load_unit;
#pragma HLS stream variable=s_scanned_entries_every_cell_Load_unit depth=512
// #pragma HLS RESOURCE variable=s_scanned_entries_every_cell_Load_unit core=FIFO_BRAM

    hls::stream<int> s_scanned_entries_every_cell_Split_unit;
#pragma HLS stream variable=s_scanned_entries_every_cell_Split_unit depth=512
// #pragma HLS RESOURCE variable=s_scanned_entries_every_cell_Split_unit core=FIFO_BRAM

    hls::stream<int> s_scanned_entries_every_cell_PQ_lookup_computation;
#pragma HLS stream variable=s_scanned_entries_every_cell_PQ_lookup_computation depth=512
// #pragma HLS RESOURCE variable=s_scanned_entries_every_cell_PQ_lookup_computation core=FIFO_BRAM

    hls::stream<int> s_scanned_entries_every_cell_Dummy;
#pragma HLS stream variable=s_scanned_entries_every_cell_Dummy depth=512
// #pragma HLS RESOURCE variable=s_scanned_entries_every_cell_Dummy core=FIFO_BRAM

    hls::stream<int> s_last_valid_channel;
#pragma HLS stream variable=s_last_valid_channel depth=512
// #pragma HLS RESOURCE variable=s_last_valid_channel core=FIFO_BRAM

    hls::stream<int> s_start_addr_every_cell;
#pragma HLS stream variable=s_start_addr_every_cell depth=512
// #pragma HLS RESOURCE variable=s_start_addr_every_cell core=FIFO_BRAM

    hls::stream<int> s_scanned_entries_per_query_Sort_and_reduction;
#pragma HLS stream variable=s_scanned_entries_per_query_Sort_and_reduction depth=512
// #pragma HLS RESOURCE variable=s_scanned_entries_per_query_Sort_and_reduction core=FIFO_BRAM

    hls::stream<int> s_scanned_entries_per_query_Priority_queue;
#pragma HLS stream variable=s_scanned_entries_per_query_Priority_queue depth=512
// #pragma HLS RESOURCE variable=s_scanned_entries_per_query_Priority_queue core=FIFO_BRAM

    scan_controller<QUERY_NUM, NLIST, NPROBE>(
        HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid,
        s_searched_cell_id_scan_controller, 
        // s_start_addr_every_cell,
        // s_scanned_entries_every_cell_Load_unit, 
        // s_scanned_entries_every_cell_Split_unit,
        // s_scanned_entries_every_cell_PQ_lookup_computation,
        // s_scanned_entries_every_cell_Dummy,
        // s_last_valid_channel, 
        s_scanned_entries_per_query_Sort_and_reduction,
        s_scanned_entries_per_query_Priority_queue
        );


//     hls::stream<int> s_consume_scan_controller_stage_A_per_cell;
// #pragma HLS stream variable=s_consume_scan_controller_stage_A_per_cell depth=512

    hls::stream<int> s_consume_scan_controller_stage_A_per_query;
#pragma HLS stream variable=s_consume_scan_controller_stage_A_per_query depth=512

    consume_scan_controller_stage_A_per_query(
        QUERY_NUM,
        s_scanned_entries_per_query_Sort_and_reduction,
        s_scanned_entries_per_query_Priority_queue,
        s_consume_scan_controller_stage_A_per_query);

    consume_scan_controller_stage_B(
        QUERY_NUM,
        // s_consume_scan_controller_stage_A_per_cell,
        s_consume_scan_controller_stage_A_per_query,
        s_tuple_results);

    write_result_sing_con<QUERY_NUM>(
        s_tuple_results, 
        s_control_send,
        HBM_out);
}
