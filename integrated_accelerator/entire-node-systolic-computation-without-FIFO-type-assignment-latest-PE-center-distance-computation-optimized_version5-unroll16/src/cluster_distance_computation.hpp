#pragma once

#include "constants.hpp"
#include "types.hpp"

////////////////////    Function to call in top-level     //////////////////// 
template<const int query_num>
void compute_cell_distance_wrapper(
    hls::stream<float> &s_centroid_vectors,
    hls::stream<float> &s_query_vectors,
    hls::stream<dist_cell_ID_t> &s_cell_distance);
////////////////////    Function to call in top-level     //////////////////// 

void partition_centroid_vectors(
    hls::stream<float> &s_centroid_vectors, 
    hls::stream<float> (&s_partial_centroid_vectors)[PE_NUM_CLUSTER_DISTANCE_COMPUTATION]) {
    
    // each PE is assigned for 8 columns of the entire IVF index, 
    //   PE0 row 0 ~ N - 1, PE 1 row N ~ 2N - 1, etc.

    for (int s = 0; s < PE_NUM_CLUSTER_DISTANCE_COMPUTATION; s++) {

        for (int c = 0; c < CENTROIDS_PER_DISTANCE_COMPUTATION_PE * D; c++) {
#pragma HLS pipeline II=1
            s_partial_centroid_vectors[s].write(s_centroid_vectors.read());
        }
    }
}

template<const int query_num>
void broadcast_query_vectors(
    hls::stream<float> &s_query_vectors, 
    hls::stream<float> (&s_replicated_query_vectors)[PE_NUM_CLUSTER_DISTANCE_COMPUTATION]) {

    // broadcast query vector to all PEs

    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int d = 0; d < D; d++) {
#pragma HLS pipeline II=1
            float reg = s_query_vectors.read();
            for (int s = 0; s < PE_NUM_CLUSTER_DISTANCE_COMPUTATION; s++) {
#pragma HLS UNROLL
                s_replicated_query_vectors[s].write(reg);
            }
        }
    }
}

template<const int query_num>
void compute_cell_distance(
    int start_cell_ID,
    hls::stream<float> &s_centroid_vectors,
    hls::stream<float> &s_query_vectors,
    hls::stream<dist_cell_ID_t> &s_partial_cell_distance) {

    // what is the speed needed to compute these distances? need to match HBM
    // python performance_estimation_three_nodes_IVF.py --nlist=8192 --nprobe=32
    // Estimated HBM Latency: 23.58 us -> 3K cycles
    // each URAM -> 64bit port x 2 -> 4 elements per cycle -> 64 cycles per vec
    //   -> at most 50 vectors per URAM (actually 1 URAM can only fit 32)
    // My strategy: 32 Partitions, each responsible for 256 vectors, 
    //   each vector finish in 10 cycles
    float cell_centroids_partition[CENTROIDS_PER_DISTANCE_COMPUTATION_PE * D];
#pragma HLS array_partition variable=cell_centroids_partition cyclic factor=8 
#pragma HLS resource variable=cell_centroids_partition core=RAM_2P_URAM

    float local_query_buffer[D];
#pragma HLS array_partition variable=local_query_buffer complete

    // init before any computation
    for (int c = 0; c < CENTROIDS_PER_DISTANCE_COMPUTATION_PE; c++) {
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
        for (int c = 0; c < CENTROIDS_PER_DISTANCE_COMPUTATION_PE; c++) {
#pragma HLS pipeline II=8

            float partial_distance[D / 16]; // 8 partial squared distances
#pragma HLS array_partition variable=partial_distance complete

            // Manually unroll 16, auto-unroll doesn't work well
            for (int d = 0; d < D / 16; d++) {
#pragma HLS pipeline II=1
#pragma HLS depedence variable=partial_distance false

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

                partial_distance[d] = square_dist_0 + square_dist_1 + square_dist_2 + square_dist_3 + 
                    square_dist_4 + square_dist_5 + square_dist_6 + square_dist_7 + 
                    square_dist_8 + square_dist_9 + square_dist_10 + square_dist_11 + 
                    square_dist_12 + square_dist_13 + square_dist_14 + square_dist_15; 
            }

            float distance = 
                partial_distance[0] + partial_distance[1] + partial_distance[2] + 
                partial_distance[3] + partial_distance[4] + partial_distance[5] + 
                partial_distance[6] + partial_distance[7];

            dist_cell_ID_t out;
            out.dist = distance;
            out.cell_ID = start_cell_ID + c;
            s_partial_cell_distance.write(out);
        }
    }
}

template<const int query_num>
void gather_cell_distance(
    hls::stream<dist_cell_ID_t> (&s_partial_cell_distance)[PE_NUM_CLUSTER_DISTANCE_COMPUTATION],
    hls::stream<dist_cell_ID_t> &s_cell_distance) {
    // Take the results from all 16 PEs as input, gather them as by add tree

    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int c = 0; c < CENTROIDS_PER_DISTANCE_COMPUTATION_PE; c++) {

            for (int s = 0; s < PE_NUM_CLUSTER_DISTANCE_COMPUTATION; s++) {
#pragma HLS pipeline II=1
                s_cell_distance.write(s_partial_cell_distance[s].read());
            }
        }
    }
}


template<const int query_num>
void compute_cell_distance_wrapper(
    hls::stream<float> &s_centroid_vectors,
    hls::stream<float> &s_query_vectors,
    hls::stream<dist_cell_ID_t> &s_cell_distance) {
#pragma HLS inline

    hls::stream<float> s_partial_centroid_vectors[PE_NUM_CLUSTER_DISTANCE_COMPUTATION];
#pragma HLS stream variable=s_partial_centroid_vectors depth=2
#pragma HLS array_partition variable=s_partial_centroid_vectors complete

    hls::stream<float> s_replicated_query_vectors[PE_NUM_CLUSTER_DISTANCE_COMPUTATION];
#pragma HLS stream variable=s_replicated_query_vectors depth=2
#pragma HLS array_partition variable=s_replicated_query_vectors complete

    hls::stream<dist_cell_ID_t> s_partial_cell_distance[PE_NUM_CLUSTER_DISTANCE_COMPUTATION];
#pragma HLS stream variable=s_partial_cell_distance depth=8
#pragma HLS array_partition variable=s_partial_cell_distance complete

    partition_centroid_vectors(
        s_centroid_vectors, 
        s_partial_centroid_vectors);

    broadcast_query_vectors<query_num>(
        s_query_vectors, 
        s_replicated_query_vectors);

    for (int s = 0; s < PE_NUM_CLUSTER_DISTANCE_COMPUTATION; s++) {
#pragma HLS UNROLL
        compute_cell_distance<QUERY_NUM>(
            s * CENTROIDS_PER_DISTANCE_COMPUTATION_PE, 
            s_partial_centroid_vectors[s], 
            s_replicated_query_vectors[s], 
            s_partial_cell_distance[s]);
    }

    gather_cell_distance<query_num>(
        s_partial_cell_distance,
        s_cell_distance);
}
