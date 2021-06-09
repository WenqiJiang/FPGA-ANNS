#pragma once 

#include <hls_stream.h>

#include "cluster_distance_computation.hpp"
#include "constants.hpp"
#include "distance_estimation_by_LUT.hpp"
#include "HBM_interconnections.hpp"
#include "helpers.hpp"
#include "LUT_construction.hpp"
#include "OPQ_preprocessing.hpp"
#include "priority_queue_distance_results_wrapper.hpp"
#include "priority_queue_vector_quantizer.hpp"
#include "select_Voronoi_cell.hpp"
#include "sort_reduction_48_to_16_with_vecID.hpp"
#include "types.hpp"


template<const int query_num>
void consume_input_and_generate_output(
    hls::stream<float>& s_query_vectors,
    const ap_uint512_t* HBM_in0, 
    const ap_uint512_t* HBM_in1, 
    const ap_uint512_t* HBM_in2, 
    const ap_uint512_t* HBM_in3, 
    const ap_uint512_t* HBM_in4, 
    const ap_uint512_t* HBM_in5, 
    const ap_uint512_t* HBM_in6, 
    const ap_uint512_t* HBM_in7, 
    const ap_uint512_t* HBM_in8, 
    const ap_uint512_t* HBM_in9, 
    const ap_uint512_t* HBM_in10, 
    hls::stream<single_PQ_result> &s_tuple_results) {

    do {
        if (!s_query_vectors.empty()) {
            break;
        }
    } while(true);

    for (int query_id = 0; query_id < query_num; query_id++) {

        float val_float = 0;
        int val_int = 0;

        for (int d = 0; d < D; d++) {
            val_float = s_query_vectors.read();
        }

        volatile int sleep_count = 0;
        for (int c = 0; c < 10000; c++) {
            sleep_count++;
        }
        val_int = sleep_count;

        ap_uint512_t bias = HBM_in0[0] + HBM_in1[0] + HBM_in2[0] + HBM_in3[0]+ 
            HBM_in4[0] + HBM_in5[0]+ HBM_in6[0] + HBM_in7[0]+ HBM_in8[0] + HBM_in9[0] + HBM_in10[0];
        val_int += (int) bias;

        for (int result_it = 0; result_it < PRIORITY_QUEUE_LEN; result_it++) {
            single_PQ_result out;
            out.vec_ID = val_int;
            out.dist = val_float;
            s_tuple_results.write(out);
        }
    }
}

void vadd(  
    hls::stream<float>& s_query_vectors,
    const ap_uint512_t* HBM_in0, 
    const ap_uint512_t* HBM_in1, 
    const ap_uint512_t* HBM_in2, 
    const ap_uint512_t* HBM_in3, 
    const ap_uint512_t* HBM_in4, 
    const ap_uint512_t* HBM_in5, 
    const ap_uint512_t* HBM_in6, 
    const ap_uint512_t* HBM_in7, 
    const ap_uint512_t* HBM_in8, 
    const ap_uint512_t* HBM_in9, 
    const ap_uint512_t* HBM_in10, 
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
    hls::stream<single_PQ_result> & s_output
    )
{
#pragma HLS dataflow

    consume_input_and_generate_output<QUERY_NUM>(
        s_query_vectors,
        HBM_in0, 
        HBM_in1, 
        HBM_in2, 
        HBM_in3, 
        HBM_in4, 
        HBM_in5, 
        HBM_in6, 
        HBM_in7, 
        HBM_in8, 
        HBM_in9, 
        HBM_in10, 
        s_output);

}
