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
    const t_axi* HBM_in20, // const t_axi* HBM_in21, 
    // const t_axi* HBM_in22, const t_axi* HBM_in23, 
    // const t_axi* HBM_in24, const t_axi* HBM_in25, 
    // const t_axi* HBM_in26, const t_axi* HBM_in27, 
    // const t_axi* HBM_in28, const t_axi* HBM_in29, 
    // const t_axi* HBM_in30, const t_axi* HBM_in31, 
    // const t_axi* table_DDR0, const t_axi* table_DDR1, 
    result_t* out_PLRAM
    );
}


template<const int iter_num, const int query_num_per_iter>
void load_PQ_codes(
    const t_axi* src,
    hls::stream<t_axi>& s_raw_input);

three_PQ_codes ap_uint512_to_three_PQ_codes(ap_uint<512> in);


template<const int query_num>
void type_conversion_and_split_wrapper(
    hls::stream<t_axi> (&s_raw_input)[HBM_CHANNEL_NUM],
    hls::stream<single_PQ> (&s_single_PQ)[3 * HBM_CHANNEL_NUM]);

template<const int query_num>
void type_conversion_and_split(
    hls::stream<t_axi>& s_raw_input,
    hls::stream<single_PQ>& s_single_PQ_0,
    hls::stream<single_PQ>& s_single_PQ_1,
    hls::stream<single_PQ>& s_single_PQ_2);

void init_distance_table_partition(float table[512], float bias);

template<const int query_num>
void dummy_PQ_result_sender(hls::stream<single_PQ_result> &s_single_PQ_result);

template<const int query_num>
void PQ_lookup_computation_wrapper(
    hls::stream<single_PQ> (&s_single_PQ)[3 * HBM_CHANNEL_NUM], 
    hls::stream<single_PQ_result> (&s_single_PQ_result)[4][16]);

template<const int query_num>
void PQ_lookup_computation(
    hls::stream<single_PQ>& s_single_PQ, hls::stream<single_PQ_result>& s_single_PQ_result);

////////////////////  Priority Queues for PQ results Starts  ////////////////////

template<const int iter_num>
void consume_single_stream(hls::stream<single_PQ_result> &input_stream);

template<const int iter_num>
void split_single_stream(
    hls::stream<single_PQ_result> &input_stream,
    hls::stream<single_PQ_result> &output_stream_A,
    hls::stream<single_PQ_result> &output_stream_B);

template<const int iter_num>
void consume_and_redirect_sorted_streams(
    hls::stream<single_PQ_result> (&sorted_stream)[16], 
    hls::stream<single_PQ_result> (&redirected_sorted_stream)[20]);

void merge_streams(
    hls::stream<single_PQ_result> (&intermediate_result)[20],
    hls::stream<single_PQ_result> &output_stream);

template<const int query_num>
void stream_redirect_to_priority_queue_wrapper(
    hls::stream<single_PQ_result> (&sorted_stream)[16], 
    hls::stream<single_PQ_result> &output_stream);

////////////////////  Priority Queues for PQ results Ends  ////////////////////

template<const int total_len>
void write_result(hls::stream<single_PQ_result> &output_stream, ap_uint<64>* output);