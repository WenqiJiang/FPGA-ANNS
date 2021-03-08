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
    hls::stream<int>& s_scanned_cell_id_Input, 
    hls::stream<int>& s_scanned_entries_every_cell_Dummy,
    hls::stream<int>& s_scanned_entries_per_query_Sort_and_reduction,
    hls::stream<int>& s_scanned_entries_per_query_Result);

// Checked
template<const int query_num, const int nprobe>
void dummy_PQ_result_sender(
    hls::stream<int>& s_scanned_entries_every_cell_Dummy,
    hls::stream<single_PQ_result> &s_single_PQ_result);

template<const int query_num, const int nprobe>
void replicate_s_scanned_entries_every_cell_Dummy(
    hls::stream<int>& s_scanned_entries_every_cell_Dummy,
    hls::stream<int> (&s_scanned_entries_every_cell_Dummy_replicated)[16]);

template<const int query_num, const int nprobe>
void dummy_PQ_result_sender_wrapper(
    hls::stream<int>& s_scanned_entries_every_cell_Dummy,
    hls::stream<single_PQ_result> (&s_single_PQ_result)[16]);

////////////////////  Priority Queues for PQ results Ends  ////////////////////

// Checked
template<const int query_num>
void consume_and_write_result(
    hls::stream<single_PQ_result> (&output_stream)[16],
    hls::stream<int>& s_scanned_entries_every_cell,
    ap_uint<64>* output);