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
    ap_uint<64>* out_PLRAM
    );
}

///// Functions without specialization Starts /////

template<const int array_len>
void bitonic_sort(
    hls::stream<single_PQ_result> (&input_stream)[array_len],
    hls::stream<single_PQ_result> (&output_stream)[array_len]);

template<const int array_len>
void parallel_merge_sort(
    hls::stream<single_PQ_result> (&input_stream_A)[array_len],
    hls::stream<single_PQ_result> (&input_stream_B)[array_len],
    hls::stream<single_PQ_result> (&output_stream)[array_len]);

template<const int stream_array_num, const int array_len>
void sort_and_reduction(
    hls::stream<single_PQ_result> (&input_stream)[stream_array_num][array_len],
    hls::stream<single_PQ_result> (&output_stream)[array_len]);

///// Functions without specialization Ends /////

template<const int dim1, const int dim2>
void broadcast_array(
    const float* data_source, hls::stream<single_PQ_result> (&input_stream)[dim1][dim2]);
void compare_swap(
    single_PQ_result* input_array, single_PQ_result* output_array, int idxA, int idxB);

template<const int total_len, const int partition_num>
void compare_swap_range_head_tail(single_PQ_result* input_array, single_PQ_result* output_array);

template<const int total_len, const int partition_num>
void compare_swap_range_interval(single_PQ_result* input_array, single_PQ_result* output_array);

template<const int array_len>
void load_input_stream(
    hls::stream<single_PQ_result> (&input_stream)[array_len], 
    single_PQ_result input_array[array_len]);

template<const int array_len>
void write_output_stream(
    single_PQ_result output_array[array_len], 
    hls::stream<single_PQ_result> (&output_stream)[array_len]);

template<>
void bitonic_sort<16>(
    hls::stream<single_PQ_result> (&input_stream)[16],
    hls::stream<single_PQ_result> (&output_stream)[16]);

void compare_select(
    single_PQ_result* input_array_A, single_PQ_result* input_array_B, 
    single_PQ_result* output_array, int idxA, int idxB);

template<const int total_len>
void compare_select_range_head_tail(
    single_PQ_result* input_array_A, single_PQ_result* input_array_B, 
    single_PQ_result* output_array);

template<>
void parallel_merge_sort<16>(
    hls::stream<single_PQ_result> (&input_stream_A)[16],
    hls::stream<single_PQ_result> (&input_stream_B)[16],
    hls::stream<single_PQ_result> (&output_stream)[16]);
template<>
void sort_and_reduction<4, 16>(
    hls::stream<single_PQ_result> (&input_stream)[4][16],
    hls::stream<single_PQ_result> (&output_stream)[16]);

template<const int total_len>
void write_result(hls::stream<single_PQ_result> (&output_stream)[total_len], ap_uint<64>* output);
