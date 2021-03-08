// This program:
//   1. stora all the cell centroids coordinates on-chip
//   2. given an input query, compute distance with those centroids
//   3. select the top nprobe centroids using sorting network / heap
//   4. access the cell codebooks stored in HBM, construct distance table
#include <stdio.h>
#include "vadd.hpp"
#include "sort_reduction_64_to_16_with_vecID.hpp"
#include "priority_queue_with_vecID.hpp"


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
// #pragma HLS INTERFACE m_axi port=HBM_in21  offset=slave bundle=gmem21
// #pragma HLS INTERFACE m_axi port=HBM_in22  offset=slave bundle=gmem22
// #pragma HLS INTERFACE m_axi port=HBM_in23  offset=slave bundle=gmem23
// #pragma HLS INTERFACE m_axi port=HBM_in24  offset=slave bundle=gmem24
// #pragma HLS INTERFACE m_axi port=HBM_in25  offset=slave bundle=gmem25
// #pragma HLS INTERFACE m_axi port=HBM_in26  offset=slave bundle=gmem26
// #pragma HLS INTERFACE m_axi port=HBM_in27  offset=slave bundle=gmem27
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
// #pragma HLS INTERFACE s_axilite port=HBM_in21  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in22  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in23  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in24  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in25  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in26  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in27  bundle=control
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

    // each 512 bit can store 3 set of (vecID, PQ code)
    hls::stream<single_PQ> s_single_PQ[3 * HBM_CHANNEL_NUM];
#pragma HLS stream variable=s_single_PQ depth=4
#pragma HLS array_partition variable=s_single_PQ dim=1 complete
#pragma HLS RESOURCE variable=s_single_PQ core=FIFO_SRL

    // 64 streams = 21 channels * 3 + 1 dummy
    hls::stream<single_PQ_result> s_single_PQ_result[4][16];
#pragma HLS stream variable=s_single_PQ_result depth=4
#pragma HLS array_partition variable=s_single_PQ_result dim=1 complete
#pragma HLS RESOURCE variable=s_single_PQ_result core=FIFO_SRL

    hls::stream<single_PQ_result> s_sorted_PQ_result[16];
#pragma HLS array_partition variable=s_sorted_PQ_result complete

    hls::stream<single_PQ_result> s_output; // the top 10 numbers

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
    // load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in21, s_raw_input[21]);
    // load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in22, s_raw_input[22]);
    // load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in23, s_raw_input[23]);
    // load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in24, s_raw_input[24]);
    // load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in25, s_raw_input[25]);
    // load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in26, s_raw_input[26]);
    // load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in27, s_raw_input[27]);
    // load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in28, s_raw_input[28]);
    // load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in29, s_raw_input[29]);
    // load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in30, s_raw_input[30]);
    // load_PQ_codes<ITER_NUM, QUERY_NUM_PER_ITER>(HBM_in31, s_raw_input[31]); 

    type_conversion_and_split_wrapper<QUERY_NUM>(s_raw_input, s_single_PQ); 

    PQ_lookup_computation_wrapper<QUERY_NUM>(s_single_PQ, s_single_PQ_result);

    Sort_reduction<single_PQ_result, 64, 16, Collect_smallest> sort_reduction_module;

    sort_reduction_module.sort_and_reduction<QUERY_NUM>(s_single_PQ_result, s_sorted_PQ_result);

    stream_redirect_to_priority_queue_wrapper<QUERY_NUM>(s_sorted_PQ_result, s_output);

    write_result<PRIORITY_QUEUE_LEN>(s_output, out_PLRAM);
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
    hls::stream<single_PQ> (&s_single_PQ)[3 * HBM_CHANNEL_NUM]) {
#pragma HLS inline
    for (int i = 0; i < HBM_CHANNEL_NUM; i++) {
#pragma HLS UNROLL
        type_conversion_and_split<query_num>(
            s_raw_input[i], s_single_PQ[3 * i], 
            s_single_PQ[3 * i + 1], s_single_PQ[3 * i + 2]);
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
void dummy_PQ_result_sender(hls::stream<single_PQ_result> &s_single_PQ_result) {

    single_PQ_result out; 
    out.vec_ID = -1;
    out.dist = LARGE_NUM;
    
    for (int query_id = 0; query_id < query_num; query_id++) {
#pragma HLS pipeline II=1
        s_single_PQ_result.write(out);
    }
}

template<const int query_num>
void PQ_lookup_computation_wrapper(
    hls::stream<single_PQ> (&s_single_PQ)[3 * HBM_CHANNEL_NUM], 
    hls::stream<single_PQ_result> (&s_single_PQ_result)[4][16]) {
#pragma HLS inline

    for (int i = 0; i < 3; i++) {
#pragma HLS UNROLL
        for (int j = 0; j < 16; j++) {
#pragma HLS UNROLL
            PQ_lookup_computation<query_num>(s_single_PQ[i * 16 + j], s_single_PQ_result[i][j]);
        }
    }

    for (int j = 0; j < 15; j++) {
#pragma HLS UNROLL
        PQ_lookup_computation<query_num>(s_single_PQ[48+ j], s_single_PQ_result[3][j]);
    }

    dummy_PQ_result_sender<query_num>(s_single_PQ_result[3][15]);
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

////////////////////  Priority Queues for PQ results Starts  ////////////////////


template<const int iter_num>
void consume_single_stream(hls::stream<single_PQ_result> &input_stream) {
    for (int iter = 0; iter < iter_num; iter++) {
#pragma HLS pipeline II=1
        input_stream.read();
    }
}

template<const int iter_num>
void split_single_stream(
    hls::stream<single_PQ_result> &input_stream,
    hls::stream<single_PQ_result> &output_stream_A,
    hls::stream<single_PQ_result> &output_stream_B) {
    for (int iter = 0; iter < iter_num / 2; iter++) {
#pragma HLS pipeline II=2
        output_stream_A.write(input_stream.read());
        output_stream_B.write(input_stream.read());
    }
}

template<const int iter_num>
void consume_and_redirect_sorted_streams(
    hls::stream<single_PQ_result> (&sorted_stream)[16], 
    hls::stream<single_PQ_result> (&redirected_sorted_stream)[20]) {
    for (int i = 0; i < 10; i++) {
#pragma HLS UNROLL
        split_single_stream<iter_num>(sorted_stream[i], 
            redirected_sorted_stream[2 * i], redirected_sorted_stream[2 * i + 1]);
    }

    for (int i = 10; i < 16; i++) {
#pragma HLS UNROLL
        consume_single_stream<iter_num>(sorted_stream[i]);
    }
}

void merge_streams(
    hls::stream<single_PQ_result> (&intermediate_result)[20],
    hls::stream<single_PQ_result> &output_stream)  {
    
    for (int d = 0; d < PRIORITY_QUEUE_LEN; d++) {
        for (int s = 0; s < 20; s++) {
#pragma HLS pipeline II=1
            output_stream.write(intermediate_result[s].read());
        }
    }
}

template<const int query_num>
void stream_redirect_to_priority_queue_wrapper(
    hls::stream<single_PQ_result> (&sorted_stream)[16], 
    hls::stream<single_PQ_result> &output_stream) {

    // Given 16 input stream (last 6 streams are discarded), redirect them to 
    // 20 priority queues (because 2 CC per insertion), and then insert them to a final
    // priority queue, return the results of top 10
#pragma HLS dataflow

    hls::stream<single_PQ_result> redirected_sorted_stream[20];
#pragma HLS array_partition variable=redirected_sorted_stream complete
    hls::stream<single_PQ_result> intermediate_result[20];
#pragma HLS array_partition variable=intermediate_result complete
    hls::stream<single_PQ_result> merged_intermediate_result;

    Priority_queue<single_PQ_result, PRIORITY_QUEUE_LEN, Collect_smallest> priority_queue_intermediate[20];
#pragma HLS array_partition variable=priority_queue_intermediate complete
    Priority_queue<single_PQ_result, PRIORITY_QUEUE_LEN, Collect_smallest> priority_queue_final;

    consume_and_redirect_sorted_streams<query_num>(sorted_stream, redirected_sorted_stream); 

    for (int i = 0; i < 20; i++) {
#pragma HLS UNROLL
        priority_queue_intermediate[i].insert_wrapper<query_num / 2>(
            redirected_sorted_stream[i], intermediate_result[i]);
    }

    merge_streams(intermediate_result, merged_intermediate_result);

    priority_queue_final.insert_wrapper<20 * PRIORITY_QUEUE_LEN>(
            merged_intermediate_result, output_stream); 
}

////////////////////  Priority Queues for PQ results Ends  ////////////////////

template<const int total_len>
void write_result(hls::stream<single_PQ_result> &output_stream, ap_uint<64>* output) {

    for (int i = 0; i < total_len; i++) {
#pragma HLS pipeline II=1
        single_PQ_result raw_output = output_stream.read();
        ap_uint<64> reg;
        int vec_ID = raw_output.vec_ID;
        float dist = raw_output.dist;
        reg.range(31, 0) = *((ap_uint<32>*) (&vec_ID));
        reg.range(63, 32) = *((ap_uint<32>*) (&dist));
        output[i] = reg;
    }
}