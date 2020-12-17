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
    ap_uint<64>* out_PLRAM
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

    // Input unordered numbers
    hls::stream<dist_cell_ID_t> s_input_stream[PE_NUM_CENTER_DIST_COMP];
#pragma HLS stream variable=s_input_stream depth=4
#pragma HLS array_partition variable=s_input_stream dim=1

    hls::stream<dist_cell_ID_t> s_merge_input_A;
#pragma HLS stream variable=s_merge_input_A depth=8
    hls::stream<dist_cell_ID_t> s_merge_input_B;
#pragma HLS stream variable=s_merge_input_B depth=8
    hls::stream<dist_cell_ID_t> s_merge_partial_output;
#pragma HLS stream variable=s_merge_partial_output depth=8
    hls::stream<dist_cell_ID_t> s_merge_output;
#pragma HLS stream variable=s_merge_output depth=8


    broadcast_stream<NLIST, PE_NUM_CENTER_DIST_COMP>(table_DDR0, s_input_stream);

    bitonic_sort(s_input_stream, s_merge_input_A);

    // periodically write large numbers, and write results out
    merge_filter_streams<PE_NUM_CENTER_DIST_COMP>(s_merge_input_A, s_merge_input_B, s_merge_partial_output);
    result_redirect<PE_NUM_CENTER_DIST_COMP>(s_merge_partial_output, s_merge_input_B, s_merge_output); 

    write_result<NPROBE * QUERY_NUM>(s_merge_output, out_PLRAM);
}

template<const int total_len, const int stream_num> 
void broadcast_stream(const float* data_source,
    hls::stream<dist_cell_ID_t> (&s_input_stream)[stream_num]) {

    float input_array[total_len];
#pragma HLS array_partition variable=input_array cyclic factor=stream_num

    for (int i = 0; i < total_len; i++) {
#pragma HLS pipeline II=1
        input_array[i] = data_source[i];
    }

    for (int iter = 0; iter < QUERY_NUM; iter++) { 
        for (int i = 0; i < total_len / stream_num; i++) {
            for (int j = 0; j < stream_num; j++) {
#pragma HLS UNROLL
                dist_cell_ID_t tmp;
                tmp.dist = input_array[i * stream_num + j];
                tmp.cell_ID = i * stream_num + j;
                s_input_stream[j].write(tmp);
            }
        }
    }
}

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
    dist_cell_ID_t input_array_A[input_stream_len],
    dist_cell_ID_t input_array_B[input_stream_len],
    hls::stream<dist_cell_ID_t>& s_merge_partial_output) {

    int count0, count1;
    dist_cell_ID_t reg0, reg1;
    
    count0 = 0; 
    count1 = 0;

    // output the smallest 32 numbers and ids
    for (int i = 0; i < input_stream_len; i++) { 
    // printf("merge_filter_arrays, i = %d\n", i);
#pragma HLS pipeline II=1

        reg0 = input_array_A[count0];
        reg1 = input_array_B[count1];

        if (reg0.dist <= reg1.dist) {
            s_merge_partial_output.write(reg0);
            count0++;
        }
        else {
            s_merge_partial_output.write(reg1);
            count1++; 
        }
    }
}

template<const int input_stream_len>
void merge_filter_streams(
    hls::stream<dist_cell_ID_t>& s_merge_input_A, hls::stream<dist_cell_ID_t>& s_merge_input_B,
    hls::stream<dist_cell_ID_t>& s_merge_partial_output) {
    // This function merge two sorted streams to a single sorted stream, 
    // and ONLY output the smallest half

    dist_cell_ID_t input_array_A[input_stream_len];
    dist_cell_ID_t input_array_B[input_stream_len];
    
    for (int iter = 0; iter < QUERY_NUM * MERGE_ITER; iter++) {
    // printf("merge_filter_streams, iter = %d\n", iter);
#pragma HLS dataflow

        load_stream_to_local<input_stream_len>(s_merge_input_A, input_array_A);
        load_stream_to_local<input_stream_len>(s_merge_input_B, input_array_B);
        merge_filter_arrays<input_stream_len>(input_array_A, input_array_B, s_merge_partial_output);
    }
}

template<const int input_stream_len>
void result_redirect(
    hls::stream<dist_cell_ID_t>& s_merge_partial_output, 
    hls::stream<dist_cell_ID_t>& s_merge_input_B, 
    hls::stream<dist_cell_ID_t>& s_merge_output) {

    for (int iter = 0; iter < QUERY_NUM; iter++) {
        
        // printf("result_redirect, iter = %d\n", iter);

        // First merge iteration: no read from merge module, write large number to 
        //   s_merge_input_B directly
        dist_cell_ID_t dummy;
        dummy.dist = LARGE_NUM;
        dummy.cell_ID = -1;

        for (int i = 0; i < input_stream_len; i++) {
        // printf("result_redirect first stage, i = %d\n", i);
#pragma HLS pipeline II=1
            s_merge_input_B.write(dummy);
        }

        // Middle merge iterations: redirect partial result to input
        //   the total number of write partition to input stream = MERGE_ITER
        //   the total number of read partition from partial results = MERGE_ITER
        for (int m = 0; m < MERGE_ITER - 1; m++) {
            for (int i = 0; i < input_stream_len; i++) {
        // printf("result_redirect Middle stage, m = %d, i = %d\n", m, i);
#pragma HLS pipeline II=1
                s_merge_input_B.write(s_merge_partial_output.read());
            }
        }

        // Final merge iteration: write partial result as final result
        for (int i = 0; i < input_stream_len; i++) {
        // printf("result_redirect final stage, i = %d\n", i);
#pragma HLS pipeline II=1
            s_merge_output.write(s_merge_partial_output.read());
        }
    }
}


void compare_swap(dist_cell_ID_t* array, int idxA, int idxB) {
    // note: idxA must < idxB
#pragma HLS inline
    if (array[idxA].dist > array[idxB].dist) {
      	dist_cell_ID_t regA = array[idxA];
        dist_cell_ID_t regB = array[idxB];
        array[idxA] = regB;
        array[idxB] = regA;
    }
}

template<const int total_len, const int partition_num>
void compare_swap_range_head_tail(dist_cell_ID_t* array) {
    // e.g., in the image phase merge 4 -> 8, the 1st stage
    // Input these constants to make computation fast
// #pragma HLS inline
  
    const int elements_per_partition = total_len / partition_num;
    const int operations_per_partition = elements_per_partition / 2;

    for (int i = 0; i < partition_num; i++) {
#pragma HLS UNROLL
        for (int j = 0; j < operations_per_partition; j++) {
#pragma HLS UNROLL
            compare_swap(array, i * elements_per_partition + j, (i + 1) * elements_per_partition - 1 - j);
        }
    }
}

template<const int total_len, const int partition_num>
void compare_swap_range_interval(dist_cell_ID_t* array) {
    // e.g., in the image phase merge 4 -> 8, the 2nd and 3rd stage
// #pragma HLS inline
  
    const int elements_per_partition = total_len / partition_num;
    const int operations_per_partition = elements_per_partition / 2;
	const int interval = operations_per_partition;

    for (int i = 0; i < partition_num; i++) {
#pragma HLS UNROLL
        for (int j = 0; j < operations_per_partition; j++) {
#pragma HLS UNROLL
        compare_swap(array, i * elements_per_partition + j, i * elements_per_partition + interval + j);
        }
    }
}

void bitonic_sort(hls::stream<dist_cell_ID_t> (&s_input_stream)[32],
    hls::stream<dist_cell_ID_t> &s_output_stream) {
    // len = 32, np.random.randint(low=0, high=100, size=32)

    dist_cell_ID_t input_array[32];
#pragma HLS array_partition variable=input_array complete
    // Total: 15 sub-stages
    
    
    for (int iter = 0; iter < QUERY_NUM * MERGE_ITER; iter++) {

        // load data from input stream
        for (int i = 0; i < 32; i++) {
#pragma HLS UNROLL
            input_array[i] = s_input_stream[i].read();
        }

        // Stage 1
        compare_swap_range_interval<32, 16>(input_array);

        // Stage 2: 2 -> 4
        compare_swap_range_head_tail<32, 8>(input_array);
        compare_swap_range_interval<32, 16>(input_array);

        // Stage 3: 4 -> 8
        compare_swap_range_head_tail<32, 4>(input_array);
        compare_swap_range_interval<32, 8>(input_array);
        compare_swap_range_interval<32, 16>(input_array);

        // Stage 4: 8 -> 16
        compare_swap_range_head_tail<32, 2>(input_array);
        compare_swap_range_interval<32, 4>(input_array);
        compare_swap_range_interval<32, 8>(input_array);
        compare_swap_range_interval<32, 16>(input_array);
        
        // Stage 5: 16 -> 32
        compare_swap_range_head_tail<32, 1>(input_array);
        compare_swap_range_interval<32, 2>(input_array);
        compare_swap_range_interval<32, 4>(input_array);
        compare_swap_range_interval<32, 8>(input_array);
        compare_swap_range_interval<32, 16>(input_array);

        for (int i = 0; i < 32; i++) {
#pragma HLS pipeline II=1
            s_output_stream.write(input_array[i]);
        }
    }
}

template<const int total_len>
void write_result(hls::stream<dist_cell_ID_t>& out, ap_uint<64>* out_array) {
    for (int i = 0; i < total_len; i++) {
#pragma HLS pipeline II=1
        dist_cell_ID_t tmp = out.read();
        float dist = tmp.dist;
        int cell_ID = tmp.cell_ID;
        out_array[i].range(31, 0) = *((ap_uint<32>*) (&dist));
        out_array[i].range(63, 32) = *((ap_uint<32>*) (&cell_ID));
    }
}