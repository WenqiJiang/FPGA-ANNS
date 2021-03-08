#include <hls_stream.h>

#include "constants.hpp"

extern "C" {


void vadd(  
    const t_axi* HBM_in0, const t_axi* HBM_in1, 
    const t_axi* HBM_in2, const t_axi* HBM_in3, 
    const t_axi* HBM_in4, const t_axi* HBM_in5, 
    const t_axi* HBM_in6, const t_axi* HBM_in7, 
    const t_axi* HBM_in8, const t_axi* HBM_in9, 
    const t_axi* HBM_in10, const t_axi* HBM_in11, 
    const t_axi* HBM_in12, const t_axi* HBM_in13, 
    const t_axi* HBM_in14, const t_axi* HBM_in15, 
    const t_axi* HBM_in16, const t_axi* HBM_in17, 
    const t_axi* HBM_in18, const t_axi* HBM_in19, 
    const t_axi* HBM_in20, 
    // HBM_in21 assigned for HBM_info_start_addr_and_scanned_entries_every_cell
    const int* HBM_info_start_addr_and_scanned_entries_every_cell, 
    // const t_axi* HBM_in22, const t_axi* HBM_in23, 
    // const t_axi* HBM_in24, const t_axi* HBM_in25, 
    // const t_axi* HBM_in26, const t_axi* HBM_in27, 
    // const t_axi* HBM_in28, const t_axi* HBM_in29, 
    // const t_axi* HBM_in30, const t_axi* HBM_in31, 
    // const t_axi* table_DDR0, const t_axi* table_DDR1, 
    result_t* out_PLRAM
    );
}


template<const int query_num, const int nprobe>
void generate_scanned_cell_id(hls::stream<int>& s_scanned_cell_id);

// Checked
template<const int query_num, const int nlist, const int nprobe>
void scan_controller(
    const int* HBM_info_start_addr_and_scanned_entries_every_cell,
    hls::stream<int>& s_scanned_cell_id_Input, // from the cluster selection unit
    hls::stream<int> (&s_start_addr_every_cell)[HBM_CHANNEL_NUM],
    hls::stream<int> (&s_scanned_entries_every_cell_Load_unit)[HBM_CHANNEL_NUM],
    hls::stream<int> (&s_scanned_entries_every_cell_Split_unit)[HBM_CHANNEL_NUM],
    hls::stream<int> (&s_scanned_entries_every_cell_PQ_lookup_computation)[3 * HBM_CHANNEL_NUM],
    hls::stream<int>& s_scanned_entries_every_cell_Dummy,
    hls::stream<int> (&s_last_element_valid_PQ_lookup_computation)[3 * HBM_CHANNEL_NUM],
    hls::stream<int>& s_scanned_entries_per_query_Result);

template<const int query_num, const int nprobe>
void load_PQ_codes(
    const t_axi* src,
    hls::stream<int>& s_scanned_entries_every_cell,
    hls::stream<int>& s_start_addr,
    hls::stream<t_axi>& s_raw_input);

three_PQ_codes ap_uint512_to_three_PQ_codes(ap_uint<512> in);

template<const int query_num, const int nprobe>
void type_conversion_and_split(
    hls::stream<int>& s_scanned_entries_every_cell,
    hls::stream<t_axi>& s_raw_input,
    hls::stream<single_PQ>& s_single_PQ_0,
    hls::stream<single_PQ>& s_single_PQ_1,
    hls::stream<single_PQ>& s_single_PQ_2);

template<const int query_num, const int nprobe>
void load_and_split_PQ_codes(
    const t_axi* HBM_in, // HBM for PQ code + vecID storage
    hls::stream<int>& s_start_addr,
    hls::stream<int>& s_scanned_entries_every_cell_Load_unit,
    hls::stream<int>& s_scanned_entries_every_cell_Split_unit,
    hls::stream<single_PQ>& s_single_PQ_0,
    hls::stream<single_PQ>& s_single_PQ_1,
    hls::stream<single_PQ>& s_single_PQ_2);

template<const int query_num, const int nprobe>
void load_and_split_PQ_codes_wrapper(
    const t_axi* HBM_in0, const t_axi* HBM_in1, 
    const t_axi* HBM_in2, const t_axi* HBM_in3, 
    const t_axi* HBM_in4, const t_axi* HBM_in5, 
    const t_axi* HBM_in6, const t_axi* HBM_in7, 
    const t_axi* HBM_in8, const t_axi* HBM_in9, 
    const t_axi* HBM_in10, const t_axi* HBM_in11, 
    const t_axi* HBM_in12, const t_axi* HBM_in13, 
    const t_axi* HBM_in14, const t_axi* HBM_in15, 
    const t_axi* HBM_in16, const t_axi* HBM_in17, 
    const t_axi* HBM_in18, const t_axi* HBM_in19, 
    const t_axi* HBM_in20, 
    hls::stream<int> (&s_start_addr)[HBM_CHANNEL_NUM],
    hls::stream<int> (&s_scanned_entries_every_cell_Load_unit)[HBM_CHANNEL_NUM],
    hls::stream<int> (&s_scanned_entries_every_cell_Split_unit)[HBM_CHANNEL_NUM],
    hls::stream<single_PQ> (&s_single_PQ)[3 * HBM_CHANNEL_NUM]);

void init_distance_table_partition(float table[512], float bias);

template<const int query_num, const int nprobe>
void dummy_PQ_result_sender(
    hls::stream<int>& s_scanned_entries_every_cell_Dummy,
    hls::stream<single_PQ_result> &s_single_PQ_result);

template<const int query_num, const int nprobe>
void PQ_lookup_computation_wrapper(
    hls::stream<single_PQ> (&s_single_PQ)[3 * HBM_CHANNEL_NUM], 
    hls::stream<int>& s_scanned_entries_every_cell_Dummy,
    hls::stream<int> (&s_scanned_entries_every_cell_PQ_lookup_computation)[3 * HBM_CHANNEL_NUM], 
    hls::stream<int> (&s_last_element_valid_PQ_lookup_computation)[3 * HBM_CHANNEL_NUM], 
    hls::stream<single_PQ_result> (&s_single_PQ_result)[4][16]);

template<const int query_num, const int nprobe>
void PQ_lookup_computation(
    hls::stream<single_PQ>& s_single_PQ, 
    hls::stream<int>& s_scanned_entries_every_cell_PQ_lookup_computation,
    hls::stream<int>& s_last_element_valid_PQ_lookup_computation, 
    hls::stream<single_PQ_result>& s_single_PQ_result);

////////////////////  Priority Queues for PQ results Starts  ////////////////////

// Checked
template<const int query_num>
void consume_and_write_result(
    hls::stream<single_PQ_result> (&output_stream)[4][16],
    hls::stream<int>& s_scanned_entries_every_cell,
    ap_uint<64>* output);