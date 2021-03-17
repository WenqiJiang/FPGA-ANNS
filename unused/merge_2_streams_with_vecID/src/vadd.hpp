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
    dist_cell_ID_t* out_PLRAM
    );
}

template<const int total_len> // the length of single input stream
void broadcast_stream(const float* data_source, 
    hls::stream<dist_cell_ID_t> &s_input_stream_0, 
    hls::stream<dist_cell_ID_t> &s_input_stream_1); 

template<const int input_stream_len>
void load_stream_to_local(
    hls::stream<dist_cell_ID_t>& s_input_stream, 
    dist_cell_ID_t input_array[input_stream_len]);

template<const int input_stream_len>
void merge_filter_arrays(
    dist_cell_ID_t input_array_0[input_stream_len],
    dist_cell_ID_t input_array_1[input_stream_len],
    hls::stream<dist_cell_ID_t>& s_output_stream);

template<const int input_stream_len>
void merge_filter_streams(
    hls::stream<dist_cell_ID_t>& s_input_stream_0, hls::stream<dist_cell_ID_t>& s_input_stream_1,
    hls::stream<dist_cell_ID_t>& s_output_stream);

template<const int total_len>
void write_result(hls::stream<dist_cell_ID_t>& out, dist_cell_ID_t* out_array);