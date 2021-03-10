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
    result_t* out_PLRAM
    );
}

template<const int query_num>
void load_PQ_codes(
    const t_axi* table_DDR0,
    hls::stream<t_axi>& s_raw_input);

three_PQ_codes ap_uint512_to_three_PQ_codes(ap_uint<512> in);

template<const int query_num>
void type_conversion_and_split(
    hls::stream<t_axi>& s_raw_input,
    hls::stream<single_PQ>& s_single_PQ_0,
    hls::stream<single_PQ>& s_single_PQ_1,
    hls::stream<single_PQ>& s_single_PQ_2);

void init_distance_table_partition(float table[256], float bias);

template<const int query_num>
void PQ_lookup_computation(
    hls::stream<single_PQ> (&s_single_PQ)[3], hls::stream<single_PQ_result> (&s_single_PQ_result)[3]);

template<const int query_num>
void merge_result(
    hls::stream<single_PQ_result>& s_single_PQ_result_0, 
    hls::stream<single_PQ_result>& s_single_PQ_result_1, 
    hls::stream<single_PQ_result>& s_single_PQ_result_2, 
    hls::stream<result_t>& s_PQ_result);

template<typename T, const int total_len>
void write_result(
    hls::stream<T>& s_result, T* results_out);