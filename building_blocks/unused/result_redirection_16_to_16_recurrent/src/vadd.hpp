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
    float* out_PLRAM
    );
}

template<const int dim1, const int dim2>
void broadcast_array(
    const float* data_source, hls::stream<float> (&input_stream)[dim1][dim2]);

////////////////////     Sorting Network Start    ////////////////////
void compare_swap(float* input_array, float* output_array, int idxA, int idxB);

template<const int total_len, const int partition_num>
void compare_swap_range_head_tail(float* input_array, float* output_array);

template<const int total_len, const int partition_num>
void compare_swap_range_interval(float* input_array, float* output_array);

template<const int array_len>
void load_input_stream(
    hls::stream<float> (&input_stream)[array_len], float input_array[array_len]);

template<const int array_len>
void write_output_stream(
    float output_array[array_len], hls::stream<float> (&output_stream)[array_len]);


template<const int array_len>
void bitonic_sort(
    hls::stream<float> (&input_stream)[array_len],
    hls::stream<float> (&output_stream)[array_len]);

template<>
void bitonic_sort<16>(
    hls::stream<float> (&input_stream)[16],
    hls::stream<float> (&output_stream)[16]);

////////////////////     Sorting Network Ends    ////////////////////

////////////////////     Merge and Sort and Filter Network Starts    ////////////////////

void compare_select(
    float* input_array_A, float* input_array_B, 
    float* output_array, int idxA, int idxB);

template<const int total_len>
void compare_select_range_head_tail(
    float* input_array_A, float* input_array_B, 
    float* output_array);

template<const int array_len>
void parallel_merge_sort(
    hls::stream<float> (&input_stream_A)[array_len],
    hls::stream<float> (&input_stream_B)[array_len],
    hls::stream<float> (&output_stream)[array_len]);

template<>
void parallel_merge_sort<16>(
    hls::stream<float> (&input_stream_A)[16],
    hls::stream<float> (&input_stream_B)[16],
    hls::stream<float> (&output_stream)[16]);

template<const int loop_count>
void forward_stream(
    hls::stream<float> &input_stream, hls::stream<float> &output_stream);

template<const int stream_array_num, const int array_len>
void sort_and_reduction(
    hls::stream<float> (&input_stream)[stream_array_num][array_len],
    hls::stream<float> (&output_stream)[array_len]);

template<>
void sort_and_reduction<1, 16>(
    hls::stream<float> (&input_stream)[1][16],
    hls::stream<float> (&output_stream)[16]);

////////////////////     Merge and Sort and Filter Network Ends    ////////////////////

////////////////////    Top-level Starts    ////////////////////


template<const int stream_num>
void reduction_stream_redirect(
    hls::stream<float> (&current_smallest_input_stream)[stream_num], 
    hls::stream<float> (&current_smallest_output_stream)[stream_num],
    hls::stream<float> (&final_smallest_stream)[stream_num]);


template<const int stream_array_num, const int array_len>
void sort_and_reduction_recurrent(
    hls::stream<float> (&input_stream)[stream_array_num][array_len],
    hls::stream<float> (&final_smallest_stream)[array_len]);

template<>
void sort_and_reduction_recurrent<1, 16>(
    hls::stream<float> (&input_stream)[1][16],
    hls::stream<float> (&final_smallest_stream)[16]);

////////////////////    Top-level Ends    ////////////////////

template<const int total_len>
void write_result(hls::stream<float> (&output_stream)[total_len], float* output);