// This program:
//   1. stora all the cell centroids coordinates on-chip
//   2. given an input query, compute distance with those centroids
//   3. select the top nprobe centroids using sorting network / heap
//   4. access the cell codebooks stored in HBM, construct distance table
#include <stdio.h>
#include "vadd.hpp"
#include "sort_reduction_64_to_16_with_vecID.hpp"
#include "priority_queue_with_vecID.hpp"


void vadd(  
    const t_axi* HBM_in0, const t_axi* HBM_in1, 
    const t_axi* HBM_in2, const t_axi* HBM_in3, 
    const t_axi* HBM_in4, const t_axi* HBM_in5, 
    const t_axi* HBM_in6, const t_axi* HBM_in7, 
    const t_axi* HBM_in8, const t_axi* HBM_in9, 
    const t_axi* HBM_in10, const t_axi* HBM_in11, 
    const t_axi* HBM_in12, const t_axi* HBM_in13, 
    const t_axi* HBM_in14, const t_axi* HBM_in15, 
    const t_axi* HBM_in16, const t_axi* HBM_in17, 
    const t_axi* HBM_in18, const t_axi* HBM_in19, 
    const t_axi* HBM_in20, 
    // HBM_in21 assigned for HBM_info_start_addr_and_scanned_entries_every_cell
    const int* HBM_info_start_addr_and_scanned_entries_every_cell, 
    // const t_axi* HBM_in22, const t_axi* HBM_in23, 
    // const t_axi* HBM_in24, const t_axi* HBM_in25, 
    // const t_axi* HBM_in26, const t_axi* HBM_in27, 
    // const t_axi* HBM_in28, const t_axi* HBM_in29, 
    // const t_axi* HBM_in30, const t_axi* HBM_in31, 
    // const t_axi* table_DDR0, const t_axi* table_DDR1, 
    result_t* out_PLRAM
    )
{
#pragma HLS INTERFACE m_axi port=HBM_in0  offset=slave bundle=gmem0
#pragma HLS INTERFACE m_axi port=HBM_in1  offset=slave bundle=gmem1
#pragma HLS INTERFACE m_axi port=HBM_in2  offset=slave bundle=gmem2
#pragma HLS INTERFACE m_axi port=HBM_in3  offset=slave bundle=gmem3
#pragma HLS INTERFACE m_axi port=HBM_in4  offset=slave bundle=gmem4
#pragma HLS INTERFACE m_axi port=HBM_in5  offset=slave bundle=gmem5
#pragma HLS INTERFACE m_axi port=HBM_in6  offset=slave bundle=gmem6
#pragma HLS INTERFACE m_axi port=HBM_in7  offset=slave bundle=gmem7
#pragma HLS INTERFACE m_axi port=HBM_in8  offset=slave bundle=gmem8
#pragma HLS INTERFACE m_axi port=HBM_in9  offset=slave bundle=gmem9
#pragma HLS INTERFACE m_axi port=HBM_in10  offset=slave bundle=gmem10
#pragma HLS INTERFACE m_axi port=HBM_in11  offset=slave bundle=gmem11
#pragma HLS INTERFACE m_axi port=HBM_in12  offset=slave bundle=gmem12
#pragma HLS INTERFACE m_axi port=HBM_in13  offset=slave bundle=gmem13
#pragma HLS INTERFACE m_axi port=HBM_in14  offset=slave bundle=gmem14
#pragma HLS INTERFACE m_axi port=HBM_in15  offset=slave bundle=gmem15
#pragma HLS INTERFACE m_axi port=HBM_in16  offset=slave bundle=gmem16
#pragma HLS INTERFACE m_axi port=HBM_in17  offset=slave bundle=gmem17
#pragma HLS INTERFACE m_axi port=HBM_in18  offset=slave bundle=gmem18
#pragma HLS INTERFACE m_axi port=HBM_in19  offset=slave bundle=gmem19
#pragma HLS INTERFACE m_axi port=HBM_in20  offset=slave bundle=gmem20
#pragma HLS INTERFACE m_axi port=HBM_info_start_addr_and_scanned_entries_every_cell  offset=slave bundle=gmem21
// #pragma HLS INTERFACE m_axi port=HBM_in22  offset=slave bundle=gmem22
// #pragma HLS INTERFACE m_axi port=HBM_in23  offset=slave bundle=gmem23
// #pragma HLS INTERFACE m_axi port=HBM_in24  offset=slave bundle=gmem24
// #pragma HLS INTERFACE m_axi port=HBM_in25  offset=slave bundle=gmem25
// #pragma HLS INTERFACE m_axi port=HBM_in26  offset=slave bundle=gmem26
// #pragma HLS INTERFACE m_axi port=HBM_in27  offset=slave bundle=gmem27
// #pragma HLS INTERFACE m_axi port=HBM_in28  offset=slave bundle=gmem28
// #pragma HLS INTERFACE m_axi port=HBM_in29  offset=slave bundle=gmem29
// #pragma HLS INTERFACE m_axi port=HBM_in30  offset=slave bundle=gmem30
// #pragma HLS INTERFACE m_axi port=HBM_in31  offset=slave bundle=gmem31

// #pragma HLS INTERFACE m_axi port=table_DDR0  offset=slave bundle=gmem32
// #pragma HLS INTERFACE m_axi port=table_DDR1  offset=slave bundle=gmem33

// PLRAM
#pragma HLS INTERFACE m_axi port=out_PLRAM offset=slave bundle=gmem34

#pragma HLS INTERFACE s_axilite port=HBM_in0  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in1  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in2  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in3  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in4  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in5  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in6  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in7  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in8  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in9  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in10  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in11  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in12  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in13  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in14  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in15  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in16  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in17  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in18  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in19  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_in20  bundle=control
#pragma HLS INTERFACE s_axilite port=HBM_info_start_addr_and_scanned_entries_every_cell  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in22  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in23  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in24  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in25  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in26  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in27  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in28  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in29  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in30  bundle=control
// #pragma HLS INTERFACE s_axilite port=HBM_in31  bundle=control

// #pragma HLS INTERFACE s_axilite port=table_DDR0  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_DDR1  bundle=control

#pragma HLS INTERFACE s_axilite port=out_PLRAM bundle=control

#pragma HLS INTERFACE s_axilite port=return bundle=control
    
#pragma HLS dataflow

    ////////////// Data Streams Starts ///////////////

    // each 512 bit can store 3 set of (vecID, PQ code)
    hls::stream<single_PQ> s_single_PQ[3 * HBM_CHANNEL_NUM];
#pragma HLS stream variable=s_single_PQ depth=8
#pragma HLS array_partition variable=s_single_PQ complete
#pragma HLS RESOURCE variable=s_single_PQ core=FIFO_SRL

    hls::stream<distance_LUT_PQ16_t> s_distance_LUT;
#pragma HLS stream variable=s_distance_LUT depth=8
#pragma HLS RESOURCE variable=s_distance_LUT core=FIFO_SRL

    hls::stream<int> s_last_valid_channel;
#pragma HLS stream variable=s_last_valid_channel depth=8
#pragma HLS RESOURCE variable=s_last_valid_channel core=FIFO_SRL

    // 64 streams = 21 channels * 3 + 1 dummy
    hls::stream<single_PQ_result> s_single_PQ_result[4][16];
#pragma HLS stream variable=s_single_PQ_result depth=8
#pragma HLS array_partition variable=s_single_PQ_result complete
#pragma HLS RESOURCE variable=s_single_PQ_result core=FIFO_SRL

    ////////////// Data Streams Ends ///////////////
    
    dummy_single_PQ_sender<QUERY_NUM, NPROBE, SCAN_PER_NPROBE>(s_single_PQ); 

    dummy_distance_LUT_sender<QUERY_NUM, NPROBE>(s_distance_LUT);

    dummy_last_valid_channel_sender<QUERY_NUM, NPROBE>(s_last_valid_channel);

    PQ_lookup_computation_wrapper<QUERY_NUM, NPROBE, SCAN_PER_NPROBE>(
        s_single_PQ, 
        s_distance_LUT,
        s_last_valid_channel,
        s_single_PQ_result);

    consume_and_write_result<QUERY_NUM, NPROBE, SCAN_PER_NPROBE>(
        s_single_PQ_result,  out_PLRAM);
}


template<const int query_num, const int nprobe, const int scan_per_nprobe> 
void dummy_single_PQ_sender(
    hls::stream<single_PQ> (&s_single_PQ)[3 * HBM_CHANNEL_NUM]) {

    single_PQ dummy_single_PQ;

    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int nprobe_id = 0; nprobe_id < nprobe; nprobe_id++) {

            for (int entry_id = 0; entry_id < scan_per_nprobe; entry_id++) {

                for (int s = 0; s < 3 * HBM_CHANNEL_NUM; s++) {
#pragma HLS UNROLL
                    s_single_PQ[s].write(dummy_single_PQ);
                }
            }
        }
    }
}

template<const int query_num, const int nprobe> 
void dummy_last_valid_channel_sender(
    hls::stream<int> &s_last_valid_channel) {

    int last_valid_channel = 32;
    
    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int nprobe_id = 0; nprobe_id < nprobe; nprobe_id++) {
            
            s_last_valid_channel.write(last_valid_channel);
        }
    }
}

template<const int query_num, const int nprobe>
void dummy_distance_LUT_sender(
    hls::stream<distance_LUT_PQ16_t>& s_distance_LUT) {

    distance_LUT_PQ16_t dist_row;

    dist_row.dist_0 = 0; 
    dist_row.dist_1 = 1; 
    dist_row.dist_2 = 2;
    dist_row.dist_3 = 3; 
    dist_row.dist_4 = 4; 
    dist_row.dist_5 = 5; 
    dist_row.dist_6 = 6; 
    dist_row.dist_7 = 7; 
    dist_row.dist_8 = 8; 
    dist_row.dist_9 = 9; 
    dist_row.dist_10 = 10; 
    dist_row.dist_11 = 11; 
    dist_row.dist_12 = 12; 
    dist_row.dist_13 = 13; 
    dist_row.dist_14 = 14; 
    dist_row.dist_15 = 15;

    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int nprobe_id = 0; nprobe_id < nprobe; nprobe_id++) {

            for (int row_id = 0; row_id < K; row_id++) {
#pragma HLS pipeline II=1
                s_distance_LUT.write(dist_row);
            }

        }
    }
    
}

template<const int query_num, const int nprobe, const int scan_per_nprobe>
void PQ_lookup_computation_wrapper(
    hls::stream<single_PQ> (&s_single_PQ)[3 * HBM_CHANNEL_NUM], 
    hls::stream<distance_LUT_PQ16_t>& s_distance_LUT,
    hls::stream<int>& s_last_valid_channel, 
    hls::stream<single_PQ_result> (&s_single_PQ_result)[4][16]) {

    single_PQ_result out_dummy;
    out_dummy.vec_ID = -1;
    out_dummy.dist = LARGE_NUM;

    // each BRAM (on the 3rd dimension) stores 2 tables, which can be looked up concurrently by 2 ports
    // distance_LUT[x][y][z]
    //   x -> per PE, corresponding to the number of input / output stream, which is 63 here
    //   y -> for each PE, use 8 BRAM slices to store a distance LUT
    //     distance_LUT[x][0][all] -> LUT 0, 8
    //     distance_LUT[x][1][all] -> LUT 1, 9
    //   z -> the entries within a single BRAM slice
    float distance_LUT[3 * HBM_CHANNEL_NUM][8][512];
#pragma HLS array_partition variable=distance_LUT dim=1
#pragma HLS array_partition variable=distance_LUT dim=2
#pragma HLS resource variable=distance_LUT core=RAM_2P_BRAM

    single_PQ PQ_code[3 * HBM_CHANNEL_NUM];
#pragma HLS array_partition variable=PQ_code complete
    single_PQ_result out[3 * HBM_CHANNEL_NUM]; 
#pragma HLS array_partition variable=out complete

    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int nprobe_id = 0; nprobe_id < nprobe; nprobe_id++) {

            int last_valid_channel = s_last_valid_channel.read();

            ///////// Init Distance LUT //////////
            for (int row_id = 0; row_id < K; row_id++) {
#pragma HLS pipeline II=1
                distance_LUT_PQ16_t dist_row = s_distance_LUT.read();
                
                for (int s = 0; s < 3 * HBM_CHANNEL_NUM; s++) {
#pragma HLS UNROLL
                    // col 0 ~ 7
                    distance_LUT[s][0][row_id] = dist_row.dist_0; 
                    distance_LUT[s][1][row_id] = dist_row.dist_1; 
                    distance_LUT[s][2][row_id] = dist_row.dist_2;
                    distance_LUT[s][3][row_id] = dist_row.dist_3; 
                    distance_LUT[s][4][row_id] = dist_row.dist_4; 
                    distance_LUT[s][5][row_id] = dist_row.dist_5; 
                    distance_LUT[s][6][row_id] = dist_row.dist_6; 
                    distance_LUT[s][7][row_id] = dist_row.dist_7; 

                    // col 8 ~ 15
                    distance_LUT[s][0][row_id + 256] = dist_row.dist_8; 
                    distance_LUT[s][1][row_id + 256] = dist_row.dist_9; 
                    distance_LUT[s][2][row_id + 256] = dist_row.dist_10; 
                    distance_LUT[s][3][row_id + 256] = dist_row.dist_11; 
                    distance_LUT[s][4][row_id + 256] = dist_row.dist_12; 
                    distance_LUT[s][5][row_id + 256] = dist_row.dist_13; 
                    distance_LUT[s][6][row_id + 256] = dist_row.dist_14; 
                    distance_LUT[s][7][row_id + 256] = dist_row.dist_15;
                }
            }


            ///////// Compute & Write //////////
            for (int entry_id = 0; entry_id < scan_per_nprobe; entry_id++) {
#pragma HLS pipeline II=1


                for (int s = 0; s < 3 * HBM_CHANNEL_NUM; s++) {
#pragma HLS UNROLL
                    PQ_code[s] = s_single_PQ[s].read();
                    out[s].vec_ID = PQ_code[s].vec_ID;
                    out[s].dist = 
                        distance_LUT[s][0][PQ_code[s].PQ_code[0]] + 
                        distance_LUT[s][1][PQ_code[s].PQ_code[1]] + 
                        distance_LUT[s][2][PQ_code[s].PQ_code[2]] + 
                        distance_LUT[s][3][PQ_code[s].PQ_code[3]] + 
                        distance_LUT[s][4][PQ_code[s].PQ_code[4]] + 
                        distance_LUT[s][5][PQ_code[s].PQ_code[5]] + 
                        distance_LUT[s][6][PQ_code[s].PQ_code[6]] + 
                        distance_LUT[s][7][PQ_code[s].PQ_code[7]] + 
                        distance_LUT[s][0][((int)PQ_code[s].PQ_code[8]) + 256] + 
                        distance_LUT[s][1][((int)PQ_code[s].PQ_code[9]) + 256] + 
                        distance_LUT[s][2][((int)PQ_code[s].PQ_code[10]) + 256] + 
                        distance_LUT[s][3][((int)PQ_code[s].PQ_code[11]) + 256] + 
                        distance_LUT[s][4][((int)PQ_code[s].PQ_code[12]) + 256] + 
                        distance_LUT[s][5][((int)PQ_code[s].PQ_code[13]) + 256] + 
                        distance_LUT[s][6][((int)PQ_code[s].PQ_code[14]) + 256] + 
                        distance_LUT[s][7][((int)PQ_code[s].PQ_code[15]) + 256];
                }

                // for padded element, replace its distance by large number
                if (entry_id == (scan_per_nprobe - 1)) {
                    for (int s = 0; s < 3 * HBM_CHANNEL_NUM; s++) {
#pragma HLS UNROLL
                        if (s > last_valid_channel) {
                            out[s].vec_ID = -1;
                            out[s].dist = LARGE_NUM;
                        }
                    }
                }

                for (int s1 = 0; s1 < 3; s1++) {
#pragma HLS UNROLL
                    for (int s2 = 0; s2 < 16; s2++) {
#pragma HLS UNROLL
                        s_single_PQ_result[s1][s2].write(out[s1 * 16 + s2]);
                    }
                }
                 
                for (int s2 = 0; s2 < 15; s2++) {
#pragma HLS UNROLL
                    s_single_PQ_result[3][s2].write(out[48 + s2]);
                }

                s_single_PQ_result[3][15].write(out_dummy);
            }
        }
    }
}

////////////////////  Priority Queues for PQ results Ends  ////////////////////


// Checked
template<const int query_num, const int nprobe, const int scan_per_nprobe>
void consume_and_write_result(
    hls::stream<single_PQ_result> (&output_stream)[4][16],
    ap_uint<64>* output) {

    single_PQ_result output_array[4][16];
#pragma HLS array_partition variable=output_array complete

    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int nprobe_id = 0; nprobe_id < nprobe; nprobe_id++) {

            for (int entry_id = 0; entry_id < scan_per_nprobe; entry_id++) {
#pragma HLS pipeline II=1
                for (int s1 = 0; s1 < 4; s1++) {
#pragma HLS UNROLL
                    for (int s2 = 0; s2 < 16; s2++) {
#pragma HLS UNROLL
                        output_array[s1][s2] = output_stream[s1][s2].read();
                    }
                }
            }
        }
    }

    for (int s1 = 0; s1 < 4; s1++) {
        for (int s2 = 0; s2 < 16; s2++) {
            ap_uint<64> reg;
            int vec_ID = output_array[s1][s2].vec_ID;
            float dist = output_array[s1][s2].dist;
            reg.range(31, 0) = *((ap_uint<32>*) (&vec_ID));
            reg.range(63, 32) = *((ap_uint<32>*) (&dist));
            output[s1 * 16 + s2] = reg;
        }
    }
}
