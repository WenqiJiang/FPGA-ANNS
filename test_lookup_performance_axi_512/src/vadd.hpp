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

void init_distance_table(float reference_table[16][256]);

void copy_distance_table_wrapper(
    float distance_lookup_table[16][256],
    float distance_lookup_table_HBM0[16][256], float distance_lookup_table_HBM1[16][256], 
    float distance_lookup_table_HBM2[16][256], float distance_lookup_table_HBM3[16][256], 
    float distance_lookup_table_HBM4[16][256], float distance_lookup_table_HBM5[16][256], 
    float distance_lookup_table_HBM6[16][256], float distance_lookup_table_HBM7[16][256], 
    float distance_lookup_table_HBM8[16][256], float distance_lookup_table_HBM9[16][256], 
    float distance_lookup_table_HBM10[16][256], float distance_lookup_table_HBM11[16][256], 
    float distance_lookup_table_HBM12[16][256], float distance_lookup_table_HBM13[16][256], 
    float distance_lookup_table_HBM14[16][256], float distance_lookup_table_HBM15[16][256], 
    float distance_lookup_table_HBM16[16][256], float distance_lookup_table_HBM17[16][256], 
    float distance_lookup_table_HBM18[16][256], float distance_lookup_table_HBM19[16][256], 
    float distance_lookup_table_HBM20[16][256], float distance_lookup_table_HBM21[16][256], 
    float distance_lookup_table_HBM22[16][256], float distance_lookup_table_HBM23[16][256], 
    float distance_lookup_table_HBM24[16][256], float distance_lookup_table_HBM25[16][256], 
    float distance_lookup_table_HBM26[16][256], float distance_lookup_table_HBM27[16][256], 
    float distance_lookup_table_HBM28[16][256], float distance_lookup_table_HBM29[16][256], 
    float distance_lookup_table_HBM30[16][256], float distance_lookup_table_HBM31[16][256]);

void copy_distance_table(float reference_table[16][256], float table[16][256]);

void estimate_distance_wrapper(
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
    float distance_lookup_table_HBM0[16][256], float distance_lookup_table_HBM1[16][256], 
    float distance_lookup_table_HBM2[16][256], float distance_lookup_table_HBM3[16][256], 
    float distance_lookup_table_HBM4[16][256], float distance_lookup_table_HBM5[16][256], 
    float distance_lookup_table_HBM6[16][256], float distance_lookup_table_HBM7[16][256], 
    float distance_lookup_table_HBM8[16][256], float distance_lookup_table_HBM9[16][256], 
    float distance_lookup_table_HBM10[16][256], float distance_lookup_table_HBM11[16][256], 
    float distance_lookup_table_HBM12[16][256], float distance_lookup_table_HBM13[16][256], 
    float distance_lookup_table_HBM14[16][256], float distance_lookup_table_HBM15[16][256], 
    float distance_lookup_table_HBM16[16][256], float distance_lookup_table_HBM17[16][256], 
    float distance_lookup_table_HBM18[16][256], float distance_lookup_table_HBM19[16][256], 
    float distance_lookup_table_HBM20[16][256], float distance_lookup_table_HBM21[16][256], 
    float distance_lookup_table_HBM22[16][256], float distance_lookup_table_HBM23[16][256], 
    float distance_lookup_table_HBM24[16][256], float distance_lookup_table_HBM25[16][256], 
    float distance_lookup_table_HBM26[16][256], float distance_lookup_table_HBM27[16][256], 
    float distance_lookup_table_HBM28[16][256], float distance_lookup_table_HBM29[16][256], 
    float distance_lookup_table_HBM30[16][256], float distance_lookup_table_HBM31[16][256],
    hls::stream<float>& s_result_buffer_HBM0, hls::stream<float>& s_result_buffer_HBM1, 
    hls::stream<float>& s_result_buffer_HBM2, hls::stream<float>& s_result_buffer_HBM3, 
    hls::stream<float>& s_result_buffer_HBM4, hls::stream<float>& s_result_buffer_HBM5, 
    hls::stream<float>& s_result_buffer_HBM6, hls::stream<float>& s_result_buffer_HBM7, 
    hls::stream<float>& s_result_buffer_HBM8, hls::stream<float>& s_result_buffer_HBM9, 
    hls::stream<float>& s_result_buffer_HBM10, hls::stream<float>& s_result_buffer_HBM11, 
    hls::stream<float>& s_result_buffer_HBM12, hls::stream<float>& s_result_buffer_HBM13, 
    hls::stream<float>& s_result_buffer_HBM14, hls::stream<float>& s_result_buffer_HBM15, 
    hls::stream<float>& s_result_buffer_HBM16, hls::stream<float>& s_result_buffer_HBM17, 
    hls::stream<float>& s_result_buffer_HBM18, hls::stream<float>& s_result_buffer_HBM19, 
    hls::stream<float>& s_result_buffer_HBM20, hls::stream<float>& s_result_buffer_HBM21, 
    hls::stream<float>& s_result_buffer_HBM22, hls::stream<float>& s_result_buffer_HBM23, 
    hls::stream<float>& s_result_buffer_HBM24, hls::stream<float>& s_result_buffer_HBM25, 
    hls::stream<float>& s_result_buffer_HBM26, hls::stream<float>& s_result_buffer_HBM27, 
    hls::stream<float>& s_result_buffer_HBM28, hls::stream<float>& s_result_buffer_HBM29, 
    hls::stream<float>& s_result_buffer_HBM30, hls::stream<float>& s_result_buffer_HBM31
);

template<const int PQ_NUM_PER_BANK>
void estimate_distance(
    const t_axi* table_RAM, const int start_logic_address,
    const float distance_lookup_table[16][256],
    hls::stream<float>& s_result_buffer);

void write_result(
    hls::stream<float>& s_result_buffer_HBM0, hls::stream<float>& s_result_buffer_HBM1, 
    hls::stream<float>& s_result_buffer_HBM2, hls::stream<float>& s_result_buffer_HBM3, 
    hls::stream<float>& s_result_buffer_HBM4, hls::stream<float>& s_result_buffer_HBM5, 
    hls::stream<float>& s_result_buffer_HBM6, hls::stream<float>& s_result_buffer_HBM7, 
    hls::stream<float>& s_result_buffer_HBM8, hls::stream<float>& s_result_buffer_HBM9, 
    hls::stream<float>& s_result_buffer_HBM10, hls::stream<float>& s_result_buffer_HBM11, 
    hls::stream<float>& s_result_buffer_HBM12, hls::stream<float>& s_result_buffer_HBM13, 
    hls::stream<float>& s_result_buffer_HBM14, hls::stream<float>& s_result_buffer_HBM15, 
    hls::stream<float>& s_result_buffer_HBM16, hls::stream<float>& s_result_buffer_HBM17, 
    hls::stream<float>& s_result_buffer_HBM18, hls::stream<float>& s_result_buffer_HBM19, 
    hls::stream<float>& s_result_buffer_HBM20, hls::stream<float>& s_result_buffer_HBM21, 
    hls::stream<float>& s_result_buffer_HBM22, hls::stream<float>& s_result_buffer_HBM23, 
    hls::stream<float>& s_result_buffer_HBM24, hls::stream<float>& s_result_buffer_HBM25, 
    hls::stream<float>& s_result_buffer_HBM26, hls::stream<float>& s_result_buffer_HBM27, 
    hls::stream<float>& s_result_buffer_HBM28, hls::stream<float>& s_result_buffer_HBM29, 
    hls::stream<float>& s_result_buffer_HBM30, hls::stream<float>& s_result_buffer_HBM31,
    float* results_out);

