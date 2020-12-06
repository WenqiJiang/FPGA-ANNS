// This program:
//   1. stora all the cell centroids coordinates on-chip
//   2. given an input query, compute distance with those centroids
//   3. select the top nprobe centroids using sorting network / heap
//   4. access the cell codebooks stored in HBM, construct distance table
#include <stdio.h>
#include "vadd.hpp"


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
    )
{
#pragma HLS INTERFACE m_axi port=HBM_in0  offset=slave bundle=gmem0
#pragma HLS INTERFACE m_axi port=HBM_in1  offset=slave bundle=gmem1
#pragma HLS INTERFACE m_axi port=HBM_in2  offset=slave bundle=gmem2
#pragma HLS INTERFACE m_axi port=HBM_in3  offset=slave bundle=gmem3
#pragma HLS INTERFACE m_axi port=HBM_in4  offset=slave bundle=gmem4
#pragma HLS INTERFACE m_axi port=HBM_in5  offset=slave bundle=gmem5
#pragma HLS INTERFACE m_axi port=HBM_in6  offset=slave bundle=gmem6
#pragma HLS INTERFACE m_axi port=HBM_in7  offset=slave bundle=gmem7
#pragma HLS INTERFACE m_axi port=HBM_in8  offset=slave bundle=gmem8
#pragma HLS INTERFACE m_axi port=HBM_in9  offset=slave bundle=gmem9
#pragma HLS INTERFACE m_axi port=HBM_in10  offset=slave bundle=gmem10
#pragma HLS INTERFACE m_axi port=HBM_in11  offset=slave bundle=gmem11
#pragma HLS INTERFACE m_axi port=HBM_in12  offset=slave bundle=gmem12
#pragma HLS INTERFACE m_axi port=HBM_in13  offset=slave bundle=gmem13
#pragma HLS INTERFACE m_axi port=HBM_in14  offset=slave bundle=gmem14
#pragma HLS INTERFACE m_axi port=HBM_in15  offset=slave bundle=gmem15
#pragma HLS INTERFACE m_axi port=HBM_in16  offset=slave bundle=gmem16
#pragma HLS INTERFACE m_axi port=HBM_in17  offset=slave bundle=gmem17
#pragma HLS INTERFACE m_axi port=HBM_in18  offset=slave bundle=gmem18
#pragma HLS INTERFACE m_axi port=HBM_in19  offset=slave bundle=gmem19
#pragma HLS INTERFACE m_axi port=HBM_in20  offset=slave bundle=gmem20
#pragma HLS INTERFACE m_axi port=HBM_in21  offset=slave bundle=gmem21
#pragma HLS INTERFACE m_axi port=HBM_in22  offset=slave bundle=gmem22
#pragma HLS INTERFACE m_axi port=HBM_in23  offset=slave bundle=gmem23
#pragma HLS INTERFACE m_axi port=HBM_in24  offset=slave bundle=gmem24
#pragma HLS INTERFACE m_axi port=HBM_in25  offset=slave bundle=gmem25
#pragma HLS INTERFACE m_axi port=HBM_in26  offset=slave bundle=gmem26
#pragma HLS INTERFACE m_axi port=HBM_in27  offset=slave bundle=gmem27
// #pragma HLS INTERFACE m_axi port=HBM_in28  offset=slave bundle=gmem28
// #pragma HLS INTERFACE m_axi port=HBM_in29  offset=slave bundle=gmem29
// #pragma HLS INTERFACE m_axi port=HBM_in30  offset=slave bundle=gmem30
// #pragma HLS INTERFACE m_axi port=HBM_in31  offset=slave bundle=gmem31

// #pragma HLS INTERFACE m_axi port=table_DDR0  offset=slave bundle=gmem32
// #pragma HLS INTERFACE m_axi port=table_DDR1  offset=slave bundle=gmem33

// PLRAM
#pragma HLS INTERFACE m_axi port=out_PLRAM offset=slave bundle=gmem34

#pragma HLS INTERFACE s_axilite port=HBM_in0  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in1  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in2  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in3  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in4  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in5  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in6  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in7  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in8  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in9  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in10  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in11  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in12  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in13  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in14  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in15  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in16  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in17  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in18  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in19  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in20  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in21  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in22  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in23  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in24  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in25  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in26  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in27  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in28  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in29  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in30  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in31  bundle=control

// #pragma HLS INTERFACE s_axilite port=table_DDR0  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_DDR1  bundle=control

#pragma HLS INTERFACE s_axilite port=out_PLRAM bundle=control

#pragma HLS INTERFACE s_axilite port=return bundle=control
    
#pragma HLS dataflow

    hls::stream<t_axi> s_raw_input[HBM_CHANNEL_NUM];
#pragma HLS stream variable=s_raw_input depth=4
#pragma HLS array_partition variable=s_raw_input dim=1 complete
#pragma HLS RESOURCE variable=s_raw_input core=FIFO_SRL

    hls::stream<single_PQ> s_single_PQ_0[HBM_CHANNEL_NUM];
#pragma HLS stream variable=s_single_PQ_0 depth=4
#pragma HLS array_partition variable=s_single_PQ_0 dim=1 complete
#pragma HLS RESOURCE variable=s_single_PQ_0 core=FIFO_SRL
    hls::stream<single_PQ> s_single_PQ_1[HBM_CHANNEL_NUM];
#pragma HLS stream variable=s_single_PQ_1 depth=4
#pragma HLS array_partition variable=s_single_PQ_1 dim=1 complete
#pragma HLS RESOURCE variable=s_single_PQ_1 core=FIFO_SRL
    hls::stream<single_PQ> s_single_PQ_2[HBM_CHANNEL_NUM];
#pragma HLS stream variable=s_single_PQ_2 depth=4 
#pragma HLS array_partition variable=s_single_PQ_2 dim=1 complete
#pragma HLS RESOURCE variable=s_single_PQ_2 core=FIFO_SRL

    hls::stream<single_PQ_result> s_single_PQ_result_0[HBM_CHANNEL_NUM];
#pragma HLS stream variable=s_single_PQ_result_0 depth=4
#pragma HLS array_partition variable=s_single_PQ_result_0 dim=1 complete
#pragma HLS RESOURCE variable=s_single_PQ_result_0 core=FIFO_SRL
    hls::stream<single_PQ_result> s_single_PQ_result_1[HBM_CHANNEL_NUM];
#pragma HLS stream variable=s_single_PQ_result_1 depth=4
#pragma HLS array_partition variable=s_single_PQ_result_1 dim=1 complete
#pragma HLS RESOURCE variable=s_single_PQ_result_1 core=FIFO_SRL
    hls::stream<single_PQ_result> s_single_PQ_result_2[HBM_CHANNEL_NUM];
#pragma HLS stream variable=s_single_PQ_result_2 depth=4
#pragma HLS array_partition variable=s_single_PQ_result_2 dim=1 complete
#pragma HLS RESOURCE variable=s_single_PQ_result_2 core=FIFO_SRL

    hls::stream<result_t> s_three_PQ_result[HBM_CHANNEL_NUM];
#pragma HLS stream variable=s_three_PQ_result depth=4
#pragma HLS array_partition variable=s_three_PQ_result dim=1 complete
#pragma HLS RESOURCE variable=s_three_PQ_result core=FIFO_SRL

    hls::stream<result_t> s_last_result[HBM_CHANNEL_NUM];
#pragma HLS stream variable=s_last_result depth=2
#pragma HLS array_partition variable=s_last_result dim=1 complete
#pragma HLS RESOURCE variable=s_last_result core=FIFO_SRL

    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in0, s_raw_input[0]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in1, s_raw_input[1]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in2, s_raw_input[2]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in3, s_raw_input[3]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in4, s_raw_input[4]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in5, s_raw_input[5]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in6, s_raw_input[6]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in7, s_raw_input[7]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in8, s_raw_input[8]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in9, s_raw_input[9]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in10, s_raw_input[10]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in11, s_raw_input[11]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in12, s_raw_input[12]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in13, s_raw_input[13]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in14, s_raw_input[14]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in15, s_raw_input[15]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in16, s_raw_input[16]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in17, s_raw_input[17]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in18, s_raw_input[18]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in19, s_raw_input[19]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in20, s_raw_input[20]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in21, s_raw_input[21]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in22, s_raw_input[22]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in23, s_raw_input[23]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in24, s_raw_input[24]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in25, s_raw_input[25]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in26, s_raw_input[26]);
    load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in27, s_raw_input[27]);
    // load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in28, s_raw_input[28]);
    // load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in29, s_raw_input[29]);
    // load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in30, s_raw_input[30]);
    // load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in31, s_raw_input[31]); 

    type_conversion_and_split_wrapper<QUERY_NUM>(
        s_raw_input, s_single_PQ_0, s_single_PQ_1, s_single_PQ_2); 

    PQ_lookup_computation_wrapper<QUERY_NUM>(
        s_single_PQ_0, s_single_PQ_1, s_single_PQ_2, 
        s_single_PQ_result_0, s_single_PQ_result_1, s_single_PQ_result_2);

    merge_result_wrapper<QUERY_NUM>(
        s_single_PQ_result_0, s_single_PQ_result_1, s_single_PQ_result_2, s_three_PQ_result);

    consume_and_write_wrapper<QUERY_NUM>(s_three_PQ_result, s_last_result);

    reduce_result(s_last_result, out_PLRAM);
}


template<const int iter_num, const int query_num_per_iter>
void load_PQ_codes(
    const t_axi* src,
    hls::stream<t_axi>& s_raw_input) {

    for (int iter = 0; iter < iter_num; iter++) {
#pragma HLS loop_flatten off
        for (int query_id = 0; query_id < query_num_per_iter; query_id++) {
#pragma HLS pipeline II=1
// printf("load_PQ_codes, iter = %d, query_id = %d\n", iter, query_id);
            s_raw_input.write(src[query_id]);
        }
    }
}

three_PQ_codes ap_uint512_to_three_PQ_codes(ap_uint<512> in) {
// AXI datawidth of 480 is banned, must use 2^n, e.g., 512
#pragma HLS pipeline
#pragma HLS inline off
#pragma HLS interface port=return register
    three_PQ_codes out;

    ap_uint<32> tmp_int0 = in.range(31 + 0, 0 + 0);
    out.PQ_0.vec_ID = *((int*)(&tmp_int0));
    for (int i = 0; i < 16; i++) {
#pragma HLS UNROLL
        ap_uint<8> tmp_char = in.range(0 + 7 + 32 + i * 8, 0 + 32 + i * 8);
        out.PQ_0.PQ_code[i] = *((unsigned char*)(&tmp_char));
    }
    ap_uint<32> tmp_int1 = in.range(31 + 160, 0 + 160);
    out.PQ_1.vec_ID = *((int*)(&tmp_int1));
    for (int i = 0; i < 16; i++) {
#pragma HLS UNROLL
        ap_uint<8> tmp_char = in.range(160 + 7 + 32 + i * 8, 160 + 32 + i * 8);
        out.PQ_1.PQ_code[i] = *((unsigned char*)(&tmp_char));
    }
    ap_uint<32> tmp_int2 = in.range(31 + 320, 0 + 320);
    out.PQ_2.vec_ID = *((int*)(&tmp_int2));
    for (int i = 0; i < 16; i++) {
#pragma HLS UNROLL
        ap_uint<8> tmp_char = in.range(320 + 7 + 32 + i * 8, 320 + 32 + i * 8);
        out.PQ_2.PQ_code[i] = *((unsigned char*)(&tmp_char));
    }

    return out;
}


template<const int query_num>
void type_conversion_and_split_wrapper(
    hls::stream<t_axi> (&s_raw_input)[HBM_CHANNEL_NUM],
    hls::stream<single_PQ> (&s_single_PQ_0)[HBM_CHANNEL_NUM],
    hls::stream<single_PQ> (&s_single_PQ_1)[HBM_CHANNEL_NUM],
    hls::stream<single_PQ> (&s_single_PQ_2)[HBM_CHANNEL_NUM]) {
#pragma HLS inline
    for (int i = 0; i < HBM_CHANNEL_NUM; i++) {
#pragma HLS UNROLL
        type_conversion_and_split<query_num>(
            s_raw_input[i], s_single_PQ_0[i], s_single_PQ_1[i], s_single_PQ_2[i]);
    }
}

template<const int query_num>
void type_conversion_and_split(
    hls::stream<t_axi>& s_raw_input,
    hls::stream<single_PQ>& s_single_PQ_0,
    hls::stream<single_PQ>& s_single_PQ_1,
    hls::stream<single_PQ>& s_single_PQ_2) {

    for (int query_id = 0; query_id < query_num; query_id++) {
#pragma HLS pipeline II=1

// printf("type_conversion_and_split, query_id = %d\n", query_id);
        t_axi in = s_raw_input.read();
        three_PQ_codes out = ap_uint512_to_three_PQ_codes(in);
        s_single_PQ_0.write(out.PQ_0);
        s_single_PQ_1.write(out.PQ_1);
        s_single_PQ_2.write(out.PQ_2);
    }
}

void init_distance_table_partition(float table[512], float bias) {
#pragma HLS inline
    for (int j = 0; j < 512; j++) {
#pragma HLS pipeline II=1
        table[j] = bias + j;
    }
}

template<const int query_num>
void PQ_lookup_computation_wrapper(
    hls::stream<single_PQ> (&s_single_PQ_0)[HBM_CHANNEL_NUM], 
    hls::stream<single_PQ> (&s_single_PQ_1)[HBM_CHANNEL_NUM],
    hls::stream<single_PQ> (&s_single_PQ_2)[HBM_CHANNEL_NUM],  
    hls::stream<single_PQ_result> (&s_single_PQ_result_0)[HBM_CHANNEL_NUM], 
    hls::stream<single_PQ_result> (&s_single_PQ_result_1)[HBM_CHANNEL_NUM], 
    hls::stream<single_PQ_result> (&s_single_PQ_result_2)[HBM_CHANNEL_NUM]) {
#pragma HLS inline

    for (int i = 0; i < HBM_CHANNEL_NUM; i++) {
#pragma HLS UNROLL
        PQ_lookup_computation<query_num>(s_single_PQ_0[i], s_single_PQ_result_0[i]);
        PQ_lookup_computation<query_num>(s_single_PQ_1[i], s_single_PQ_result_1[i]);
        PQ_lookup_computation<query_num>(s_single_PQ_2[i], s_single_PQ_result_2[i]);
    }
}

template<const int query_num>
void PQ_lookup_computation(
    hls::stream<single_PQ>& s_single_PQ, hls::stream<single_PQ_result>& s_single_PQ_result) {

    // each BRAM stores 2 tables, which can be looked up concurrently by 2 ports
    float distance_lookup_table_local_0[512], distance_lookup_table_local_1[512], 
        distance_lookup_table_local_2[512], distance_lookup_table_local_3[512], 
        distance_lookup_table_local_4[512], distance_lookup_table_local_5[512], 
        distance_lookup_table_local_6[512], distance_lookup_table_local_7[512];
    
    // float distance_lookup_table_local_0[256], distance_lookup_table_local_1[256], 
    //     distance_lookup_table_local_2[256], distance_lookup_table_local_3[256], 
    //     distance_lookup_table_local_4[256], distance_lookup_table_local_5[256], 
    //     distance_lookup_table_local_6[256], distance_lookup_table_local_7[256], 
    //     distance_lookup_table_local_8[256], distance_lookup_table_local_9[256], 
    //     distance_lookup_table_local_10[256], distance_lookup_table_local_11[256], 
    //     distance_lookup_table_local_12[256], distance_lookup_table_local_13[256], 
    //     distance_lookup_table_local_14[256], distance_lookup_table_local_15[256];

    init_distance_table_partition(distance_lookup_table_local_0, 0);
    init_distance_table_partition(distance_lookup_table_local_1, 1);
    init_distance_table_partition(distance_lookup_table_local_2, 2);
    init_distance_table_partition(distance_lookup_table_local_3, 3);
    init_distance_table_partition(distance_lookup_table_local_4, 4);
    init_distance_table_partition(distance_lookup_table_local_5, 5);
    init_distance_table_partition(distance_lookup_table_local_6, 6);
    init_distance_table_partition(distance_lookup_table_local_7, 7);
    // init_distance_table_partition(distance_lookup_table_local_8, 8);
    // init_distance_table_partition(distance_lookup_table_local_9, 9);
    // init_distance_table_partition(distance_lookup_table_local_10, 10);
    // init_distance_table_partition(distance_lookup_table_local_11, 11);
    // init_distance_table_partition(distance_lookup_table_local_12, 12);
    // init_distance_table_partition(distance_lookup_table_local_13, 13);
    // init_distance_table_partition(distance_lookup_table_local_14, 14);
    // init_distance_table_partition(distance_lookup_table_local_15, 15);

    for (int query_id = 0; query_id < query_num; query_id++) {
#pragma HLS pipeline II=1

// printf("PQ_lookup_computation, query_id = %d\n", query_id);

        single_PQ PQ_local = s_single_PQ.read();

        unsigned char lookup_idx_0 = PQ_local.PQ_code[0];
        unsigned char lookup_idx_1 = PQ_local.PQ_code[1];
        unsigned char lookup_idx_2 = PQ_local.PQ_code[2];
        unsigned char lookup_idx_3 = PQ_local.PQ_code[3];
        unsigned char lookup_idx_4 = PQ_local.PQ_code[4];
        unsigned char lookup_idx_5 = PQ_local.PQ_code[5];
        unsigned char lookup_idx_6 = PQ_local.PQ_code[6];
        unsigned char lookup_idx_7 = PQ_local.PQ_code[7];

        // not adding 256 here, it will overflow
        unsigned char lookup_idx_8 = PQ_local.PQ_code[8];// + 256;
        unsigned char lookup_idx_9 = PQ_local.PQ_code[9];// + 256;
        unsigned char lookup_idx_10 = PQ_local.PQ_code[10];// + 256;
        unsigned char lookup_idx_11 = PQ_local.PQ_code[11];// + 256;
        unsigned char lookup_idx_12 = PQ_local.PQ_code[12];// + 256;
        unsigned char lookup_idx_13 = PQ_local.PQ_code[13];// + 256;
        unsigned char lookup_idx_14 = PQ_local.PQ_code[14];// + 256;
        unsigned char lookup_idx_15 = PQ_local.PQ_code[15];// + 256;

        single_PQ_result out; 
        out.vec_ID = PQ_local.vec_ID;
        out.dist = 
            distance_lookup_table_local_0[lookup_idx_0] + distance_lookup_table_local_1[lookup_idx_1] + 
            distance_lookup_table_local_2[lookup_idx_2] + distance_lookup_table_local_3[lookup_idx_3] + 
            distance_lookup_table_local_4[lookup_idx_4] + distance_lookup_table_local_5[lookup_idx_5] + 
            distance_lookup_table_local_6[lookup_idx_6] + distance_lookup_table_local_7[lookup_idx_7] + 

            distance_lookup_table_local_0[((int)lookup_idx_8) + 256] + distance_lookup_table_local_1[((int)lookup_idx_9) + 256] + 
            distance_lookup_table_local_2[((int)lookup_idx_10) + 256] + distance_lookup_table_local_3[((int)lookup_idx_11) + 256] + 
            distance_lookup_table_local_4[((int)lookup_idx_12) + 256] + distance_lookup_table_local_5[((int)lookup_idx_13) + 256] + 
            distance_lookup_table_local_6[((int)lookup_idx_14) + 256] + distance_lookup_table_local_7[((int)lookup_idx_15) + 256];

        s_single_PQ_result.write(out);
    }
}

template<const int query_num>
void merge_result_wrapper(
    hls::stream<single_PQ_result> (&s_single_PQ_result_0)[HBM_CHANNEL_NUM],     
    hls::stream<single_PQ_result> (&s_single_PQ_result_1)[HBM_CHANNEL_NUM], 
    hls::stream<single_PQ_result> (&s_single_PQ_result_2)[HBM_CHANNEL_NUM], 
    hls::stream<result_t> (&s_three_PQ_result)[HBM_CHANNEL_NUM]) {
#pragma HLS inline

    for (int i = 0; i < HBM_CHANNEL_NUM; i++) {
#pragma HLS UNROLL
        merge_result<query_num>(
            s_single_PQ_result_0[i], s_single_PQ_result_1[i], s_single_PQ_result_2[i], s_three_PQ_result[i]);
    }
}

template<const int query_num>
void merge_result(
    hls::stream<single_PQ_result>& s_single_PQ_result_0, 
    hls::stream<single_PQ_result>& s_single_PQ_result_1, 
    hls::stream<single_PQ_result>& s_single_PQ_result_2, 
    hls::stream<result_t>& s_three_PQ_result) {

    for (int query_id = 0; query_id < query_num; query_id++) {
#pragma HLS pipeline II=1
// printf("merge_result, query_id = %d\n", query_id);
        result_t PQ_result;
        single_PQ_result result_0 = s_single_PQ_result_0.read();
        single_PQ_result result_1 = s_single_PQ_result_1.read();
        single_PQ_result result_2 = s_single_PQ_result_2.read();

        float tmp_fl0 = result_0.dist;
        float tmp_fl1 = result_1.dist;
        float tmp_fl2 = result_2.dist;

        PQ_result.range(31, 0) = *((ap_uint<32>*) (&(result_0.vec_ID)));
        PQ_result.range(63, 32) = *((ap_uint<32>*) (&tmp_fl0));
        PQ_result.range(95, 64) = *((ap_uint<32>*) (&(result_1.vec_ID)));
        PQ_result.range(127, 96) = *((ap_uint<32>*) (&tmp_fl1));
        PQ_result.range(159, 128) = *((ap_uint<32>*) (&(result_2.vec_ID)));
        PQ_result.range(191, 160) = *((ap_uint<32>*) (&tmp_fl2));
            
        s_three_PQ_result.write(PQ_result);
    }
}

template<const int query_num>
void consume_and_write_wrapper(
    hls::stream<result_t> (&s_three_PQ_result)[HBM_CHANNEL_NUM],
    hls::stream<result_t> (&s_last_result)[HBM_CHANNEL_NUM]) {
#pragma HLS inline

    for (int i = 0; i < HBM_CHANNEL_NUM; i++) {
#pragma HLS UNROLL
        consume_and_write<query_num>(s_three_PQ_result[i], s_last_result[i]);
    }
}

template<const int query_num>
void consume_and_write(
    hls::stream<result_t> &s_three_PQ_result,
    hls::stream<result_t> &s_last_result) {

    result_t tmp;
    for (int query_id = 0; query_id < query_num; query_id++) {
#pragma HLS pipeline II=1
// printf("consume_and_write, query_id = %d\n", query_id);
        tmp = s_three_PQ_result.read();
    }
    s_last_result.write(tmp);
}

void reduce_result(
    hls::stream<result_t> (&s_last_result)[HBM_CHANNEL_NUM], result_t* results_out) {
    
    for (int i = 0; i < HBM_CHANNEL_NUM; i++) {
#pragma HLS pipeline II=1
// printf("reduce_result, i = %d\n", i);
        results_out[i] = s_last_result[i].read();
    }
}
