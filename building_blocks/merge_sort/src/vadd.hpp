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

template<const int total_len>
void broadcast_stream(const float* data_source, hls::stream<float> (&s_input_stream)[total_len]);
    
template<const int input_stream_len>
void merge_streams(
    hls::stream<float>& s_input_stream_0, hls::stream<float>& s_input_stream_1,
    hls::stream<float>& s_output_stream);

void merge_stage1(
    hls::stream<float> (&s_input_stream)[32],
    hls::stream<float> (&s_result_stage1)[16]);

void merge_stage2(
    hls::stream<float> (&s_result_stage1)[16],
    hls::stream<float> (&s_result_stage2)[8]);

void merge_stage3(
    hls::stream<float> (&s_result_stage2)[8],
    hls::stream<float> (&s_result_stage3)[4]);

void merge_stage4(
    hls::stream<float> (&s_result_stage3)[4],
    hls::stream<float> (&s_result_stage4)[2]);

void merge_stage5(
    hls::stream<float> (&s_result_stage4)[2],
    hls::stream<float> &s_result);

void merge_sort(
    hls::stream<float> (&s_input_stream)[32],
    hls::stream<float> &s_result);

template<const int total_len>
void write_result(hls::stream<float>& out, float* out_array);

const int FIFO_depth_factor = 8;
const int s_input_stream_depth = 1 * FIFO_depth_factor;
const int s_result_stage1_depth = 2 * FIFO_depth_factor;
const int s_result_stage2_depth = 4 * FIFO_depth_factor;
const int s_result_stage3_depth = 8 * FIFO_depth_factor;
const int s_result_stage4_depth = 16 * FIFO_depth_factor;
const int s_result_depth = 32 * FIFO_depth_factor;