// This program:
//   1. stora all the cell centroids coordinates on-chip
//   2. given an input query, compute distance with those centroids
//   3. select the top nprobe centroids using sorting network / heap
//   4. access the cell codebooks stored in HBM, construct distance table

#include "vadd.hpp"

// NOTE: HBM1 -> int 
void vadd(  
    float* table_HBM0, int* table_HBM1, 
    float* table_HBM2, float* table_HBM3,
    result_t* table_HBM27
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
// #pragma HLS INTERFACE m_axi port=table_HBM4  offset=slave bundle=gmem4
// #pragma HLS INTERFACE m_axi port=table_HBM5  offset=slave bundle=gmem5
// #pragma HLS INTERFACE m_axi port=table_HBM6  offset=slave bundle=gmem6
// #pragma HLS INTERFACE m_axi port=table_HBM7  offset=slave bundle=gmem7
// #pragma HLS INTERFACE m_axi port=table_HBM8  offset=slave bundle=gmem8
// #pragma HLS INTERFACE m_axi port=table_HBM9  offset=slave bundle=gmem9
// #pragma HLS INTERFACE m_axi port=table_HBM10  offset=slave bundle=gmem10
// #pragma HLS INTERFACE m_axi port=table_HBM11  offset=slave bundle=gmem11
// #pragma HLS INTERFACE m_axi port=table_HBM12  offset=slave bundle=gmem12
// #pragma HLS INTERFACE m_axi port=table_HBM13  offset=slave bundle=gmem13
// #pragma HLS INTERFACE m_axi port=table_HBM14  offset=slave bundle=gmem14
// #pragma HLS INTERFACE m_axi port=table_HBM15  offset=slave bundle=gmem15
// #pragma HLS INTERFACE m_axi port=table_HBM16  offset=slave bundle=gmem16
// #pragma HLS INTERFACE m_axi port=table_HBM17  offset=slave bundle=gmem17
// #pragma HLS INTERFACE m_axi port=table_HBM18  offset=slave bundle=gmem18
// #pragma HLS INTERFACE m_axi port=table_HBM19  offset=slave bundle=gmem19
// #pragma HLS INTERFACE m_axi port=table_HBM20  offset=slave bundle=gmem20
// #pragma HLS INTERFACE m_axi port=table_HBM21  offset=slave bundle=gmem21
// #pragma HLS INTERFACE m_axi port=table_HBM22  offset=slave bundle=gmem22
// #pragma HLS INTERFACE m_axi port=table_HBM23  offset=slave bundle=gmem23
// #pragma HLS INTERFACE m_axi port=table_HBM24  offset=slave bundle=gmem24
// #pragma HLS INTERFACE m_axi port=table_HBM25  offset=slave bundle=gmem25
// #pragma HLS INTERFACE m_axi port=table_HBM26  offset=slave bundle=gmem26
#pragma HLS INTERFACE m_axi port=table_HBM27  offset=slave bundle=gmem27
// #pragma HLS INTERFACE m_axi port=table_HBM28  offset=slave bundle=gmem28
// #pragma HLS INTERFACE m_axi port=table_HBM29  offset=slave bundle=gmem29
// #pragma HLS INTERFACE m_axi port=table_HBM30  offset=slave bundle=gmem30
// #pragma HLS INTERFACE m_axi port=table_HBM31  offset=slave bundle=gmem31

// #pragma HLS INTERFACE m_axi port=table_DDR0  offset=slave bundle=gmem32
// #pragma HLS INTERFACE m_axi port=table_DDR1  offset=slave bundle=gmem33

// PLRAM
// #pragma HLS INTERFACE m_axi port=out_PLRAM offset=slave bundle=gmem34

#pragma HLS INTERFACE s_axilite port=table_HBM0  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM1  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM2  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM3  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM4  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM5  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM6  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM7  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM8  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM9  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM10  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM11  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM12  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM13  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM14  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM15  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM16  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM17  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM18  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM19  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM20  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM21  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM22  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM23  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM24  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM25  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM26  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM27  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM28  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM29  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM30  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM31  bundle=control

// #pragma HLS INTERFACE s_axilite port=table_DDR0  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_DDR1  bundle=control

// #pragma HLS INTERFACE s_axilite port=out_PLRAM bundle=control

#pragma HLS INTERFACE s_axilite port=return bundle=control
    
#pragma HLS dataflow

    // Storage: 
    //   HBM0 -> query vector (1 vector per NPROBE=32 center vector)
    //   HBM1 -> center vector
    //   HBM2 -> PQ codebook
    
    hls::stream<float> s_query_vectors;
#pragma HLS stream variable=s_query_vectors depth=128

    hls::stream<float> s_query_vectors_PE[PE_NUM_TABLE_CONSTRUCTION];
#pragma HLS stream variable=s_query_vectors_PE depth=4
#pragma HLS resource variable=s_query_vectors_PE core=FIFO_SRL
#pragma HLS array_partition variable=s_query_vectors_PE dim=1

    hls::stream<int> s_searched_cell_id;
#pragma HLS stream variable=s_searched_cell_id depth=128

    hls::stream<float> s_center_vectors;
#pragma HLS stream variable=s_center_vectors depth=128

    hls::stream<float> s_center_vectors_PE[PE_NUM_TABLE_CONSTRUCTION];
#pragma HLS stream variable=s_center_vectors_PE depth=4
#pragma HLS resource variable=s_center_vectors_PE core=FIFO_SRL
#pragma HLS array_partition variable=s_center_vectors_PE dim=1

    hls::stream<float> s_PQ_quantizer_init[PE_NUM_TABLE_CONSTRUCTION];
#pragma HLS stream variable=s_PQ_quantizer_init depth=4
#pragma HLS resource variable=s_PQ_quantizer_init core=FIFO_SRL
#pragma HLS array_partition variable=s_PQ_quantizer_init dim=1

    // PE0 write 256 rows to s_lookup_table, then PE1 write 256 rows
    // thus need a deep FIFO to make sure each PE can cache enough results
    // 32 * 512 = 16384 bits, BRAM = 18K bits
    hls::stream<result_t> s_lookup_table_PE[PE_NUM_TABLE_CONSTRUCTION];
#pragma HLS stream variable=s_lookup_table_PE depth=512
#pragma HLS resource variable=s_lookup_table_PE core=FIFO_BRAM
#pragma HLS array_partition variable=s_lookup_table_PE dim=1

    hls::stream<result_t> s_lookup_table;
#pragma HLS stream variable=s_lookup_table depth=4
#pragma HLS resource variable=s_lookup_table core=FIFO_SRL

    ////////////////////     init      ////////////////////

    // HBM0: query vectors
    // HBM1: searched cell ID
    // HBM2: center vector table
    // HBM3: PQ quantizer
    // HBM27: output
    load_query_vectors<QUERY_NUM>(table_HBM0, s_query_vectors);

    load_searched_cell_id<QUERY_NUM>(table_HBM1, s_searched_cell_id);

    load_center_vectors<QUERY_NUM>(table_HBM2, s_searched_cell_id, s_center_vectors);

    query_vectors_dispatcher<QUERY_NUM>(s_query_vectors, s_query_vectors_PE);

    center_vectors_dispatcher<QUERY_NUM>(s_center_vectors, s_center_vectors_PE);

    broadcast_PQ_quantizer(table_HBM3, s_PQ_quantizer_init);

    ////////////////////     compute      ////////////////////
    lookup_table_construction_wrapper<QUERY_NUM, NPROBE_PER_TABLE_CONSTRUCTION_PE>(
        s_PQ_quantizer_init, s_center_vectors_PE, s_query_vectors_PE, s_lookup_table_PE);

    // TODO: reduce, write to HBM
    gather_lookup_table<QUERY_NUM, NPROBE_PER_TABLE_CONSTRUCTION_PE>(s_lookup_table_PE, s_lookup_table);

    ////////////////////     write results      ////////////////////
    write_result(s_lookup_table, table_HBM27);
}

template<const int query_num>
void load_query_vectors(
    const float* DRAM_query_vector,
    hls::stream<float>& s_query_vectors) {

    // Data type: suppose each vector = 128 D, FPGA freq = 200 MHz
    //   then it takes 640 + 200 ns < 1 us to load a query vector, 
    //   much faster than computing distance and constructing LUT (> 10 us)

    // query vector (1 vector per NPROBE=32 center vector)
    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int d = 0; d < D; d++) {
        #pragma HLS pipeline II=1
            s_query_vectors.write(DRAM_query_vector[query_id * D + d]);
        }
    }
}

template<const int query_num>
void load_searched_cell_id(const int* DRAM_searched_cell_id, 
    hls::stream<int>& s_searched_cell_id) {

    for (int query_id = 0; query_id < query_num; query_id++) { 

        for (int nprobe_id = 0; nprobe_id < NPROBE; nprobe_id++) {
#pragma HLS pipeline II=1
            s_searched_cell_id.write(DRAM_searched_cell_id[query_id * NPROBE + nprobe_id]);
        }
    }
}

template<const int query_num>
void load_center_vectors(
    const float* DRAM_center_vector,
    hls::stream<int>& s_searched_cell_id,
    hls::stream<float>& s_center_vectors) {

    float center_vector_local[NLIST * D];
#pragma HLS resource variable=center_vector_local core=RAM_2P_URAM

    // init: load center vectors from DRAM 
    for (int i = 0; i < NLIST * D; i++) {
        center_vector_local[i] = DRAM_center_vector[i];
    }

    //  lookup center vectors given ID
    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int nprobe_id = 0; nprobe_id < NPROBE; nprobe_id++) {

            int vec_id = s_searched_cell_id.read();
            int start_addr = vec_id * D;

            for (int i = 0; i < D; i++) {
#pragma HLS pipeline II=1
                s_center_vectors.write(center_vector_local[start_addr + i]);
            }
        }
    }
}

template<const int query_num>
void query_vectors_dispatcher(
    hls::stream<float>& s_query_vectors,
    hls::stream<float> (&s_query_vectors_PE)[PE_NUM_TABLE_CONSTRUCTION]) {

    // Given an input stream of query vectors, broadcase it to all 
    //   distance table construction PEs

    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int d = 0; d < D; d++) {
#pragma HLS pipeline II=1
            float reg = s_query_vectors.read(); 
            for (int s = 0; s < PE_NUM_TABLE_CONSTRUCTION; s++) {
#pragma HLS UNROLL
                s_query_vectors_PE[s].write(reg);
            }
        }
    }
}


template<const int query_num>
void center_vectors_dispatcher(
    hls::stream<float>& s_center_vectors,
    hls::stream<float> (&s_center_vectors_PE)[PE_NUM_TABLE_CONSTRUCTION]) {

    // Given an input stream of center vectors, interleave it to all 
    //   distance table construction PEs, 
    //   e.g., vector 0~7 -> PE0, 8~15 -> PE1, etc.
    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int s = 0; s < PE_NUM_TABLE_CONSTRUCTION; s++) {

            for (int n = 0; n < NPROBE_PER_TABLE_CONSTRUCTION_PE * D; n++) {
#pragma HLS pipeline II=1
                s_center_vectors_PE[s].write(s_center_vectors.read());
            }
        }
    }
}

void broadcast_PQ_quantizer(
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

template<const int query_num, const int nprobe_per_PE>
void lookup_table_construction_wrapper(
    hls::stream<float> (&s_PQ_quantizer_init)[PE_NUM_TABLE_CONSTRUCTION],
    hls::stream<float> (&s_center_vectors_PE)[PE_NUM_TABLE_CONSTRUCTION],
    hls::stream<float> (&s_query_vectors_PE)[PE_NUM_TABLE_CONSTRUCTION],
    hls::stream<result_t> (&s_lookup_table_PE)[PE_NUM_TABLE_CONSTRUCTION]) {
#pragma HLS inline

    for (int s = 0; s < PE_NUM_TABLE_CONSTRUCTION; s++) {
#pragma HLS UNROLL
        lookup_table_construction_PE<QUERY_NUM, NPROBE_PER_TABLE_CONSTRUCTION_PE>(
            s_PQ_quantizer_init[s], s_center_vectors_PE[s], 
            s_query_vectors_PE[s], s_lookup_table_PE[s]);
    }
}

template<const int query_num, const int nprobe_per_PE>
void lookup_table_construction_PE(
    hls::stream<float>& s_PQ_quantizer_init,
    hls::stream<float>& s_center_vectors_PE,
    hls::stream<float>& s_query_vectors_PE,
    hls::stream<result_t>& s_lookup_table_PE) {

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
            query_vector_local[d] = s_query_vectors_PE.read();
        }

        for (int nprobe_id = 0; nprobe_id < nprobe_per_PE; nprobe_id++) {

            // load center vector
            residual_center_vectors:
            for (int d = 0; d < D; d++) {
#pragma HLS pipeline II=1
                center_vector_local[d] = s_center_vectors_PE.read();
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

                s_lookup_table_PE.write(lookup_table_row);
            }
        }
    }
}

template<const int query_num, const int nprobe_per_PE>
void gather_lookup_table(
    hls::stream<result_t> (&s_lookup_table_PE)[PE_NUM_TABLE_CONSTRUCTION],
    hls::stream<result_t> &s_lookup_table) {

    for (int query_id = 0; query_id < query_num; query_id++) {
        
        for (int s = 0; s < PE_NUM_TABLE_CONSTRUCTION; s++) {
            // each lookup table: K rows
            for (int t = 0; t < nprobe_per_PE * K; t++) {
#pragma HLS pipeline II=1
                s_lookup_table.write(s_lookup_table_PE[s].read());
            }
        }
    }
}

void write_result(
    hls::stream<result_t>& s_result, result_t* results_out) {
    
    for (int row = 0; row < QUERY_NUM * NPROBE * K; row++) {
        results_out[row] = s_result.read();
    }
}

