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
    const t_axi* HBM_in20, const t_axi* HBM_in21, 
    const t_axi* HBM_in22, const t_axi* HBM_in23, 
    const t_axi* HBM_in24, const t_axi* HBM_in25, 
    const t_axi* HBM_in26, const t_axi* HBM_in27, 
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
    hls::stream<single_PQ> (&s_single_PQ_0)[HBM_CHANNEL_NUM],
    hls::stream<single_PQ> (&s_single_PQ_1)[HBM_CHANNEL_NUM],
    hls::stream<single_PQ> (&s_single_PQ_2)[HBM_CHANNEL_NUM]);

template<const int query_num>
void type_conversion_and_split(
    hls::stream<t_axi>& s_raw_input,
    hls::stream<single_PQ>& s_single_PQ_0,
    hls::stream<single_PQ>& s_single_PQ_1,
    hls::stream<single_PQ>& s_single_PQ_2);

void init_distance_table_partition(float table[512], float bias);

template<const int query_num>
void PQ_lookup_computation_wrapper(
    hls::stream<single_PQ> (&s_single_PQ_0)[HBM_CHANNEL_NUM], 
    hls::stream<single_PQ> (&s_single_PQ_1)[HBM_CHANNEL_NUM],
    hls::stream<single_PQ> (&s_single_PQ_2)[HBM_CHANNEL_NUM],  
    hls::stream<single_PQ_result> (&s_single_PQ_result_0)[HBM_CHANNEL_NUM], 
    hls::stream<single_PQ_result> (&s_single_PQ_result_1)[HBM_CHANNEL_NUM], 
    hls::stream<single_PQ_result> (&s_single_PQ_result_2)[HBM_CHANNEL_NUM]);

template<const int query_num>
void PQ_lookup_computation(
    hls::stream<single_PQ>& s_single_PQ, hls::stream<single_PQ_result>& s_single_PQ_result);

template<const int query_num>
void merge_result_wrapper(
    hls::stream<single_PQ_result> (&s_single_PQ_result_0)[HBM_CHANNEL_NUM],     
    hls::stream<single_PQ_result> (&s_single_PQ_result_1)[HBM_CHANNEL_NUM], 
    hls::stream<single_PQ_result> (&s_single_PQ_result_2)[HBM_CHANNEL_NUM], 
    hls::stream<result_t> (&s_three_PQ_result)[HBM_CHANNEL_NUM]);

template<const int query_num>
void merge_result(
    hls::stream<single_PQ_result>& s_single_PQ_result_0, 
    hls::stream<single_PQ_result>& s_single_PQ_result_1, 
    hls::stream<single_PQ_result>& s_single_PQ_result_2, 
    hls::stream<result_t>& s_three_PQ_result);

template<const int query_num>
void consume_and_write_wrapper(
    hls::stream<result_t> (&s_three_PQ_result)[HBM_CHANNEL_NUM],
    hls::stream<result_t> (&s_last_result)[HBM_CHANNEL_NUM]);

template<const int query_num>
void consume_and_write(
    hls::stream<result_t> &s_three_PQ_result,
    hls::stream<result_t> &s_last_result);

void reduce_result(
    hls::stream<result_t> (&s_last_result)[HBM_CHANNEL_NUM], result_t* results_out);
