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

    ////////////// Control Signals Starts ///////////////

    hls::stream<int> s_scanned_cell_id; // Input to the Controller

    hls::stream<int> s_scanned_entries_every_cell_Load_unit[HBM_CHANNEL_NUM];
#pragma HLS stream variable=s_scanned_entries_every_cell_Load_unit depth=2
#pragma HLS array_partition variable=s_scanned_entries_every_cell_Load_unit dim=1 complete
#pragma HLS RESOURCE variable=s_scanned_entries_every_cell_Load_unit core=FIFO_SRL

    hls::stream<int> s_scanned_entries_every_cell_Split_unit[HBM_CHANNEL_NUM];
#pragma HLS stream variable=s_scanned_entries_every_cell_Split_unit depth=2
#pragma HLS array_partition variable=s_scanned_entries_every_cell_Split_unit dim=1 complete
#pragma HLS RESOURCE variable=s_scanned_entries_every_cell_Split_unit core=FIFO_SRL

    hls::stream<int> s_scanned_entries_every_cell_PQ_lookup_computation[3 * HBM_CHANNEL_NUM];
#pragma HLS stream variable=s_scanned_entries_every_cell_PQ_lookup_computation depth=2
#pragma HLS array_partition variable=s_scanned_entries_every_cell_PQ_lookup_computation dim=1 complete
#pragma HLS RESOURCE variable=s_scanned_entries_every_cell_PQ_lookup_computation core=FIFO_SRL

    hls::stream<int> s_scanned_entries_every_cell_Dummy;
#pragma HLS stream variable=s_scanned_entries_every_cell_Dummy depth=2
#pragma HLS RESOURCE variable=s_scanned_entries_every_cell_Dummy core=FIFO_SRL

    hls::stream<int> s_last_element_valid_PQ_lookup_computation[3 * HBM_CHANNEL_NUM];
#pragma HLS stream variable=s_last_element_valid_PQ_lookup_computation depth=2
#pragma HLS array_partition variable=s_last_element_valid_PQ_lookup_computation dim=1 complete
#pragma HLS RESOURCE variable=s_last_element_valid_PQ_lookup_computation core=FIFO_SRL

    hls::stream<int> s_start_addr_every_cell[HBM_CHANNEL_NUM];
#pragma HLS stream variable=s_start_addr_every_cell depth=2
#pragma HLS array_partition variable=s_start_addr_every_cell dim=1 complete
#pragma HLS RESOURCE variable=s_start_addr_every_cell core=FIFO_SRL

    hls::stream<int> s_scanned_entries_every_cell_Result;
#pragma HLS stream variable=s_scanned_entries_every_cell_Result depth=2
#pragma HLS RESOURCE variable=s_scanned_entries_every_cell_Result core=FIFO_SRL

    ////////////// Control Signals Ends ///////////////

    ////////////// Data Streams Starts ///////////////

    // each 512 bit can store 3 set of (vecID, PQ code)
    hls::stream<single_PQ> s_single_PQ[3 * HBM_CHANNEL_NUM];
#pragma HLS stream variable=s_single_PQ depth=4
#pragma HLS array_partition variable=s_single_PQ dim=1 complete
#pragma HLS RESOURCE variable=s_single_PQ core=FIFO_SRL

    // 64 streams = 21 channels * 3 + 1 dummy
    hls::stream<single_PQ_result> s_single_PQ_result[4][16];
#pragma HLS stream variable=s_single_PQ_result depth=4
#pragma HLS array_partition variable=s_single_PQ_result dim=1 complete
#pragma HLS RESOURCE variable=s_single_PQ_result core=FIFO_SRL

    hls::stream<single_PQ_result> s_sorted_PQ_result[16];
#pragma HLS array_partition variable=s_sorted_PQ_result complete

    hls::stream<single_PQ_result> s_output; // the top 10 numbers

    ////////////// Data Streams Ends ///////////////

    generate_scanned_cell_id<QUERY_NUM, NPROBE>(s_scanned_cell_id);

    scan_controller<QUERY_NUM, NLIST, NPROBE>(
        HBM_info_start_addr_and_scanned_entries_every_cell,
        s_scanned_cell_id, s_start_addr_every_cell,
        s_scanned_entries_every_cell_Load_unit, 
        s_scanned_entries_every_cell_Split_unit,
        s_scanned_entries_every_cell_PQ_lookup_computation,
        s_scanned_entries_every_cell_Dummy,
        s_last_element_valid_PQ_lookup_computation, 
        s_scanned_entries_every_cell_Result);

    load_and_split_PQ_codes_wrapper<QUERY_NUM, NPROBE>(
        HBM_in0, HBM_in1, HBM_in2, HBM_in3, HBM_in4, HBM_in5, HBM_in6, HBM_in7, 
        HBM_in8, HBM_in9, HBM_in10, HBM_in11, HBM_in12, HBM_in13, HBM_in14,
        HBM_in15, HBM_in16, HBM_in17, HBM_in18, HBM_in19, HBM_in20, 
        s_start_addr_every_cell,
        s_scanned_entries_every_cell_Load_unit,
        s_scanned_entries_every_cell_Split_unit,
        s_single_PQ);

    PQ_lookup_computation_wrapper<QUERY_NUM, NPROBE>(
        s_single_PQ, 
        s_scanned_entries_every_cell_Dummy,
        s_scanned_entries_every_cell_PQ_lookup_computation,
        s_last_element_valid_PQ_lookup_computation,
        s_single_PQ_result);

    consume_and_write_result<QUERY_NUM>(
        s_single_PQ_result, s_scanned_entries_every_cell_Result, out_PLRAM);
}

// Checked
template<const int query_num, const int nprobe>
void generate_scanned_cell_id(hls::stream<int>& s_scanned_cell_id) {

    for (int query_id = 0; query_id < query_num; query_id++) {
        for (int nprobe_id = 0; nprobe_id < nprobe; nprobe_id++) {
            s_scanned_cell_id.write(nprobe_id);
        }
    }
}

// Checked
template<const int query_num, const int nlist, const int nprobe>
void scan_controller(
    const int* HBM_info_start_addr_and_scanned_entries_every_cell,
    hls::stream<int>& s_scanned_cell_id_Input, // from the cluster selection unit
    hls::stream<int> (&s_start_addr_every_cell)[HBM_CHANNEL_NUM],
    hls::stream<int> (&s_scanned_entries_every_cell_Load_unit)[HBM_CHANNEL_NUM],
    hls::stream<int> (&s_scanned_entries_every_cell_Split_unit)[HBM_CHANNEL_NUM],
    hls::stream<int> (&s_scanned_entries_every_cell_PQ_lookup_computation)[3 * HBM_CHANNEL_NUM],
    hls::stream<int>& s_scanned_entries_every_cell_Dummy,
    hls::stream<int> (&s_last_element_valid_PQ_lookup_computation)[3 * HBM_CHANNEL_NUM],
    hls::stream<int>& s_scanned_entries_per_query_Result) {
   
    // s_last_element_valid_PQ_lookup_computation -> last element of a channel can 
    //   be padded or not, 1 means valid (not padded), 0 means padded, should be discarded
    // last_valid_channel_LUT -> for each Voronoi cell, the last line in HBM may contain 
    //   padding, this is for storing where the last non-padded element id, ranges from 0~62
    //   e.g., all 63 elements store valid element, then last_valid_channel_LUT[x] = 62
    //   e.g., only the first channels's first element is valid, then last_valid_channel_LUT[x] = 0 
    int start_addr_LUT[nlist];
    int scanned_entries_every_cell_LUT[nlist];
    int last_valid_channel_LUT[nlist];  
#pragma HLS resource variable=start_addr_LUT core=RAM_2P_URAM
#pragma HLS resource variable=scanned_entries_every_cell_LUT core=RAM_2P_URAM
#pragma HLS resource variable=last_valid_channel_LUT core=RAM_2P_URAM

    // init LUTs
    for (int i = 0; i < nlist; i++) {
#pragma HLS pipeline II=1
        start_addr_LUT[i] = HBM_info_start_addr_and_scanned_entries_every_cell[i];
    }
    for (int i = 0; i < nlist; i++) {
#pragma HLS pipeline II=1
        scanned_entries_every_cell_LUT[i] = 
            HBM_info_start_addr_and_scanned_entries_every_cell[nlist + i];
    }
    // ---- Fixed ----
    for (int i = 0; i < nlist; i++) {
#pragma HLS pipeline II=1
        last_valid_channel_LUT[i] = 
            HBM_info_start_addr_and_scanned_entries_every_cell[2 * nlist + i];
    }

    // send control signals
    for (int query_id = 0; query_id < query_num; query_id++) {
        
        int accumulated_scanned_entries_per_query = 0;

        for (int nprobe_id = 0; nprobe_id < nprobe; nprobe_id++) {

            int cell_id = s_scanned_cell_id_Input.read();

            int start_addr = start_addr_LUT[cell_id];
            int scanned_entries_every_cell = scanned_entries_every_cell_LUT[cell_id];
            int last_valid_channel = last_valid_channel_LUT[cell_id];

            // TODO: check if the needed iteration is equal to this
            accumulated_scanned_entries_per_query += scanned_entries_every_cell;

            for (int s = 0; s < HBM_CHANNEL_NUM; s++) {
#pragma HLS UNROLL
                s_start_addr_every_cell[s].write(start_addr);
                s_scanned_entries_every_cell_Load_unit[s].write(scanned_entries_every_cell);
                s_scanned_entries_every_cell_Split_unit[s].write(scanned_entries_every_cell);
            }
            s_scanned_entries_every_cell_Dummy.write(scanned_entries_every_cell);

            for (int s = 0; s < 3 * HBM_CHANNEL_NUM; s++) {
#pragma HLS UNROLL
                if (s <= last_valid_channel) {
                    s_last_element_valid_PQ_lookup_computation[s].write(1); // valid, not padding
                }
                else {
                    s_last_element_valid_PQ_lookup_computation[s].write(0); // invalid, padded element
                }
                s_scanned_entries_every_cell_PQ_lookup_computation[s].write(scanned_entries_every_cell);
            }
        }

        s_scanned_entries_per_query_Result.write(accumulated_scanned_entries_per_query);
    }
}

// Checked
template<const int query_num, const int nprobe>
void load_PQ_codes(
    const t_axi* src,
    hls::stream<int>& s_scanned_entries_every_cell,
    hls::stream<int>& s_start_addr_every_cell,
    hls::stream<t_axi>& s_raw_input) {

    // s_scanned_entries_every_cell -> 
    //   number of axi width of scanned PQ code per Voronoi cell, 
    //   e.g. AXI width = 512 -> 64 bytes = 20 byte * 3 = 3 PQ code
    //      need scan 299 PQ code ->  axi_num_per_scanned_cell = 100
    //   read number = query_num * nprobe

    for (int query_id = 0; query_id < query_num; query_id++) {
#pragma HLS loop_flatten

        for (int nprobe_id = 0; nprobe_id < nprobe; nprobe_id++) {

            int scanned_entries_every_cell = s_scanned_entries_every_cell.read();
            int start_addr = s_start_addr_every_cell.read();

            for (int entry_id = 0; entry_id < scanned_entries_every_cell; entry_id++) {
#pragma HLS pipeline II=1
                s_raw_input.write(src[start_addr + entry_id]);
            }
        }
    }
}

// No need to check, verified by the fixed query run
three_PQ_codes ap_uint512_to_three_PQ_codes(ap_uint<512> in) {
// AXI datawidth of 480 is banned, must use 2^n, e.g., 512
#pragma HLS pipeline
#pragma HLS inline off
#pragma HLS interface port=return register
    three_PQ_codes out;

    ap_uint<32> tmp_int0 = in.range(31 + 0, 0 + 0);
    out.PQ_0.vec_ID = *((int*)(&tmp_int0));
    for (int i = 0; i < 16; i++) {
#pragma HLS UNROLL
        ap_uint<8> tmp_char = in.range(0 + 7 + 32 + i * 8, 0 + 32 + i * 8);
        out.PQ_0.PQ_code[i] = *((unsigned char*)(&tmp_char));
    }
    ap_uint<32> tmp_int1 = in.range(31 + 160, 0 + 160);
    out.PQ_1.vec_ID = *((int*)(&tmp_int1));
    for (int i = 0; i < 16; i++) {
#pragma HLS UNROLL
        ap_uint<8> tmp_char = in.range(160 + 7 + 32 + i * 8, 160 + 32 + i * 8);
        out.PQ_1.PQ_code[i] = *((unsigned char*)(&tmp_char));
    }
    ap_uint<32> tmp_int2 = in.range(31 + 320, 0 + 320);
    out.PQ_2.vec_ID = *((int*)(&tmp_int2));
    for (int i = 0; i < 16; i++) {
#pragma HLS UNROLL
        ap_uint<8> tmp_char = in.range(320 + 7 + 32 + i * 8, 320 + 32 + i * 8);
        out.PQ_2.PQ_code[i] = *((unsigned char*)(&tmp_char));
    }

    return out;
}

// Checked
template<const int query_num, const int nprobe>
void type_conversion_and_split(
    hls::stream<int>& s_scanned_entries_every_cell,
    hls::stream<t_axi>& s_raw_input,
    hls::stream<single_PQ>& s_single_PQ_0,
    hls::stream<single_PQ>& s_single_PQ_1,
    hls::stream<single_PQ>& s_single_PQ_2) {


    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int nprobe_id = 0; nprobe_id < nprobe; nprobe_id++) {

            int scanned_entries_every_cell = s_scanned_entries_every_cell.read();
            
            for (int entry_id = 0; entry_id < scanned_entries_every_cell; entry_id++) {
#pragma HLS pipeline II=1
                t_axi in = s_raw_input.read();
                three_PQ_codes out = ap_uint512_to_three_PQ_codes(in);
                s_single_PQ_0.write(out.PQ_0);
                s_single_PQ_1.write(out.PQ_1);
                s_single_PQ_2.write(out.PQ_2);
            }
        }
    }
}

// Checked
template<const int query_num, const int nprobe>
void load_and_split_PQ_codes(
    const t_axi* HBM_in, // HBM for PQ code + vecID storage
    hls::stream<int>& s_start_addr_every_cell,
    hls::stream<int>& s_scanned_entries_every_cell_Load_unit,
    hls::stream<int>& s_scanned_entries_every_cell_Split_unit,
    hls::stream<single_PQ>& s_single_PQ_0,
    hls::stream<single_PQ>& s_single_PQ_1,
    hls::stream<single_PQ>& s_single_PQ_2) {

#pragma HLS dataflow

    hls::stream<t_axi> s_raw_input; // raw AXI width input

    load_PQ_codes<query_num, nprobe>(
        HBM_in, s_scanned_entries_every_cell_Load_unit, s_start_addr_every_cell, s_raw_input);
    type_conversion_and_split<query_num, nprobe>(
        s_scanned_entries_every_cell_Split_unit,
        s_raw_input, s_single_PQ_0, s_single_PQ_1, s_single_PQ_2);
}

// Checked
template<const int query_num, const int nprobe>
void load_and_split_PQ_codes_wrapper(
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
    hls::stream<int> (&s_start_addr_every_cell)[HBM_CHANNEL_NUM],
    hls::stream<int> (&s_scanned_entries_every_cell_Load_unit)[HBM_CHANNEL_NUM],
    hls::stream<int> (&s_scanned_entries_every_cell_Split_unit)[HBM_CHANNEL_NUM],
    hls::stream<single_PQ> (&s_single_PQ)[3 * HBM_CHANNEL_NUM]) {
#pragma HLS inline

    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in0, s_start_addr_every_cell[0], 
        s_scanned_entries_every_cell_Load_unit[0], s_scanned_entries_every_cell_Split_unit[0],
        s_single_PQ[0 * 3 + 0], s_single_PQ[0 * 3 + 1], s_single_PQ[0 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in1, s_start_addr_every_cell[1], 
        s_scanned_entries_every_cell_Load_unit[1], s_scanned_entries_every_cell_Split_unit[1],
        s_single_PQ[1 * 3 + 0], s_single_PQ[1 * 3 + 1], s_single_PQ[1 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in2, s_start_addr_every_cell[2], 
        s_scanned_entries_every_cell_Load_unit[2], s_scanned_entries_every_cell_Split_unit[2],
        s_single_PQ[2 * 3 + 0], s_single_PQ[2 * 3 + 1], s_single_PQ[2 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in3, s_start_addr_every_cell[3], 
        s_scanned_entries_every_cell_Load_unit[3], s_scanned_entries_every_cell_Split_unit[3],
        s_single_PQ[3 * 3 + 0], s_single_PQ[3 * 3 + 1], s_single_PQ[3 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in4, s_start_addr_every_cell[4], 
        s_scanned_entries_every_cell_Load_unit[4], s_scanned_entries_every_cell_Split_unit[4],
        s_single_PQ[4 * 3 + 0], s_single_PQ[4 * 3 + 1], s_single_PQ[4 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in5, s_start_addr_every_cell[5], 
        s_scanned_entries_every_cell_Load_unit[5], s_scanned_entries_every_cell_Split_unit[5],
        s_single_PQ[5 * 3 + 0], s_single_PQ[5 * 3 + 1], s_single_PQ[5 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in6, s_start_addr_every_cell[6], 
        s_scanned_entries_every_cell_Load_unit[6], s_scanned_entries_every_cell_Split_unit[6],
        s_single_PQ[6 * 3 + 0], s_single_PQ[6 * 3 + 1], s_single_PQ[6 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in7, s_start_addr_every_cell[7], 
        s_scanned_entries_every_cell_Load_unit[7], s_scanned_entries_every_cell_Split_unit[7],
        s_single_PQ[7 * 3 + 0], s_single_PQ[7 * 3 + 1], s_single_PQ[7 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in8, s_start_addr_every_cell[8], 
        s_scanned_entries_every_cell_Load_unit[8], s_scanned_entries_every_cell_Split_unit[8],
        s_single_PQ[8 * 3 + 0], s_single_PQ[8 * 3 + 1], s_single_PQ[8 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in9, s_start_addr_every_cell[9], 
        s_scanned_entries_every_cell_Load_unit[9], s_scanned_entries_every_cell_Split_unit[9],
        s_single_PQ[9 * 3 + 0], s_single_PQ[9 * 3 + 1], s_single_PQ[9 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in10, s_start_addr_every_cell[10], 
        s_scanned_entries_every_cell_Load_unit[10], s_scanned_entries_every_cell_Split_unit[10],
        s_single_PQ[10 * 3 + 0], s_single_PQ[10 * 3 + 1], s_single_PQ[10 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in11, s_start_addr_every_cell[11], 
        s_scanned_entries_every_cell_Load_unit[11], s_scanned_entries_every_cell_Split_unit[11],
        s_single_PQ[11 * 3 + 0], s_single_PQ[11 * 3 + 1], s_single_PQ[11 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in12, s_start_addr_every_cell[12], 
        s_scanned_entries_every_cell_Load_unit[12], s_scanned_entries_every_cell_Split_unit[12],
        s_single_PQ[12 * 3 + 0], s_single_PQ[12 * 3 + 1], s_single_PQ[12 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in13, s_start_addr_every_cell[13], 
        s_scanned_entries_every_cell_Load_unit[13], s_scanned_entries_every_cell_Split_unit[13],
        s_single_PQ[13 * 3 + 0], s_single_PQ[13 * 3 + 1], s_single_PQ[13 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in14, s_start_addr_every_cell[14], 
        s_scanned_entries_every_cell_Load_unit[14], s_scanned_entries_every_cell_Split_unit[14],
        s_single_PQ[14 * 3 + 0], s_single_PQ[14 * 3 + 1], s_single_PQ[14 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in15, s_start_addr_every_cell[15], 
        s_scanned_entries_every_cell_Load_unit[15], s_scanned_entries_every_cell_Split_unit[15],
        s_single_PQ[15 * 3 + 0], s_single_PQ[15 * 3 + 1], s_single_PQ[15 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in16, s_start_addr_every_cell[16], 
        s_scanned_entries_every_cell_Load_unit[16], s_scanned_entries_every_cell_Split_unit[16],
        s_single_PQ[16 * 3 + 0], s_single_PQ[16 * 3 + 1], s_single_PQ[16 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in17, s_start_addr_every_cell[17], 
        s_scanned_entries_every_cell_Load_unit[17], s_scanned_entries_every_cell_Split_unit[17],
        s_single_PQ[17 * 3 + 0], s_single_PQ[17 * 3 + 1], s_single_PQ[17 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in18, s_start_addr_every_cell[18], 
        s_scanned_entries_every_cell_Load_unit[18], s_scanned_entries_every_cell_Split_unit[18],
        s_single_PQ[18 * 3 + 0], s_single_PQ[18 * 3 + 1], s_single_PQ[18 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in19, s_start_addr_every_cell[19], 
        s_scanned_entries_every_cell_Load_unit[19], s_scanned_entries_every_cell_Split_unit[19],
        s_single_PQ[19 * 3 + 0], s_single_PQ[19 * 3 + 1], s_single_PQ[19 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in20, s_start_addr_every_cell[20], 
        s_scanned_entries_every_cell_Load_unit[20], s_scanned_entries_every_cell_Split_unit[20],
        s_single_PQ[20 * 3 + 0], s_single_PQ[20 * 3 + 1], s_single_PQ[20 * 3 + 2]);
}

// No need to check
void init_distance_table_partition(float table[512], float bias) {
#pragma HLS inline
    for (int j = 0; j < 512; j++) {
#pragma HLS pipeline II=1
        table[j] = bias + j;
    }
}

// Checked 
template<const int query_num, const int nprobe>
void PQ_lookup_computation(
    hls::stream<single_PQ>& s_single_PQ, 
    hls::stream<int>& s_scanned_entries_every_cell_PQ_lookup_computation,
    hls::stream<int>& s_last_element_valid_PQ_lookup_computation, 
    hls::stream<single_PQ_result>& s_single_PQ_result) {

    // each BRAM stores 2 tables, which can be looked up concurrently by 2 ports
    float distance_lookup_table_local_0[512], distance_lookup_table_local_1[512], 
        distance_lookup_table_local_2[512], distance_lookup_table_local_3[512], 
        distance_lookup_table_local_4[512], distance_lookup_table_local_5[512], 
        distance_lookup_table_local_6[512], distance_lookup_table_local_7[512];
    
    init_distance_table_partition(distance_lookup_table_local_0, 0);
    init_distance_table_partition(distance_lookup_table_local_1, 1);
    init_distance_table_partition(distance_lookup_table_local_2, 2);
    init_distance_table_partition(distance_lookup_table_local_3, 3);
    init_distance_table_partition(distance_lookup_table_local_4, 4);
    init_distance_table_partition(distance_lookup_table_local_5, 5);
    init_distance_table_partition(distance_lookup_table_local_6, 6);
    init_distance_table_partition(distance_lookup_table_local_7, 7);

    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int nprobe_id = 0; nprobe_id < nprobe; nprobe_id++) {

            int scanned_entries_every_cell = 
                s_scanned_entries_every_cell_PQ_lookup_computation.read();
            int last_element_valid = 
                s_last_element_valid_PQ_lookup_computation.read();

            for (int entry_id = 0; entry_id < scanned_entries_every_cell; entry_id++) {
#pragma HLS pipeline II=1

                single_PQ PQ_local = s_single_PQ.read();

                unsigned char lookup_idx_0 = PQ_local.PQ_code[0];
                unsigned char lookup_idx_1 = PQ_local.PQ_code[1];
                unsigned char lookup_idx_2 = PQ_local.PQ_code[2];
                unsigned char lookup_idx_3 = PQ_local.PQ_code[3];
                unsigned char lookup_idx_4 = PQ_local.PQ_code[4];
                unsigned char lookup_idx_5 = PQ_local.PQ_code[5];
                unsigned char lookup_idx_6 = PQ_local.PQ_code[6];
                unsigned char lookup_idx_7 = PQ_local.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_8 = PQ_local.PQ_code[8];// + 256;
                unsigned char lookup_idx_9 = PQ_local.PQ_code[9];// + 256;
                unsigned char lookup_idx_10 = PQ_local.PQ_code[10];// + 256;
                unsigned char lookup_idx_11 = PQ_local.PQ_code[11];// + 256;
                unsigned char lookup_idx_12 = PQ_local.PQ_code[12];// + 256;
                unsigned char lookup_idx_13 = PQ_local.PQ_code[13];// + 256;
                unsigned char lookup_idx_14 = PQ_local.PQ_code[14];// + 256;
                unsigned char lookup_idx_15 = PQ_local.PQ_code[15];// + 256;

                single_PQ_result out; 
                out.vec_ID = PQ_local.vec_ID;
                out.dist = 
                    distance_lookup_table_local_0[lookup_idx_0] + distance_lookup_table_local_1[lookup_idx_1] + 
                    distance_lookup_table_local_2[lookup_idx_2] + distance_lookup_table_local_3[lookup_idx_3] + 
                    distance_lookup_table_local_4[lookup_idx_4] + distance_lookup_table_local_5[lookup_idx_5] + 
                    distance_lookup_table_local_6[lookup_idx_6] + distance_lookup_table_local_7[lookup_idx_7] + 

                    distance_lookup_table_local_0[((int)lookup_idx_8) + 256] + distance_lookup_table_local_1[((int)lookup_idx_9) + 256] + 
                    distance_lookup_table_local_2[((int)lookup_idx_10) + 256] + distance_lookup_table_local_3[((int)lookup_idx_11) + 256] + 
                    distance_lookup_table_local_4[((int)lookup_idx_12) + 256] + distance_lookup_table_local_5[((int)lookup_idx_13) + 256] + 
                    distance_lookup_table_local_6[((int)lookup_idx_14) + 256] + distance_lookup_table_local_7[((int)lookup_idx_15) + 256];

                // for padded element, replace its distance by large number
                if ((entry_id == (scanned_entries_every_cell - 1)) && (last_element_valid == 0)) {
                    out.vec_ID = -1;
                    out.dist = LARGE_NUM;
                }
                s_single_PQ_result.write(out);
            }
        }
    }
}

// Checked
template<const int query_num, const int nprobe>
void dummy_PQ_result_sender(
    hls::stream<int>& s_scanned_entries_every_cell_Dummy,
    hls::stream<single_PQ_result> &s_single_PQ_result) {

    single_PQ_result out; 
    out.vec_ID = -1;
    out.dist = LARGE_NUM;
    
    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int nprobe_id = 0; nprobe_id < nprobe; nprobe_id++) {

            int scanned_entries_every_cell = 
                s_scanned_entries_every_cell_Dummy.read();

            for (int entry_id = 0; entry_id < scanned_entries_every_cell; entry_id++) {
#pragma HLS pipeline II=1
                s_single_PQ_result.write(out);
            }
        }
    }
}

// Checked
template<const int query_num, const int nprobe>
void PQ_lookup_computation_wrapper(
    hls::stream<single_PQ> (&s_single_PQ)[3 * HBM_CHANNEL_NUM], 
    hls::stream<int>& s_scanned_entries_every_cell_Dummy,
    hls::stream<int> (&s_scanned_entries_every_cell_PQ_lookup_computation)[3 * HBM_CHANNEL_NUM], 
    hls::stream<int> (&s_last_element_valid_PQ_lookup_computation)[3 * HBM_CHANNEL_NUM], 
    hls::stream<single_PQ_result> (&s_single_PQ_result)[4][16]) {
#pragma HLS inline

    for (int i = 0; i < 3; i++) {
#pragma HLS UNROLL
        for (int j = 0; j < 16; j++) {
#pragma HLS UNROLL
            PQ_lookup_computation<query_num, nprobe>(
                s_single_PQ[i * 16 + j], 
                s_scanned_entries_every_cell_PQ_lookup_computation[i * 16 + j], 
                s_last_element_valid_PQ_lookup_computation[i * 16 + j], 
                s_single_PQ_result[i][j]);
        }
    }

    for (int j = 0; j < 15; j++) {
#pragma HLS UNROLL
        PQ_lookup_computation<query_num, nprobe>(
            s_single_PQ[48+ j], 
            s_scanned_entries_every_cell_PQ_lookup_computation[48 + j],
            s_last_element_valid_PQ_lookup_computation[48 + j], 
            s_single_PQ_result[3][j]);
    }

    dummy_PQ_result_sender<query_num, nprobe>(
        s_scanned_entries_every_cell_Dummy, s_single_PQ_result[3][15]);
}


////////////////////  Priority Queues for PQ results Starts  ////////////////////

// Checked
template<const int query_num>
void consume_and_write_result(
    hls::stream<single_PQ_result> (&output_stream)[4][16],
    hls::stream<int>& s_scanned_entries_every_cell,
    ap_uint<64>* output) {

    single_PQ_result output_array[4][16];
#pragma HLS array_partition variable=output_array complete

    for (int query_id = 0; query_id < query_num; query_id++) {

        int scanned_entries_every_cell = s_scanned_entries_every_cell.read();

        for (int entry_id = 0; entry_id < scanned_entries_every_cell; entry_id++) {
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
