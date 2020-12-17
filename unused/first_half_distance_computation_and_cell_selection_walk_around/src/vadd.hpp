#include <hls_stream.h>

#include "constants.hpp"

extern "C" {
void vadd(  
    const t_axi* table_HBM0, const t_axi* table_HBM1, 
    const t_axi* table_HBM2, const t_axi* table_HBM3, 
    const t_axi* table_HBM4, const t_axi* table_HBM5, 
    const t_axi* table_HBM6, const t_axi* table_HBM7, 
    const t_axi* table_HBM8, const t_axi* table_HBM9, 
    const t_axi* table_HBM10, const t_axi* table_HBM11, 
    const t_axi* table_HBM12, const t_axi* table_HBM13, 
    const t_axi* table_HBM14, const t_axi* table_HBM15, 
    const t_axi* table_HBM16, const t_axi* table_HBM17, 
    const t_axi* table_HBM18, const t_axi* table_HBM19, 
    const t_axi* table_HBM20, const t_axi* table_HBM21, 
    const t_axi* table_HBM22, const t_axi* table_HBM23, 
    const t_axi* table_HBM24, const t_axi* table_HBM25, 
    const t_axi* table_HBM26, const t_axi* table_HBM27, 
    const t_axi* table_HBM28, const t_axi* table_HBM29, 
    const t_axi* table_HBM30, const t_axi* table_HBM31, 
    const t_axi* table_DDR0, const t_axi* table_DDR1,
    dist_cell_ID_t* out_PLRAM
    );
}

template<const int query_num>
void broadcast_query_vector(
    const float* table_DDR0,
    hls::stream<float> (&s_query_vectors)[PE_NUM_CENTER_DIST_COMP]);

void broadcast_init_centroid_vectors(
    const float* table_DDR1,
    hls::stream<float> (&s_centroid_vectors)[PE_NUM_CENTER_DIST_COMP]);

template<const int query_num>
void compute_cell_distance_wrapper(
    hls::stream<float> (&s_centroid_vectors)[PE_NUM_CENTER_DIST_COMP],
    hls::stream<float> (&s_query_vectors)[PE_NUM_CENTER_DIST_COMP],
    hls::stream<float> (&s_partial_cell_dist)[PE_NUM_CENTER_DIST_COMP],
    hls::stream<int> (&s_partial_cell_id)[PE_NUM_CENTER_DIST_COMP]);

template<const int query_num>
void compute_cell_distance(
    int start_cell_ID,
    hls::stream<float>& s_centroid_vectors,
    hls::stream<float>& s_query_vectors,
    hls::stream<float>& s_partial_cell_dist,
    hls::stream<int>& s_partial_cell_id);

////////////////////     Center Distance Computation Ends    ////////////////////

////////////////////     Sorting Network Starts    ////////////////////

template<typename T, const int input_stream_len>
void load_stream_to_local(
    hls::stream<T>& s_input_stream, 
    T input_array[input_stream_len]);

template<const int input_stream_len>
void merge_filter_arrays(
    float input_array_A_dist[input_stream_len],
    float input_array_B_dist[input_stream_len],
    int input_array_A_id[input_stream_len],
    int input_array_B_id[input_stream_len],
    hls::stream<float>& s_merge_partial_output_dist,
    hls::stream<int>& s_merge_partial_output_id,
    );

template<const int input_stream_len>
void merge_filter_streams(
    hls::stream<float>& s_merge_input_A_dist, hls::stream<float>& s_merge_input_B_dist,
    hls::stream<int>& s_merge_input_A_id, hls::stream<int>& s_merge_input_B_id,
    hls::stream<float>& s_merge_partial_output_dist, 
    hls::stream<int>& s_merge_partial_output_id);

template<const int input_stream_len>
void result_redirect(
    hls::stream<float>& s_merge_partial_output_dist, 
    hls::stream<int>& s_merge_partial_output_id, 
    hls::stream<float>& s_merge_input_B_dist, 
    hls::stream<int>& s_merge_input_B_id, 
    hls::stream<float>& s_merge_output_dist,
    hls::stream<int>& s_merge_output_id);

void compare_swap(float* array_dist, int* array_id, int idxA, int idxB);

template<const int total_len, const int partition_num>
void compare_swap_range_head_tail(float* array_dist, int* array_id);

template<const int total_len, const int partition_num>
void compare_swap_range_interval(float* array_dist, int* array_id);

void bitonic_sort(
    hls::stream<float> (&s_input_stream_dist)[32],
    hls::stream<int> (&s_input_stream_id)[32],
    hls::stream<float> &s_output_stream_dist,
    hls::stream<int> &s_output_stream_id);

////////////////////     Sorting Network Ends    ////////////////////

template<const int total_len>
void write_result(
    hls::stream<float>& out_dist, 
    hls::stream<float>& out_id, 
    dist_cell_ID_t* out_array);