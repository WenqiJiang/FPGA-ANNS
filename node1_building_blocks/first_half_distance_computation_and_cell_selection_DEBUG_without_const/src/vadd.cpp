#include "vadd.hpp"
#include <stdio.h>

void vadd(  
    t_axi* table_HBM0, t_axi* table_HBM1, 
    t_axi* table_HBM2, t_axi* table_HBM3, 
    t_axi* table_HBM4, t_axi* table_HBM5, 
    t_axi* table_HBM6, t_axi* table_HBM7, 
    t_axi* table_HBM8, t_axi* table_HBM9, 
    t_axi* table_HBM10, t_axi* table_HBM11, 
    t_axi* table_HBM12, t_axi* table_HBM13, 
    t_axi* table_HBM14, t_axi* table_HBM15, 
    t_axi* table_HBM16, t_axi* table_HBM17, 
    t_axi* table_HBM18, t_axi* table_HBM19, 
    t_axi* table_HBM20, t_axi* table_HBM21, 
    t_axi* table_HBM22, t_axi* table_HBM23, 
    t_axi* table_HBM24, t_axi* table_HBM25, 
    t_axi* table_HBM26, t_axi* table_HBM27, 
    t_axi* table_HBM28, t_axi* table_HBM29, 
    t_axi* table_HBM30, t_axi* table_HBM31, 
    t_axi* table_DDR0, t_axi* table_DDR1,
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

    hls::stream<float> s_query_vectors[PE_NUM_CENTER_DIST_COMP];
#pragma HLS stream variable=s_query_vectors depth=128
#pragma HLS array_partition variable=s_query_vectors dim=1

    hls::stream<float> s_centroid_vectors[PE_NUM_CENTER_DIST_COMP];
#pragma HLS stream variable=s_centroid_vectors depth=8
#pragma HLS array_partition variable=s_centroid_vectors dim=1

    hls::stream<dist_cell_ID_t> s_partial_cell_distance[PE_NUM_CENTER_DIST_COMP];
#pragma HLS stream variable=s_partial_cell_distance depth=4
#pragma HLS array_partition variable=s_partial_cell_distance dim=1


    // consume_and_write<QUERY_NUM * CENTROIDS_PER_PARTITION>(s_partial_cell_distance, out_PLRAM)
    
    // Input unordered numbers
//     hls::stream<dist_cell_ID_t> s_input_stream[PE_NUM_CENTER_DIST_COMP];
// #pragma HLS stream variable=s_input_stream depth=4
// #pragma HLS array_partition variable=s_input_stream dim=1

    hls::stream<dist_cell_ID_t> s_merge_input_A;
#pragma HLS stream variable=s_merge_input_A depth=8
    hls::stream<dist_cell_ID_t> s_merge_input_B;
#pragma HLS stream variable=s_merge_input_B depth=8
    hls::stream<dist_cell_ID_t> s_merge_partial_output;
#pragma HLS stream variable=s_merge_partial_output depth=8
    hls::stream<dist_cell_ID_t> s_merge_output;
#pragma HLS stream variable=s_merge_output depth=8


    broadcast_init_centroid_vectors(table_DDR1, s_centroid_vectors);
    broadcast_query_vector<QUERY_NUM>(table_DDR0, s_query_vectors);

    compute_cell_distance_wrapper<QUERY_NUM>(s_centroid_vectors, s_query_vectors, s_partial_cell_distance);

    // broadcast_stream<NLIST, PE_NUM_CENTER_DIST_COMP>(table_DDR0, s_input_stream);

    bitonic_sort(s_partial_cell_distance, s_merge_input_A);

    // periodically write large numbers, and write results out
    merge_filter_streams<PE_NUM_CENTER_DIST_COMP>(s_merge_input_A, s_merge_input_B, s_merge_partial_output);
    result_redirect<PE_NUM_CENTER_DIST_COMP>(s_merge_partial_output, s_merge_input_B, s_merge_output); 

    write_result<NPROBE * QUERY_NUM>(s_merge_output, out_PLRAM);
}

////////////////////     Center Distance Computation Starts    ////////////////////

template<const int query_num>
void broadcast_query_vector(
    float* table_DDR0,
    hls::stream<float> (&s_query_vectors)[PE_NUM_CENTER_DIST_COMP]) {

    // Data type: suppose each vector = 128 D, FPGA freq = 200 MHz
    //   then it takes 640 + 200 ns < 1 us to load a query vector, 
    //   much faster than computing distance and constructing LUT (> 10 us)

    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int d = 0; d < D; d++) {
#pragma HLS pipeline II=1
            float reg = table_DDR0[query_id * D + d];
            for (int s = 0; s < PE_NUM_CENTER_DIST_COMP; s++) {
#pragma HLS UNROLL
                s_query_vectors[s].write(reg);
            }
        }
    }
}

void broadcast_init_centroid_vectors(
    float* table_DDR1,
    hls::stream<float> (&s_centroid_vectors)[PE_NUM_CENTER_DIST_COMP]) {

    // e.g., CENTROIDS_PER_PARTITION = 256, CENTROID_PARTITIONS = 32
    //    first 256 elements -> stream 0
    //    second 256 elements -> stream 1, so on and so forth
    for (int s = 0; s < PE_NUM_CENTER_DIST_COMP; s++) {
        
        for (int i = 0; i < CENTROIDS_PER_PARTITION * D; i++) {
#pragma HLS pipeline II=1
            s_centroid_vectors[s].write(table_DDR1[s * CENTROIDS_PER_PARTITION * D + i]);
        }
    }
}


template<const int query_num>
void compute_cell_distance_wrapper(
    hls::stream<float> (&s_centroid_vectors)[PE_NUM_CENTER_DIST_COMP],
    hls::stream<float> (&s_query_vectors)[PE_NUM_CENTER_DIST_COMP],
    hls::stream<dist_cell_ID_t> (&s_partial_cell_distance)[PE_NUM_CENTER_DIST_COMP]) {
#pragma HLS inline

    for (int s = 0; s < PE_NUM_CENTER_DIST_COMP; s++) {
#pragma HLS UNROLL
        compute_cell_distance<QUERY_NUM>(
            s * CENTROIDS_PER_PARTITION, 
            s_centroid_vectors[s], 
            s_query_vectors[s], s_partial_cell_distance[s]);
    }
}

template<const int query_num>
void compute_cell_distance(
    int start_cell_ID,
    hls::stream<float>& s_centroid_vectors,
    hls::stream<float>& s_query_vectors,
    hls::stream<dist_cell_ID_t>& s_partial_cell_distance) {

    // what is the speed needed to compute these distances? need to match HBM
    // python performance_estimation_three_nodes_IVF.py --nlist=8192 --nprobe=32
    // Estimated HBM Latency: 23.58 us -> 3K cycles
    // each URAM -> 64bit port x 2 -> 4 elements per cycle -> 64 cycles per vec
    //   -> at most 50 vectors per URAM (actually 1 URAM can only fit 32)
    // My strategy: 32 Partitions, each responsible for 256 vectors, 
    //   each vector finish in 10 cycles
    float cell_centroids_partition[CENTROIDS_PER_PARTITION * D];
#pragma HLS array_partition variable=cell_centroids_partition cyclic factor=8 
#pragma HLS resource variable=cell_centroids_partition core=RAM_2P_URAM

    float local_query_buffer[D];
#pragma HLS array_partition variable=local_query_buffer cyclic factor=8

    // init before any computation
    for (int c = 0; c < CENTROIDS_PER_PARTITION; c++) {
        for (int d = 0; d < D; d++) {
#pragma HLS pipeline II=1
            cell_centroids_partition[c * D + d] = s_centroid_vectors.read();
        }
    }

    for (int query_id = 0; query_id < query_num; query_id++) {

        // load query vec
        for (int d = 0; d < D; d++) {
#pragma HLS pipeline II=1
            local_query_buffer[d] = s_query_vectors.read();
        }

        // compute distance and write results out
        for (int c = 0; c < CENTROIDS_PER_PARTITION; c++) {

            float distance = 0;

            // Manually unroll 16, auto-unroll doesn't work well
            for (int d = 0; d < D / 16; d++) {
#pragma HLS pipeline II=1
            //#pragma HLS UNROLL factor=16
                float scalar_dist_0 = local_query_buffer[d * 16 + 0] - cell_centroids_partition[c * D + d * 16 + 0];
                float scalar_dist_1 = local_query_buffer[d * 16 + 1] - cell_centroids_partition[c * D + d * 16 + 1];
                float scalar_dist_2 = local_query_buffer[d * 16 + 2] - cell_centroids_partition[c * D + d * 16 + 2];
                float scalar_dist_3 = local_query_buffer[d * 16 + 3] - cell_centroids_partition[c * D + d * 16 + 3];
                float scalar_dist_4 = local_query_buffer[d * 16 + 4] - cell_centroids_partition[c * D + d * 16 + 4];
                float scalar_dist_5 = local_query_buffer[d * 16 + 5] - cell_centroids_partition[c * D + d * 16 + 5];
                float scalar_dist_6 = local_query_buffer[d * 16 + 6] - cell_centroids_partition[c * D + d * 16 + 6];
                float scalar_dist_7 = local_query_buffer[d * 16 + 7] - cell_centroids_partition[c * D + d * 16 + 7];
                float scalar_dist_8 = local_query_buffer[d * 16 + 8] - cell_centroids_partition[c * D + d * 16 + 8];
                float scalar_dist_9 = local_query_buffer[d * 16 + 9] - cell_centroids_partition[c * D + d * 16 + 9];
                float scalar_dist_10 = local_query_buffer[d * 16 + 10] - cell_centroids_partition[c * D + d * 16 + 10];
                float scalar_dist_11 = local_query_buffer[d * 16 + 11] - cell_centroids_partition[c * D + d * 16 + 11];
                float scalar_dist_12 = local_query_buffer[d * 16 + 12] - cell_centroids_partition[c * D + d * 16 + 12];
                float scalar_dist_13 = local_query_buffer[d * 16 + 13] - cell_centroids_partition[c * D + d * 16 + 13];
                float scalar_dist_14 = local_query_buffer[d * 16 + 14] - cell_centroids_partition[c * D + d * 16 + 14];
                float scalar_dist_15 = local_query_buffer[d * 16 + 15] - cell_centroids_partition[c * D + d * 16 + 15];

                float square_dist_0 = scalar_dist_0 * scalar_dist_0;
                float square_dist_1 = scalar_dist_1 * scalar_dist_1;
                float square_dist_2 = scalar_dist_2 * scalar_dist_2;
                float square_dist_3 = scalar_dist_3 * scalar_dist_3;
                float square_dist_4 = scalar_dist_4 * scalar_dist_4;
                float square_dist_5 = scalar_dist_5 * scalar_dist_5;
                float square_dist_6 = scalar_dist_6 * scalar_dist_6;
                float square_dist_7 = scalar_dist_7 * scalar_dist_7;
                float square_dist_8 = scalar_dist_8 * scalar_dist_8;
                float square_dist_9 = scalar_dist_9 * scalar_dist_9;
                float square_dist_10 = scalar_dist_10 * scalar_dist_10;
                float square_dist_11 = scalar_dist_11 * scalar_dist_11;
                float square_dist_12 = scalar_dist_12 * scalar_dist_12;
                float square_dist_13 = scalar_dist_13 * scalar_dist_13;
                float square_dist_14 = scalar_dist_14 * scalar_dist_14;
                float square_dist_15 = scalar_dist_15 * scalar_dist_15;

                distance += square_dist_0 + square_dist_1 + square_dist_2 + square_dist_3 + 
                    square_dist_4 + square_dist_5 + square_dist_6 + square_dist_7 + 
                    square_dist_8 + square_dist_9 + square_dist_10 + square_dist_11 + 
                    square_dist_12 + square_dist_13 + square_dist_14 + square_dist_15; 
            }

            dist_cell_ID_t out;
            out.dist = distance;
            out.cell_ID = start_cell_ID + c;
            s_partial_cell_distance.write(out);
        }
    }
}

////////////////////     Center Distance Computation Ends    ////////////////////

////////////////////     Sorting Network Starts    ////////////////////

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

////////////////////     Sorting Network Ends    ////////////////////

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
