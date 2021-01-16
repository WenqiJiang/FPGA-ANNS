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


    hls::stream<float> input_stream[4][16];
#pragma HLS stream variable=input_stream depth=512
#pragma HLS array_partition variable=input_stream complete
    hls::stream<float> output_stream;
#pragma HLS stream variable=output_stream depth=2

    broadcast_array<4, 16>(table_HBM0, input_stream);

    sort_and_reduction_recurrent<4, 16>(input_stream, output_stream);

    write_result<16>(output_stream, out_PLRAM);
}

template<const int dim1, const int dim2>
void broadcast_array(
    const float* data_source, hls::stream<float> (&input_stream)[dim1][dim2]) {
    
    float array[dim1 * dim2];
#pragma HLS array_partition variable=array complete

    for (int i = 0; i < dim1 * dim2; i++) {
#pragma HLS pipeline II=1
        array[i] = data_source[i];
    }

    for (int iter = 0; iter < SORT_ARRAY_NUM; iter++) {
#pragma HLS pipeline II=1
        for (int i = 0; i < dim1; i++) {
#pragma HLS UNROLL
            for (int j = 0; j < dim2; j++) {
#pragma HLS UNROLL
                input_stream[i][j].write(array[i * dim2 + j]);
            }
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


template<>
void sort_and_reduction<4, 16>(
    hls::stream<float> (&input_stream)[4][16],
    hls::stream<float> (&output_stream)[16]) {

    for (int iter = 0; iter < SORT_ARRAY_NUM; iter++) {
#pragma HLS pipeline II=1
        for (int s = 0; s < 16; s++) {
#pragma HLS UNROLL
            output_stream[s].write(input_stream[0][s].read());
            input_stream[1][s].read();
            input_stream[2][s].read();
            input_stream[3][s].read();
        }
    }
}


////////////////////     Merge and Sort and Filter Network Ends    ////////////////////


////////////////////    Top-level Starts    ////////////////////


template<const int stream_num>
void reduction_stream_redirect(
    hls::stream<float> (&current_smallest_input_stream)[stream_num], 
    hls::stream<float> (&current_smallest_output_stream)[stream_num],
    hls::stream<float> &final_smallest_stream) {

    // first round, write dummy values
    for (int s = 0; s < stream_num; s++) {
#pragma HLS UNROLL
        current_smallest_output_stream[s].write(LARGE_NUM);
    }
    
    // the rest SORT_ARRAY_NUM -1 rounds: forward input stream
    for (int i = 0; i < SORT_ARRAY_NUM / PE_NUM_REDIRECT - 1; i++) {
#pragma HLS pipeline II=1
        for (int s = 0; s < stream_num; s++) {
#pragma HLS UNROLL
            current_smallest_output_stream[s].write(
                current_smallest_input_stream[s].read());
        }
    }

    // the final round, write the final smallest values
    for (int s = 0; s < stream_num; s++) {
#pragma HLS pipeline II=1
        final_smallest_stream.write(
            current_smallest_input_stream[s].read());
    }
}

template<const int partition_num, const int stream_num>
void partition_sorted_streams(
        hls::stream<float> (&sorted_input_stream)[stream_num], 
        hls::stream<float> (&sorted_input_stream_partition)[partition_num][stream_num]) {

    // NOTE! SORT_ARRAY_NUM / partition_num MUST BE AN INTEGER
    for (int i = 0; i < SORT_ARRAY_NUM / partition_num; i++) {
        for (int partition_id = 0; partition_id < partition_num; partition_id++) {
#pragma HLS pipeline II=1
            for (int s = 0; s < stream_num; s++) {
#pragma HLS UNROLL
                sorted_input_stream_partition[partition_id][s].write(
                    sorted_input_stream[s].read());
            }
        }
    }
}

template<const int array_len>
int argmin(float array[array_len]) {
    // return the ID of the minimum value in the array
    //    an sequential implementation
#pragma HLS inline
    float current_smallest = LARGE_NUM;
    int current_smallest_idex = 0;
    for (int i = 0; i < array_len; i++) {
        if (array[i] < current_smallest) {
            current_smallest = array[i];
            current_smallest_idex = i;
        }
    }
}

// int argmin_4(float reg0, float reg1, float reg2, float reg3) {
// #pragma HLS inline
//     // return the ID of the minimum value in the array
//     //    an parallel implementation

//     if ((reg0 < reg1) && (reg0 < reg2) && (reg0 < reg3))) {
//         return 0;
//     }
//     else if ((reg1 < reg0) && (reg1 < reg2) && (reg1 < reg3)) {
//         return 1;
//     }
//     else if ((reg2 < reg0) && (reg2 < reg1) && (reg2 < reg3)) {
//         return 2;
//     }
//     else {
//         return 3;
//     }
// }

template<>
int argmin<4>(float array[4]) {
#pragma HLS inline
    // return the ID of the minimum value in the array
    //    an parallel implementation

    if ((array[0] < array[1]) && (array[0] < array[2]) && (array[0] < array[3])) {
        return 0;
    }
    else if ((array[1] < array[0]) && (array[1] < array[2]) && (array[1] < array[3])) {
        return 1;
    }
    else if ((array[2] < array[0]) && (array[2] < array[1]) && (array[2] < array[3])) {
        return 2;
    }
    else {
        return 3;
    }
}

template<const int partition_num, const int stream_len>
void merge_sorted_streams_sequential(
    hls::stream<float> (&sorted_stream)[partition_num], 
    hls::stream<float> &output_stream) {
    // Sorted streams in increasing order
    // N sorted streams -> 1 output sorted stream of the same length, 
    //   containing the smallest numbers in all N arrays

    float sorted_stream_local[partition_num][stream_len];
#pragma HLS array_partition variable=sorted_stream_local dim=1 complete

    for (int i = 0; i < stream_len; i++) {
#pragma HLS pipeline II=1
        for (int s = 0; s < partition_num; s++) {
#pragma HLS UNROLL
            sorted_stream_local[s][i] = sorted_stream[s].read();
        }
    }

    int count[partition_num];
    float value[partition_num];
#pragma HLS array_partition variable=count dim=1 complete
#pragma HLS array_partition variable=value dim=1 complete

    // init
    for (int s = 0; s < partition_num; s++) {
#pragma HLS UNROLL
        count[s] = 0;
        value[s] = sorted_stream_local[s][0];
    }

    // output
    for (int i = 0; i < stream_len; i++) {
#pragma HLS pipeline II=1
        int current_smallest_index = argmin<partition_num>(value);
        output_stream.write(value[current_smallest_index]);
        count[current_smallest_index] = count[current_smallest_index] + 1;
        value[current_smallest_index] = sorted_stream_local[current_smallest_index][count[current_smallest_index]];
    }
}

template<>
void sort_and_reduction_recurrent<4, 16>(
    hls::stream<float> (&input_stream)[4][16],
    hls::stream<float> &output_stream) {

    hls::stream<float> sorted_input_stream[16];
#pragma HLS array_partition variable=sorted_input_stream dim=1
#pragma HLS stream variable=sorted_input_stream depth=256

    hls::stream<float> sorted_input_stream_partition[PE_NUM_REDIRECT][16];
#pragma HLS array_partition variable=sorted_input_stream_partition complete
#pragma HLS stream variable=sorted_input_stream_partition depth=2

    hls::stream<float> current_smallest_sorted_stream_partition[PE_NUM_REDIRECT][16];
    hls::stream<float> current_smallest_redirectd_stream_partition[PE_NUM_REDIRECT][16];
#pragma HLS array_partition variable=current_smallest_sorted_stream_partition dim=1
#pragma HLS array_partition variable=current_smallest_redirectd_stream_partition dim=1
#pragma HLS stream variable=current_smallest_sorted_stream_partition depth=2
#pragma HLS stream variable=current_smallest_redirectd_stream_partition depth=2

    hls::stream<float> final_smallest_stream_partition[PE_NUM_REDIRECT];
#pragma HLS array_partition variable=final_smallest_stream_partition dim=1
#pragma HLS stream variable=final_smallest_stream_partition depth=256


#pragma HLS dataflow
    sort_and_reduction<4, 16>(input_stream, sorted_input_stream);

    // the 4 times should be a fixed numner
    partition_sorted_streams<PE_NUM_REDIRECT, 16>(
        sorted_input_stream, sorted_input_stream_partition);

    // The redirect process from current_smallest_sorted_stream
    //   to current_smallest_redirectd_stream takes 4 CC, thus
    //   we need 4 of such units to meet the performance of the
    //   sorting network (1 set of outputs per CC)

    for (int pe_id = 0; pe_id < PE_NUM_REDIRECT; pe_id++) {
#pragma HLS UNROLL
        parallel_merge_sort<16>(
            current_smallest_redirectd_stream_partition[pe_id], 
            sorted_input_stream_partition[pe_id], 
            current_smallest_sorted_stream_partition[pe_id]); 

        reduction_stream_redirect<16>(
            current_smallest_sorted_stream_partition[pe_id],
            current_smallest_redirectd_stream_partition[pe_id],
            final_smallest_stream_partition[pe_id]);
    }

    merge_sorted_streams_sequential<PE_NUM_REDIRECT, 16>(final_smallest_stream_partition, output_stream);
}

////////////////////    Top-level Ends    ////////////////////

template<const int total_len>
void write_result(hls::stream<float> &output_stream, float* output) {

    for (int s = 0; s < total_len; s++) {
#pragma HLS pipeline II=1
        output[s] = output_stream.read();
    }
}
