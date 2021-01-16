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

template<const int stream_array_num, const int array_len>
void sort_and_reduction(
    hls::stream<float> (&input_stream)[stream_array_num][array_len],
    hls::stream<float> (&output_stream)[array_len]);

template<>
void sort_and_reduction<4, 16>(
    hls::stream<float> (&input_stream)[4][16],
    hls::stream<float> (&output_stream)[16]);

template<const int stream_num>
void reduction_stream_redirect(
    hls::stream<float> (&current_smallest_input_stream)[stream_num], 
    hls::stream<float> (&current_smallest_output_stream)[stream_num],
    hls::stream<float> &final_smallest_stream);

template<const int partition_num, const int stream_num>
void partition_sorted_streams(
        hls::stream<float> (&sorted_input_stream)[stream_num], 
        hls::stream<float> (&sorted_input_stream_partition)[partition_num][stream_num]);

template<const int array_len>
int argmin(float array[array_len]);

template<>
int argmin<4>(float array[4]);

template<const int partition_num, const int stream_len>
void merge_sorted_streams_sequential(
    hls::stream<float> (&sorted_stream)[partition_num], 
    hls::stream<float> &output_stream);


template<const int stream_array_num, const int array_len>
void sort_and_reduction_recurrent(
    hls::stream<float> (&input_stream)[stream_array_num][array_len],
    hls::stream<float> &final_smallest_stream);

template<>
void sort_and_reduction_recurrent<4, 16>(
    hls::stream<float> (&input_stream)[4][16],
    hls::stream<float> &output_stream);

template<const int total_len>
void write_result(hls::stream<float> &output_stream, float* output);