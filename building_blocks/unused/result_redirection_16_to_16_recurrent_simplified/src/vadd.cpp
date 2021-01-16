#include "vadd.hpp"
#include <stdio.h>

/////     Given 128 input streams (unordered), output the 16 smallest numbers /////

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
    float* out_PLRAM
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


    hls::stream<float> input_stream[16];
#pragma HLS stream variable=input_stream depth=512
#pragma HLS array_partition variable=input_stream complete
    hls::stream<float> output_stream[16];
#pragma HLS stream variable=output_stream depth=512
#pragma HLS array_partition variable=output_stream dim=1

    hls::stream<float> current_smallest_sorted_stream[16];
    hls::stream<float> current_smallest_redirectd_stream[16];
#pragma HLS array_partition variable=current_smallest_sorted_stream dim=1
#pragma HLS array_partition variable=current_smallest_redirectd_stream dim=1
#pragma HLS stream variable=current_smallest_sorted_stream depth=256
#pragma HLS stream variable=current_smallest_redirectd_stream depth=256

    broadcast_array<16>(table_HBM0, input_stream);

    // sort_and_reduction_recurrent<1, 16>(input_stream, output_stream);
    parallel_merge_sort<16>(
        input_stream, current_smallest_redirectd_stream, 
        current_smallest_sorted_stream); 

    reduction_stream_redirect<16>(
        current_smallest_sorted_stream,
        current_smallest_redirectd_stream,
        output_stream);

    write_result<16>(output_stream, out_PLRAM);
}

template<const int stream_num>
void broadcast_array(
    const float* data_source, hls::stream<float> (&input_stream)[stream_num]) {
    
//     float array[stream_num];
// #pragma HLS array_partition variable=array complete

//     for (int i = 0; i < stream_num; i++) {
// #pragma HLS pipeline II=1
//         array[i] = data_source[i];
//     }

    for (int iter = 0; iter < SORT_ARRAY_NUM; iter++) {
#pragma HLS pipeline II=1
        for (int i = 0; i < stream_num; i++) {
#pragma HLS UNROLL
                input_stream[i].write(10);
        }
    }
}


template<>
void parallel_merge_sort<16>(
    hls::stream<float> (&input_stream_A)[16],
    hls::stream<float> (&input_stream_B)[16],
    hls::stream<float> (&output_stream)[16]) {
    
    for (int iter = 0; iter < SORT_ARRAY_NUM; iter++) {
#pragma HLS pipeline II=1
        for (int s = 0; s < 16; s++) {
#pragma HLS UNROLL
            input_stream_A[s].read();
            output_stream[s].write(input_stream_B[s].read());
        }
    }
}

template<const int stream_num>
void reduction_stream_redirect(
    hls::stream<float> (&current_smallest_input_stream)[stream_num], 
    hls::stream<float> (&current_smallest_output_stream)[stream_num],
    hls::stream<float> (&final_smallest_stream)[stream_num]) {

    // first round, write dummy values
    for (int s = 0; s < stream_num; s++) {
#pragma HLS UNROLL
        current_smallest_output_stream[s].write(LARGE_NUM);
    }
    
    // the rest SORT_ARRAY_NUM -1 rounds: forward input stream
    for (int i = 0; i < SORT_ARRAY_NUM - 1; i++) {
#pragma HLS pipeline II=1
        for (int s = 0; s < stream_num; s++) {
#pragma HLS UNROLL
            current_smallest_output_stream[s].write(
                current_smallest_input_stream[s].read());
        }
    }

    // the final round, write the final smallest values
    for (int s = 0; s < stream_num; s++) {
#pragma HLS UNROLL
        final_smallest_stream[s].write(
            current_smallest_input_stream[s].read());
    }
}

template<const int total_len>
void write_result(hls::stream<float> (&output_stream)[total_len], float* output) {

    for (int s = 0; s < total_len; s++) {
#pragma HLS pipeline II=1
        output[s] = output_stream[s].read();
    }
}
