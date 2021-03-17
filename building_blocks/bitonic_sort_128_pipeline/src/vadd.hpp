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


template<const int stream_num>
void broadcast_array(
    const float* data_source, hls::stream<float> (&input_stream)[stream_num]);

void compare_swap(float* input_array, float* output_array, int idxA, int idxB);

template<const int total_len, const int partition_num>
void compare_swap_range_head_tail(float* input_array, float* output_array);

template<const int total_len, const int partition_num>
void compare_swap_range_interval(float* input_array, float* output_array);

template<const int stream_num>
void load_input_stream(
    hls::stream<float> (&input_stream)[stream_num], float input_array[stream_num]);

template<const int stream_num>
void write_output_stream(
    float output_array[stream_num], hls::stream<float> (&output_stream)[stream_num]);

void bitonic_sort_128(
    hls::stream<float> (&input_stream)[128],
    hls::stream<float> (&output_stream)[128]);

template<const int stream_num>
void write_result(hls::stream<float> (&output_stream)[stream_num], float* output);