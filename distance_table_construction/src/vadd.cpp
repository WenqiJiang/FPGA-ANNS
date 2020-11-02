// This program:
//   1. stora all the cell centroids coordinates on-chip
//   2. given an input query, compute distance with those centroids
//   3. select the top nprobe centroids using sorting network / heap
//   4. access the cell codebooks stored in HBM, construct distance table

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
    int out_PLRAM[QUERY_NUM * NPROBE]
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

    hls::stream<float> s_query_vector0;
    hls::stream<float> s_query_vector1;
    hls::stream<float> s_query_vector2;
    hls::stream<float> s_query_vector3;
    hls::stream<float> s_query_vector4;
    hls::stream<float> s_query_vector5;
    hls::stream<float> s_query_vector6;
    hls::stream<float> s_query_vector7;
    hls::stream<float> s_query_vector8;
    hls::stream<float> s_query_vector9;
    hls::stream<float> s_query_vector10;
    hls::stream<float> s_query_vector11;
    hls::stream<float> s_query_vector12;
    hls::stream<float> s_query_vector13;
    hls::stream<float> s_query_vector14;
    hls::stream<float> s_query_vector15;
    hls::stream<float> s_query_vector16;
    hls::stream<float> s_query_vector17;
    hls::stream<float> s_query_vector18;
    hls::stream<float> s_query_vector19;
    hls::stream<float> s_query_vector20;
    hls::stream<float> s_query_vector21;
    hls::stream<float> s_query_vector22;
    hls::stream<float> s_query_vector23;
    hls::stream<float> s_query_vector24;
    hls::stream<float> s_query_vector25;
    hls::stream<float> s_query_vector26;
    hls::stream<float> s_query_vector27;
    hls::stream<float> s_query_vector28;
    hls::stream<float> s_query_vector29;
    hls::stream<float> s_query_vector30;
    hls::stream<float> s_query_vector31;
#pragma HLS stream variable=s_query_vector0 depth=4
#pragma HLS stream variable=s_query_vector1 depth=4
#pragma HLS stream variable=s_query_vector2 depth=4
#pragma HLS stream variable=s_query_vector3 depth=4
#pragma HLS stream variable=s_query_vector4 depth=4
#pragma HLS stream variable=s_query_vector5 depth=4
#pragma HLS stream variable=s_query_vector6 depth=4
#pragma HLS stream variable=s_query_vector7 depth=4
#pragma HLS stream variable=s_query_vector8 depth=4
#pragma HLS stream variable=s_query_vector9 depth=4
#pragma HLS stream variable=s_query_vector10 depth=4
#pragma HLS stream variable=s_query_vector11 depth=4
#pragma HLS stream variable=s_query_vector12 depth=4
#pragma HLS stream variable=s_query_vector13 depth=4
#pragma HLS stream variable=s_query_vector14 depth=4
#pragma HLS stream variable=s_query_vector15 depth=4
#pragma HLS stream variable=s_query_vector16 depth=4
#pragma HLS stream variable=s_query_vector17 depth=4
#pragma HLS stream variable=s_query_vector18 depth=4
#pragma HLS stream variable=s_query_vector19 depth=4
#pragma HLS stream variable=s_query_vector20 depth=4
#pragma HLS stream variable=s_query_vector21 depth=4
#pragma HLS stream variable=s_query_vector22 depth=4
#pragma HLS stream variable=s_query_vector23 depth=4
#pragma HLS stream variable=s_query_vector24 depth=4
#pragma HLS stream variable=s_query_vector25 depth=4
#pragma HLS stream variable=s_query_vector26 depth=4
#pragma HLS stream variable=s_query_vector27 depth=4
#pragma HLS stream variable=s_query_vector28 depth=4
#pragma HLS stream variable=s_query_vector29 depth=4
#pragma HLS stream variable=s_query_vector30 depth=4
#pragma HLS stream variable=s_query_vector31 depth=4


    hls::stream<float> s_partial_cell_distance0;
    hls::stream<float> s_partial_cell_distance1;
    hls::stream<float> s_partial_cell_distance2;
    hls::stream<float> s_partial_cell_distance3;
    hls::stream<float> s_partial_cell_distance4;
    hls::stream<float> s_partial_cell_distance5;
    hls::stream<float> s_partial_cell_distance6;
    hls::stream<float> s_partial_cell_distance7;
    hls::stream<float> s_partial_cell_distance8;
    hls::stream<float> s_partial_cell_distance9;
    hls::stream<float> s_partial_cell_distance10;
    hls::stream<float> s_partial_cell_distance11;
    hls::stream<float> s_partial_cell_distance12;
    hls::stream<float> s_partial_cell_distance13;
    hls::stream<float> s_partial_cell_distance14;
    hls::stream<float> s_partial_cell_distance15;
    hls::stream<float> s_partial_cell_distance16;
    hls::stream<float> s_partial_cell_distance17;
    hls::stream<float> s_partial_cell_distance18;
    hls::stream<float> s_partial_cell_distance19;
    hls::stream<float> s_partial_cell_distance20;
    hls::stream<float> s_partial_cell_distance21;
    hls::stream<float> s_partial_cell_distance22;
    hls::stream<float> s_partial_cell_distance23;
    hls::stream<float> s_partial_cell_distance24;
    hls::stream<float> s_partial_cell_distance25;
    hls::stream<float> s_partial_cell_distance26;
    hls::stream<float> s_partial_cell_distance27;
    hls::stream<float> s_partial_cell_distance28;
    hls::stream<float> s_partial_cell_distance29;
    hls::stream<float> s_partial_cell_distance30;
    hls::stream<float> s_partial_cell_distance31;
#pragma HLS stream variable=s_partial_cell_distance0 depth=4
#pragma HLS stream variable=s_partial_cell_distance1 depth=4
#pragma HLS stream variable=s_partial_cell_distance2 depth=4
#pragma HLS stream variable=s_partial_cell_distance3 depth=4
#pragma HLS stream variable=s_partial_cell_distance4 depth=4
#pragma HLS stream variable=s_partial_cell_distance5 depth=4
#pragma HLS stream variable=s_partial_cell_distance6 depth=4
#pragma HLS stream variable=s_partial_cell_distance7 depth=4
#pragma HLS stream variable=s_partial_cell_distance8 depth=4
#pragma HLS stream variable=s_partial_cell_distance9 depth=4
#pragma HLS stream variable=s_partial_cell_distance10 depth=4
#pragma HLS stream variable=s_partial_cell_distance11 depth=4
#pragma HLS stream variable=s_partial_cell_distance12 depth=4
#pragma HLS stream variable=s_partial_cell_distance13 depth=4
#pragma HLS stream variable=s_partial_cell_distance14 depth=4
#pragma HLS stream variable=s_partial_cell_distance15 depth=4
#pragma HLS stream variable=s_partial_cell_distance16 depth=4
#pragma HLS stream variable=s_partial_cell_distance17 depth=4
#pragma HLS stream variable=s_partial_cell_distance18 depth=4
#pragma HLS stream variable=s_partial_cell_distance19 depth=4
#pragma HLS stream variable=s_partial_cell_distance20 depth=4
#pragma HLS stream variable=s_partial_cell_distance21 depth=4
#pragma HLS stream variable=s_partial_cell_distance22 depth=4
#pragma HLS stream variable=s_partial_cell_distance23 depth=4
#pragma HLS stream variable=s_partial_cell_distance24 depth=4
#pragma HLS stream variable=s_partial_cell_distance25 depth=4
#pragma HLS stream variable=s_partial_cell_distance26 depth=4
#pragma HLS stream variable=s_partial_cell_distance27 depth=4
#pragma HLS stream variable=s_partial_cell_distance28 depth=4
#pragma HLS stream variable=s_partial_cell_distance29 depth=4
#pragma HLS stream variable=s_partial_cell_distance30 depth=4
#pragma HLS stream variable=s_partial_cell_distance31 depth=4

hls::stream<int> searched_cell_id;
#pragma HLS stream variable=searched_cell_id depth=128

    // table...
    // init_table...
    // compute_distance...
    // heap...
    // load from HBM and construct...

    // what is the speed needed to compute these distances? need to match HBM
    // python performance_estimation_three_nodes_IVF.py --nlist=8192 --nprobe=32
    // Estimated HBM Latency: 23.58 us -> 3K cycles
    // each URAM -> 64bit port x 2 -> 4 elements per cycle -> 64 cycles per vec
    //   -> at most 50 vectors per URAM (actually 1 URAM can only fit 32)
    // My strategy: 32 Partitions, each responsible for 256 vectors, 
    //   each vector finish in 10 cycles
    float cell_centroids_partition_0[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_1[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_2[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_3[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_4[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_5[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_6[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_7[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_8[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_9[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_10[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_11[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_12[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_13[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_14[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_15[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_16[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_17[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_18[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_19[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_20[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_21[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_22[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_23[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_24[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_25[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_26[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_27[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_28[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_29[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_30[CENTROIDS_PER_PARTITION][D];
    float cell_centroids_partition_31[CENTROIDS_PER_PARTITION][D];

#pragma HLS array_partition variable=cell_centroids_partition_0 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_1 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_2 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_3 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_4 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_5 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_6 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_7 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_8 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_9 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_10 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_11 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_12 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_13 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_14 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_15 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_16 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_17 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_18 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_19 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_20 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_21 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_22 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_23 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_24 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_25 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_26 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_27 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_28 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_29 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_30 cyclic factor=8 dim=2 
#pragma HLS array_partition variable=cell_centroids_partition_31 cyclic factor=8 dim=2 

#pragma HLS resource variable=cell_centroids_partition_0 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_1 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_2 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_3 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_4 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_5 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_6 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_7 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_8 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_9 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_10 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_11 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_12 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_13 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_14 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_15 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_16 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_17 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_18 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_19 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_20 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_21 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_22 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_23 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_24 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_25 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_26 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_27 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_28 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_29 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_30 core=RAM_2P_URAM
#pragma HLS resource variable=cell_centroids_partition_31 core=RAM_2P_URAM

    // Compute distance
    broadcast_query_vector(table_DDR0,
        s_query_vector0, s_query_vector1, s_query_vector2, s_query_vector3, 
        s_query_vector4, s_query_vector5, s_query_vector6, s_query_vector7, 
        s_query_vector8, s_query_vector9, s_query_vector10, s_query_vector11, 
        s_query_vector12, s_query_vector13, s_query_vector14, s_query_vector15, 
        s_query_vector16, s_query_vector17, s_query_vector18, s_query_vector19, 
        s_query_vector20, s_query_vector21, s_query_vector22, s_query_vector23, 
        s_query_vector24, s_query_vector25, s_query_vector26, s_query_vector27, 
        s_query_vector28, s_query_vector29, s_query_vector30, s_query_vector31);

    compute_cell_distance_wrapper(
        s_query_vector0, s_query_vector1, s_query_vector2, s_query_vector3, 
        s_query_vector4, s_query_vector5, s_query_vector6, s_query_vector7, 
        s_query_vector8, s_query_vector9, s_query_vector10, s_query_vector11, 
        s_query_vector12, s_query_vector13, s_query_vector14, s_query_vector15, 
        s_query_vector16, s_query_vector17, s_query_vector18, s_query_vector19, 
        s_query_vector20, s_query_vector21, s_query_vector22, s_query_vector23, 
        s_query_vector24, s_query_vector25, s_query_vector26, s_query_vector27, 
        s_query_vector28, s_query_vector29, s_query_vector30, s_query_vector31, 
        cell_centroids_partition_0, cell_centroids_partition_1, 
        cell_centroids_partition_2, cell_centroids_partition_3, 
        cell_centroids_partition_4, cell_centroids_partition_5, 
        cell_centroids_partition_6, cell_centroids_partition_7, 
        cell_centroids_partition_8, cell_centroids_partition_9, 
        cell_centroids_partition_10, cell_centroids_partition_11, 
        cell_centroids_partition_12, cell_centroids_partition_13, 
        cell_centroids_partition_14, cell_centroids_partition_15, 
        cell_centroids_partition_16, cell_centroids_partition_17, 
        cell_centroids_partition_18, cell_centroids_partition_19, 
        cell_centroids_partition_20, cell_centroids_partition_21, 
        cell_centroids_partition_22, cell_centroids_partition_23, 
        cell_centroids_partition_24, cell_centroids_partition_25, 
        cell_centroids_partition_26, cell_centroids_partition_27, 
        cell_centroids_partition_28, cell_centroids_partition_29, 
        cell_centroids_partition_30, cell_centroids_partition_31,
        s_partial_cell_distance0, s_partial_cell_distance1, s_partial_cell_distance2, s_partial_cell_distance3, 
        s_partial_cell_distance4, s_partial_cell_distance5, s_partial_cell_distance6, s_partial_cell_distance7, 
        s_partial_cell_distance8, s_partial_cell_distance9, s_partial_cell_distance10, s_partial_cell_distance11, 
        s_partial_cell_distance12, s_partial_cell_distance13, s_partial_cell_distance14, s_partial_cell_distance15, 
        s_partial_cell_distance16, s_partial_cell_distance17, s_partial_cell_distance18, s_partial_cell_distance19, 
        s_partial_cell_distance20, s_partial_cell_distance21, s_partial_cell_distance22, s_partial_cell_distance23, 
        s_partial_cell_distance24, s_partial_cell_distance25, s_partial_cell_distance26, s_partial_cell_distance27, 
        s_partial_cell_distance28, s_partial_cell_distance29, s_partial_cell_distance30, s_partial_cell_distance31);

    // Heap Sort (Unordered)
    heap_sort(
        s_partial_cell_distance0, s_partial_cell_distance1, 
        s_partial_cell_distance2, s_partial_cell_distance3, 
        s_partial_cell_distance4, s_partial_cell_distance5, 
        s_partial_cell_distance6, s_partial_cell_distance7, 
        s_partial_cell_distance8, s_partial_cell_distance9, 
        s_partial_cell_distance10, s_partial_cell_distance11, 
        s_partial_cell_distance12, s_partial_cell_distance13, 
        s_partial_cell_distance14, s_partial_cell_distance15, 
        s_partial_cell_distance16, s_partial_cell_distance17, 
        s_partial_cell_distance18, s_partial_cell_distance19, 
        s_partial_cell_distance20, s_partial_cell_distance21, 
        s_partial_cell_distance22, s_partial_cell_distance23, 
        s_partial_cell_distance24, s_partial_cell_distance25, 
        s_partial_cell_distance26, s_partial_cell_distance27, 
        s_partial_cell_distance28, s_partial_cell_distance29, 
        s_partial_cell_distance30, s_partial_cell_distance31,
        searched_cell_id);

//////////////////////////////     Write results     ////////////////////////////// 
    write_result(searched_cell_id, out_PLRAM);
}

void broadcast_query_vector(
    const t_axi* table_DDR0,
    hls::stream<float>& s_query_vector0, hls::stream<float>& s_query_vector1, 
    hls::stream<float>& s_query_vector2, hls::stream<float>& s_query_vector3, 
    hls::stream<float>& s_query_vector4, hls::stream<float>& s_query_vector5, 
    hls::stream<float>& s_query_vector6, hls::stream<float>& s_query_vector7, 
    hls::stream<float>& s_query_vector8, hls::stream<float>& s_query_vector9, 
    hls::stream<float>& s_query_vector10, hls::stream<float>& s_query_vector11, 
    hls::stream<float>& s_query_vector12, hls::stream<float>& s_query_vector13, 
    hls::stream<float>& s_query_vector14, hls::stream<float>& s_query_vector15, 
    hls::stream<float>& s_query_vector16, hls::stream<float>& s_query_vector17, 
    hls::stream<float>& s_query_vector18, hls::stream<float>& s_query_vector19, 
    hls::stream<float>& s_query_vector20, hls::stream<float>& s_query_vector21, 
    hls::stream<float>& s_query_vector22, hls::stream<float>& s_query_vector23, 
    hls::stream<float>& s_query_vector24, hls::stream<float>& s_query_vector25, 
    hls::stream<float>& s_query_vector26, hls::stream<float>& s_query_vector27, 
    hls::stream<float>& s_query_vector28, hls::stream<float>& s_query_vector29, 
    hls::stream<float>& s_query_vector30, hls::stream<float>& s_query_vector31) {

    for (int query_id = 0; query_id < QUERY_NUM; query_id++) {

        for (int d = 0; d < D; d++) {
        #pragma HLS pipeline II=1
            float reg = table_DDR0[query_id * D + d];
            s_query_vector0.write(reg);
            s_query_vector1.write(reg);
            s_query_vector2.write(reg);
            s_query_vector3.write(reg);
            s_query_vector4.write(reg);
            s_query_vector5.write(reg);
            s_query_vector6.write(reg);
            s_query_vector7.write(reg);
            s_query_vector8.write(reg);
            s_query_vector9.write(reg);
            s_query_vector10.write(reg);
            s_query_vector11.write(reg);
            s_query_vector12.write(reg);
            s_query_vector13.write(reg);
            s_query_vector14.write(reg);
            s_query_vector15.write(reg);
            s_query_vector16.write(reg);
            s_query_vector17.write(reg);
            s_query_vector18.write(reg);
            s_query_vector19.write(reg);
            s_query_vector20.write(reg);
            s_query_vector21.write(reg);
            s_query_vector22.write(reg);
            s_query_vector23.write(reg);
            s_query_vector24.write(reg);
            s_query_vector25.write(reg);
            s_query_vector26.write(reg);
            s_query_vector27.write(reg);
            s_query_vector28.write(reg);
            s_query_vector29.write(reg);
            s_query_vector30.write(reg);
            s_query_vector31.write(reg);
        }
    }
}

void compute_cell_distance_wrapper(
    hls::stream<float>& s_query_vector0, hls::stream<float>& s_query_vector1, 
    hls::stream<float>& s_query_vector2, hls::stream<float>& s_query_vector3, 
    hls::stream<float>& s_query_vector4, hls::stream<float>& s_query_vector5, 
    hls::stream<float>& s_query_vector6, hls::stream<float>& s_query_vector7, 
    hls::stream<float>& s_query_vector8, hls::stream<float>& s_query_vector9, 
    hls::stream<float>& s_query_vector10, hls::stream<float>& s_query_vector11, 
    hls::stream<float>& s_query_vector12, hls::stream<float>& s_query_vector13, 
    hls::stream<float>& s_query_vector14, hls::stream<float>& s_query_vector15, 
    hls::stream<float>& s_query_vector16, hls::stream<float>& s_query_vector17, 
    hls::stream<float>& s_query_vector18, hls::stream<float>& s_query_vector19, 
    hls::stream<float>& s_query_vector20, hls::stream<float>& s_query_vector21, 
    hls::stream<float>& s_query_vector22, hls::stream<float>& s_query_vector23, 
    hls::stream<float>& s_query_vector24, hls::stream<float>& s_query_vector25, 
    hls::stream<float>& s_query_vector26, hls::stream<float>& s_query_vector27, 
    hls::stream<float>& s_query_vector28, hls::stream<float>& s_query_vector29, 
    hls::stream<float>& s_query_vector30, hls::stream<float>& s_query_vector31, 
    float cell_centroids_partition_0[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_1[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_2[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_3[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_4[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_5[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_6[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_7[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_8[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_9[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_10[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_11[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_12[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_13[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_14[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_15[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_16[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_17[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_18[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_19[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_20[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_21[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_22[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_23[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_24[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_25[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_26[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_27[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_28[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_29[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_30[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_31[CENTROIDS_PER_PARTITION][D],
    hls::stream<float>& s_partial_cell_distance0, hls::stream<float>& s_partial_cell_distance1, 
    hls::stream<float>& s_partial_cell_distance2, hls::stream<float>& s_partial_cell_distance3, 
    hls::stream<float>& s_partial_cell_distance4, hls::stream<float>& s_partial_cell_distance5, 
    hls::stream<float>& s_partial_cell_distance6, hls::stream<float>& s_partial_cell_distance7, 
    hls::stream<float>& s_partial_cell_distance8, hls::stream<float>& s_partial_cell_distance9, 
    hls::stream<float>& s_partial_cell_distance10, hls::stream<float>& s_partial_cell_distance11, 
    hls::stream<float>& s_partial_cell_distance12, hls::stream<float>& s_partial_cell_distance13, 
    hls::stream<float>& s_partial_cell_distance14, hls::stream<float>& s_partial_cell_distance15, 
    hls::stream<float>& s_partial_cell_distance16, hls::stream<float>& s_partial_cell_distance17, 
    hls::stream<float>& s_partial_cell_distance18, hls::stream<float>& s_partial_cell_distance19, 
    hls::stream<float>& s_partial_cell_distance20, hls::stream<float>& s_partial_cell_distance21, 
    hls::stream<float>& s_partial_cell_distance22, hls::stream<float>& s_partial_cell_distance23, 
    hls::stream<float>& s_partial_cell_distance24, hls::stream<float>& s_partial_cell_distance25, 
    hls::stream<float>& s_partial_cell_distance26, hls::stream<float>& s_partial_cell_distance27, 
    hls::stream<float>& s_partial_cell_distance28, hls::stream<float>& s_partial_cell_distance29, 
    hls::stream<float>& s_partial_cell_distance30, hls::stream<float>& s_partial_cell_distance31) {

    compute_cell_distance(s_query_vector0, cell_centroids_partition_0, s_partial_cell_distance0);
    compute_cell_distance(s_query_vector1, cell_centroids_partition_1, s_partial_cell_distance1);
    compute_cell_distance(s_query_vector2, cell_centroids_partition_2, s_partial_cell_distance2);
    compute_cell_distance(s_query_vector3, cell_centroids_partition_3, s_partial_cell_distance3);
    compute_cell_distance(s_query_vector4, cell_centroids_partition_4, s_partial_cell_distance4);
    compute_cell_distance(s_query_vector5, cell_centroids_partition_5, s_partial_cell_distance5);
    compute_cell_distance(s_query_vector6, cell_centroids_partition_6, s_partial_cell_distance6);
    compute_cell_distance(s_query_vector7, cell_centroids_partition_7, s_partial_cell_distance7);
    compute_cell_distance(s_query_vector8, cell_centroids_partition_8, s_partial_cell_distance8);
    compute_cell_distance(s_query_vector9, cell_centroids_partition_9, s_partial_cell_distance9);
    compute_cell_distance(s_query_vector10, cell_centroids_partition_10, s_partial_cell_distance10);
    compute_cell_distance(s_query_vector11, cell_centroids_partition_11, s_partial_cell_distance11);
    compute_cell_distance(s_query_vector12, cell_centroids_partition_12, s_partial_cell_distance12);
    compute_cell_distance(s_query_vector13, cell_centroids_partition_13, s_partial_cell_distance13);
    compute_cell_distance(s_query_vector14, cell_centroids_partition_14, s_partial_cell_distance14);
    compute_cell_distance(s_query_vector15, cell_centroids_partition_15, s_partial_cell_distance15);
    compute_cell_distance(s_query_vector16, cell_centroids_partition_16, s_partial_cell_distance16);
    compute_cell_distance(s_query_vector17, cell_centroids_partition_17, s_partial_cell_distance17);
    compute_cell_distance(s_query_vector18, cell_centroids_partition_18, s_partial_cell_distance18);
    compute_cell_distance(s_query_vector19, cell_centroids_partition_19, s_partial_cell_distance19);
    compute_cell_distance(s_query_vector20, cell_centroids_partition_20, s_partial_cell_distance20);
    compute_cell_distance(s_query_vector21, cell_centroids_partition_21, s_partial_cell_distance21);
    compute_cell_distance(s_query_vector22, cell_centroids_partition_22, s_partial_cell_distance22);
    compute_cell_distance(s_query_vector23, cell_centroids_partition_23, s_partial_cell_distance23);
    compute_cell_distance(s_query_vector24, cell_centroids_partition_24, s_partial_cell_distance24);
    compute_cell_distance(s_query_vector25, cell_centroids_partition_25, s_partial_cell_distance25);
    compute_cell_distance(s_query_vector26, cell_centroids_partition_26, s_partial_cell_distance26);
    compute_cell_distance(s_query_vector27, cell_centroids_partition_27, s_partial_cell_distance27);
    compute_cell_distance(s_query_vector28, cell_centroids_partition_28, s_partial_cell_distance28);
    compute_cell_distance(s_query_vector29, cell_centroids_partition_29, s_partial_cell_distance29);
    compute_cell_distance(s_query_vector30, cell_centroids_partition_30, s_partial_cell_distance30);
    compute_cell_distance(s_query_vector31, cell_centroids_partition_31, s_partial_cell_distance31);
}

void compute_cell_distance(
    hls::stream<float>& s_query_vector,
    float cell_centroids_partition[CENTROIDS_PER_PARTITION][D],
    hls::stream<float>& s_partial_cell_distance) {
    
    float local_query_buffer[D];
#pragma HLS array_partition variable=local_query_buffer cyclic factor=8

    for (int query_id = 0; query_id < QUERY_NUM; query_id++) {

        // load query vec
        for (int d = 0; d < D; d++) {
        #pragma HLS pipeline II=1
            local_query_buffer[d] = s_query_vector.read();
        }

        // compute distance and write results out
        for (int c = 0; c < CENTROIDS_PER_PARTITION; c++) {

            float distance = 0;

            for (int d = 0; d < D; d++) {
            #pragma HLS UNROLL factor=16
                float scalar_dist = local_query_buffer[d] - cell_centroids_partition[c][d];
                distance += scalar_dist * scalar_dist;
            }

            s_partial_cell_distance.write(distance);
        }
    }
}


void sort_input_stream_128(
    hls::stream<float>& s_partial_cell_distance, int start_cell_id,
    hls::stream<float>& s_partial_cell_distance_sorted,
    hls::stream<int>& s_partial_cell_id_sorted) {
    // Given input stream of 128 numbers (CENTROIDS_PER_PARTITION), 
    // generate an output array of top 32 (nprobe) smallest numbers (increasing order)
    // as well as the corresponding cell IDs
#pragma HLS dataflow

    split to 4 
    sort32()
    merge()
    merge()
}

void sort_input_stream_32(
    hls::stream<float>& s_partial_cell_distance,
    hls::stream<int>& s_partial_cell_id,
    hls::stream<float>& s_partial_cell_distance_sorted,
    hls::stream<int>& s_partial_cell_id_sorted) {
    // Given input stream of 32 numbers, 
    // generate an output array of top 32 (nprobe) smallest numbers (increasing order)
    // as well as the corresponding cell IDs

    float origin_distance_array[32];
    float origin_id_array[32];

    float intermidiate_distance_array_0[32];
    float intermidiate_id_array_0[32];

    for (int query_id = 0; query_id < QUERY_NUM; query_id++) {
        
        for (int i = 0; i < )
    }
}

template<const int input_stream_len>
void merge_streams(
    hls::stream<float>& s_input_distance_0, hls::stream<float>& s_input_distance_1,
    hls::stream<int>& s_input_cell_id_0, hls::stream<float>& s_input_cell_id_1,
    hls::stream<float>& s_output_distance, hls::stream<int>& s_output_cell_id
) {
    // This function merge two sorted streams to a single sorted stream, 
    // without filtering out elements like in merge_streams_nprobe.

    float reg0, reg1; 
    int id0, id1;
    int count0, count1;

    for (int query_id = 0; query_id < QUERY_NUM; query_id++) {
        
        reg0 = s_input_distance_0.read();
        reg1 = s_input_distance_1.read();
        id0 = s_input_cell_id_0.read();
        id1 = s_input_cell_id_1.read();
        count0 = 1; // the number of read operations
        count1 = 1;

        // output the smallest 32 numbers and ids
        for (int i = 0; i < 2 * input_stream_len; i++) { 
        #pragma HLS pipeline II=1
            if (reg0 < reg1 && count0 <= input_stream_len) {
                s_output_distance.write(reg0);
                s_output_cell_id.write(id0); 
                
                if (count0 < input_stream_len) {
                    // TODO: BUG, also need to read ID
                    reg0 = s_input_distance_0.read(); 
                }
                // after the final time, count0 = input_stream_len + 1
                count0++; 
            }
            else if (reg1 < reg0 && count1 <= input_stream_len) {
                s_output_distance.write(reg1);
                s_output_cell_id.write(id1); 
                
                if (count1 < input_stream_len) {
                    reg1 = s_input_distance_1.read(); 
                }
                // after the final time, count1 = input_stream_len + 1
                count1++; 
            }
            else if (count0 > input_stream_len) {
                s_output_distance.write(reg1);
                s_output_cell_id.write(id1); 
                count1++; 
            }
            else if (count1 > input_stream_len) {
                s_output_distance.write(reg0);
                s_output_cell_id.write(id0); 
                count0++; 
            }
        }
    }
}

void merge_streams_nprobe(
    hls::stream<float>& s_input_distance_0, hls::stream<float>& s_input_distance_1,
    hls::stream<int>& s_input_cell_id_0, hls::stream<float>& s_input_cell_id_1,
    hls::stream<float>& s_output_distance, hls::stream<int>& s_output_cell_id
) {
    // Merge two sorted streams (each has 32 elements as input), inreasing order
    // Output the smallest distances and corresponding IDs

    float reg0, reg1; 
    int id0, id1;
    int count0, count1;
    for (int query_id = 0; query_id < QUERY_NUM; query_id++) {
        
        reg0 = s_input_distance_0.read();
        reg1 = s_input_distance_1.read();
        id0 = s_input_cell_id_0.read();
        id1 = s_input_cell_id_1.read();
        count0 = 1;
        count1 = 1;

        // output the smallest 32 numbers and ids
        for (int i = 0; i < NPROBE; i++) { 
        #pragma HLS pipeline II=1
            if (reg0 < reg1) {
                s_output_distance.write(reg0);
                s_output_cell_id.write(id0); 
                if (count0 < NPROBE) {
                    reg0 = s_input_distance_0.read(); 
                    count0++;
                }
            }
            else {
                s_output_distance.write(reg1);
                s_output_cell_id.write(id1); 
                if (count1 < NPROBE) {
                    reg1 = s_input_distance_1.read(); 
                    count1++; 
                }
            }
        }

        // consume the rest
        for (int i = 0; i < NPROBE - count0; i++) {
        #pragma HLS pipeline II=1
            s_input_distance_0.read();
            s_input_cell_id_0.read();
        }
        for (int i = 0; i < NPROBE - count1; i++) {
        #pragma HLS pipeline II=1
            s_input_distance_1.read();
            s_input_cell_id_1.read();
        }
    }
}

void heap_sort(
    hls::stream<float>& s_partial_cell_distance0, hls::stream<float>& s_partial_cell_distance1, 
    hls::stream<float>& s_partial_cell_distance2, hls::stream<float>& s_partial_cell_distance3, 
    hls::stream<float>& s_partial_cell_distance4, hls::stream<float>& s_partial_cell_distance5, 
    hls::stream<float>& s_partial_cell_distance6, hls::stream<float>& s_partial_cell_distance7, 
    hls::stream<float>& s_partial_cell_distance8, hls::stream<float>& s_partial_cell_distance9, 
    hls::stream<float>& s_partial_cell_distance10, hls::stream<float>& s_partial_cell_distance11, 
    hls::stream<float>& s_partial_cell_distance12, hls::stream<float>& s_partial_cell_distance13, 
    hls::stream<float>& s_partial_cell_distance14, hls::stream<float>& s_partial_cell_distance15, 
    hls::stream<float>& s_partial_cell_distance16, hls::stream<float>& s_partial_cell_distance17, 
    hls::stream<float>& s_partial_cell_distance18, hls::stream<float>& s_partial_cell_distance19, 
    hls::stream<float>& s_partial_cell_distance20, hls::stream<float>& s_partial_cell_distance21, 
    hls::stream<float>& s_partial_cell_distance22, hls::stream<float>& s_partial_cell_distance23, 
    hls::stream<float>& s_partial_cell_distance24, hls::stream<float>& s_partial_cell_distance25, 
    hls::stream<float>& s_partial_cell_distance26, hls::stream<float>& s_partial_cell_distance27, 
    hls::stream<float>& s_partial_cell_distance28, hls::stream<float>& s_partial_cell_distance29, 
    hls::stream<float>& s_partial_cell_distance30, hls::stream<float>& s_partial_cell_distance31,
    hls::stream<int>& searched_cell_id
) {
    #pragma HLS dataflow
    // Given the distance of all centroids, return the centroid ids of the smallest distances
    // Using a heap to implement such structure
    // Each input stream contain CENTROIDS_PER_PARTITION elements
    // Output stream contain NPROBE elements
    hls::stream<float> s_partial_heap_result0;
    hls::stream<float> s_partial_heap_result1;
    hls::stream<float> s_partial_heap_result2;
    hls::stream<float> s_partial_heap_result3;
    hls::stream<float> s_partial_heap_result4;
    hls::stream<float> s_partial_heap_result5;
    hls::stream<float> s_partial_heap_result6;
    hls::stream<float> s_partial_heap_result7;
    hls::stream<float> s_partial_heap_result8;
    hls::stream<float> s_partial_heap_result9;
    hls::stream<float> s_partial_heap_result10;
    hls::stream<float> s_partial_heap_result11;
    hls::stream<float> s_partial_heap_result12;
    hls::stream<float> s_partial_heap_result13;
    hls::stream<float> s_partial_heap_result14;
    hls::stream<float> s_partial_heap_result15;
#pragma HLS stream variable=s_partial_heap_result0 depth=4
#pragma HLS stream variable=s_partial_heap_result1 depth=4
#pragma HLS stream variable=s_partial_heap_result2 depth=4
#pragma HLS stream variable=s_partial_heap_result3 depth=4
#pragma HLS stream variable=s_partial_heap_result4 depth=4
#pragma HLS stream variable=s_partial_heap_result5 depth=4
#pragma HLS stream variable=s_partial_heap_result6 depth=4
#pragma HLS stream variable=s_partial_heap_result7 depth=4
#pragma HLS stream variable=s_partial_heap_result8 depth=4
#pragma HLS stream variable=s_partial_heap_result9 depth=4
#pragma HLS stream variable=s_partial_heap_result10 depth=4
#pragma HLS stream variable=s_partial_heap_result11 depth=4
#pragma HLS stream variable=s_partial_heap_result12 depth=4
#pragma HLS stream variable=s_partial_heap_result13 depth=4
#pragma HLS stream variable=s_partial_heap_result14 depth=4
#pragma HLS stream variable=s_partial_heap_result15 depth=4

    hls::stream<int> s_partial_centroid_id0;
    hls::stream<int> s_partial_centroid_id1;
    hls::stream<int> s_partial_centroid_id2;
    hls::stream<int> s_partial_centroid_id3;
    hls::stream<int> s_partial_centroid_id4;
    hls::stream<int> s_partial_centroid_id5;
    hls::stream<int> s_partial_centroid_id6;
    hls::stream<int> s_partial_centroid_id7;
    hls::stream<int> s_partial_centroid_id8;
    hls::stream<int> s_partial_centroid_id9;
    hls::stream<int> s_partial_centroid_id10;
    hls::stream<int> s_partial_centroid_id11;
    hls::stream<int> s_partial_centroid_id12;
    hls::stream<int> s_partial_centroid_id13;
    hls::stream<int> s_partial_centroid_id14;
    hls::stream<int> s_partial_centroid_id15;
#pragma HLS stream variable=s_partial_centroid_id0 depth=4
#pragma HLS stream variable=s_partial_centroid_id1 depth=4
#pragma HLS stream variable=s_partial_centroid_id2 depth=4
#pragma HLS stream variable=s_partial_centroid_id3 depth=4
#pragma HLS stream variable=s_partial_centroid_id4 depth=4
#pragma HLS stream variable=s_partial_centroid_id5 depth=4
#pragma HLS stream variable=s_partial_centroid_id6 depth=4
#pragma HLS stream variable=s_partial_centroid_id7 depth=4
#pragma HLS stream variable=s_partial_centroid_id8 depth=4
#pragma HLS stream variable=s_partial_centroid_id9 depth=4
#pragma HLS stream variable=s_partial_centroid_id10 depth=4
#pragma HLS stream variable=s_partial_centroid_id11 depth=4
#pragma HLS stream variable=s_partial_centroid_id12 depth=4
#pragma HLS stream variable=s_partial_centroid_id13 depth=4
#pragma HLS stream variable=s_partial_centroid_id14 depth=4
#pragma HLS stream variable=s_partial_centroid_id15 depth=4

    // Partial cell distance on every 2 input streams 2 x 256 cycles at least -> output 32 numbers
    partial_heap_sort_stage_A(
        s_partial_cell_distance0, s_partial_cell_distance16, 
        0 * CENTROIDS_PER_PARTITION, 16 * CENTROIDS_PER_PARTITION, 
        s_partial_heap_result0, s_partial_centroid_id0);
    partial_heap_sort_stage_A(
        s_partial_cell_distance1, s_partial_cell_distance17, 
        1 * CENTROIDS_PER_PARTITION, 17 * CENTROIDS_PER_PARTITION, 
        s_partial_heap_result1, s_partial_centroid_id1);
    partial_heap_sort_stage_A(
        s_partial_cell_distance2, s_partial_cell_distance18, 
        2 * CENTROIDS_PER_PARTITION, 18 * CENTROIDS_PER_PARTITION, 
        s_partial_heap_result2, s_partial_centroid_id2);
    partial_heap_sort_stage_A(
        s_partial_cell_distance3, s_partial_cell_distance19, 
        3 * CENTROIDS_PER_PARTITION, 19 * CENTROIDS_PER_PARTITION, 
        s_partial_heap_result3, s_partial_centroid_id3);
    partial_heap_sort_stage_A(
        s_partial_cell_distance4, s_partial_cell_distance20, 
        4 * CENTROIDS_PER_PARTITION, 20 * CENTROIDS_PER_PARTITION, 
        s_partial_heap_result4, s_partial_centroid_id4);
    partial_heap_sort_stage_A(
        s_partial_cell_distance5, s_partial_cell_distance21, 
        5 * CENTROIDS_PER_PARTITION, 21 * CENTROIDS_PER_PARTITION, 
        s_partial_heap_result5, s_partial_centroid_id5);
    partial_heap_sort_stage_A(
        s_partial_cell_distance6, s_partial_cell_distance22, 
        6 * CENTROIDS_PER_PARTITION, 22 * CENTROIDS_PER_PARTITION, 
        s_partial_heap_result6, s_partial_centroid_id6);
    partial_heap_sort_stage_A(
        s_partial_cell_distance7, s_partial_cell_distance23, 
        7 * CENTROIDS_PER_PARTITION, 23 * CENTROIDS_PER_PARTITION, 
        s_partial_heap_result7, s_partial_centroid_id7);
    partial_heap_sort_stage_A(
        s_partial_cell_distance8, s_partial_cell_distance24, 
        8 * CENTROIDS_PER_PARTITION, 24 * CENTROIDS_PER_PARTITION, 
        s_partial_heap_result8, s_partial_centroid_id8);
    partial_heap_sort_stage_A(
        s_partial_cell_distance9, s_partial_cell_distance25, 
        9 * CENTROIDS_PER_PARTITION, 25 * CENTROIDS_PER_PARTITION, 
        s_partial_heap_result9, s_partial_centroid_id9);
    partial_heap_sort_stage_A(
        s_partial_cell_distance10, s_partial_cell_distance26, 
        10 * CENTROIDS_PER_PARTITION, 26 * CENTROIDS_PER_PARTITION, 
        s_partial_heap_result10, s_partial_centroid_id10);
    partial_heap_sort_stage_A(
        s_partial_cell_distance11, s_partial_cell_distance27, 
        11 * CENTROIDS_PER_PARTITION, 27 * CENTROIDS_PER_PARTITION, 
        s_partial_heap_result11, s_partial_centroid_id11);
    partial_heap_sort_stage_A(
        s_partial_cell_distance12, s_partial_cell_distance28, 
        12 * CENTROIDS_PER_PARTITION, 28 * CENTROIDS_PER_PARTITION, 
        s_partial_heap_result12, s_partial_centroid_id12);
    partial_heap_sort_stage_A(
        s_partial_cell_distance13, s_partial_cell_distance29, 
        13 * CENTROIDS_PER_PARTITION, 29 * CENTROIDS_PER_PARTITION, 
        s_partial_heap_result13, s_partial_centroid_id13);
    partial_heap_sort_stage_A(
        s_partial_cell_distance14, s_partial_cell_distance30, 
        14 * CENTROIDS_PER_PARTITION, 30 * CENTROIDS_PER_PARTITION, 
        s_partial_heap_result14, s_partial_centroid_id14);
    partial_heap_sort_stage_A(
        s_partial_cell_distance15, s_partial_cell_distance31, 
        15 * CENTROIDS_PER_PARTITION, 31 * CENTROIDS_PER_PARTITION, 
        s_partial_heap_result15, s_partial_centroid_id15);

    // Then gather the results, 32 x 16 cycles, also need to decode the id from each stream
    partial_heap_sort_stage_B(
        s_partial_heap_result0, s_partial_heap_result1, 
        s_partial_heap_result2, s_partial_heap_result3, 
        s_partial_heap_result4, s_partial_heap_result5, 
        s_partial_heap_result6, s_partial_heap_result7, 
        s_partial_heap_result8, s_partial_heap_result9, 
        s_partial_heap_result10, s_partial_heap_result11, 
        s_partial_heap_result12, s_partial_heap_result13, 
        s_partial_heap_result14, s_partial_heap_result15,
        s_partial_centroid_id0, s_partial_centroid_id1, 
        s_partial_centroid_id2, s_partial_centroid_id3, 
        s_partial_centroid_id4, s_partial_centroid_id5, 
        s_partial_centroid_id6, s_partial_centroid_id7, 
        s_partial_centroid_id8, s_partial_centroid_id9, 
        s_partial_centroid_id10, s_partial_centroid_id11, 
        s_partial_centroid_id12, s_partial_centroid_id13, 
        s_partial_centroid_id14, s_partial_centroid_id15,
        searched_cell_id);
}

void partial_heap_sort_stage_A(
    hls::stream<float>& s_partial_cell_distance0, hls::stream<float>& s_partial_cell_distance1, 
    int start_cell_id0, int start_cell_id1, 
    hls::stream<float>& s_partial_heap_result, hls::stream<int>& s_partial_centroid_id) {

    // Each input stream contain CENTROIDS_PER_PARTITION elements
    // Input also specify which cell ID does this partition start at, e.g., start from cell0 or cell127
    // Output stream contain NPROBE elements
    float distance_heap[NPROBE];
    #pragma HLS array_partition variable=distance_heap complete
    int cell_id_heap[NPROBE];
    #pragma HLS array_partition variable=cell_id_heap complete
    float max_dist_in_heap;
    int max_dist_entry;
    
    for (int query_id = 0; query_id < QUERY_NUM; query_id++) {
        // init heap
        for (int n = 0; n < NPROBE; n++) {
        #pragma HLS UNROLL
            distance_heap[n] = LARGE_NUM;
            cell_id_heap[n] = -1;
        }
        max_dist_in_heap = LARGE_NUM;
        max_dist_entry = 0;

        for (int c = 0; c < CENTROIDS_PER_PARTITION; c++) {
        // #pragma HLS pipeline
            float dist0 = s_partial_cell_distance0.read();
            if (dist0 < max_dist_in_heap) {
                distance_heap[max_dist_entry] = dist0;
                cell_id_heap[max_dist_entry] = start_cell_id0 + c;
                update_heap(distance_heap, &max_dist_in_heap, &max_dist_entry);
            }

            float dist1 = s_partial_cell_distance1.read();
            if (dist1 < max_dist_in_heap) {
                distance_heap[max_dist_entry] = dist1;
                cell_id_heap[max_dist_entry] = start_cell_id1 + c;
                update_heap(distance_heap, &max_dist_in_heap, &max_dist_entry);
            }
        }

        for (int n = 0; n < NPROBE; n++) {
        #pragma HLS pipeline II=1
            s_partial_heap_result.write(distance_heap[n]);
            s_partial_centroid_id.write(cell_id_heap[n]);
        }
    }
}

void partial_heap_sort_stage_B(
    hls::stream<float>& s_partial_heap_result0, hls::stream<float>& s_partial_heap_result1, 
    hls::stream<float>& s_partial_heap_result2, hls::stream<float>& s_partial_heap_result3, 
    hls::stream<float>& s_partial_heap_result4, hls::stream<float>& s_partial_heap_result5, 
    hls::stream<float>& s_partial_heap_result6, hls::stream<float>& s_partial_heap_result7, 
    hls::stream<float>& s_partial_heap_result8, hls::stream<float>& s_partial_heap_result9, 
    hls::stream<float>& s_partial_heap_result10, hls::stream<float>& s_partial_heap_result11, 
    hls::stream<float>& s_partial_heap_result12, hls::stream<float>& s_partial_heap_result13, 
    hls::stream<float>& s_partial_heap_result14, hls::stream<float>& s_partial_heap_result15,
    hls::stream<int>& s_partial_centroid_id0, hls::stream<int>& s_partial_centroid_id1, 
    hls::stream<int>& s_partial_centroid_id2, hls::stream<int>& s_partial_centroid_id3, 
    hls::stream<int>& s_partial_centroid_id4, hls::stream<int>& s_partial_centroid_id5, 
    hls::stream<int>& s_partial_centroid_id6, hls::stream<int>& s_partial_centroid_id7, 
    hls::stream<int>& s_partial_centroid_id8, hls::stream<int>& s_partial_centroid_id9, 
    hls::stream<int>& s_partial_centroid_id10, hls::stream<int>& s_partial_centroid_id11, 
    hls::stream<int>& s_partial_centroid_id12, hls::stream<int>& s_partial_centroid_id13, 
    hls::stream<int>& s_partial_centroid_id14, hls::stream<int>& s_partial_centroid_id15,
    hls::stream<int>& s_centroid_id_result) {

    float distance_heap[NPROBE];
    #pragma HLS array_partition variable=distance_heap complete
    int cell_id_heap[NPROBE];
    #pragma HLS array_partition variable=cell_id_heap complete
    float max_dist_in_heap;
    int max_dist_entry;
    
    for (int query_id = 0; query_id < QUERY_NUM; query_id++) {
        // init heap
        for (int n = 0; n < NPROBE; n++) {
        #pragma HLS UNROLL
            distance_heap[n] = LARGE_NUM;
            cell_id_heap[n] = -1;
        }
        max_dist_in_heap = LARGE_NUM;
        max_dist_entry = 0;

        for (int c = 0; c < NPROBE; c++) {
        // #pragma HLS pipeline
            float dist0 = s_partial_heap_result0.read();
            int id0 = s_partial_centroid_id0.read();
            if (dist0 < max_dist_in_heap) {
                distance_heap[max_dist_entry] = dist0;
                cell_id_heap[max_dist_entry] = id0;
                update_heap(distance_heap, &max_dist_in_heap, &max_dist_entry);
            }

            float dist1 = s_partial_heap_result1.read();
            int id1 = s_partial_centroid_id1.read();
            if (dist1 < max_dist_in_heap) {
                distance_heap[max_dist_entry] = dist1;
                cell_id_heap[max_dist_entry] = id1;
                update_heap(distance_heap, &max_dist_in_heap, &max_dist_entry);
            }

            float dist2 = s_partial_heap_result2.read();
            int id2 = s_partial_centroid_id2.read();
            if (dist2 < max_dist_in_heap) {
                distance_heap[max_dist_entry] = dist2;
                cell_id_heap[max_dist_entry] = id2;
                update_heap(distance_heap, &max_dist_in_heap, &max_dist_entry);
            }

            float dist3 = s_partial_heap_result3.read();
            int id3 = s_partial_centroid_id3.read();
            if (dist3 < max_dist_in_heap) {
                distance_heap[max_dist_entry] = dist3;
                cell_id_heap[max_dist_entry] = id3;
                update_heap(distance_heap, &max_dist_in_heap, &max_dist_entry);
            }

            float dist4 = s_partial_heap_result4.read();
            int id4 = s_partial_centroid_id4.read();
            if (dist4 < max_dist_in_heap) {
                distance_heap[max_dist_entry] = dist4;
                cell_id_heap[max_dist_entry] = id4;
                update_heap(distance_heap, &max_dist_in_heap, &max_dist_entry);
            }

            float dist5 = s_partial_heap_result5.read();
            int id5 = s_partial_centroid_id5.read();
            if (dist5 < max_dist_in_heap) {
                distance_heap[max_dist_entry] = dist5;
                cell_id_heap[max_dist_entry] = id5;
                update_heap(distance_heap, &max_dist_in_heap, &max_dist_entry);
            }

            float dist6 = s_partial_heap_result6.read();
            int id6 = s_partial_centroid_id6.read();
            if (dist6 < max_dist_in_heap) {
                distance_heap[max_dist_entry] = dist6;
                cell_id_heap[max_dist_entry] = id6;
                update_heap(distance_heap, &max_dist_in_heap, &max_dist_entry);
            }

            float dist7 = s_partial_heap_result7.read();
            int id7 = s_partial_centroid_id7.read();
            if (dist7 < max_dist_in_heap) {
                distance_heap[max_dist_entry] = dist7;
                cell_id_heap[max_dist_entry] = id7;
                update_heap(distance_heap, &max_dist_in_heap, &max_dist_entry);
            }

            float dist8 = s_partial_heap_result8.read();
            int id8 = s_partial_centroid_id8.read();
            if (dist8 < max_dist_in_heap) {
                distance_heap[max_dist_entry] = dist8;
                cell_id_heap[max_dist_entry] = id8;
                update_heap(distance_heap, &max_dist_in_heap, &max_dist_entry);
            }

            float dist9 = s_partial_heap_result9.read();
            int id9 = s_partial_centroid_id9.read();
            if (dist9 < max_dist_in_heap) {
                distance_heap[max_dist_entry] = dist9;
                cell_id_heap[max_dist_entry] = id9;
                update_heap(distance_heap, &max_dist_in_heap, &max_dist_entry);
            }

            float dist10 = s_partial_heap_result10.read();
            int id10 = s_partial_centroid_id10.read();
            if (dist10 < max_dist_in_heap) {
                distance_heap[max_dist_entry] = dist10;
                cell_id_heap[max_dist_entry] = id10;
                update_heap(distance_heap, &max_dist_in_heap, &max_dist_entry);
            }

            float dist11 = s_partial_heap_result11.read();
            int id11 = s_partial_centroid_id11.read();
            if (dist11 < max_dist_in_heap) {
                distance_heap[max_dist_entry] = dist11;
                cell_id_heap[max_dist_entry] = id11;
                update_heap(distance_heap, &max_dist_in_heap, &max_dist_entry);
            }

            float dist12 = s_partial_heap_result12.read();
            int id12 = s_partial_centroid_id12.read();
            if (dist12 < max_dist_in_heap) {
                distance_heap[max_dist_entry] = dist12;
                cell_id_heap[max_dist_entry] = id12;
                update_heap(distance_heap, &max_dist_in_heap, &max_dist_entry);
            }

            float dist13 = s_partial_heap_result13.read();
            int id13 = s_partial_centroid_id13.read();
            if (dist13 < max_dist_in_heap) {
                distance_heap[max_dist_entry] = dist13;
                cell_id_heap[max_dist_entry] = id13;
                update_heap(distance_heap, &max_dist_in_heap, &max_dist_entry);
            }

            float dist14 = s_partial_heap_result14.read();
            int id14 = s_partial_centroid_id14.read();
            if (dist14 < max_dist_in_heap) {
                distance_heap[max_dist_entry] = dist14;
                cell_id_heap[max_dist_entry] = id14;
                update_heap(distance_heap, &max_dist_in_heap, &max_dist_entry);
            }

            float dist15 = s_partial_heap_result15.read();
            int id15 = s_partial_centroid_id15.read();
            if (dist15 < max_dist_in_heap) {
                distance_heap[max_dist_entry] = dist15;
                cell_id_heap[max_dist_entry] = id15;
                update_heap(distance_heap, &max_dist_in_heap, &max_dist_entry);
            }
        }

        for (int n = 0; n < NPROBE; n++) {
            s_centroid_id_result.write(cell_id_heap[n]);
        }
    }
}


void update_heap(float distance_heap[NPROBE],
    float* max_dist_in_heap, int* max_dist_entry) {
    // recompute the min distance in heap, update max_val and max_val_entry_id

    // Here, hardcode that NPROBE=32
    float reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, 
        reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15;
    int id0, id1, id2, id3, id4, id5, id6, id7, 
        id8, id9, id10, id11, id12, id13, id14, id15;

    // stage 0: 32 -> 16
    reg0 = distance_heap[0] > distance_heap[16]? distance_heap[0] : distance_heap[16];
    reg1 = distance_heap[1] > distance_heap[17]? distance_heap[1] : distance_heap[17];
    reg2 = distance_heap[2] > distance_heap[18]? distance_heap[2] : distance_heap[18];
    reg3 = distance_heap[3] > distance_heap[19]? distance_heap[3] : distance_heap[19];
    reg4 = distance_heap[4] > distance_heap[20]? distance_heap[4] : distance_heap[20];
    reg5 = distance_heap[5] > distance_heap[21]? distance_heap[5] : distance_heap[21];
    reg6 = distance_heap[6] > distance_heap[22]? distance_heap[6] : distance_heap[22];
    reg7 = distance_heap[7] > distance_heap[23]? distance_heap[7] : distance_heap[23];
    reg8 = distance_heap[8] > distance_heap[24]? distance_heap[8] : distance_heap[24];
    reg9 = distance_heap[9] > distance_heap[25]? distance_heap[9] : distance_heap[25];
    reg10 = distance_heap[10] > distance_heap[26]? distance_heap[10] : distance_heap[26];
    reg11 = distance_heap[11] > distance_heap[27]? distance_heap[11] : distance_heap[27];
    reg12 = distance_heap[12] > distance_heap[28]? distance_heap[12] : distance_heap[28];
    reg13 = distance_heap[13] > distance_heap[29]? distance_heap[13] : distance_heap[29];
    reg14 = distance_heap[14] > distance_heap[30]? distance_heap[14] : distance_heap[30];
    reg15 = distance_heap[15] > distance_heap[31]? distance_heap[15] : distance_heap[31];

    id0 = distance_heap[0] > distance_heap[16]? 0 : 16;
    id1 = distance_heap[1] > distance_heap[17]? 1 : 17;
    id2 = distance_heap[2] > distance_heap[18]? 2 : 18;
    id3 = distance_heap[3] > distance_heap[19]? 3 : 19;
    id4 = distance_heap[4] > distance_heap[20]? 4 : 20;
    id5 = distance_heap[5] > distance_heap[21]? 5 : 21;
    id6 = distance_heap[6] > distance_heap[22]? 6 : 22;
    id7 = distance_heap[7] > distance_heap[23]? 7 : 23;
    id8 = distance_heap[8] > distance_heap[24]? 8 : 24;
    id9 = distance_heap[9] > distance_heap[25]? 9 : 25;
    id10 = distance_heap[10] > distance_heap[26]? 10 : 26;
    id11 = distance_heap[11] > distance_heap[27]? 11 : 27;
    id12 = distance_heap[12] > distance_heap[28]? 12 : 28;
    id13 = distance_heap[13] > distance_heap[29]? 13 : 29;
    id14 = distance_heap[14] > distance_heap[30]? 14 : 30;
    id15 = distance_heap[15] > distance_heap[31]? 15 : 31;

    // stage 1: 16 -> 8
    reg0 = reg0 > reg8? reg0 : reg8;
    reg1 = reg1 > reg9? reg1 : reg9;
    reg2 = reg2 > reg10? reg2 : reg10;
    reg3 = reg3 > reg11? reg3 : reg11;
    reg4 = reg4 > reg12? reg4 : reg12;
    reg5 = reg5 > reg13? reg5 : reg13;
    reg6 = reg6 > reg14? reg6 : reg14;
    reg7 = reg7 > reg15? reg7 : reg15;

    id0 = reg0 > reg8? id0: id8;
    id1 = reg1 > reg9? id1: id9;
    id2 = reg2 > reg10? id2: id10;
    id3 = reg3 > reg11? id3: id11;
    id4 = reg4 > reg12? id4: id12;
    id5 = reg5 > reg13? id5: id13;
    id6 = reg6 > reg14? id6: id14;
    id7 = reg7 > reg15? id7: id15;

    // stage 2: 8 -> 4
    reg0 = reg0 > reg4? reg0 : reg4;
    reg1 = reg1 > reg5? reg1 : reg5;
    reg2 = reg2 > reg6? reg2 : reg6;
    reg3 = reg3 > reg7? reg3 : reg7;

    id0 = reg0 > reg4? id0: id4;
    id1 = reg1 > reg5? id1: id5;
    id2 = reg2 > reg6? id2: id6;
    id3 = reg3 > reg7? id3: id7;

    // stage 3: 4 -> 2
    reg0 = reg0 > reg2? reg0 : reg2;
    reg1 = reg1 > reg3? reg1 : reg3;

    id0 = reg0 > reg2? id0: id2;
    id1 = reg1 > reg3? id1: id3;

    // stage 4: 2 -> 1
    reg0 = reg0 > reg1? reg0 : reg1;

    id0 = reg0 > reg1? id0: id1;

    *max_dist_in_heap = reg0; 
    *max_dist_entry = id0;
}

void write_result(
    hls::stream<int>& s_result, int* results_out) {
    
    for (int i = 0; i < QUERY_NUM * NPROBE; i++) {
        results_out[i] = s_result.read();
    }
}

