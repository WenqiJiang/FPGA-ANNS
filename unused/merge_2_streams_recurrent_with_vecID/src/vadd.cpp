#include "vadd.hpp"
#include <stdio.h>

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


    hls::stream<dist_cell_ID_t> s_input_stream_0;
#pragma HLS stream variable=s_input_stream_0 depth=128
    hls::stream<dist_cell_ID_t> s_input_stream_1;
#pragma HLS stream variable=s_input_stream_1 depth=128
    hls::stream<dist_cell_ID_t> s_partial_output_stream;
#pragma HLS stream variable=s_partial_output_stream depth=128
    hls::stream<dist_cell_ID_t> s_output_stream;
#pragma HLS stream variable=s_output_stream depth=128


    broadcast_stream<32 * MERGE_ITER>(table_DDR0, s_input_stream_0);

    // periodically write large numbers, and write results out
    merge_filter_streams<32>(s_input_stream_0, s_input_stream_1, s_partial_output_stream);
    result_redirect<32>(s_partial_output_stream, s_input_stream_1, s_output_stream); 

    write_result<32 * NUM_LOOPS>(s_output_stream, out_PLRAM);
}

template<const int total_len> // the length of single input stream
void broadcast_stream(const float* data_source, 
    hls::stream<dist_cell_ID_t> &s_input_stream_0) {

    dist_cell_ID_t input_array_0[total_len];

    for (int i = 0; i < total_len; i++) {
    #pragma HLS pipeline II=1
        input_array_0[i].dist = data_source[i];
        input_array_0[i].cell_ID = i;
    }

    for (int iter = 0; iter < NUM_LOOPS; iter++) { 
        for (int i = 0; i < total_len; i++) {
    // printf("broadcast_stream, i = %d\n", i);
        #pragma HLS pipeline II=1
            s_input_stream_0.write(input_array_0[i]);
        }
    }
}

// TODO: here doesn't clean cache
template<const int input_stream_len>
void load_stream_to_local(
    hls::stream<dist_cell_ID_t>& s_input_stream, 
    dist_cell_ID_t input_array[input_stream_len]) {

    for (int i = 0; i < input_stream_len; i++) {
    // printf("load_stream_to_local, i = %d\n", i);
    #pragma HLS pipeline II=1
        input_array[i] = s_input_stream.read();
    }
}

template<const int input_stream_len>
void merge_filter_arrays(
    dist_cell_ID_t input_array_0[input_stream_len],
    dist_cell_ID_t input_array_1[input_stream_len],
    hls::stream<dist_cell_ID_t>& s_partial_output_stream) {

    int count0, count1;
    dist_cell_ID_t reg0, reg1;
    
    count0 = 0; 
    count1 = 0;

    // output the smallest 32 numbers and ids
    for (int i = 0; i < input_stream_len; i++) { 
    // printf("merge_filter_arrays, i = %d\n", i);
    #pragma HLS pipeline II=1

        reg0 = input_array_0[count0];
        reg1 = input_array_1[count1];

        if (reg0.dist <= reg1.dist) {
            s_partial_output_stream.write(reg0);
            count0++;
        }
        else {
            s_partial_output_stream.write(reg1);
            count1++; 
        }
    }
}

template<const int input_stream_len>
void merge_filter_streams(
    hls::stream<dist_cell_ID_t>& s_input_stream_0, hls::stream<dist_cell_ID_t>& s_input_stream_1,
    hls::stream<dist_cell_ID_t>& s_partial_output_stream) {
    // This function merge two sorted streams to a single sorted stream, 
    // and ONLY output the smallest half

    dist_cell_ID_t input_array_0[input_stream_len];
    dist_cell_ID_t input_array_1[input_stream_len];
    
    for (int iter = 0; iter < NUM_LOOPS * MERGE_ITER; iter++) {
    // printf("merge_filter_streams, iter = %d\n", iter);
    #pragma HLS dataflow

        load_stream_to_local<input_stream_len>(s_input_stream_0, input_array_0);
        load_stream_to_local<input_stream_len>(s_input_stream_1, input_array_1);
        merge_filter_arrays<input_stream_len>(input_array_0, input_array_1, s_partial_output_stream);
    }
}

template<const int input_stream_len>
void result_redirect(
    hls::stream<dist_cell_ID_t>& s_partial_output_stream, 
    hls::stream<dist_cell_ID_t>& s_input_stream_1, 
    hls::stream<dist_cell_ID_t>& s_output_stream) {

    for (int iter = 0; iter < NUM_LOOPS; iter++) {
        
        // printf("result_redirect, iter = %d\n", iter);

        // First merge iteration: no read from merge module, write large number to 
        //   s_input_stream_1 directly
        dist_cell_ID_t dummy;
        dummy.dist = LARGE_NUM;
        dummy.cell_ID = -1;
        for (int i = 0; i < input_stream_len; i++) {
        // printf("result_redirect first stage, i = %d\n", i);
        #pragma HLS pipeline II=1
            s_input_stream_1.write(dummy);
        }

        // Middle merge iterations: redirect partial result to input
        //   the total number of write partition to input stream = MERGE_ITER
        //   the total number of read partition from partial results = MERGE_ITER
        for (int m = 0; m < MERGE_ITER - 1; m++) {
            for (int i = 0; i < input_stream_len; i++) {
        // printf("result_redirect Middle stage, m = %d, i = %d\n", m, i);
            #pragma HLS pipeline II=1
                s_input_stream_1.write(s_partial_output_stream.read());
            }
        }

        // Final merge iteration: write partial result as final result
        for (int i = 0; i < input_stream_len; i++) {
        // printf("result_redirect final stage, i = %d\n", i);
        #pragma HLS pipeline II=1
            s_output_stream.write(s_partial_output_stream.read());
        }
    }
}

template<const int total_len>
void write_result(hls::stream<dist_cell_ID_t>& out, dist_cell_ID_t* out_array) {
    for (int i = 0; i < total_len; i++) {
    #pragma HLS pipeline II=1
        out_array[i] = out.read();
    }
}