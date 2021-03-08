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

template<const int query_num, const int nlist, const int nprobe>
void scan_controller(
    const int* HBM_info_start_addr_and_scanned_entries_every_cell,
    hls::stream<int>& s_scanned_cell_id_Input, 
    hls::stream<int>& s_scanned_entries_every_cell_Dummy,
    hls::stream<int>& s_scanned_entries_per_query_Sort_and_reduction,
    hls::stream<int>& s_scanned_entries_per_query_Priority_queue);
    
template<const int query_num, const int nprobe>
void dummy_PQ_result_sender(
    hls::stream<int>& s_scanned_entries_every_cell_Dummy,
    hls::stream<single_PQ_result> &s_single_PQ_result);

template<const int query_num, const int nprobe>
void replicate_s_scanned_entries_every_cell_Dummy(
    hls::stream<int>& s_scanned_entries_every_cell_Dummy,
    hls::stream<int> (&s_scanned_entries_every_cell_Dummy_replicated)[64]);

template<const int query_num, const int nprobe>
void dummy_PQ_result_sender_wrapper(
    hls::stream<int>& s_scanned_entries_every_cell_Dummy,
    hls::stream<single_PQ_result> (&s_single_PQ_result)[4][16]);

////////////////////  Priority Queues for PQ results Starts  ////////////////////

template<const int query_num>
void replicate_scanned_entries_per_query_Redirected_sorted_stream(
        hls::stream<int>& s_scanned_entries_per_query_Priority_queue, 
        hls::stream<int> (&s_scanned_entries_every_cell_Redirected_sorted_stream)[16]);

template<const int query_num>
void consume_single_stream(
    hls::stream<single_PQ_result> &input_stream,
    hls::stream<int>& s_scanned_entries_every_cell);

template<const int query_num>
void split_single_stream(
    hls::stream<single_PQ_result> &input_stream,
    hls::stream<int>& s_scanned_entries_every_cell,
    hls::stream<int>& s_scanned_entries_every_cell_Out_priority_queue_A, 
    hls::stream<int>& s_scanned_entries_every_cell_Out_priority_queue_B, 
    hls::stream<single_PQ_result> &output_stream_A,
    hls::stream<single_PQ_result> &output_stream_B);

template<const int query_num>
void consume_and_redirect_sorted_streams(
    hls::stream<single_PQ_result> (&sorted_stream)[16], 
    hls::stream<int>& s_scanned_entries_per_query_In_Priority_queue,
    hls::stream<int> (&s_scanned_entries_every_cell_Out_priority_queue)[20],
    hls::stream<single_PQ_result> (&redirected_sorted_stream)[20]);

template<const int query_num, const int iter_num_per_query>
void send_iter_num(hls::stream<int>& s_merged_intermediate_result_iter);

template<const int query_num, const int priority_queue_len>
void merge_streams(
    hls::stream<single_PQ_result> (&intermediate_result)[20],
    hls::stream<single_PQ_result> &output_stream);

template<const int query_num>
void stream_redirect_to_priority_queue_wrapper( 
    hls::stream<int>& s_scanned_entries_per_query_Priority_queue,
    hls::stream<single_PQ_result> (&sorted_stream)[16], 
    hls::stream<single_PQ_result> &output_stream);

////////////////////  Priority Queues for PQ results Ends  ////////////////////

template<const int total_len>
void write_result(hls::stream<single_PQ_result> &output_stream, ap_uint<64>* output);