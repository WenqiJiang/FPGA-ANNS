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

template<const int total_len, const int stream_num, const int query_num> 
void broadcast_stream(const float* data_source,
    hls::stream<float> (&s_input_stream)[stream_num]);

template<const int stream_num, const int nlist, const int query_num>  
void switch_round_robin(
    hls::stream<float> (&s_input_stream)[stream_num],
    hls::stream<float> (&s_input_stream_PE_0)[stream_num],
    hls::stream<float> (&s_input_stream_PE_1)[stream_num],
    hls::stream<float> (&s_input_stream_PE_2)[stream_num],
    hls::stream<float> (&s_input_stream_PE_3)[stream_num],
    hls::stream<float> (&s_input_stream_PE_4)[stream_num],
    hls::stream<float> (&s_input_stream_PE_5)[stream_num],
    hls::stream<float> (&s_input_stream_PE_6)[stream_num],
    hls::stream<float> (&s_input_stream_PE_7)[stream_num]
);

void sort_merge_PE(
    hls::stream<float> (&s_input_stream)[PE_NUM_DIST_COMP],
    hls::stream<float> &s_merge_output);

template<const int input_stream_len>
void load_stream_to_local(
    hls::stream<float>& s_input_stream, float input_array[input_stream_len]);

template<const int input_stream_len>
void merge_filter_arrays(
    float input_array_0[input_stream_len],float input_array_1[input_stream_len],
    hls::stream<float>& s_merge_partial_output);

template<const int input_stream_len, const int merge_num>
void merge_filter_streams(
    hls::stream<float>& s_merge_input_0, hls::stream<float>& s_merge_input_1,
    hls::stream<float>& s_merge_partial_output);

template<const int input_stream_len, const int query_num>
void top_level_merge(
    hls::stream<float>& s_merge_output_PE0, hls::stream<float>& s_merge_output_PE1,
    hls::stream<float>& s_merge_output_PE2, hls::stream<float>& s_merge_output_PE3, 
    hls::stream<float>& s_merge_output_PE4, hls::stream<float>& s_merge_output_PE5, 
    hls::stream<float>& s_merge_output_PE6, hls::stream<float>& s_merge_output_PE7, 
    hls::stream<float>& s_merge_output);
    
template<const int input_stream_len, const int merge_iter, const int query_num>
void result_redirect(
    hls::stream<float>& s_merge_partial_output, 
    hls::stream<float>& s_merge_input_1, 
    hls::stream<float>& s_merge_output);

void compare_swap(float* array, int idxA, int idxB);

template<const int total_len, const int partition_num>
void compare_swap_range_head_tail(float* array);

template<const int sort_times>
void bitonic_sort_32(hls::stream<float> (&s_input_stream)[32],
    hls::stream<float> &s_output_stream);

template<const int total_len>
void write_result(hls::stream<float>& out, float* out_array);
