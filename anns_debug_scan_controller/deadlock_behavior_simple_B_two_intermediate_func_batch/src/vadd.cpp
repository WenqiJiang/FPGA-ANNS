#include <stdio.h>
#include "vadd.hpp"

#include "stdio.h"

// #define GUARD
// #define FEEDBACK

template<const int query_num>
void load_query_vectors_sing_con(
    const float* DRAM_query_vector,
    hls::stream<int>& s_control_send,
    hls::stream<float>& s_query_vectors) {

    // 1 st query no need control signal
    for (int d = 0; d < D; d++) {
#pragma HLS pipeline II=1
        s_query_vectors.write(DRAM_query_vector[d]);
    }

    // rest query need to wait receiver to finish writing
    for (int query_id = 1; query_id < query_num; query_id++) {

#ifdef FEEDBACK
        int start_send = s_control_send.read();
        if (start_send) {
#endif
            for (int d = 0; d < D; d++) {
#pragma HLS pipeline II=1
                s_query_vectors.write(DRAM_query_vector[d]);
            }
#ifdef FEEDBACK
        }
#endif
    }
}


void generate_input_scan_controller(
    int query_num,
    hls::stream<float>& s_query_vectors,
    hls::stream<int>& s_searched_cell_id_scan_controller) {

    // printf("generate_input_scan_controller starts\n");

    for (int query_id = 0; query_id < query_num; query_id++) {

    	float send_enable = 0;
        for (int d = 0; d < D; d++) {
            send_enable = s_query_vectors.read();
        }
        if (send_enable > 0) {
			for (int nprobe_id = 0; nprobe_id < NPROBE; nprobe_id++) {
				// printf("generate_input_scan_controller start query %d nprobe %d\n", query_id, nprobe_id);
				
                // type conversion float to int
                int ID_out = send_enable;
				s_searched_cell_id_scan_controller.write(ID_out);
				// printf("generate_input_scan_controller end query %d nprobe %d\n", query_id, nprobe_id);
			}
			// printf("generate_input_scan_controller end query %d\n", query_id);
        }
    }
}


void consume_input(
    int query_num,
    hls::stream<int> &s_searched_cell_id_scan_controller,
    hls::stream<single_PQ_result> &s_tuple_results) {

    // printf("consume_input starts\n");
    
    for (int query_id = 0; query_id < query_num; query_id++) {
        // printf("consume_input start query %d\n", query_id);
        
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
        // printf("consume_input end query %d\n", query_id);
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
    // printf("write_result_sing_con starts\n");

    for (int i = 0; i < query_num; i++) {
#pragma HLS pipeline II=1
        // printf("write_result_sing_con start query %d\n", i);
        for (int j = 0; j < PRIORITY_QUEUE_LEN; j++) {
            single_PQ_result raw_output = output_stream.read();
            // ap_uint<64> reg;
            int vec_ID = raw_output.vec_ID;
            float dist = raw_output.dist;
            // reg.range(31, 0) = *((ap_uint<32>*) (&vec_ID));
            // reg.range(63, 32) = *((ap_uint<32>*) (&dist));
            output[i * PRIORITY_QUEUE_LEN + j] = dist;
        }
        // printf("write_result_sing_con end query %d\n", i);


#ifdef FEEDBACK
        // last query no need to send control signal
        if (i < query_num - 1) {
            int reg = 1;
            s_control_send.write(reg);
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
// #pragma HLS INTERFACE m_axi port=HBM_in0   offset=slave bundle=gmem0
// #pragma HLS INTERFACE m_axi port=HBM_in1   offset=slave bundle=gmem1
// #pragma HLS INTERFACE m_axi port=HBM_in2   offset=slave bundle=gmem2
// #pragma HLS INTERFACE m_axi port=HBM_in3   offset=slave bundle=gmem3
// #pragma HLS INTERFACE m_axi port=HBM_in4   offset=slave bundle=gmem4
// #pragma HLS INTERFACE m_axi port=HBM_in5   offset=slave bundle=gmem5
// #pragma HLS INTERFACE m_axi port=HBM_in6   offset=slave bundle=gmem6
// #pragma HLS INTERFACE m_axi port=HBM_in7   offset=slave bundle=gmem7
// #pragma HLS INTERFACE m_axi port=HBM_in8   offset=slave bundle=gmem8
// #pragma HLS INTERFACE m_axi port=HBM_in9   offset=slave bundle=gmem9
// #pragma HLS INTERFACE m_axi port=HBM_in10   offset=slave bundle=gmem10
// #pragma HLS INTERFACE m_axi port=HBM_in11   offset=slave bundle=gmem11
// #pragma HLS INTERFACE m_axi port=HBM_in12   offset=slave bundle=gmem12
// #pragma HLS INTERFACE m_axi port=HBM_in13   offset=slave bundle=gmem13
// #pragma HLS INTERFACE m_axi port=HBM_in14   offset=slave bundle=gmem14
// #pragma HLS INTERFACE m_axi port=HBM_in15   offset=slave bundle=gmem15
// #pragma HLS INTERFACE m_axi port=HBM_in16   offset=slave bundle=gmem16
// #pragma HLS INTERFACE m_axi port=HBM_in17   offset=slave bundle=gmem17
// #pragma HLS INTERFACE m_axi port=HBM_in18   offset=slave bundle=gmem18
// #pragma HLS INTERFACE m_axi port=HBM_in19   offset=slave bundle=gmem19
// #pragma HLS INTERFACE m_axi port=HBM_in20   offset=slave bundle=gmem20
#pragma HLS INTERFACE m_axi port=HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid  bundle=gmem21
#pragma HLS INTERFACE m_axi port=HBM_query_vectors  offset=slave bundle=gmem22
#pragma HLS INTERFACE m_axi port=HBM_vector_quantizer offset=slave bundle=gmem23
#pragma HLS INTERFACE m_axi port=HBM_product_quantizer  offset=slave bundle=gmem24
#pragma HLS INTERFACE m_axi port=HBM_OPQ_matrix  offset=slave bundle=gmem25
// #pragma HLS INTERFACE m_axi port=HBM_in26   offset=slave bundle=gmem26
// #pragma HLS INTERFACE m_axi port=HBM_in27   offset=slave bundle=gmem27
// #pragma HLS INTERFACE m_axi port=HBM_in28   offset=slave bundle=gmem28
// #pragma HLS INTERFACE m_axi port=HBM_in29   offset=slave bundle=gmem29
// #pragma HLS INTERFACE m_axi port=HBM_in30   offset=slave bundle=gmem30
// #pragma HLS INTERFACE m_axi port=HBM_in31   offset=slave bundle=gmem31

// #pragma HLS INTERFACE m_axi port=table_DDR0   offset=slave bundle=gmem32
// #pragma HLS INTERFACE m_axi port=table_DDR1   offset=slave bundle=gmem33

// PLRAM
#pragma HLS INTERFACE m_axi port=HBM_out offset=slave bundle=gmem34

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
        HBM_query_vectors, 
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

    consume_input(
        QUERY_NUM,
        s_searched_cell_id_scan_controller,
        s_tuple_results);

    write_result_sing_con<QUERY_NUM>(
        s_tuple_results, 
        s_control_send,
        HBM_out);
}
