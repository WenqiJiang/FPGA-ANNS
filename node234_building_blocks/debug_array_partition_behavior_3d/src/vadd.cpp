// This program:
//   1. stora all the cell centroids coordinates on-chip
//   2. given an input query, compute distance with those centroids
//   3. select the top nprobe centroids using sorting network / heap
//   4. access the cell codebooks stored in HBM, construct distance table
#include <stdio.h>
#include "vadd.hpp"


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
    )
{
#pragma HLS INTERFACE m_axi port=table_HBM0  offset=slave bundle=gmem0
#pragma HLS INTERFACE m_axi port=table_HBM1  offset=slave bundle=gmem1
#pragma HLS INTERFACE m_axi port=table_HBM2  offset=slave bundle=gmem2
#pragma HLS INTERFACE m_axi port=table_HBM3  offset=slave bundle=gmem3
#pragma HLS INTERFACE m_axi port=table_HBM4  offset=slave bundle=gmem4
#pragma HLS INTERFACE m_axi port=table_HBM5  offset=slave bundle=gmem5
#pragma HLS INTERFACE m_axi port=table_HBM6  offset=slave bundle=gmem6
#pragma HLS INTERFACE m_axi port=table_HBM7  offset=slave bundle=gmem7
#pragma HLS INTERFACE m_axi port=table_HBM8  offset=slave bundle=gmem8
#pragma HLS INTERFACE m_axi port=table_HBM9  offset=slave bundle=gmem9
#pragma HLS INTERFACE m_axi port=table_HBM10  offset=slave bundle=gmem10
#pragma HLS INTERFACE m_axi port=table_HBM11  offset=slave bundle=gmem11
#pragma HLS INTERFACE m_axi port=table_HBM12  offset=slave bundle=gmem12
#pragma HLS INTERFACE m_axi port=table_HBM13  offset=slave bundle=gmem13
#pragma HLS INTERFACE m_axi port=table_HBM14  offset=slave bundle=gmem14
#pragma HLS INTERFACE m_axi port=table_HBM15  offset=slave bundle=gmem15
#pragma HLS INTERFACE m_axi port=table_HBM16  offset=slave bundle=gmem16
#pragma HLS INTERFACE m_axi port=table_HBM17  offset=slave bundle=gmem17
#pragma HLS INTERFACE m_axi port=table_HBM18  offset=slave bundle=gmem18
#pragma HLS INTERFACE m_axi port=table_HBM19  offset=slave bundle=gmem19
#pragma HLS INTERFACE m_axi port=table_HBM20  offset=slave bundle=gmem20
#pragma HLS INTERFACE m_axi port=table_HBM21  offset=slave bundle=gmem21
#pragma HLS INTERFACE m_axi port=table_HBM22  offset=slave bundle=gmem22
#pragma HLS INTERFACE m_axi port=table_HBM23  offset=slave bundle=gmem23
#pragma HLS INTERFACE m_axi port=table_HBM24  offset=slave bundle=gmem24
#pragma HLS INTERFACE m_axi port=table_HBM25  offset=slave bundle=gmem25
#pragma HLS INTERFACE m_axi port=table_HBM26  offset=slave bundle=gmem26
#pragma HLS INTERFACE m_axi port=table_HBM27  offset=slave bundle=gmem27
#pragma HLS INTERFACE m_axi port=table_HBM28  offset=slave bundle=gmem28
#pragma HLS INTERFACE m_axi port=table_HBM29  offset=slave bundle=gmem29
#pragma HLS INTERFACE m_axi port=table_HBM30  offset=slave bundle=gmem30
#pragma HLS INTERFACE m_axi port=table_HBM31  offset=slave bundle=gmem31

#pragma HLS INTERFACE m_axi port=table_DDR0  offset=slave bundle=gmem32
#pragma HLS INTERFACE m_axi port=table_DDR1  offset=slave bundle=gmem33

// PLRAM
#pragma HLS INTERFACE m_axi port=out_PLRAM offset=slave bundle=gmem34

#pragma HLS INTERFACE s_axilite port=table_HBM0  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM1  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM2  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM3  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM4  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM5  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM6  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM7  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM8  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM9  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM10  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM11  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM12  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM13  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM14  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM15  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM16  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM17  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM18  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM19  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM20  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM21  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM22  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM23  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM24  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM25  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM26  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM27  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM28  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM29  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM30  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM31  bundle=control

#pragma HLS INTERFACE s_axilite port=table_DDR0  bundle=control
#pragma HLS INTERFACE s_axilite port=table_DDR1  bundle=control

#pragma HLS INTERFACE s_axilite port=out_PLRAM bundle=control

#pragma HLS INTERFACE s_axilite port=return bundle=control
    
#pragma HLS dataflow

    hls::stream<t_axi> s_raw_input;
#pragma HLS stream variable=s_raw_input depth=4

//     hls::stream<PQ_codes> s_PQ_codes;
// #pragma HLS stream variable=PQ_codes depth=4

    hls::stream<single_PQ> s_PQ[3];
#pragma HLS stream variable=s_PQ_0 depth=4
#pragma HLS array_partition variable=s_PQ complete

    hls::stream<single_PQ_result> s_single_PQ_result[3];
#pragma HLS stream variable=s_single_PQ_result depth=4
#pragma HLS array_partition variable=s_single_PQ_result complete

    hls::stream<result_t> s_result;
#pragma HLS stream variable=s_result depth=4

    load_PQ_codes<QUERY_NUM>(table_HBM0, s_raw_input);

    type_conversion_and_split<QUERY_NUM>(s_raw_input, s_PQ[0], s_PQ[1], s_PQ[2]);

    PQ_lookup_computation<QUERY_NUM>(s_PQ, s_single_PQ_result);

    merge_result<QUERY_NUM>(s_single_PQ_result[0], s_single_PQ_result[1], s_single_PQ_result[2], s_result);

    write_result<result_t, QUERY_NUM>(s_result, out_PLRAM);
}


template<const int query_num>
void load_PQ_codes(
    const t_axi* table_DDR0,
    hls::stream<t_axi>& s_raw_input) {

    for (int query_id = 0; query_id < query_num; query_id++) {
    #pragma HLS pipeline II=1
        s_raw_input.write(table_DDR0[query_id]);
    }
}

three_PQ_codes ap_uint512_to_three_PQ_codes(ap_uint<512> in) {
// AXI datawidth of 480 is banned, must use 2^n, e.g., 512
#pragma HLS pipeline
#pragma HLS inline off
#pragma HLS interface port=return register
    three_PQ_codes out;

    out.PQ_0.vec_ID = in.range(31 + 0, 0 + 0);
    for (int i = 0; i < 16; i++) {
    #pragma HLS UNROLL
        out.PQ_0.PQ_code[i] = in.range(0 + 7 + 32 + i * 8, 0 + 32 + i * 8);
    }
    out.PQ_1.vec_ID = in.range(31 + 160, 0 + 160);
    for (int i = 0; i < 16; i++) {
    #pragma HLS UNROLL
        out.PQ_1.PQ_code[i] = in.range(160 + 7 + 32 + i * 8, 160 + 32 + i * 8);
    }
    out.PQ_2.vec_ID = in.range(31 + 320, 0 + 320);
    for (int i = 0; i < 16; i++) {
    #pragma HLS UNROLL
        out.PQ_2.PQ_code[i] = in.range(320 + 7 + 32 + i * 8, 320 + 32 + i * 8);
    }

    return out;
}

template<const int query_num>
void type_conversion_and_split(
    hls::stream<t_axi>& s_raw_input,
    hls::stream<single_PQ>& s_single_PQ_0,
    hls::stream<single_PQ>& s_single_PQ_1,
    hls::stream<single_PQ>& s_single_PQ_2) {

    for (int query_id = 0; query_id < query_num; query_id++) {
    #pragma HLS pipeline II=1

        t_axi in = s_raw_input.read();
        three_PQ_codes out = ap_uint512_to_three_PQ_codes(in);
        s_single_PQ_0.write(out.PQ_0);
        s_single_PQ_1.write(out.PQ_1);
        s_single_PQ_2.write(out.PQ_2);
    }
}

void init_distance_table_partition(float table[256], float bias) {
#pragma HLS inline
    for (int j = 0; j < 256; j++) {
        #pragma HLS pipeline II=1
        table[j] = bias + j;
    }
}

template<const int query_num>
void PQ_lookup_computation(
    hls::stream<single_PQ> (&s_single_PQ)[3], hls::stream<single_PQ_result> (&s_single_PQ_result)[3]) {

    // each BRAM stores 2 tables, which can be looked up concurrently by 2 ports
    float distance_lookup_table_local[3][8][512];
#pragma HLS array_partition variable=distance_lookup_table_local dim=1
#pragma HLS array_partition variable=distance_lookup_table_local dim=2
#pragma HLS resource variable=distance_lookup_table_local core=RAM_2P_BRAM

    // float distance_lookup_table_local_0[512], distance_lookup_table_local_1[512], 
    //     distance_lookup_table_local_2[512], distance_lookup_table_local_3[512], 
    //     distance_lookup_table_local_4[512], distance_lookup_table_local_5[512], 
    //     distance_lookup_table_local_6[512], distance_lookup_table_local_7[512];
// #pragma HLS resource variable=distance_lookup_table_local_0 core=RAM_2P_BRAM
// #pragma HLS resource variable=distance_lookup_table_local_1 core=RAM_2P_BRAM
// #pragma HLS resource variable=distance_lookup_table_local_2 core=RAM_2P_BRAM
// #pragma HLS resource variable=distance_lookup_table_local_3 core=RAM_2P_BRAM
// #pragma HLS resource variable=distance_lookup_table_local_4 core=RAM_2P_BRAM
// #pragma HLS resource variable=distance_lookup_table_local_5 core=RAM_2P_BRAM
// #pragma HLS resource variable=distance_lookup_table_local_6 core=RAM_2P_BRAM
// #pragma HLS resource variable=distance_lookup_table_local_7 core=RAM_2P_BRAM

    for (int query_id = 0; query_id < query_num; query_id++) {
#pragma HLS pipeline II=1


        single_PQ PQ_local[3];
#pragma HLS array_partition variable=PQ_local complete
        
        for (int s = 0; s < 3; s++) {
#pragma HLS UNROLL
            PQ_local[s] = s_single_PQ[s].read();
        }

        single_PQ_result out[3]; 
#pragma HLS array_partition variable=out complete

        for (int s = 0; s < 3; s++) {
#pragma HLS UNROLL
            out[s].vec_ID = PQ_local[s].vec_ID;
            out[s].dist = 
                distance_lookup_table_local[s][0][PQ_local[s].PQ_code[0]] + 
                distance_lookup_table_local[s][1][PQ_local[s].PQ_code[1]] + 
                distance_lookup_table_local[s][2][PQ_local[s].PQ_code[2]] + 
                distance_lookup_table_local[s][3][PQ_local[s].PQ_code[3]] + 
                distance_lookup_table_local[s][4][PQ_local[s].PQ_code[4]] + 
                distance_lookup_table_local[s][5][PQ_local[s].PQ_code[5]] + 
                distance_lookup_table_local[s][6][PQ_local[s].PQ_code[6]] + 
                distance_lookup_table_local[s][7][PQ_local[s].PQ_code[7]] + 

                distance_lookup_table_local[s][0][((int)PQ_local[s].PQ_code[8]) + 256] + 
                distance_lookup_table_local[s][1][((int)PQ_local[s].PQ_code[9]) + 256] + 
                distance_lookup_table_local[s][2][((int)PQ_local[s].PQ_code[10]) + 256] + 
                distance_lookup_table_local[s][3][((int)PQ_local[s].PQ_code[11]) + 256] + 
                distance_lookup_table_local[s][4][((int)PQ_local[s].PQ_code[12]) + 256] + 
                distance_lookup_table_local[s][5][((int)PQ_local[s].PQ_code[13]) + 256] + 
                distance_lookup_table_local[s][6][((int)PQ_local[s].PQ_code[14]) + 256] + 
                distance_lookup_table_local[s][7][((int)PQ_local[s].PQ_code[15]) + 256];
            // out.dist = 
            //     distance_lookup_table_local_0[PQ_local.PQ_code[0]] + distance_lookup_table_local_1[PQ_local.PQ_code[1]] + 
            //     distance_lookup_table_local_2[PQ_local.PQ_code[2]] + distance_lookup_table_local_3[PQ_local.PQ_code[3]] + 
            //     distance_lookup_table_local_4[PQ_local.PQ_code[4]] + distance_lookup_table_local_5[PQ_local.PQ_code[5]] + 
            //     distance_lookup_table_local_6[PQ_local.PQ_code[6]] + distance_lookup_table_local_7[PQ_local.PQ_code[7]] + 

            //     distance_lookup_table_local_0[((int)PQ_local.PQ_code[8]) + 256] + 
            //     distance_lookup_table_local_1[((int)PQ_local.PQ_code[9]) + 256] + 
            //     distance_lookup_table_local_2[((int)PQ_local.PQ_code[10]) + 256] + 
            //     distance_lookup_table_local_3[((int)PQ_local.PQ_code[11]) + 256] + 
            //     distance_lookup_table_local_4[((int)PQ_local.PQ_code[12]) + 256] + 
            //     distance_lookup_table_local_5[((int)PQ_local.PQ_code[13]) + 256] + 
            //     distance_lookup_table_local_6[((int)PQ_local.PQ_code[14]) + 256] + 
            //     distance_lookup_table_local_7[((int)PQ_local.PQ_code[15]) + 256];
            s_single_PQ_result[s].write(out[s]);
        }
    }
}

template<const int query_num>
void merge_result(
    hls::stream<single_PQ_result>& s_single_PQ_result_0, 
    hls::stream<single_PQ_result>& s_single_PQ_result_1, 
    hls::stream<single_PQ_result>& s_single_PQ_result_2, 
    hls::stream<result_t>& s_PQ_result) {

    for (int query_id = 0; query_id < query_num; query_id++) {
    #pragma HLS pipeline II=1
        result_t PQ_result;
        single_PQ_result result_0 = s_single_PQ_result_0.read();
        single_PQ_result result_1 = s_single_PQ_result_1.read();
        single_PQ_result result_2 = s_single_PQ_result_2.read();

        PQ_result.range(31, 0) = result_0.vec_ID;
        PQ_result.range(63, 32) = result_0.dist;
        PQ_result.range(95, 64) = result_1.vec_ID;
        PQ_result.range(127, 96) = result_1.dist;
        PQ_result.range(159, 128) = result_2.vec_ID;
        PQ_result.range(191, 160) = result_2.dist;

        // printf("Merge result q = %d, result_0.dist = %f, result_1.dist = %f, result_2.dist = %f\n",
        //     query_id, result_0.dist, result_1.dist, result_2.dist);
        s_PQ_result.write(PQ_result);
    }
}

template<typename T, const int total_len>
void write_result(
    hls::stream<T>& s_result, T* results_out) {
    
    for (int i = 0; i < total_len; i++) {
        results_out[i] = s_result.read();
        // printf("range(63, 32): %f, range(127, 96): %f, range(191, 160): %f, range(255, 224): %f\n",
        //     (float) results_out[i].range(63, 32), (float) results_out[i].range(127, 96), 
        //     (float) results_out[i].range(191, 160), (float) results_out[i].range(255, 224));
    }
}

/////////////////////////     Unused     /////////////////////////

PQ_codes ap_uint480_to_PQ_codes(ap_uint<480> in) {
#pragma HLS pipeline
#pragma HLS inline off
#pragma HLS interface port=return register
    PQ_codes out;

    out.vec_ID_A = in.range(31 + 0, 0 + 0);
    for (int i = 0; i < 16; i++) {
    #pragma HLS UNROLL
        out.PQ_code_A[i] = in.range(0 + 7 + 32 + i * 8, 0 + 32 + i * 8);
    }
    out.vec_ID_B = in.range(31 + 160, 0 + 160);
    for (int i = 0; i < 16; i++) {
    #pragma HLS UNROLL
        out.PQ_code_B[i] = in.range(160 + 7 + 32 + i * 8, 160 + 32 + i * 8);
    }
    out.vec_ID_C = in.range(31 + 320, 0 + 320);
    for (int i = 0; i < 16; i++) {
    #pragma HLS UNROLL
        out.PQ_code_C[i] = in.range(320 + 7 + 32 + i * 8, 320 + 32 + i * 8);
    }

    return out;
}

template<const int query_num>
void type_conversion(
    hls::stream<t_axi>& s_raw_input,
    hls::stream<PQ_codes>& s_PQ_codes) {

    for (int query_id = 0; query_id < query_num; query_id++) {
    #pragma HLS pipeline II=1
        t_axi in = s_raw_input.read();
        PQ_codes out = ap_uint480_to_PQ_codes(in);
        s_PQ_codes.write(out);
    }
}
