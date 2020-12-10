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
    // const t_axi* table_HBM28, const t_axi* table_HBM29, 
    // const t_axi* table_HBM30, const t_axi* table_HBM31, 
    // const t_axi* table_DDR0, const t_axi* table_DDR1,
    float* out_PLRAM
    );
}

void load_HBM(const t_axi* HBM_bank, hls::stream<float> &s_output);

void write_results(
    hls::stream<float> &s_output_0, hls::stream<float> &s_output_1, 
    hls::stream<float> &s_output_2, hls::stream<float> &s_output_3, 
    hls::stream<float> &s_output_4, hls::stream<float> &s_output_5, 
    hls::stream<float> &s_output_6, hls::stream<float> &s_output_7, 
    hls::stream<float> &s_output_8, hls::stream<float> &s_output_9, 
    hls::stream<float> &s_output_10, hls::stream<float> &s_output_11, 
    hls::stream<float> &s_output_12, hls::stream<float> &s_output_13, 
    hls::stream<float> &s_output_14, hls::stream<float> &s_output_15, 
    hls::stream<float> &s_output_16, hls::stream<float> &s_output_17, 
    hls::stream<float> &s_output_18, hls::stream<float> &s_output_19, 
    hls::stream<float> &s_output_20, hls::stream<float> &s_output_21, 
    hls::stream<float> &s_output_22, hls::stream<float> &s_output_23, 
    hls::stream<float> &s_output_24, hls::stream<float> &s_output_25, 
    hls::stream<float> &s_output_26, hls::stream<float> &s_output_27, 
    // hls::stream<float> &s_output_28, hls::stream<float> &s_output_29, 
    // hls::stream<float> &s_output_30, hls::stream<float> &s_output_31,
    float* out_PLRAM);
    
// template<const int stream_num>
// void write_results(hls::stream<float> (&s_output)[stream_num],
//     float* out_PLRAM);