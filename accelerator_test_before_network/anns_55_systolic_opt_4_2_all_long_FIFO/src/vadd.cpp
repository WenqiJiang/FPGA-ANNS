#include <stdio.h>
#include "vadd.hpp"

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
    const ap_uint512_t* HBM_in9, 
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
#pragma HLS INTERFACE m_axi port=HBM_in9  offset=slave bundle=gmem9
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
#pragma HLS INTERFACE s_axilite port=HBM_in9  bundle=control
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

    load_query_vectors<QUERY_NUM>(
        HBM_query_vectors, 
        s_query_vectors);

    hls::stream<float> s_center_vectors_init_lookup_PE;
#pragma HLS stream variable=s_center_vectors_init_lookup_PE depth=2
// #pragma HLS resource variable=s_center_vectors_init_lookup_PE core=FIFO_SRL

//     hls::stream<float> s_center_vectors_init_distance_computation_PE[PE_NUM_CENTER_DIST_COMP];
// #pragma HLS stream variable=s_center_vectors_init_distance_computation_PE depth=8
// #pragma HLS array_partition variable=s_center_vectors_init_distance_computation_PE complete
// // #pragma HLS resource variable=s_center_vectors_init_distance_computation_PE core=FIFO_SRL

    // load_center_vectors(HBM_vector_quantizer, s_center_vectors_init_distance_computation_PE, s_center_vectors_init_lookup_PE);
    hls::stream<float> s_center_vectors_init_distance_computation_PE;
#pragma HLS stream variable=s_center_vectors_init_distance_computation_PE depth=8

    load_center_vectors(
        HBM_vector_quantizer,
        s_center_vectors_init_distance_computation_PE,
        s_center_vectors_init_lookup_PE);

    hls::stream<float> s_PQ_quantizer_init;
#pragma HLS stream variable=s_PQ_quantizer_init depth=4
// #pragma HLS resource variable=s_PQ_quantizer_init core=FIFO_SRL

    load_PQ_quantizer(HBM_product_quantizer, s_PQ_quantizer_init);

    hls::stream<float> s_OPQ_init;
#pragma HLS stream variable=s_OPQ_init depth=512
// #pragma HLS resource variable=s_OPQ_init core=FIFO_BRAM

    load_OPQ_matrix(HBM_OPQ_matrix, s_OPQ_init);

    ////////////////////     Preprocessing    ////////////////////

    hls::stream<float> s_preprocessed_query_vectors;
#pragma HLS stream variable=s_preprocessed_query_vectors depth=512
// #pragma HLS resource variable=s_preprocessed_query_vectors core=FIFO_BRAM

    OPQ_preprocessing<QUERY_NUM>(
        s_OPQ_init,
        s_query_vectors,
        s_preprocessed_query_vectors);

    hls::stream<float> s_preprocessed_query_vectors_lookup_PE;
#pragma HLS stream variable=s_preprocessed_query_vectors_lookup_PE depth=512
// #pragma HLS resource variable=s_preprocessed_query_vectors_lookup_PE core=FIFO_BRAM

    hls::stream<float> s_preprocessed_query_vectors_distance_computation_PE;
#pragma HLS stream variable=s_preprocessed_query_vectors_distance_computation_PE depth=512
// #pragma HLS resource variable=s_preprocessed_query_vectors_distance_computation_PE core=FIFO_BRAM

    broadcast_preprocessed_query_vectors<QUERY_NUM>(
        s_preprocessed_query_vectors,
        s_preprocessed_query_vectors_distance_computation_PE,
        s_preprocessed_query_vectors_lookup_PE);

    ////////////////////      Center Distance Computation    ////////////////////

//     hls::stream<dist_cell_ID_t> s_partial_cell_distance[PE_NUM_CENTER_DIST_COMP];
// #pragma HLS stream variable=s_partial_cell_distance depth=512
// // #pragma HLS resource variable=s_partial_cell_distance core=FIFO_BRAM
// #pragma HLS array_partition variable=s_partial_cell_distance complete

//     compute_cell_distance_wrapper<QUERY_NUM>(
//         s_center_vectors_init_distance_computation_PE, s_preprocessed_query_vectors_distance_computation_PE, 
//         s_partial_cell_distance);

    ////////////////////     Select Scanned Cells     ////////////////////    

    hls::stream<dist_cell_ID_t> s_merged_cell_distance;
#pragma HLS stream variable=s_merged_cell_distance depth=512
// #pragma HLS resource variable=s_merged_cell_distance core=FIFO_BRAM

    compute_cell_distance_wrapper<QUERY_NUM>(
        s_center_vectors_init_distance_computation_PE, 
        s_preprocessed_query_vectors_distance_computation_PE, 
        s_merged_cell_distance);

    // merge_partial_cell_distance<QUERY_NUM>(
    //     s_partial_cell_distance, 
    //     s_merged_cell_distance);

    hls::stream<dist_cell_ID_t> s_selected_distance_cell_ID;
#pragma HLS stream variable=s_selected_distance_cell_ID depth=512
// #pragma HLS resource variable=s_selected_distance_cell_ID core=FIFO_BRAM

    select_Voronoi_cell<STAGE_3_PRIORITY_QUEUE_LEVEL, STAGE_3_PRIORITY_QUEUE_L1_NUM>(
        s_merged_cell_distance,
        s_selected_distance_cell_ID);

    hls::stream<int> s_searched_cell_id_lookup_PE;
#pragma HLS stream variable=s_searched_cell_id_lookup_PE depth=512
// #pragma HLS resource variable=s_searched_cell_id_lookup_PE core=FIFO_BRAM

    hls::stream<int> s_searched_cell_id_scan_controller;
#pragma HLS stream variable=s_searched_cell_id_scan_controller depth=512
// #pragma HLS resource variable=s_searched_cell_id_scan_controller core=FIFO_BRAM

    //  dist struct to cell ID (int)
    split_cell_ID<QUERY_NUM>(
        s_selected_distance_cell_ID, 
        s_searched_cell_id_lookup_PE, 
        s_searched_cell_id_scan_controller);

    ////////////////////     Center Vector Lookup     ////////////////////    

    hls::stream<float> s_center_vectors_lookup_PE;
#pragma HLS stream variable=s_center_vectors_lookup_PE depth=128
// #pragma HLS resource variable=s_center_vectors_lookup_PE core=FIFO_BRAM

    lookup_center_vectors<QUERY_NUM>(
        s_center_vectors_init_lookup_PE, 
        s_searched_cell_id_lookup_PE, 
        s_center_vectors_lookup_PE);

    ////////////////////     Distance Lookup Table Construction     ////////////////////    


    const int depth_s_distance_LUT = K * PE_NUM_TABLE_CONSTRUCTION;
    hls::stream<distance_LUT_PQ16_t> s_distance_LUT;
#pragma HLS stream variable=s_distance_LUT depth=depth_s_distance_LUT
// #pragma HLS resource variable=s_distance_LUT core=FIFO_BRAM

    lookup_table_construction_wrapper<QUERY_NUM>(
        s_PQ_quantizer_init, 
        s_center_vectors_lookup_PE, 
        s_preprocessed_query_vectors_lookup_PE, 
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

    load_and_split_PQ_codes_wrapper<QUERY_NUM, NPROBE>(
        HBM_in0, HBM_in1, HBM_in2, HBM_in3, HBM_in4, HBM_in5, HBM_in6, HBM_in7, 
        HBM_in8, 
        HBM_in9, 
        // HBM_in10, 
        s_start_addr_every_cell,
        s_scanned_entries_every_cell_Load_unit,
        s_scanned_entries_every_cell_Split_unit,
        s_single_PQ);

    // 64 streams = 21 channels * 3 + 1 dummy
    hls::stream<single_PQ_result> s_single_PQ_result[SORT_GROUP_NUM][16];
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

    ////////////////////     Sort Results     ////////////////////    
    Sort_reduction<single_PQ_result, SORT_GROUP_NUM * 16, 16, Collect_smallest> sort_reduction_module;

    hls::stream<single_PQ_result> s_sorted_PQ_result[16];
#pragma HLS stream variable=s_sorted_PQ_result depth=8
#pragma HLS array_partition variable=s_sorted_PQ_result complete
// #pragma HLS RESOURCE variable=s_sorted_PQ_result core=FIFO_SRL

    sort_reduction_module.sort_and_reduction<QUERY_NUM>(
        s_scanned_entries_per_query_Sort_and_reduction, 
        s_single_PQ_result, 
        s_sorted_PQ_result);


    hls::stream<single_PQ_result> s_output; // the top 10 numbers
#pragma HLS stream variable=s_output depth=512
// #pragma HLS RESOURCE variable=s_output core=FIFO_BRAM

    stream_redirect_to_priority_queue_wrapper<QUERY_NUM>(
        s_scanned_entries_per_query_Priority_queue, 
        s_sorted_PQ_result, 
        s_output);

    ////////////////////     Write Results     ////////////////////    
    write_result<QUERY_NUM>(s_output, HBM_out);
}
