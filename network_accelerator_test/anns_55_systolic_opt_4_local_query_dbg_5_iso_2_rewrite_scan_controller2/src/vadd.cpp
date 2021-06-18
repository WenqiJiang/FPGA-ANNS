#include <stdio.h>
#include "vadd.hpp"



template<const int query_num>
void load_query_vectors_sing_con(
    const float* DRAM_query_vector,
    hls::stream<int>& s_control_send,
    hls::stream<float>& s_query_vectors) {

    // guarantee there's only 1 query in the pipeline

    // Data type: suppose each vector = 128 D, FPGA freq = 200 MHz
    //   then it takes 640 + 200 ns < 1 us to load a query vector, 
    //   much faster than computing distance and constructing LUT (> 10 us)

    // query vector (1 vector per NPROBE=32 center vector)

    // 1 st query no need control signal
    for (int d = 0; d < D; d++) {
#pragma HLS pipeline II=1
        float reg = DRAM_query_vector[d];
        s_query_vectors.write(reg);
    }

    // rest query need to wait receiver to finish writing
    for (int query_id = 1; query_id < query_num; query_id++) {

        if (s_control_send.read()) {
            for (int d = 0; d < D; d++) {
#pragma HLS pipeline II=1
                float reg = DRAM_query_vector[query_id * D + d];
                s_query_vectors.write(reg);
            }
        }
    }
}

template<const int query_num>
void write_result_sing_con(
    hls::stream<single_PQ_result> &output_stream, 
    hls::stream<int>& s_control_send,
    ap_uint64_t* output) {

    // guarantee there's only 1 query in the pipeline

    for (int i = 0; i < query_num; i++) {
#pragma HLS pipeline II=1
        for (int j = 0; j < PRIORITY_QUEUE_LEN; j++) {
            single_PQ_result raw_output = output_stream.read();
            ap_uint<64> reg;
            int vec_ID = raw_output.vec_ID;
            float dist = raw_output.dist;
            reg.range(31, 0) = *((ap_uint<32>*) (&vec_ID));
            reg.range(63, 32) = *((ap_uint<32>*) (&dist));
            output[i * PRIORITY_QUEUE_LEN + j] = reg;
        }

        // last query no need to send control signal
        if (i < query_num - 1) {
            s_control_send.write(1);

        }
    }
}


void generate_input_stage_5_2(
    int query_num,
    hls::stream<float>& s_query_vectors,
    hls::stream<int>& s_searched_cell_id_scan_controller,
    hls::stream<distance_LUT_PQ16_t> &s_distance_LUT) {


    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int d = 0; d < D; d++) {
            s_query_vectors.read();
        }
        for (int nprobe_id = 0; nprobe_id < NPROBE; nprobe_id++) {

            int ID_out = 0;
            s_searched_cell_id_scan_controller.write(ID_out);
        }
        for (int nprobe_id = 0; nprobe_id < NPROBE; nprobe_id++) {
            for (int k = 0; k < K; k++) {
                distance_LUT_PQ16_t tmp;
                s_distance_LUT.write(tmp);
            }
        }
    }
}

void generate_HBM_contents(
    int query_num,
    hls::stream<int> &s_start_addr_every_cell,
    hls::stream<int> &s_scanned_entries_every_cell_Load_unit, 
    hls::stream<int> &s_scanned_entries_every_cell_Split_unit,
    hls::stream<single_PQ> (&s_single_PQ)[3 * HBM_CHANNEL_NUM]) {


    for (int query_id = 0; query_id < query_num; query_id++) {
#pragma HLS loop_flatten

        for (int nprobe_id = 0; nprobe_id < NPROBE; nprobe_id++) {

            int scanned_entries_every_cell = s_scanned_entries_every_cell_Load_unit.read();
            s_scanned_entries_every_cell_Split_unit.read();
            s_start_addr_every_cell.read();

            for (int entry_id = 0; entry_id < scanned_entries_every_cell; entry_id++) {
                for (int s = 0; s < 3 * HBM_CHANNEL_NUM; s++) {
#pragma HLS UNROLL
                    single_PQ tmp;
                    s_single_PQ[s].write(tmp);
                }
            }
        }
    }
}


void consume_stage_5(
    int query_num,
    hls::stream<int> &s_scanned_entries_per_query_Sort_and_reduction,
    hls::stream<int> &s_scanned_entries_per_query_Priority_queue,
    hls::stream<single_PQ_result> (&s_single_PQ_result)[2][16],
    hls::stream<single_PQ_result> &s_output) {

    for (int query_id = 0; query_id < query_num; query_id++) {

        int entry_num_array[100];
#pragma HLS resource variable=entry_num_array core=RAM_1P_BRAM
        entry_num_array[0] = s_scanned_entries_per_query_Sort_and_reduction.read();
        entry_num_array[1] = s_scanned_entries_per_query_Priority_queue.read();

        for (int r_iter = 0; r_iter < entry_num_array[0]; r_iter++) {
            for (int s_A = 0; s_A < 2; s_A++) {
#pragma HLS UNROLL
                for (int s_B = 0; s_B < 16; s_B++) {
#pragma HLS UNROLL
                    s_single_PQ_result[s_A][s_B].read();
                }
            }
        }

        single_PQ_result out[PRIORITY_QUEUE_LEN];

        for (int w_iter = 0; w_iter < PRIORITY_QUEUE_LEN; w_iter++) {
            s_output.write(out[w_iter]);
        }
    }
}

void accelerator_kernel(
    const ap_uint512_t* HBM_in0, 
    const ap_uint512_t* HBM_in1, 
    const ap_uint512_t* HBM_in2, 
    const ap_uint512_t* HBM_in3, 
    const ap_uint512_t* HBM_in4, 
    const ap_uint512_t* HBM_in5, 
    const ap_uint512_t* HBM_in6, 
    const ap_uint512_t* HBM_in7, 
    const ap_uint512_t* HBM_in8, 
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
    // HBM23: center vector table (Vector_quantizer)
    float* HBM_vector_quantizer,
    // HBM24: PQ quantizer
    float* HBM_product_quantizer,
    // HBM25: OPQ Matrix
    float* HBM_OPQ_matrix,
    // input
    hls::stream<float>& s_query_vectors,
    // output
    hls::stream<single_PQ_result> &s_tuple_results) {

#pragma HLS dataflow


    hls::stream<int> s_searched_cell_id_scan_controller;
#pragma HLS stream variable=s_searched_cell_id_scan_controller depth=512

    hls::stream<distance_LUT_PQ16_t> s_distance_LUT;
#pragma HLS stream variable=s_distance_LUT depth=512

    generate_input_stage_5_2(
        QUERY_NUM,
        s_query_vectors,
        s_searched_cell_id_scan_controller,
        s_distance_LUT);

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
        s_start_addr_every_cell,
        s_scanned_entries_every_cell_Load_unit, 
        s_scanned_entries_every_cell_Split_unit,
        s_scanned_entries_every_cell_PQ_lookup_computation,
        s_scanned_entries_every_cell_Dummy,
        s_last_valid_channel, 
        s_scanned_entries_per_query_Sort_and_reduction,
        s_scanned_entries_per_query_Priority_queue);

    // each 512 bit can store 3 set of (vecID, PQ code)
    hls::stream<single_PQ> s_single_PQ[3 * HBM_CHANNEL_NUM];
#pragma HLS stream variable=s_single_PQ depth=8
#pragma HLS array_partition variable=s_single_PQ complete
// #pragma HLS RESOURCE variable=s_single_PQ core=FIFO_SRL


    generate_HBM_contents(
        QUERY_NUM,
        s_start_addr_every_cell,
        s_scanned_entries_every_cell_Load_unit, 
        s_scanned_entries_every_cell_Split_unit,
        s_single_PQ);

    // 64 streams = 21 channels * 3 + 1 dummy
    hls::stream<single_PQ_result> s_single_PQ_result[2][16];
#pragma HLS stream variable=s_single_PQ_result depth=8
#pragma HLS array_partition variable=s_single_PQ_result complete
// #pragma HLS RESOURCE variable=s_single_PQ_result core=FIFO_SRL


    ////////////////////     Estimate Distance by LUT     ////////////////////    

    PQ_lookup_computation_wrapper<QUERY_NUM, NPROBE>(
        s_single_PQ, 
        s_distance_LUT, 
        s_scanned_entries_every_cell_PQ_lookup_computation,
        s_scanned_entries_every_cell_Dummy,
        s_last_valid_channel,
        s_single_PQ_result);

//     ////////////////////     Sort Results     ////////////////////    
//     Sort_reduction<single_PQ_result, 32, 16, Collect_smallest> sort_reduction_module;

//     hls::stream<single_PQ_result> s_sorted_PQ_result[16];
// #pragma HLS stream variable=s_sorted_PQ_result depth=8
// #pragma HLS array_partition variable=s_sorted_PQ_result complete
// // #pragma HLS RESOURCE variable=s_sorted_PQ_result core=FIFO_SRL

//     sort_reduction_module.sort_and_reduction<QUERY_NUM>(
//         s_scanned_entries_per_query_Sort_and_reduction, 
//         s_single_PQ_result, 
//         s_sorted_PQ_result);

//     stream_redirect_to_priority_queue_wrapper<QUERY_NUM>(
//         s_scanned_entries_per_query_Priority_queue, 
//         s_sorted_PQ_result, 
//         s_tuple_results);

    consume_stage_5(
        QUERY_NUM,
        s_scanned_entries_per_query_Sort_and_reduction,
        s_scanned_entries_per_query_Priority_queue,
        s_single_PQ_result,
        s_tuple_results);
}

void vadd(  
    const ap_uint512_t* HBM_in0, 
    const ap_uint512_t* HBM_in1, 
    const ap_uint512_t* HBM_in2, 
    const ap_uint512_t* HBM_in3, 
    const ap_uint512_t* HBM_in4, 
    const ap_uint512_t* HBM_in5, 
    const ap_uint512_t* HBM_in6, 
    const ap_uint512_t* HBM_in7, 
    const ap_uint512_t* HBM_in8, 
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
    ap_uint64_t* HBM_out
    // const ap_uint512_t* HBM_in22, const ap_uint512_t* HBM_in23, 
    // const ap_uint512_t* HBM_in24, const ap_uint512_t* HBM_in25, 
    // const ap_uint512_t* HBM_in26, const ap_uint512_t* HBM_in27, 
    // const ap_uint512_t* HBM_in28, const ap_uint512_t* HBM_in29, 
    // const ap_uint512_t* HBM_in30, const ap_uint512_t* HBM_in31, 
    // const ap_uint512_t* table_DDR0, const ap_uint512_t* table_DDR1, 
    )
{
#pragma HLS INTERFACE m_axi port=HBM_in0  offset=slave bundle=gmem0
#pragma HLS INTERFACE m_axi port=HBM_in1  offset=slave bundle=gmem1
#pragma HLS INTERFACE m_axi port=HBM_in2  offset=slave bundle=gmem2
#pragma HLS INTERFACE m_axi port=HBM_in3  offset=slave bundle=gmem3
#pragma HLS INTERFACE m_axi port=HBM_in4  offset=slave bundle=gmem4
#pragma HLS INTERFACE m_axi port=HBM_in5  offset=slave bundle=gmem5
#pragma HLS INTERFACE m_axi port=HBM_in6  offset=slave bundle=gmem6
#pragma HLS INTERFACE m_axi port=HBM_in7  offset=slave bundle=gmem7
#pragma HLS INTERFACE m_axi port=HBM_in8  offset=slave bundle=gmem8
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
#pragma HLS INTERFACE m_axi port=HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid  offset=slave bundle=gmem21
#pragma HLS INTERFACE m_axi port=HBM_query_vectors  offset=slave bundle=gmem22
#pragma HLS INTERFACE m_axi port=HBM_vector_quantizer  offset=slave bundle=gmem23
#pragma HLS INTERFACE m_axi port=HBM_product_quantizer  offset=slave bundle=gmem24
#pragma HLS INTERFACE m_axi port=HBM_OPQ_matrix  offset=slave bundle=gmem25
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
#pragma HLS INTERFACE s_axilite port=HBM_in1  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in2  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in3  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in4  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in5  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in6  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in7  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in8  bundle=control
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
        HBM_query_vectors, 
        s_control_send,
        s_query_vectors);

    hls::stream<single_PQ_result> s_tuple_results; // the top 10 numbers
#pragma HLS stream variable=s_tuple_results depth=512
// #pragma HLS RESOURCE variable=s_tuple_results core=FIFO_BRAM

    accelerator_kernel(
        HBM_in0, 
        HBM_in1, 
        HBM_in2, 
        HBM_in3, 
        HBM_in4, 
        HBM_in5, 
        HBM_in6, 
        HBM_in7, 
        HBM_in8, 
        HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid, 
        // HBM23: center vector table (Vector_quantizer)
        HBM_vector_quantizer,
        // HBM24: PQ quantizer
        HBM_product_quantizer,
        // HBM25: OPQ Matrix
        HBM_OPQ_matrix,
        // input
        s_query_vectors,
        // output
        s_tuple_results);

    ////////////////////     Write Results     ////////////////////    

    write_result_sing_con<QUERY_NUM>(
        s_tuple_results, 
        s_control_send,
        HBM_out);
}
