#include <hls_stream.h>

#include "constants.hpp"

extern "C" {

// HBM 3 is used for output
void vadd(  
    t_axi* table_HBM0, t_axi* table_HBM1, 
    t_axi* table_HBM2, result_t* table_HBM3  
    /* t_axi* table_HBM4, t_axi* table_HBM5, 
    t_axi* table_HBM6, t_axi* table_HBM7, 
    t_axi* table_HBM8, t_axi* table_HBM9, 
    t_axi* table_HBM10, t_axi* table_HBM11, 
    t_axi* table_HBM12, t_axi* table_HBM13, 
    t_axi* table_HBM14, t_axi* table_HBM15, 
    t_axi* table_HBM16, t_axi* table_HBM17, 
    t_axi* table_HBM18, t_axi* table_HBM19, 
    t_axi* table_HBM20, t_axi* table_HBM21, 
    t_axi* table_HBM22, t_axi* table_HBM23, 
    t_axi* table_HBM24, t_axi* table_HBM25, 
    t_axi* table_HBM26, t_axi* table_HBM27, 
    t_axi* table_HBM28, t_axi* table_HBM29, 
    t_axi* table_HBM30, t_axi* table_HBM31, 
    t_axi* table_DDR0, t_axi* table_DDR1, */
    // result_t out_PLRAM[K] 
    );
}

template<const int query_num>
void load_query_vectors(
    const float* DRAM_query_vector,
    hls::stream<float>& s_query_vectors);

template<const int query_num>
void load_center_vectors(
    const float* DRAM_center_vector,
    hls::stream<float>& s_center_vectors);

template<const int query_num>
void query_vectors_dispatcher(
    hls::stream<float>& s_query_vectors,
    hls::stream<float> (&s_query_vectors_PE)[PE_NUM_TABLE_CONSTRUCTION]);

template<const int query_num>
void center_vectors_dispatcher(
    hls::stream<float>& s_center_vectors,
    hls::stream<float> (&s_center_vectors_PE)[PE_NUM_TABLE_CONSTRUCTION]);

void broadcast_PQ_quantizer(
    const float* DRAM_PQ_quantizer,
    hls::stream<float> (&s_PQ_quantizer_init)[PE_NUM_TABLE_CONSTRUCTION]);

template<const int query_num, const int nprobe_per_PE>
void lookup_table_construction_wrapper(
    hls::stream<float> (&s_PQ_quantizer_init)[PE_NUM_TABLE_CONSTRUCTION],
    hls::stream<float> (&s_center_vectors_PE)[PE_NUM_TABLE_CONSTRUCTION],
    hls::stream<float> (&s_query_vectors_PEs)[PE_NUM_TABLE_CONSTRUCTION],
    hls::stream<result_t> (&s_lookup_table_PE)[PE_NUM_TABLE_CONSTRUCTION]);

template<const int query_num, const int nprobe_per_PE>
void lookup_table_construction_PE(
    hls::stream<float>& s_PQ_quantizer_init,
    hls::stream<float>& s_center_vectors_PE,
    hls::stream<float>& s_query_vectors_PEs,
    hls::stream<result_t>& s_lookup_table_PE);

template<const int query_num, const int nprobe_per_PE>
void gather_lookup_table(
    hls::stream<result_t> (&s_lookup_table_PE)[PE_NUM_TABLE_CONSTRUCTION],
    hls::stream<result_t> &s_lookup_table);

void write_result(
    hls::stream<result_t>& s_result, result_t* results_out);