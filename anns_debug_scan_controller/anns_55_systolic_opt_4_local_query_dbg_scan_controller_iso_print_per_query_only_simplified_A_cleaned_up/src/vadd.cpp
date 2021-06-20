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
// #pragma HLS INTERFACE m_axi port=HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid  depth=1024 offset=slave bundle=gmem21
// #pragma HLS INTERFACE m_axi port=HBM_query_vectors  depth=1024 offset=slave bundle=gmem22
// #pragma HLS INTERFACE m_axi port=HBM_vector_quantizer  depth=1024 offset=slave bundle=gmem23
// #pragma HLS INTERFACE m_axi port=HBM_product_quantizer  depth=1024 offset=slave bundle=gmem24
// #pragma HLS INTERFACE m_axi port=HBM_OPQ_matrix  depth=1024 offset=slave bundle=gmem25
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

    middle_function_single(
        QUERY_NUM,
        s_query_vectors,
        s_tuple_results);

    write_result_sing_con<QUERY_NUM>(
        s_tuple_results, 
        s_control_send,
        HBM_out);
}
