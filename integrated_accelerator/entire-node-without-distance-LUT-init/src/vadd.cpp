// This program:
//   1. stora all the cell centroids coordinates on-chip
//   2. given an input query, compute distance with those centroids
//   3. select the top nprobe centroids using sorting network / heap
//   4. access the cell codebooks stored in HBM, construct distance table
#include <stdio.h>
#include "vadd.hpp"

void vadd(  
    const ap_uint512_t* HBM_in0, const ap_uint512_t* HBM_in1, 
    const ap_uint512_t* HBM_in2, const ap_uint512_t* HBM_in3, 
    const ap_uint512_t* HBM_in4, const ap_uint512_t* HBM_in5, 
    const ap_uint512_t* HBM_in6, const ap_uint512_t* HBM_in7, 
    const ap_uint512_t* HBM_in8, const ap_uint512_t* HBM_in9, 
    const ap_uint512_t* HBM_in10, const ap_uint512_t* HBM_in11, 
    const ap_uint512_t* HBM_in12, const ap_uint512_t* HBM_in13, 
    const ap_uint512_t* HBM_in14, const ap_uint512_t* HBM_in15, 
    const ap_uint512_t* HBM_in16, const ap_uint512_t* HBM_in17, 
    const ap_uint512_t* HBM_in18, const ap_uint512_t* HBM_in19, 
    const ap_uint512_t* HBM_in20, 
    // HBM21: assigned for HBM_info_start_addr_and_scanned_entries_every_cell
    const int* HBM_info_start_addr_and_scanned_entries_every_cell, 
    // HBM22: query vectors
    float* HBM_query_vectors,
    // HBM23: center vector table (Vector_quantizer)
    float* HBM_vector_quantizer,
    // HBM24: PQ quantizer
    float* HBM_product_quantizer,
    // const ap_uint512_t* HBM_in22, const ap_uint512_t* HBM_in23, 
    // const ap_uint512_t* HBM_in24, const ap_uint512_t* HBM_in25, 
    // const ap_uint512_t* HBM_in26, const ap_uint512_t* HBM_in27, 
    // const ap_uint512_t* HBM_in28, const ap_uint512_t* HBM_in29, 
    // const ap_uint512_t* HBM_in30, const ap_uint512_t* HBM_in31, 
    // const ap_uint512_t* table_DDR0, const ap_uint512_t* table_DDR1, 
    // HBM25: output (vector_ID, distance)
    ap_uint64_t* HBM_out,
    const int query_num
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
#pragma HLS INTERFACE m_axi port=HBM_in10  offset=slave bundle=gmem10
#pragma HLS INTERFACE m_axi port=HBM_in11  offset=slave bundle=gmem11
#pragma HLS INTERFACE m_axi port=HBM_in12  offset=slave bundle=gmem12
#pragma HLS INTERFACE m_axi port=HBM_in13  offset=slave bundle=gmem13
#pragma HLS INTERFACE m_axi port=HBM_in14  offset=slave bundle=gmem14
#pragma HLS INTERFACE m_axi port=HBM_in15  offset=slave bundle=gmem15
#pragma HLS INTERFACE m_axi port=HBM_in16  offset=slave bundle=gmem16
#pragma HLS INTERFACE m_axi port=HBM_in17  offset=slave bundle=gmem17
#pragma HLS INTERFACE m_axi port=HBM_in18  offset=slave bundle=gmem18
#pragma HLS INTERFACE m_axi port=HBM_in19  offset=slave bundle=gmem19
#pragma HLS INTERFACE m_axi port=HBM_in20  offset=slave bundle=gmem20
#pragma HLS INTERFACE m_axi port=HBM_info_start_addr_and_scanned_entries_every_cell  offset=slave bundle=gmem21
#pragma HLS INTERFACE m_axi port=HBM_query_vectors  offset=slave bundle=gmem22
#pragma HLS INTERFACE m_axi port=HBM_vector_quantizer  offset=slave bundle=gmem23
#pragma HLS INTERFACE m_axi port=HBM_product_quantizer  offset=slave bundle=gmem24
// #pragma HLS INTERFACE m_axi port=HBM_in25  offset=slave bundle=gmem25
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
#pragma HLS INTERFACE s_axilite port=HBM_in10  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in11  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in12  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in13  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in14  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in15  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in16  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in17  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in18  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in19  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in20  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_info_start_addr_and_scanned_entries_every_cell  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_query_vectors  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_product_quantizer  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_product_quantizer  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in25  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in26  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in27  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in28  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in29  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in30  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in31  bundle=control

// #pragma HLS INTERFACE s_axilite port=table_DDR0  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_DDR1  bundle=control

#pragma HLS INTERFACE s_axilite port=HBM_out bundle=control

#pragma HLS INTERFACE s_axilite port=query_num bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
    
#pragma HLS dataflow

/////////////////////////     First Half Starts    /////////////////////////

////////////////////     init      ////////////////////

    // HBM22: query vectors
    // HBM23: center vector table
    // HBM24: PQ quantizer
    // HBM25: output 

    hls::stream<float> s_query_vectors_lookup_PE;
#pragma HLS stream variable=s_query_vectors_lookup_PE depth=128
#pragma HLS resource variable=s_query_vectors_lookup_PE core=FIFO_BRAM

    hls::stream<float> s_query_vectors_distance_computation_PE[PE_NUM_CENTER_DIST_COMP];
#pragma HLS stream variable=s_query_vectors_distance_computation_PE depth=128
#pragma HLS resource variable=s_query_vectors_distance_computation_PE core=FIFO_BRAM
#pragma HLS array_partition variable=s_query_vectors_distance_computation_PE dim=1

    load_query_vectors(HBM_query_vectors, s_query_vectors_distance_computation_PE, s_query_vectors_lookup_PE, query_num);

    hls::stream<float> s_center_vectors_init_lookup_PE;
#pragma HLS stream variable=s_center_vectors_init_lookup_PE depth=2
#pragma HLS resource variable=s_center_vectors_init_lookup_PE core=FIFO_BRAM

    hls::stream<float> s_center_vectors_init_distance_computation_PE[PE_NUM_CENTER_DIST_COMP];
#pragma HLS stream variable=s_center_vectors_init_distance_computation_PE depth=8
#pragma HLS array_partition variable=s_center_vectors_init_distance_computation_PE dim=1
#pragma HLS resource variable=s_center_vectors_init_distance_computation_PE core=FIFO_SRL

    load_center_vectors(HBM_vector_quantizer, s_center_vectors_init_distance_computation_PE, s_center_vectors_init_lookup_PE);


    hls::stream<float> s_PQ_quantizer_init[PE_NUM_TABLE_CONSTRUCTION];
#pragma HLS stream variable=s_PQ_quantizer_init depth=4
#pragma HLS resource variable=s_PQ_quantizer_init core=FIFO_SRL
#pragma HLS array_partition variable=s_PQ_quantizer_init dim=1

    load_PQ_quantizer(HBM_product_quantizer, s_PQ_quantizer_init);

////////////////////     Center Distance Computation     ////////////////////    


    hls::stream<dist_cell_ID_t> s_partial_cell_distance[PE_NUM_CENTER_DIST_COMP];
#pragma HLS stream variable=s_partial_cell_distance depth=128
#pragma HLS resource variable=s_partial_cell_distance core=FIFO_BRAM
#pragma HLS array_partition variable=s_partial_cell_distance dim=1

    compute_cell_distance_wrapper(
        s_center_vectors_init_distance_computation_PE, s_query_vectors_distance_computation_PE, 
        s_partial_cell_distance, query_num);

////////////////////     Sorting Network     ////////////////////    

    hls::stream<dist_cell_ID_t> s_merge_input_A;
#pragma HLS stream variable=s_merge_input_A depth=128
#pragma HLS resource variable=s_merge_input_A core=FIFO_BRAM
    hls::stream<dist_cell_ID_t> s_merge_input_B;
#pragma HLS stream variable=s_merge_input_B depth=128
#pragma HLS resource variable=s_merge_input_B core=FIFO_BRAM
    hls::stream<dist_cell_ID_t> s_merge_partial_output;
#pragma HLS stream variable=s_merge_partial_output depth=128
#pragma HLS resource variable=s_merge_partial_output core=FIFO_BRAM
    hls::stream<dist_cell_ID_t> s_merge_output;
#pragma HLS stream variable=s_merge_output depth=128
#pragma HLS resource variable=s_merge_output core=FIFO_BRAM

    bitonic_sort(s_partial_cell_distance, s_merge_input_A, query_num);

    // periodically write large numbers, and write results out
    merge_filter_streams<PE_NUM_CENTER_DIST_COMP>(s_merge_input_A, s_merge_input_B, s_merge_partial_output, query_num);
    result_redirect<PE_NUM_CENTER_DIST_COMP>(s_merge_partial_output, s_merge_input_B, s_merge_output, query_num); 

    hls::stream<int> s_searched_cell_id_scan_controller;
#pragma HLS stream variable=s_searched_cell_id_scan_controller depth=512
// #pragma HLS resource variable=s_searched_cell_id_scan_controller core=FIFO_SRL
#pragma HLS resource variable=s_searched_cell_id_scan_controller core=FIFO_BRAM

    hls::stream<int> s_searched_cell_id_lookup_PE;
#pragma HLS stream variable=s_searched_cell_id_lookup_PE depth=512
#pragma HLS resource variable=s_searched_cell_id_lookup_PE core=FIFO_BRAM

    //  dist struct to int
    split_cell_ID(s_merge_output, s_searched_cell_id_lookup_PE, s_searched_cell_id_scan_controller, query_num);

////////////////////     Center Vector Lookup     ////////////////////    

    hls::stream<float> s_center_vectors_lookup_PE;
#pragma HLS stream variable=s_center_vectors_lookup_PE depth=128
#pragma HLS resource variable=s_center_vectors_lookup_PE core=FIFO_BRAM

    lookup_center_vectors(s_center_vectors_init_lookup_PE, s_searched_cell_id_lookup_PE, 
        s_center_vectors_lookup_PE, query_num);

////////////////////     Distance Lookup Table Construction     ////////////////////    


    hls::stream<float> s_query_vectors_table_construction_PE[PE_NUM_TABLE_CONSTRUCTION];
#pragma HLS stream variable=s_query_vectors_table_construction_PE depth=128
#pragma HLS resource variable=s_query_vectors_table_construction_PE core=FIFO_BRAM
// #pragma HLS resource variable=s_query_vectors_table_construction_PE core=FIFO_SRL
#pragma HLS array_partition variable=s_query_vectors_table_construction_PE dim=1

    query_vectors_dispatcher(s_query_vectors_lookup_PE, s_query_vectors_table_construction_PE, query_num);

    hls::stream<float> s_center_vectors_table_construction_PE[PE_NUM_TABLE_CONSTRUCTION];
#pragma HLS stream variable=s_center_vectors_table_construction_PE depth=128
#pragma HLS resource variable=s_center_vectors_table_construction_PE core=FIFO_BRAM
// #pragma HLS resource variable=s_center_vectors_table_construction_PE core=FIFO_SRL
#pragma HLS array_partition variable=s_center_vectors_table_construction_PE dim=1

    center_vectors_dispatcher(s_center_vectors_lookup_PE, s_center_vectors_table_construction_PE, query_num);

    // PE0 write 256 rows to s_result_all_distance_lookup_table, then PE1 write 256 rows
    // thus need a deep FIFO to make sure each PE can cache enough results
    // 32 * 512 = 16384 bits, BRAM = 18K bits
    // The FIFO must be long enough (each PE -> output K=256 ap_uint<512> for each cell)
    hls::stream<ap_uint512_t> s_result_table_construction_PE[PE_NUM_TABLE_CONSTRUCTION];
#pragma HLS stream variable=s_result_table_construction_PE depth=512
#pragma HLS resource variable=s_result_table_construction_PE core=FIFO_BRAM
#pragma HLS array_partition variable=s_result_table_construction_PE dim=1

    hls::stream<ap_uint512_t> s_result_all_distance_lookup_table;
#pragma HLS stream variable=s_result_all_distance_lookup_table depth=128
// #pragma HLS resource variable=s_result_all_distance_lookup_table core=FIFO_SRL
#pragma HLS resource variable=s_result_all_distance_lookup_table core=FIFO_BRAM

    lookup_table_construction_wrapper<NPROBE_PER_TABLE_CONSTRUCTION_PE>(
        s_PQ_quantizer_init, s_center_vectors_table_construction_PE, 
        s_query_vectors_table_construction_PE, s_result_table_construction_PE, query_num);

    gather_lookup_table<NPROBE_PER_TABLE_CONSTRUCTION_PE>(
        s_result_table_construction_PE, s_result_all_distance_lookup_table, query_num);

    consume_distance_LUT(s_result_all_distance_lookup_table, query_num);

/////////////////////////     First Half Ends    /////////////////////////

/////////////////////////     Second Half Starts    /////////////////////////

    hls::stream<int> s_scanned_entries_every_cell_Load_unit;
#pragma HLS stream variable=s_scanned_entries_every_cell_Load_unit depth=512
// #pragma HLS array_partition variable=s_scanned_entries_every_cell_Load_unit complete
// #pragma HLS RESOURCE variable=s_scanned_entries_every_cell_Load_unit core=FIFO_SRL

    hls::stream<int> s_scanned_entries_every_cell_Split_unit;
#pragma HLS stream variable=s_scanned_entries_every_cell_Split_unit depth=512
// #pragma HLS array_partition variable=s_scanned_entries_every_cell_Split_unit complete
// #pragma HLS RESOURCE variable=s_scanned_entries_every_cell_Split_unit core=FIFO_SRL

    hls::stream<int> s_scanned_entries_every_cell_PQ_lookup_computation;
#pragma HLS stream variable=s_scanned_entries_every_cell_PQ_lookup_computation depth=512
// #pragma HLS array_partition variable=s_scanned_entries_every_cell_PQ_lookup_computation complete
// #pragma HLS RESOURCE variable=s_scanned_entries_every_cell_PQ_lookup_computation core=FIFO_SRL

    hls::stream<int> s_scanned_entries_every_cell_Dummy;
#pragma HLS stream variable=s_scanned_entries_every_cell_Dummy depth=512
// #pragma HLS RESOURCE variable=s_scanned_entries_every_cell_Dummy core=FIFO_SRL

    hls::stream<int> s_last_valid_channel;
#pragma HLS stream variable=s_last_valid_channel depth=512
// #pragma HLS array_partition variable=s_last_valid_channel complete
// #pragma HLS RESOURCE variable=s_last_valid_channel core=FIFO_SRL

    hls::stream<int> s_start_addr_every_cell;
#pragma HLS stream variable=s_start_addr_every_cell depth=512
// #pragma HLS array_partition variable=s_start_addr_every_cell complete
// #pragma HLS RESOURCE variable=s_start_addr_every_cell core=FIFO_SRL

    hls::stream<int> s_scanned_entries_per_query_Sort_and_reduction;
#pragma HLS stream variable=s_scanned_entries_per_query_Sort_and_reduction depth=512
// #pragma HLS RESOURCE variable=s_scanned_entries_per_query_Sort_and_reduction core=FIFO_SRL

    hls::stream<int> s_scanned_entries_per_query_Priority_queue;
#pragma HLS stream variable=s_scanned_entries_per_query_Priority_queue depth=512
// #pragma HLS RESOURCE variable=s_scanned_entries_per_query_Priority_queue core=FIFO_SRL

    scan_controller<NLIST, NPROBE>(
        HBM_info_start_addr_and_scanned_entries_every_cell,
        s_searched_cell_id_scan_controller, 
        s_start_addr_every_cell,
        s_scanned_entries_every_cell_Load_unit, 
        s_scanned_entries_every_cell_Split_unit,
        s_scanned_entries_every_cell_PQ_lookup_computation,
        s_scanned_entries_every_cell_Dummy,
        s_last_valid_channel, 
        s_scanned_entries_per_query_Sort_and_reduction,
        s_scanned_entries_per_query_Priority_queue,
        query_num);

    // each 512 bit can store 3 set of (vecID, PQ code)
    hls::stream<single_PQ> s_single_PQ[3 * HBM_CHANNEL_NUM];
#pragma HLS stream variable=s_single_PQ depth=8
#pragma HLS array_partition variable=s_single_PQ complete
#pragma HLS RESOURCE variable=s_single_PQ core=FIFO_SRL

    load_and_split_PQ_codes_wrapper<NPROBE>(
        HBM_in0, HBM_in1, HBM_in2, HBM_in3, HBM_in4, HBM_in5, HBM_in6, HBM_in7, 
        HBM_in8, HBM_in9, HBM_in10, HBM_in11, HBM_in12, HBM_in13, HBM_in14,
        HBM_in15, HBM_in16, HBM_in17, HBM_in18, HBM_in19, HBM_in20, 
        s_start_addr_every_cell,
        s_scanned_entries_every_cell_Load_unit,
        s_scanned_entries_every_cell_Split_unit,
        s_single_PQ, 
        query_num);

    // 64 streams = 21 channels * 3 + 1 dummy
    hls::stream<single_PQ_result> s_single_PQ_result[4][16];
#pragma HLS stream variable=s_single_PQ_result depth=8
#pragma HLS array_partition variable=s_single_PQ_result complete
#pragma HLS RESOURCE variable=s_single_PQ_result core=FIFO_SRL

    PQ_lookup_computation_wrapper<NPROBE>(
        s_single_PQ, 
        s_scanned_entries_every_cell_Dummy,
        s_scanned_entries_every_cell_PQ_lookup_computation,
        s_last_valid_channel,
        s_single_PQ_result,
        query_num);

    Sort_reduction<single_PQ_result, 64, 16, Collect_smallest> sort_reduction_module;

    hls::stream<single_PQ_result> s_sorted_PQ_result[16];
#pragma HLS stream variable=s_sorted_PQ_result depth=8
#pragma HLS array_partition variable=s_sorted_PQ_result complete
#pragma HLS RESOURCE variable=s_sorted_PQ_result core=FIFO_SRL

    sort_reduction_module.sort_and_reduction(
        s_scanned_entries_per_query_Sort_and_reduction, s_single_PQ_result, s_sorted_PQ_result, query_num);


    hls::stream<single_PQ_result> s_output; // the top 10 numbers
#pragma HLS stream variable=s_output depth=256

    stream_redirect_to_priority_queue_wrapper(
        s_scanned_entries_per_query_Priority_queue, s_sorted_PQ_result, s_output, query_num);

    // Maybe PLRAM doesn't have enough capacity? 1000 * 10 * 8B = 80KB, should be enough.
    // TODO: use HBM as output channel
    write_result(s_output, HBM_out, query_num);

/////////////////////////     Second Half Ends    /////////////////////////
}
