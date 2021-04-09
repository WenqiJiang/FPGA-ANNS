// This program:
//   1. stora all the cell centroids coordinates on-chip
//   2. given an input query, compute distance with those centroids
//   3. select the top nprobe centroids using sorting network / heap
//   4. access the cell codebooks stored in HBM, construct distance table

#include "vadd.hpp"
#include "priority_queue_with_vecID.hpp"

void vadd(  
    float* table_HBM0, float* table_HBM1, 
    float* table_HBM2, float* table_HBM3,
    result_t* table_HBM27, int query_num
    /* t_axi* table_HBM4, t_axi* table_HBM5, 
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
    t_axi* table_DDR0, t_axi* table_DDR1, */
    // result_t out_PLRAM[K] 
    )
{
#pragma HLS INTERFACE m_axi port=table_HBM0  offset=slave bundle=gmem0
#pragma HLS INTERFACE m_axi port=table_HBM1  offset=slave bundle=gmem1
#pragma HLS INTERFACE m_axi port=table_HBM2  offset=slave bundle=gmem2
#pragma HLS INTERFACE m_axi port=table_HBM3  offset=slave bundle=gmem3
//#pragma HLS INTERFACE m_axi port=table_HBM4  offset=slave bundle=gmem4
//#pragma HLS INTERFACE m_axi port=table_HBM5  offset=slave bundle=gmem5
//#pragma HLS INTERFACE m_axi port=table_HBM6  offset=slave bundle=gmem6
//#pragma HLS INTERFACE m_axi port=table_HBM7  offset=slave bundle=gmem7
//#pragma HLS INTERFACE m_axi port=table_HBM8  offset=slave bundle=gmem8
//#pragma HLS INTERFACE m_axi port=table_HBM9  offset=slave bundle=gmem9
//#pragma HLS INTERFACE m_axi port=table_HBM10  offset=slave bundle=gmem10
//#pragma HLS INTERFACE m_axi port=table_HBM11  offset=slave bundle=gmem11
//#pragma HLS INTERFACE m_axi port=table_HBM12  offset=slave bundle=gmem12
//#pragma HLS INTERFACE m_axi port=table_HBM13  offset=slave bundle=gmem13
//#pragma HLS INTERFACE m_axi port=table_HBM14  offset=slave bundle=gmem14
//#pragma HLS INTERFACE m_axi port=table_HBM15  offset=slave bundle=gmem15
//#pragma HLS INTERFACE m_axi port=table_HBM16  offset=slave bundle=gmem16
//#pragma HLS INTERFACE m_axi port=table_HBM17  offset=slave bundle=gmem17
//#pragma HLS INTERFACE m_axi port=table_HBM18  offset=slave bundle=gmem18
//#pragma HLS INTERFACE m_axi port=table_HBM19  offset=slave bundle=gmem19
//#pragma HLS INTERFACE m_axi port=table_HBM20  offset=slave bundle=gmem20
//#pragma HLS INTERFACE m_axi port=table_HBM21  offset=slave bundle=gmem21
//#pragma HLS INTERFACE m_axi port=table_HBM22  offset=slave bundle=gmem22
//#pragma HLS INTERFACE m_axi port=table_HBM23  offset=slave bundle=gmem23
//#pragma HLS INTERFACE m_axi port=table_HBM24  offset=slave bundle=gmem24
//#pragma HLS INTERFACE m_axi port=table_HBM25  offset=slave bundle=gmem25
//#pragma HLS INTERFACE m_axi port=table_HBM26  offset=slave bundle=gmem26
#pragma HLS INTERFACE m_axi port=table_HBM27  offset=slave bundle=gmem27
//#pragma HLS INTERFACE m_axi port=table_HBM28  offset=slave bundle=gmem28
//#pragma HLS INTERFACE m_axi port=table_HBM29  offset=slave bundle=gmem29
//#pragma HLS INTERFACE m_axi port=table_HBM30  offset=slave bundle=gmem30
//#pragma HLS INTERFACE m_axi port=table_HBM31  offset=slave bundle=gmem31

//#pragma HLS INTERFACE m_axi port=table_DDR0  offset=slave bundle=gmem32
//#pragma HLS INTERFACE m_axi port=table_DDR1  offset=slave bundle=gmem33

// PLRAM
//#pragma HLS INTERFACE m_axi port=out_PLRAM offset=slave bundle=gmem34

#pragma HLS INTERFACE s_axilite port=table_HBM0  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM1  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM2  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM3  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM4  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM5  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM6  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM7  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM8  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM9  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM10  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM11  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM12  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM13  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM14  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM15  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM16  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM17  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM18  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM19  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM20  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM21  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM22  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM23  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM24  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM25  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM26  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM27  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM28  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM29  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM30  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_HBM31  bundle=control

//#pragma HLS INTERFACE s_axilite port=table_DDR0  bundle=control
//#pragma HLS INTERFACE s_axilite port=table_DDR1  bundle=control

//#pragma HLS INTERFACE s_axilite port=out_PLRAM bundle=control

#pragma HLS INTERFACE s_axilite port=query_num bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
    
#pragma HLS dataflow

////////////////////     Center Distance Computation     ////////////////////    
    hls::stream<float> s_query_vectors_distance_computation_PE[PE_NUM_CENTER_DIST_COMP];
#pragma HLS stream variable=s_query_vectors_distance_computation_PE depth=128
#pragma HLS resource variable=s_query_vectors_distance_computation_PE core=FIFO_BRAM
#pragma HLS array_partition variable=s_query_vectors_distance_computation_PE dim=1

    hls::stream<float> s_center_vectors_init_distance_computation_PE[PE_NUM_CENTER_DIST_COMP];
#pragma HLS stream variable=s_center_vectors_init_distance_computation_PE depth=8
#pragma HLS array_partition variable=s_center_vectors_init_distance_computation_PE dim=1
#pragma HLS resource variable=s_center_vectors_init_distance_computation_PE core=FIFO_SRL

    hls::stream<dist_cell_ID_t> s_partial_cell_distance[PE_NUM_CENTER_DIST_COMP];
#pragma HLS stream variable=s_partial_cell_distance depth=128
#pragma HLS resource variable=s_query_vectors_distance_computation_PE core=FIFO_BRAM
#pragma HLS array_partition variable=s_partial_cell_distance dim=1

    hls::stream<dist_cell_ID_t> s_merged_cell_distance;
#pragma HLS stream variable=s_merged_cell_distance depth=128
#pragma HLS resource variable=s_merged_cell_distance core=FIFO_BRAM

////////////////////     Sorting Network     ////////////////////    
    hls::stream<dist_cell_ID_t> s_merge_input_A;
#pragma HLS stream variable=s_merge_input_A depth=128
#pragma HLS resource variable=s_merge_input_A core=FIFO_BRAM
    hls::stream<dist_cell_ID_t> s_merge_input_B;
#pragma HLS stream variable=s_merge_input_B depth=128
#pragma HLS resource variable=s_merge_input_B core=FIFO_BRAM
    hls::stream<dist_cell_ID_t> s_merge_partial_output;
#pragma HLS stream variable=s_merge_partial_output depth=128
#pragma HLS resource variable=s_merge_partial_output core=FIFO_BRAM
    hls::stream<dist_cell_ID_t> s_merge_output;
#pragma HLS stream variable=s_merge_output depth=128
#pragma HLS resource variable=s_merge_output core=FIFO_BRAM

////////////////////     Center Vector Lookup     ////////////////////    
    hls::stream<float> s_query_vectors_lookup_PE;
#pragma HLS stream variable=s_query_vectors_lookup_PE depth=128
#pragma HLS resource variable=s_query_vectors_lookup_PE core=FIFO_BRAM

    hls::stream<float> s_center_vectors_init_lookup_PE;
#pragma HLS stream variable=s_center_vectors_init_lookup_PE depth=2
#pragma HLS resource variable=s_center_vectors_init_lookup_PE core=FIFO_BRAM

    hls::stream<float> s_center_vectors_lookup_PE;
#pragma HLS stream variable=s_center_vectors_lookup_PE depth=128
#pragma HLS resource variable=s_center_vectors_lookup_PE core=FIFO_BRAM

    hls::stream<int> s_searched_cell_id_lookup_PE;
#pragma HLS stream variable=s_searched_cell_id_lookup_PE depth=128
#pragma HLS resource variable=s_searched_cell_id_lookup_PE core=FIFO_BRAM

////////////////////     Distance Lookup Table Construction     ////////////////////    
    hls::stream<float> s_query_vectors_table_construction_PE[PE_NUM_TABLE_CONSTRUCTION];
#pragma HLS stream variable=s_query_vectors_table_construction_PE depth=128
#pragma HLS resource variable=s_query_vectors_table_construction_PE core=FIFO_BRAM
// #pragma HLS resource variable=s_query_vectors_table_construction_PE core=FIFO_SRL
#pragma HLS array_partition variable=s_query_vectors_table_construction_PE dim=1

    hls::stream<float> s_center_vectors_table_construction_PE[PE_NUM_TABLE_CONSTRUCTION];
#pragma HLS stream variable=s_center_vectors_table_construction_PE depth=128
#pragma HLS resource variable=s_center_vectors_table_construction_PE core=FIFO_BRAM
// #pragma HLS resource variable=s_center_vectors_table_construction_PE core=FIFO_SRL
#pragma HLS array_partition variable=s_center_vectors_table_construction_PE dim=1

    hls::stream<float> s_PQ_quantizer_init[PE_NUM_TABLE_CONSTRUCTION];
#pragma HLS stream variable=s_PQ_quantizer_init depth=4
#pragma HLS resource variable=s_PQ_quantizer_init core=FIFO_SRL
#pragma HLS array_partition variable=s_PQ_quantizer_init dim=1
  
    // PE0 write 256 rows to s_result_all_distance_lookup_table, then PE1 write 256 rows
    // thus need a deep FIFO to make sure each PE can cache enough results
    // 32 * 512 = 16384 bits, BRAM = 18K bits
    // The FIFO must be long enough (each PE -> output K=256 ap_uint<512> for each cell)
    hls::stream<result_t> s_result_table_construction_PE[PE_NUM_TABLE_CONSTRUCTION];
#pragma HLS stream variable=s_result_table_construction_PE depth=512
#pragma HLS resource variable=s_result_table_construction_PE core=FIFO_BRAM
#pragma HLS array_partition variable=s_result_table_construction_PE dim=1

////////////////////     Result     ////////////////////  
    hls::stream<result_t> s_result_searched_cell_ID;
#pragma HLS stream variable=s_result_searched_cell_ID depth=128
// #pragma HLS resource variable=s_result_searched_cell_ID core=FIFO_SRL
#pragma HLS resource variable=s_result_searched_cell_ID core=FIFO_BRAM
    hls::stream<result_t> s_result_all_distance_lookup_table;
#pragma HLS stream variable=s_result_all_distance_lookup_table depth=128
// #pragma HLS resource variable=s_result_all_distance_lookup_table core=FIFO_SRL
#pragma HLS resource variable=s_result_all_distance_lookup_table core=FIFO_BRAM

////////////////////     init      ////////////////////

    // HBM0: query vectors
    // HBM1: center vector table
    // HBM2: PQ quantizer
    // HBM27: output

    load_query_vectors(table_HBM0, s_query_vectors_distance_computation_PE, s_query_vectors_lookup_PE, query_num);

    load_center_vectors(table_HBM1, s_center_vectors_init_distance_computation_PE, s_center_vectors_init_lookup_PE);

    load_PQ_quantizer(table_HBM2, s_PQ_quantizer_init);

////////////////////     Center Distance Computation     ////////////////////    

    compute_cell_distance_wrapper(
        s_center_vectors_init_distance_computation_PE, s_query_vectors_distance_computation_PE, 
        s_partial_cell_distance, query_num);
    
    merge_partial_cell_distance(s_partial_cell_distance, s_merged_cell_distance, query_num);

////////////////////     Sorting Network     ////////////////////    

    // the depth of this priority queue is nprobe
    Priority_queue<dist_cell_ID_t, NPROBE, Collect_smallest> priority_queue_scanned_cells;

    priority_queue_scanned_cells.insert_wrapper<NLIST>(
            s_merged_cell_distance, s_merge_output,
            query_num); 

    // bitonic_sort(s_partial_cell_distance, s_merge_input_A, query_num);

    // // periodically write large numbers, and write results out
    // merge_filter_streams<PE_NUM_CENTER_DIST_COMP>(s_merge_input_A, s_merge_input_B, s_merge_partial_output, query_num);
    // result_redirect<PE_NUM_CENTER_DIST_COMP>(s_merge_partial_output, s_merge_input_B, s_merge_output, query_num); 

    //  dist struct to cell ID (int)
    split_cell_ID(s_merge_output, s_searched_cell_id_lookup_PE, s_result_searched_cell_ID, query_num);

////////////////////     Center Vector Lookup     ////////////////////    

    lookup_center_vectors(s_center_vectors_init_lookup_PE, s_searched_cell_id_lookup_PE, 
        s_center_vectors_lookup_PE, query_num);

////////////////////     Distance Lookup Table Construction     ////////////////////    

    query_vectors_dispatcher(s_query_vectors_lookup_PE, s_query_vectors_table_construction_PE, query_num);

    center_vectors_dispatcher(s_center_vectors_lookup_PE, s_center_vectors_table_construction_PE, query_num);

    lookup_table_construction_wrapper<NPROBE_PER_TABLE_CONSTRUCTION_PE>(
        s_PQ_quantizer_init, s_center_vectors_table_construction_PE, 
        s_query_vectors_table_construction_PE, s_result_table_construction_PE, query_num);

    gather_lookup_table<NPROBE_PER_TABLE_CONSTRUCTION_PE>(
        s_result_table_construction_PE, s_result_all_distance_lookup_table, query_num);

////////////////////     write results      ////////////////////
    write_result(s_result_searched_cell_ID, s_result_all_distance_lookup_table, table_HBM27, query_num);
}

////////////////////     init      ////////////////////

void load_query_vectors(
    const float* DRAM_query_vector,
    hls::stream<float> (&s_query_vectors_distance_computation_PE)[PE_NUM_CENTER_DIST_COMP],
    hls::stream<float>& s_query_vectors_lookup_PE, 
    const int query_num) {

    // Data type: suppose each vector = 128 D, FPGA freq = 200 MHz
    //   then it takes 640 + 200 ns < 1 us to load a query vector, 
    //   much faster than computing distance and constructing LUT (> 10 us)

    // query vector (1 vector per NPROBE=32 center vector)
    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int d = 0; d < D; d++) {
#pragma HLS pipeline II=1
            float reg = DRAM_query_vector[query_id * D + d];
            s_query_vectors_lookup_PE.write(reg);
            for (int s = 0; s < PE_NUM_CENTER_DIST_COMP; s++) {
#pragma HLS UNROLL
                s_query_vectors_distance_computation_PE[s].write(reg);
            }
        }
    }
}

void load_center_vectors(
    const float* table_HBM1, 
    hls::stream<float> (&s_center_vectors_init_distance_computation_PE)[PE_NUM_CENTER_DIST_COMP],
    hls::stream<float> &s_center_vectors_init_lookup_PE) {

    // e.g., CENTROIDS_PER_PARTITION = 256, CENTROID_PARTITIONS = 32
    //    first 256 elements -> stream 0
    //    second 256 elements -> stream 1, so on and so forth
    for (int s = 0; s < PE_NUM_CENTER_DIST_COMP; s++) {
        
        for (int i = 0; i < CENTROIDS_PER_PARTITION * D; i++) {
#pragma HLS pipeline II=1
            float reg = table_HBM1[s * CENTROIDS_PER_PARTITION * D + i];
            s_center_vectors_init_distance_computation_PE[s].write(reg);
            s_center_vectors_init_lookup_PE.write(reg);
        }
    }
}

void load_PQ_quantizer(
    const float* DRAM_PQ_quantizer,
    hls::stream<float> (&s_PQ_quantizer_init)[PE_NUM_TABLE_CONSTRUCTION]) {

    // load PQ quantizer centers from HBM
    for (int i = 0; i < K * D; i++) {
#pragma HLS pipeline II=1
        float reg = DRAM_PQ_quantizer[i];
        for (int s = 0; s < PE_NUM_TABLE_CONSTRUCTION; s++) {
#pragma HLS UNROLL
            s_PQ_quantizer_init[s].write(reg);
        }
    }
}

////////////////////     Center Distance Computation     ////////////////////  

void compute_cell_distance_wrapper(
    hls::stream<float> (&s_centroid_vectors)[PE_NUM_CENTER_DIST_COMP],
    hls::stream<float> (&s_query_vectors)[PE_NUM_CENTER_DIST_COMP],
    hls::stream<dist_cell_ID_t> (&s_partial_cell_distance)[PE_NUM_CENTER_DIST_COMP],
    const int query_num) {
#pragma HLS inline

    for (int s = 0; s < PE_NUM_CENTER_DIST_COMP; s++) {
#pragma HLS UNROLL
        compute_cell_distance(
            s * CENTROIDS_PER_PARTITION, s_centroid_vectors[s], 
            s_query_vectors[s], s_partial_cell_distance[s], query_num);
    }
}

void compute_cell_distance(
    int start_cell_ID,
    hls::stream<float>& s_centroid_vectors,
    hls::stream<float>& s_query_vectors,
    hls::stream<dist_cell_ID_t>& s_partial_cell_distance,
    const int query_num) {

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

void merge_partial_cell_distance(
    hls::stream<dist_cell_ID_t> (&s_partial_cell_distance)[PE_NUM_CENTER_DIST_COMP],
    hls::stream<dist_cell_ID_t>& s_merged_cell_distance,
    const int query_num) {

    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int c = 0; c < CENTROIDS_PER_PARTITION; c++) {

            for (int s = 0; s < PE_NUM_CENTER_DIST_COMP; s++) {
#pragma HLS pipeline II=1
                s_merged_cell_distance.write(s_partial_cell_distance[s].read());
            }
        }
    }
}

////////////////////     Sorting Network     //////////////////// 

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
    hls::stream<dist_cell_ID_t>& s_merge_partial_output, const int query_num) {
    // This function merge two sorted streams to a single sorted stream, 
    // and ONLY output the smallest half

    dist_cell_ID_t input_array_A[input_stream_len];
    dist_cell_ID_t input_array_B[input_stream_len];
    
    for (int iter = 0; iter < query_num * MERGE_ITER; iter++) {
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
    hls::stream<dist_cell_ID_t>& s_merge_output, 
    const int query_num) {

    for (int iter = 0; iter < query_num; iter++) {
        

        // First merge iteration: no read from merge module, write large number to 
        //   s_merge_input_B directly
        dist_cell_ID_t dummy;
        dummy.dist = LARGE_NUM;
        dummy.cell_ID = -1;

        for (int i = 0; i < input_stream_len; i++) {
#pragma HLS pipeline II=1
            s_merge_input_B.write(dummy);
        }

        // Middle merge iterations: redirect partial result to input
        //   the total number of write partition to input stream = MERGE_ITER
        //   the total number of read partition from partial results = MERGE_ITER
        for (int m = 0; m < MERGE_ITER - 1; m++) {
            for (int i = 0; i < input_stream_len; i++) {
#pragma HLS pipeline II=1
                s_merge_input_B.write(s_merge_partial_output.read());
            }
        }

        // Final merge iteration: write partial result as final result
        for (int i = 0; i < input_stream_len; i++) {
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
    hls::stream<dist_cell_ID_t> &s_output_stream, const int query_num) {
    // len = 32, np.random.randint(low=0, high=100, size=32)

    dist_cell_ID_t input_array[32];
#pragma HLS array_partition variable=input_array complete
    // Total: 15 sub-stages
    
    
    for (int iter = 0; iter < query_num * MERGE_ITER; iter++) {

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

void split_cell_ID(
    hls::stream<dist_cell_ID_t>& s_merge_output, 
    hls::stream<int>& s_searched_cell_id_lookup_PE, 
    hls::stream<result_t>& s_result_searched_cell_ID,
    const int query_num) {
// NOTE! Here, input_stream_len must be NPROBE === 32

    for (int query_id = 0; query_id < query_num; query_id++) {
        
        dist_cell_ID_t tmp;
        int searched_cell_id_local[NPROBE];
#pragma HLS array_partition variable=searched_cell_id_local dim=1

        for (int i = 0; i < NPROBE; i++) {
#pragma HLS pipeline II=1
            tmp = s_merge_output.read();
            searched_cell_id_local[i] = tmp.cell_ID;
            s_searched_cell_id_lookup_PE.write(searched_cell_id_local[i]);
        }

        // 16 * 32 bit = 512 bit
        for (int i = 0; i < NPROBE / 16; i++) {
            result_t out;
            out.range(31, 0) = *((ap_uint<32>*) (&searched_cell_id_local[i * 16 +  0]));
            out.range(63, 32) = *((ap_uint<32>*) (&searched_cell_id_local[i * 16 +  1]));
            out.range(95, 64) = *((ap_uint<32>*) (&searched_cell_id_local[i * 16 +  2]));
            out.range(127, 96) = *((ap_uint<32>*) (&searched_cell_id_local[i * 16 +  3]));
            out.range(159, 128) = *((ap_uint<32>*) (&searched_cell_id_local[i * 16 +  4]));
            out.range(191, 160) = *((ap_uint<32>*) (&searched_cell_id_local[i * 16 +  5]));
            out.range(223, 192) = *((ap_uint<32>*) (&searched_cell_id_local[i * 16 +  6]));
            out.range(255, 224) = *((ap_uint<32>*) (&searched_cell_id_local[i * 16 +  7]));
            out.range(287, 256) = *((ap_uint<32>*) (&searched_cell_id_local[i * 16 +  8]));
            out.range(319, 288) = *((ap_uint<32>*) (&searched_cell_id_local[i * 16 +  9]));
            out.range(351, 320) = *((ap_uint<32>*) (&searched_cell_id_local[i * 16 +  10]));
            out.range(383, 352) = *((ap_uint<32>*) (&searched_cell_id_local[i * 16 +  11]));
            out.range(415, 384) = *((ap_uint<32>*) (&searched_cell_id_local[i * 16 +  12]));
            out.range(447, 416) = *((ap_uint<32>*) (&searched_cell_id_local[i * 16 +  13]));
            out.range(479, 448) = *((ap_uint<32>*) (&searched_cell_id_local[i * 16 +  14]));
            out.range(511, 480) = *((ap_uint<32>*) (&searched_cell_id_local[i * 16 +  15]));
            s_result_searched_cell_ID.write(out);
        }
    }
}

////////////////////     Center Vector Lookup     ////////////////////   

void lookup_center_vectors(
    hls::stream<float> &s_center_vectors_init_lookup_PE,
    hls::stream<int>& s_searched_cell_id_lookup_PE,
    hls::stream<float>& s_center_vectors_lookup_PE,
    const int query_num) {

    float center_vector_local[NLIST * D];
#pragma HLS resource variable=center_vector_local core=RAM_2P_URAM

    // init: load center vectors from DRAM 
    for (int i = 0; i < NLIST * D; i++) {
#pragma HLS pipeline II=1
        center_vector_local[i] = s_center_vectors_init_lookup_PE.read();
    }

    //  lookup center vectors given ID
    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int nprobe_id = 0; nprobe_id < NPROBE; nprobe_id++) {

            int vec_id = s_searched_cell_id_lookup_PE.read();
            int start_addr = vec_id * D;

            for (int i = 0; i < D; i++) {
#pragma HLS pipeline II=1
                s_center_vectors_lookup_PE.write(center_vector_local[start_addr + i]);
            }
        }
    }
}

////////////////////     Distance Lookup Table Construction     ////////////////////   

void query_vectors_dispatcher(
    hls::stream<float>& s_query_vectors,
    hls::stream<float> (&s_query_vectors_table_construction_PE)[PE_NUM_TABLE_CONSTRUCTION],
    const int query_num) {

    // Given an input stream of query vectors, broadcast it to all 
    //   distance table construction PEs

    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int d = 0; d < D; d++) {
#pragma HLS pipeline II=1
            float reg = s_query_vectors.read(); 
            for (int s = 0; s < PE_NUM_TABLE_CONSTRUCTION; s++) {
#pragma HLS UNROLL
                s_query_vectors_table_construction_PE[s].write(reg);
            }
        }
    }
}


void center_vectors_dispatcher(
    hls::stream<float>& s_center_vectors_lookup_PE,
    hls::stream<float> (&s_center_vectors_table_construction_PE)[PE_NUM_TABLE_CONSTRUCTION],
    const int query_num) {

    // Given an input stream of center vectors, interleave it to all 
    //   distance table construction PEs in a round-robin manner 
    //   e.g., 4 PEs, vector 0,4,8 -> PE0, 1,5,9 -> PE1, etc.
    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int interleave_iter = 0; interleave_iter < NPROBE_PER_TABLE_CONSTRUCTION_PE; interleave_iter++) {

            for (int s = 0; s < PE_NUM_TABLE_CONSTRUCTION; s++) {

                for (int n = 0; n < D; n++) {
    #pragma HLS pipeline II=1
                    s_center_vectors_table_construction_PE[s].write(s_center_vectors_lookup_PE.read());
                }
            }
        }
    }
}


template<const int nprobe_per_PE>
void lookup_table_construction_wrapper(
    hls::stream<float> (&s_PQ_quantizer_init)[PE_NUM_TABLE_CONSTRUCTION],
    hls::stream<float> (&s_center_vectors_table_construction_PE)[PE_NUM_TABLE_CONSTRUCTION],
    hls::stream<float> (&s_query_vectors_table_construction_PE)[PE_NUM_TABLE_CONSTRUCTION],
    hls::stream<result_t> (&s_result_table_construction_PE)[PE_NUM_TABLE_CONSTRUCTION],
    const int query_num) {
#pragma HLS inline

    for (int s = 0; s < PE_NUM_TABLE_CONSTRUCTION; s++) {
#pragma HLS UNROLL
        lookup_table_construction_PE<NPROBE_PER_TABLE_CONSTRUCTION_PE>(
            s_PQ_quantizer_init[s], s_center_vectors_table_construction_PE[s], 
            s_query_vectors_table_construction_PE[s], s_result_table_construction_PE[s],
            query_num);
    }
}

template<const int nprobe_per_PE>
void lookup_table_construction_PE(
    hls::stream<float>& s_PQ_quantizer_init,
    hls::stream<float>& s_center_vectors_table_construction_PE,
    hls::stream<float>& s_query_vectors_table_construction_PE,
    hls::stream<result_t>& s_result_table_construction_PE,
    const int query_num) {

    /* output format:
     *   lookup table dim: (K x M)
     *   sending first row, then second row, and so on...
     *   store in ap_uint<512>, each represent an entire row (M=16)
     *   256 ap_uint<512> is an entire lookup table
     */

    // local alignment: 16-sub quantizers
    //    each quantizer: 256 row, (128 / 16) col
    float sub_quantizer_0[K * (D / M)];
    float sub_quantizer_1[K * (D / M)];
    float sub_quantizer_2[K * (D / M)];
    float sub_quantizer_3[K * (D / M)];
    float sub_quantizer_4[K * (D / M)];
    float sub_quantizer_5[K * (D / M)];
    float sub_quantizer_6[K * (D / M)];
    float sub_quantizer_7[K * (D / M)];
    float sub_quantizer_8[K * (D / M)];
    float sub_quantizer_9[K * (D / M)];
    float sub_quantizer_10[K * (D / M)];
    float sub_quantizer_11[K * (D / M)];
    float sub_quantizer_12[K * (D / M)];
    float sub_quantizer_13[K * (D / M)];
    float sub_quantizer_14[K * (D / M)];
    float sub_quantizer_15[K * (D / M)];
#pragma HLS resource variable=sub_quantizer_0 core=RAM_2P_URAM
#pragma HLS resource variable=sub_quantizer_1 core=RAM_2P_URAM
#pragma HLS resource variable=sub_quantizer_2 core=RAM_2P_URAM
#pragma HLS resource variable=sub_quantizer_3 core=RAM_2P_URAM
#pragma HLS resource variable=sub_quantizer_4 core=RAM_2P_URAM
#pragma HLS resource variable=sub_quantizer_5 core=RAM_2P_URAM
#pragma HLS resource variable=sub_quantizer_6 core=RAM_2P_URAM
#pragma HLS resource variable=sub_quantizer_7 core=RAM_2P_URAM
#pragma HLS resource variable=sub_quantizer_8 core=RAM_2P_URAM
#pragma HLS resource variable=sub_quantizer_9 core=RAM_2P_URAM
#pragma HLS resource variable=sub_quantizer_10 core=RAM_2P_URAM
#pragma HLS resource variable=sub_quantizer_11 core=RAM_2P_URAM
#pragma HLS resource variable=sub_quantizer_12 core=RAM_2P_URAM
#pragma HLS resource variable=sub_quantizer_13 core=RAM_2P_URAM
#pragma HLS resource variable=sub_quantizer_14 core=RAM_2P_URAM
#pragma HLS resource variable=sub_quantizer_15 core=RAM_2P_URAM

    // DRAM PQ quantizer format: 16 (M) x 256 (K) x 8 (D/M)
    for (int i = 0; i < K * D / M; i++) {
        sub_quantizer_0[i] = s_PQ_quantizer_init.read();
    }
    for (int i = 0; i < K * D / M; i++) {
        sub_quantizer_1[i] = s_PQ_quantizer_init.read();
    }
    for (int i = 0; i < K * D / M; i++) {
        sub_quantizer_2[i] = s_PQ_quantizer_init.read();
    }
    for (int i = 0; i < K * D / M; i++) {
        sub_quantizer_3[i] = s_PQ_quantizer_init.read();
    }
    for (int i = 0; i < K * D / M; i++) {
        sub_quantizer_4[i] = s_PQ_quantizer_init.read();
    }
    for (int i = 0; i < K * D / M; i++) {
        sub_quantizer_5[i] = s_PQ_quantizer_init.read();
    }
    for (int i = 0; i < K * D / M; i++) {
        sub_quantizer_6[i] = s_PQ_quantizer_init.read();
    }
    for (int i = 0; i < K * D / M; i++) {
        sub_quantizer_7[i] = s_PQ_quantizer_init.read();
    }
    for (int i = 0; i < K * D / M; i++) {
        sub_quantizer_8[i] = s_PQ_quantizer_init.read();
    }
    for (int i = 0; i < K * D / M; i++) {
        sub_quantizer_9[i] = s_PQ_quantizer_init.read();
    }
    for (int i = 0; i < K * D / M; i++) {
        sub_quantizer_10[i] = s_PQ_quantizer_init.read();
    }
    for (int i = 0; i < K * D / M; i++) {
        sub_quantizer_11[i] = s_PQ_quantizer_init.read();
    }
    for (int i = 0; i < K * D / M; i++) {
        sub_quantizer_12[i] = s_PQ_quantizer_init.read();
    }
    for (int i = 0; i < K * D / M; i++) {
        sub_quantizer_13[i] = s_PQ_quantizer_init.read();
    }
    for (int i = 0; i < K * D / M; i++) {
        sub_quantizer_14[i] = s_PQ_quantizer_init.read();
    }
    for (int i = 0; i < K * D / M; i++) {
        sub_quantizer_15[i] = s_PQ_quantizer_init.read();
    }


    float query_vector_local[D];
    float center_vector_local[D];
    float residual_center_vector[D]; // query_vector - center_vector
#pragma HLS array_partition variable=residual_center_vector block factor=16

    for (int query_id = 0; query_id < query_num; query_id++) {

        // load query vector
        for (int d = 0; d < D; d++) {
#pragma HLS pipeline II=1
            query_vector_local[d] = s_query_vectors_table_construction_PE.read();
        }

        for (int nprobe_id = 0; nprobe_id < nprobe_per_PE; nprobe_id++) {

            // load center vector
            residual_center_vectors:
            for (int d = 0; d < D; d++) {
#pragma HLS pipeline II=1
                center_vector_local[d] = s_center_vectors_table_construction_PE.read();
                residual_center_vector[d] = query_vector_local[d] - center_vector_local[d];
            }

            // construct distance lookup table
            single_row_lookup_table_construction:
            for (int k = 0; k < K; k++) {
#pragma HLS pipeline
                float dist_0[D / M] = {0, 0, 0, 0, 0, 0, 0, 0};
                float dist_1[D / M] = {0, 0, 0, 0, 0, 0, 0, 0};
                float dist_2[D / M] = {0, 0, 0, 0, 0, 0, 0, 0};
                float dist_3[D / M] = {0, 0, 0, 0, 0, 0, 0, 0};
                float dist_4[D / M] = {0, 0, 0, 0, 0, 0, 0, 0};
                float dist_5[D / M] = {0, 0, 0, 0, 0, 0, 0, 0};
                float dist_6[D / M] = {0, 0, 0, 0, 0, 0, 0, 0};
                float dist_7[D / M] = {0, 0, 0, 0, 0, 0, 0, 0};
                float dist_8[D / M] = {0, 0, 0, 0, 0, 0, 0, 0};
                float dist_9[D / M] = {0, 0, 0, 0, 0, 0, 0, 0};
                float dist_10[D / M] = {0, 0, 0, 0, 0, 0, 0, 0};
                float dist_11[D / M] = {0, 0, 0, 0, 0, 0, 0, 0};
                float dist_12[D / M] = {0, 0, 0, 0, 0, 0, 0, 0};
                float dist_13[D / M] = {0, 0, 0, 0, 0, 0, 0, 0};
                float dist_14[D / M] = {0, 0, 0, 0, 0, 0, 0, 0};
                float dist_15[D / M] = {0, 0, 0, 0, 0, 0, 0, 0};

                compute_L1_distance: 
                for (int sub_q_col = 0; sub_q_col < D / M; sub_q_col++) {
#pragma HLS UNROLL factor=2
                    // can HLS identify residual_center_vector can be accessed in parallel? 
                    dist_0[sub_q_col] = 
                        residual_center_vector[0 * (D / M) + sub_q_col] - 
                        sub_quantizer_0[k * (D / M) + sub_q_col];
                    dist_1[sub_q_col] = 
                        residual_center_vector[1 * (D / M) + sub_q_col] - 
                        sub_quantizer_1[k * (D / M) + sub_q_col];
                    dist_2[sub_q_col] = 
                        residual_center_vector[2 * (D / M) + sub_q_col] - 
                        sub_quantizer_2[k * (D / M) + sub_q_col];
                    dist_3[sub_q_col] = 
                        residual_center_vector[3 * (D / M) + sub_q_col] - 
                        sub_quantizer_3[k * (D / M) + sub_q_col];
                    dist_4[sub_q_col] = 
                        residual_center_vector[4 * (D / M) + sub_q_col] - 
                        sub_quantizer_4[k * (D / M) + sub_q_col];
                    dist_5[sub_q_col] = 
                        residual_center_vector[5 * (D / M) + sub_q_col] - 
                        sub_quantizer_5[k * (D / M) + sub_q_col];
                    dist_6[sub_q_col] = 
                        residual_center_vector[6 * (D / M) + sub_q_col] - 
                        sub_quantizer_6[k * (D / M) + sub_q_col];
                    dist_7[sub_q_col] = 
                        residual_center_vector[7 * (D / M) + sub_q_col] - 
                        sub_quantizer_7[k * (D / M) + sub_q_col];
                    dist_8[sub_q_col] = 
                        residual_center_vector[8 * (D / M) + sub_q_col] - 
                        sub_quantizer_8[k * (D / M) + sub_q_col];
                    dist_9[sub_q_col] = 
                        residual_center_vector[9 * (D / M) + sub_q_col] - 
                        sub_quantizer_9[k * (D / M) + sub_q_col];
                    dist_10[sub_q_col] = 
                        residual_center_vector[10 * (D / M) + sub_q_col] - 
                        sub_quantizer_10[k * (D / M) + sub_q_col];
                    dist_11[sub_q_col] = 
                        residual_center_vector[11 * (D / M) + sub_q_col] - 
                        sub_quantizer_11[k * (D / M) + sub_q_col];
                    dist_12[sub_q_col] = 
                        residual_center_vector[12 * (D / M) + sub_q_col] - 
                        sub_quantizer_12[k * (D / M) + sub_q_col];
                    dist_13[sub_q_col] = 
                        residual_center_vector[13 * (D / M) + sub_q_col] - 
                        sub_quantizer_13[k * (D / M) + sub_q_col];
                    dist_14[sub_q_col] = 
                        residual_center_vector[14 * (D / M) + sub_q_col] - 
                        sub_quantizer_14[k * (D / M) + sub_q_col];
                    dist_15[sub_q_col] = 
                        residual_center_vector[15 * (D / M) + sub_q_col] - 
                        sub_quantizer_15[k * (D / M) + sub_q_col];
                }

                // square distance
                float square_dist_0 = 
                    (dist_0[0] * dist_0[0]) + (dist_0[1] * dist_0[1]) +
                    (dist_0[2] * dist_0[2]) + (dist_0[3] * dist_0[3]) +
                    (dist_0[4] * dist_0[4]) + (dist_0[5] * dist_0[5]) + 
                    (dist_0[6] * dist_0[6]) + (dist_0[7] * dist_0[7]);
                float square_dist_1 = 
                    (dist_1[0] * dist_1[0]) + (dist_1[1] * dist_1[1]) +
                    (dist_1[2] * dist_1[2]) + (dist_1[3] * dist_1[3]) +
                    (dist_1[4] * dist_1[4]) + (dist_1[5] * dist_1[5]) + 
                    (dist_1[6] * dist_1[6]) + (dist_1[7] * dist_1[7]);
                float square_dist_2 = 
                    (dist_2[0] * dist_2[0]) + (dist_2[1] * dist_2[1]) +
                    (dist_2[2] * dist_2[2]) + (dist_2[3] * dist_2[3]) +
                    (dist_2[4] * dist_2[4]) + (dist_2[5] * dist_2[5]) + 
                    (dist_2[6] * dist_2[6]) + (dist_2[7] * dist_2[7]);
                float square_dist_3 = 
                    (dist_3[0] * dist_3[0]) + (dist_3[1] * dist_3[1]) +
                    (dist_3[2] * dist_3[2]) + (dist_3[3] * dist_3[3]) +
                    (dist_3[4] * dist_3[4]) + (dist_3[5] * dist_3[5]) + 
                    (dist_3[6] * dist_3[6]) + (dist_3[7] * dist_3[7]);
                float square_dist_4 = 
                    (dist_4[0] * dist_4[0]) + (dist_4[1] * dist_4[1]) +
                    (dist_4[2] * dist_4[2]) + (dist_4[3] * dist_4[3]) +
                    (dist_4[4] * dist_4[4]) + (dist_4[5] * dist_4[5]) + 
                    (dist_4[6] * dist_4[6]) + (dist_4[7] * dist_4[7]);
                float square_dist_5 = 
                    (dist_5[0] * dist_5[0]) + (dist_5[1] * dist_5[1]) +
                    (dist_5[2] * dist_5[2]) + (dist_5[3] * dist_5[3]) +
                    (dist_5[4] * dist_5[4]) + (dist_5[5] * dist_5[5]) + 
                    (dist_5[6] * dist_5[6]) + (dist_5[7] * dist_5[7]);
                float square_dist_6 = 
                    (dist_6[0] * dist_6[0]) + (dist_6[1] * dist_6[1]) +
                    (dist_6[2] * dist_6[2]) + (dist_6[3] * dist_6[3]) +
                    (dist_6[4] * dist_6[4]) + (dist_6[5] * dist_6[5]) + 
                    (dist_6[6] * dist_6[6]) + (dist_6[7] * dist_6[7]);
                float square_dist_7 = 
                    (dist_7[0] * dist_7[0]) + (dist_7[1] * dist_7[1]) +
                    (dist_7[2] * dist_7[2]) + (dist_7[3] * dist_7[3]) +
                    (dist_7[4] * dist_7[4]) + (dist_7[5] * dist_7[5]) + 
                    (dist_7[6] * dist_7[6]) + (dist_7[7] * dist_7[7]);
                float square_dist_8 = 
                    (dist_8[0] * dist_8[0]) + (dist_8[1] * dist_8[1]) +
                    (dist_8[2] * dist_8[2]) + (dist_8[3] * dist_8[3]) +
                    (dist_8[4] * dist_8[4]) + (dist_8[5] * dist_8[5]) + 
                    (dist_8[6] * dist_8[6]) + (dist_8[7] * dist_8[7]);
                float square_dist_9 = 
                    (dist_9[0] * dist_9[0]) + (dist_9[1] * dist_9[1]) +
                    (dist_9[2] * dist_9[2]) + (dist_9[3] * dist_9[3]) +
                    (dist_9[4] * dist_9[4]) + (dist_9[5] * dist_9[5]) + 
                    (dist_9[6] * dist_9[6]) + (dist_9[7] * dist_9[7]);
                float square_dist_10 = 
                    (dist_10[0] * dist_10[0]) + (dist_10[1] * dist_10[1]) +
                    (dist_10[2] * dist_10[2]) + (dist_10[3] * dist_10[3]) +
                    (dist_10[4] * dist_10[4]) + (dist_10[5] * dist_10[5]) + 
                    (dist_10[6] * dist_10[6]) + (dist_10[7] * dist_10[7]);
                float square_dist_11 = 
                    (dist_11[0] * dist_11[0]) + (dist_11[1] * dist_11[1]) +
                    (dist_11[2] * dist_11[2]) + (dist_11[3] * dist_11[3]) +
                    (dist_11[4] * dist_11[4]) + (dist_11[5] * dist_11[5]) + 
                    (dist_11[6] * dist_11[6]) + (dist_11[7] * dist_11[7]);
                float square_dist_12 = 
                    (dist_12[0] * dist_12[0]) + (dist_12[1] * dist_12[1]) +
                    (dist_12[2] * dist_12[2]) + (dist_12[3] * dist_12[3]) +
                    (dist_12[4] * dist_12[4]) + (dist_12[5] * dist_12[5]) + 
                    (dist_12[6] * dist_12[6]) + (dist_12[7] * dist_12[7]);
                float square_dist_13 = 
                    (dist_13[0] * dist_13[0]) + (dist_13[1] * dist_13[1]) +
                    (dist_13[2] * dist_13[2]) + (dist_13[3] * dist_13[3]) +
                    (dist_13[4] * dist_13[4]) + (dist_13[5] * dist_13[5]) + 
                    (dist_13[6] * dist_13[6]) + (dist_13[7] * dist_13[7]);
                float square_dist_14 = 
                    (dist_14[0] * dist_14[0]) + (dist_14[1] * dist_14[1]) +
                    (dist_14[2] * dist_14[2]) + (dist_14[3] * dist_14[3]) +
                    (dist_14[4] * dist_14[4]) + (dist_14[5] * dist_14[5]) + 
                    (dist_14[6] * dist_14[6]) + (dist_14[7] * dist_14[7]);
                float square_dist_15 = 
                    (dist_15[0] * dist_15[0]) + (dist_15[1] * dist_15[1]) +
                    (dist_15[2] * dist_15[2]) + (dist_15[3] * dist_15[3]) +
                    (dist_15[4] * dist_15[4]) + (dist_15[5] * dist_15[5]) + 
                    (dist_15[6] * dist_15[6]) + (dist_15[7] * dist_15[7]);
                
                ap_uint<512> lookup_table_row;
                lookup_table_row.range(31, 0) = *((ap_uint<32>*) (&square_dist_0));
                lookup_table_row.range(63, 32) = *((ap_uint<32>*) (&square_dist_1));
                lookup_table_row.range(95, 64) = *((ap_uint<32>*) (&square_dist_2));
                lookup_table_row.range(127, 96) = *((ap_uint<32>*) (&square_dist_3));
                lookup_table_row.range(159, 128) = *((ap_uint<32>*) (&square_dist_4));
                lookup_table_row.range(191, 160) = *((ap_uint<32>*) (&square_dist_5));
                lookup_table_row.range(223, 192) = *((ap_uint<32>*) (&square_dist_6));
                lookup_table_row.range(255, 224) = *((ap_uint<32>*) (&square_dist_7));
                lookup_table_row.range(287, 256) = *((ap_uint<32>*) (&square_dist_8));
                lookup_table_row.range(319, 288) = *((ap_uint<32>*) (&square_dist_9));
                lookup_table_row.range(351, 320) = *((ap_uint<32>*) (&square_dist_10));
                lookup_table_row.range(383, 352) = *((ap_uint<32>*) (&square_dist_11));
                lookup_table_row.range(415, 384) = *((ap_uint<32>*) (&square_dist_12));
                lookup_table_row.range(447, 416) = *((ap_uint<32>*) (&square_dist_13));
                lookup_table_row.range(479, 448) = *((ap_uint<32>*) (&square_dist_14));
                lookup_table_row.range(511, 480) = *((ap_uint<32>*) (&square_dist_15));

                s_result_table_construction_PE.write(lookup_table_row);
            }
        }
    }
}

template<const int nprobe_per_PE>
void gather_lookup_table(
    hls::stream<result_t> (&s_result_table_construction_PE)[PE_NUM_TABLE_CONSTRUCTION],
    hls::stream<result_t> &s_result_all_distance_lookup_table,
    const int query_num) {

    // Gather in a round-robin manner
    // PE0: 0, 4, 8 ...
    // PE1: 1, 5, 9 ...
    // PE2: 2, 6, 10 ...
    // PE3: 3, 7, 11 ...
    for (int query_id = 0; query_id < query_num; query_id++) {
        
        for (int interleave_iter = 0; interleave_iter < nprobe_per_PE; interleave_iter++) {

            for (int s = 0; s < PE_NUM_TABLE_CONSTRUCTION; s++) {
                // each lookup table: K rows
                for (int t = 0; t < K; t++) {
#pragma HLS pipeline II=1
                    s_result_all_distance_lookup_table.write(s_result_table_construction_PE[s].read());
                }
            }
        }
    }
}

////////////////////     write results     ////////////////////   

void write_result(
    hls::stream<result_t>& s_result_searched_cell_ID, 
    hls::stream<result_t>& s_result_all_distance_lookup_table, 
    result_t* results_out, const int query_num) {
    // Only write the distance table / searched cell ID
    //   for the first query, because when there are many queries
    //   the result will become very large

    // first, write cell IDs, for NPROBE=32, 32 x 32 bit = 2 x 512 bit
    for (int i = 0; i < NPROBE / 16; i++) {
        results_out[i] = s_result_searched_cell_ID.read();
    }
    for (int row = 0; row < NPROBE * K; row++) {
        results_out[NPROBE / 16 + row] = 
            s_result_all_distance_lookup_table.read();
    }

    for (int query_id = 0; query_id < query_num - 1; query_id++) {
        for (int i = 0; i < NPROBE / 16; i++) {
                s_result_searched_cell_ID.read();
        }
        for (int row = 0; row < NPROBE * K; row++) {
                s_result_all_distance_lookup_table.read();
        }
    }
}

