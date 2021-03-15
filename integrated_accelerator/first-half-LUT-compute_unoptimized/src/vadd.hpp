#include <hls_stream.h>

#include "constants.hpp"

extern "C" {

void vadd(  
    float* table_HBM0, float* table_HBM1, 
    float* table_HBM2, float* table_HBM3,
    result_t* table_HBM27, int query_num
    /* t_axi* table_HBM4, t_axi* table_HBM5, 
    t_axi* table_HBM6, t_axi* table_HBM7, 
    t_axi* table_HBM8, t_axi* table_HBM9, 
    t_axi* table_HBM10, t_axi* table_HBM11, 
    t_axi* table_HBM12, t_axi* table_HBM13, 
    t_axi* table_HBM14, t_axi* table_HBM15, 
    t_axi* table_HBM16, t_axi* table_HBM17, 
    t_axi* table_HBM18, t_axi* table_HBM19, 
    t_axi* table_HBM20, t_axi* table_HBM21, 
    t_axi* table_HBM22, t_axi* table_HBM23, 
    t_axi* table_HBM24, t_axi* table_HBM25, 
    t_axi* table_HBM26, t_axi* table_HBM27, 
    t_axi* table_HBM28, t_axi* table_HBM29, 
    t_axi* table_HBM30, t_axi* table_HBM31, 
    t_axi* table_DDR0, t_axi* table_DDR1, */
    // result_t out_PLRAM[K] 
    );
}

////////////////////     init      ////////////////////

void load_query_vectors(
    const float* DRAM_query_vector,
    hls::stream<float> (&s_query_vectors_distance_computation_PE)[PE_NUM_CENTER_DIST_COMP],
    hls::stream<float>& s_query_vectors_lookup_PE, 
    const int query_num);

void load_center_vectors(
    const float* table_HBM1, 
    hls::stream<float> (&s_center_vectors_init_distance_computation_PE)[PE_NUM_CENTER_DIST_COMP],
    hls::stream<float> &s_center_vectors_init_lookup_PE);

void load_PQ_quantizer(
    const float* DRAM_PQ_quantizer,
    hls::stream<float> (&s_PQ_quantizer_init)[PE_NUM_TABLE_CONSTRUCTION]);

////////////////////     Center Distance Computation     ////////////////////  

void compute_cell_distance_wrapper(
    hls::stream<float> (&s_centroid_vectors)[PE_NUM_CENTER_DIST_COMP],
    hls::stream<float> (&s_query_vectors)[PE_NUM_CENTER_DIST_COMP],
    hls::stream<dist_cell_ID_t> (&s_partial_cell_distance)[PE_NUM_CENTER_DIST_COMP],
    const int query_num);

void compute_cell_distance(
    int start_cell_ID,
    hls::stream<float>& s_centroid_vectors,
    hls::stream<float>& s_query_vectors,
    hls::stream<dist_cell_ID_t>& s_partial_cell_distance,
    const int query_num);

////////////////////     Sorting Network     //////////////////// 

template<const int input_stream_len>
void load_stream_to_local(
    hls::stream<dist_cell_ID_t>& s_input_stream, 
    dist_cell_ID_t input_array[input_stream_len]);

template<const int input_stream_len>
void merge_filter_arrays(
    dist_cell_ID_t input_array_A[input_stream_len],
    dist_cell_ID_t input_array_B[input_stream_len],
    hls::stream<dist_cell_ID_t>& s_merge_partial_output);

template<const int input_stream_len>
void merge_filter_streams(
    hls::stream<dist_cell_ID_t>& s_merge_input_A, hls::stream<dist_cell_ID_t>& s_merge_input_B,
    hls::stream<dist_cell_ID_t>& s_merge_partial_output, const int query_num);

template<const int input_stream_len>
void result_redirect(
    hls::stream<dist_cell_ID_t>& s_merge_partial_output, 
    hls::stream<dist_cell_ID_t>& s_merge_input_B, 
    hls::stream<dist_cell_ID_t>& s_merge_output, 
    const int query_num);

void compare_swap(dist_cell_ID_t* array, int idxA, int idxB);

template<const int total_len, const int partition_num>
void compare_swap_range_head_tail(dist_cell_ID_t* array);

template<const int total_len, const int partition_num>
void compare_swap_range_interval(dist_cell_ID_t* array);

void bitonic_sort(hls::stream<dist_cell_ID_t> (&s_input_stream)[32],
    hls::stream<dist_cell_ID_t> &s_output_stream, const int query_num);

void split_cell_ID(
    hls::stream<dist_cell_ID_t>& s_merge_output, 
    hls::stream<int>& s_searched_cell_id_lookup_PE, 
    hls::stream<result_t>& s_result_searched_cell_ID,
    const int query_num);

////////////////////     Center Vector Lookup     ////////////////////   

void lookup_center_vectors(
    hls::stream<float> &s_center_vectors_init_lookup_PE,
    hls::stream<int>& s_searched_cell_id_lookup_PE,
    hls::stream<float>& s_center_vectors_lookup_PE,
    const int query_num);

////////////////////     Distance Lookup Table Construction     ////////////////////   

void query_vectors_dispatcher(
    hls::stream<float>& s_query_vectors,
    hls::stream<float> (&s_query_vectors_table_construction_PE)[PE_NUM_TABLE_CONSTRUCTION],
    const int query_num);

void center_vectors_dispatcher(
    hls::stream<float>& s_center_vectors_lookup_PE,
    hls::stream<float> (&s_center_vectors_table_construction_PE)[PE_NUM_TABLE_CONSTRUCTION],
    const int query_num);

template<const int nprobe_per_PE>
void lookup_table_construction_wrapper(
    hls::stream<float> (&s_PQ_quantizer_init)[PE_NUM_TABLE_CONSTRUCTION],
    hls::stream<float> (&s_center_vectors_table_construction_PE)[PE_NUM_TABLE_CONSTRUCTION],
    hls::stream<float> (&s_query_vectors_table_construction_PE)[PE_NUM_TABLE_CONSTRUCTION],
    hls::stream<result_t> (&s_result_table_construction_PE)[PE_NUM_TABLE_CONSTRUCTION],
    const int query_num);

template<const int nprobe_per_PE>
void lookup_table_construction_PE(
    hls::stream<float>& s_PQ_quantizer_init,
    hls::stream<float>& s_center_vectors_table_construction_PE,
    hls::stream<float>& s_query_vectors_table_construction_PE,
    hls::stream<result_t>& s_result_table_construction_PE,
    const int query_num);

template<const int nprobe_per_PE>
void gather_lookup_table(
    hls::stream<result_t> (&s_result_table_construction_PE)[PE_NUM_TABLE_CONSTRUCTION],
    hls::stream<result_t> &s_result_all_distance_lookup_table,
    const int query_num);

////////////////////     write results     ////////////////////   

void write_result(
    hls::stream<result_t>& s_result_searched_cell_ID, 
    hls::stream<result_t>& s_result_all_distance_lookup_table, 
    result_t* results_out, const int query_num);
