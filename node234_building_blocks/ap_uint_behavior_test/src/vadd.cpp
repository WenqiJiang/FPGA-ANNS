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
    t_axi* out_PLRAM
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

    hls::stream<int_float_struct_t> s_int_float_struct[8];
#pragma HLS array_partition variable=s_int_float_struct dim=1 complete
#pragma HLS stream variable=s_int_float_struct depth=4

    hls::stream<int_float_struct_t> s_int_float_struct_result[8];
#pragma HLS array_partition variable=s_int_float_struct_result dim=1 complete
#pragma HLS stream variable=s_int_float_struct_result depth=4

    hls::stream<t_axi> s_result;
#pragma HLS stream variable=s_result depth=4

    // Load int and float as ap_uint<512> type, and then add them by 1
    load_input<QUERY_NUM>(table_DDR0, s_raw_input);

    write_result<t_axi, QUERY_NUM>(s_raw_input, out_PLRAM);

    // type_conversion_and_split<QUERY_NUM>(s_raw_input, s_int_float_struct);

    // add_one_wrapper<QUERY_NUM>(s_int_float_struct, s_int_float_struct_result);

    // merge_result<QUERY_NUM>(s_int_float_struct_result, s_result);
    // write_result<t_axi, QUERY_NUM>(s_result, out_PLRAM);
}


template<const int query_num>
void load_input(
    const t_axi* table_DDR0,
    hls::stream<t_axi>& s_raw_input) {

    for (int query_id = 0; query_id < query_num; query_id++) {
    #pragma HLS pipeline II=1
        s_raw_input.write(table_DDR0[query_id]);
    }
}

eight_int_float_struct_t ap_uint512_to_eight_int_float_struct_t(ap_uint<512> in) {
// AXI datawidth of 480 is banned, must use 2^n, e.g., 512
#pragma HLS pipeline
#pragma HLS inline off
#pragma HLS interface port=return register
    eight_int_float_struct_t out;

    for (int i = 0; i < 8; i++) {
    #pragma HLS UNROLL
        out.fs[i].i = in.range(31 + 64 * i, 0 + 64 * i);
        out.fs[i].f = in.range(63 + 64 * i, 32 + 64 * i);
    }

    return out;
}

template<const int query_num>
void type_conversion_and_split(
    hls::stream<t_axi>& s_raw_input,
    hls::stream<int_float_struct_t> (&s_int_float_struct)[8]) {

    for (int query_id = 0; query_id < query_num; query_id++) {
    #pragma HLS pipeline II=1

        t_axi in = s_raw_input.read();
        eight_int_float_struct_t out = ap_uint512_to_eight_int_float_struct_t(in);
        for (int i = 0; i < 8; i++) {
        #pragma HLS UNROLL
            s_int_float_struct[i].write(out.fs[i]);
        }
    }
}


template<const int query_num>
void add_one_wrapper(
    hls::stream<int_float_struct_t> (&s_int_float_struct)[8], 
    hls::stream<int_float_struct_t> (&s_int_float_struct_result)[8]) {
#pragma HLS inline

    for (int i = 0; i < 8; i++) {
    #pragma HLS UNROLL
        add_one<query_num>(s_int_float_struct[i], s_int_float_struct_result[i]);
    }
}

template<const int query_num>
void add_one(
    hls::stream<int_float_struct_t>& s_int_float_struct, 
    hls::stream<int_float_struct_t>& s_int_float_struct_result) {

    for (int query_id = 0; query_id < query_num; query_id++) {
    #pragma HLS pipeline II=1

        int_float_struct_t local = s_int_float_struct.read();
        int_float_struct_t out;
        out.i = local.i + 1;
        out.f = local.f + 1;

        s_int_float_struct_result.write(out);
    }
}

template<const int query_num>
void merge_result(
    hls::stream<int_float_struct_t> (&s_int_float_struct_result)[8],
    hls::stream<t_axi>& s_result) {

    int_float_struct_t fs[8];

    for (int query_id = 0; query_id < query_num; query_id++) {
    #pragma HLS pipeline II=1

        t_axi result;

        for (int i = 0; i < 8; i++) {
        #pragma HLS UNROLL
            fs[i] = s_int_float_struct_result[i].read();
            result.range(31 + 64 * i, 0 + 64 * i) = fs[i].i;
            result.range(63 + 64 * i, 32 + 64 * i) = fs[i].f;
        }

        s_result.write(result);
    }
}

template<typename T, const int total_len>
void write_result(
    hls::stream<T>& s_result, T* results_out) {
    
    for (int i = 0; i < total_len; i++) {
        results_out[i] = s_result.read();
    }
}
