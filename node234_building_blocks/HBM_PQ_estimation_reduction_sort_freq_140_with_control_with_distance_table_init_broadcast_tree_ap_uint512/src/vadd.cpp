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
#pragma HLS stream variable=s_scanned_cell_id depth=512
// #pragma HLS RESOURCE variable=s_scanned_cell_id core=FIFO_SRL

    hls::stream<int> s_scanned_entries_every_cell_Load_unit;
#pragma HLS stream variable=s_scanned_entries_every_cell_Load_unit depth=512
// #pragma HLS array_partition variable=s_scanned_entries_every_cell_Load_unit complete
// #pragma HLS RESOURCE variable=s_scanned_entries_every_cell_Load_unit core=FIFO_SRL

    hls::stream<int> s_scanned_entries_every_cell_Split_unit;
#pragma HLS stream variable=s_scanned_entries_every_cell_Split_unit depth=512
// #pragma HLS array_partition variable=s_scanned_entries_every_cell_Split_unit complete
// #pragma HLS RESOURCE variable=s_scanned_entries_every_cell_Split_unit core=FIFO_SRL

    hls::stream<int> s_scanned_entries_every_cell_PQ_lookup_computation;
#pragma HLS stream variable=s_scanned_entries_every_cell_PQ_lookup_computation depth=512
// #pragma HLS array_partition variable=s_scanned_entries_every_cell_PQ_lookup_computation complete
// #pragma HLS RESOURCE variable=s_scanned_entries_every_cell_PQ_lookup_computation core=FIFO_SRL

    hls::stream<int> s_last_valid_channel;
#pragma HLS stream variable=s_last_valid_channel depth=512
// #pragma HLS array_partition variable=s_last_valid_channel complete
// #pragma HLS RESOURCE variable=s_last_valid_channel core=FIFO_SRL

    hls::stream<int> s_start_addr_every_cell;
#pragma HLS stream variable=s_start_addr_every_cell depth=512
// #pragma HLS array_partition variable=s_start_addr_every_cell complete
// #pragma HLS RESOURCE variable=s_start_addr_every_cell core=FIFO_SRL

    hls::stream<int> s_scanned_entries_per_query_Sort_and_reduction;
#pragma HLS stream variable=s_scanned_entries_per_query_Sort_and_reduction depth=512
// #pragma HLS RESOURCE variable=s_scanned_entries_per_query_Sort_and_reduction core=FIFO_SRL

    hls::stream<int> s_scanned_entries_per_query_Priority_queue;
#pragma HLS stream variable=s_scanned_entries_per_query_Priority_queue depth=512
// #pragma HLS RESOURCE variable=s_scanned_entries_per_query_Priority_queue core=FIFO_SRL

    ////////////// Control Signals Ends ///////////////

    ////////////// Data Streams Starts ///////////////

    // each 512 bit can store 3 set of (vecID, PQ code)
    hls::stream<single_PQ> s_single_PQ[3 * HBM_CHANNEL_NUM];
#pragma HLS stream variable=s_single_PQ depth=8
#pragma HLS array_partition variable=s_single_PQ complete
#pragma HLS RESOURCE variable=s_single_PQ core=FIFO_SRL

    hls::stream<uint512_t> s_distance_LUT;
#pragma HLS stream variable=s_distance_LUT depth=8
#pragma HLS RESOURCE variable=s_distance_LUT core=FIFO_SRL

    // 64 streams = 21 channels * 3 + 1 dummy
    hls::stream<single_PQ_result> s_single_PQ_result[4][16];
#pragma HLS stream variable=s_single_PQ_result depth=8
#pragma HLS array_partition variable=s_single_PQ_result complete
#pragma HLS RESOURCE variable=s_single_PQ_result core=FIFO_SRL

    hls::stream<single_PQ_result> s_sorted_PQ_result[16];
#pragma HLS stream variable=s_sorted_PQ_result depth=8
#pragma HLS array_partition variable=s_sorted_PQ_result complete
#pragma HLS RESOURCE variable=s_sorted_PQ_result core=FIFO_SRL

    hls::stream<single_PQ_result> s_output; // the top 10 numbers
#pragma HLS stream variable=s_output depth=256

    ////////////// Data Streams Ends ///////////////

    generate_scanned_cell_id<QUERY_NUM, NPROBE>(s_scanned_cell_id);

    scan_controller<QUERY_NUM, NLIST, NPROBE>(
        HBM_info_start_addr_and_scanned_entries_every_cell,
        s_scanned_cell_id, s_start_addr_every_cell,
        s_scanned_entries_every_cell_Load_unit, 
        s_scanned_entries_every_cell_Split_unit,
        s_scanned_entries_every_cell_PQ_lookup_computation,
        s_last_valid_channel, 
        s_scanned_entries_per_query_Sort_and_reduction,
        s_scanned_entries_per_query_Priority_queue);

    load_and_split_PQ_codes_wrapper<QUERY_NUM, NPROBE>(
        HBM_in0, HBM_in1, HBM_in2, HBM_in3, HBM_in4, HBM_in5, HBM_in6, HBM_in7, 
        HBM_in8, HBM_in9, HBM_in10, HBM_in11, HBM_in12, HBM_in13, HBM_in14,
        HBM_in15, HBM_in16, HBM_in17, HBM_in18, HBM_in19, HBM_in20, 
        s_start_addr_every_cell,
        s_scanned_entries_every_cell_Load_unit,
        s_scanned_entries_every_cell_Split_unit,
        s_single_PQ);

    dummy_distance_LUT_sender<QUERY_NUM, NPROBE>(s_distance_LUT);

    PQ_lookup_computation_wrapper<QUERY_NUM, NPROBE>(
        s_single_PQ, 
        s_distance_LUT,
        s_scanned_entries_every_cell_PQ_lookup_computation,
        s_last_valid_channel,
        s_single_PQ_result);

    Sort_reduction<single_PQ_result, 64, 16, Collect_smallest> sort_reduction_module;

    sort_reduction_module.sort_and_reduction<QUERY_NUM>(
        s_scanned_entries_per_query_Sort_and_reduction, s_single_PQ_result, s_sorted_PQ_result);

    stream_redirect_to_priority_queue_wrapper<QUERY_NUM>(
        s_scanned_entries_per_query_Priority_queue, s_sorted_PQ_result, s_output);

    // Maybe PLRAM doesn't have enough capacity? 1000 * 10 * 8B = 80KB, should be enough.
    // TODO: use HBM as output channel
    write_result<QUERY_NUM * PRIORITY_QUEUE_LEN>(s_output, out_PLRAM);
}


template<const int query_num, const int nprobe>
void generate_scanned_cell_id(hls::stream<int>& s_scanned_cell_id) {

    for (int query_id = 0; query_id < query_num; query_id++) {
        for (int nprobe_id = 0; nprobe_id < nprobe; nprobe_id++) {
            s_scanned_cell_id.write(nprobe_id);
        }
    }
}


template<const int query_num, const int nlist, const int nprobe>
void scan_controller(
    const int* HBM_info_start_addr_and_scanned_entries_every_cell,
    hls::stream<int>& s_scanned_cell_id_Input, // from the cluster selection unit
    hls::stream<int>& s_start_addr_every_cell,
    hls::stream<int>& s_scanned_entries_every_cell_Load_unit,
    hls::stream<int>& s_scanned_entries_every_cell_Split_unit,
    hls::stream<int>& s_scanned_entries_every_cell_PQ_lookup_computation,
    hls::stream<int>& s_last_valid_channel,
    hls::stream<int>& s_scanned_entries_per_query_Sort_and_reduction,
    hls::stream<int>& s_scanned_entries_per_query_Priority_queue) {
   
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

            accumulated_scanned_entries_per_query += scanned_entries_every_cell;

            s_start_addr_every_cell.write(start_addr);
            s_scanned_entries_every_cell_Load_unit.write(scanned_entries_every_cell);
            s_scanned_entries_every_cell_Split_unit.write(scanned_entries_every_cell);
            s_scanned_entries_every_cell_PQ_lookup_computation.write(scanned_entries_every_cell);
            s_last_valid_channel.write(last_valid_channel);
        }

        s_scanned_entries_per_query_Sort_and_reduction.write(accumulated_scanned_entries_per_query);
        s_scanned_entries_per_query_Priority_queue.write(accumulated_scanned_entries_per_query);
    }
}


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

three_PQ_codes uint512_to_three_PQ_codes(ap_uint<512> in) {
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
                three_PQ_codes out = uint512_to_three_PQ_codes(in);
                s_single_PQ_0.write(out.PQ_0);
                s_single_PQ_1.write(out.PQ_1);
                s_single_PQ_2.write(out.PQ_2);
            }
        }
    }
}


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

template<const int query_num, const int nprobe>
void replicate_s_start_addr_every_cell(
    hls::stream<int>& s_start_addr_every_cell,
    hls::stream<int> (&s_start_addr_every_cell_replicated)[HBM_CHANNEL_NUM]) {

    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int nprobe_id = 0; nprobe_id < nprobe; nprobe_id++) {

            int start_addr_every_cell = s_start_addr_every_cell.read();

            for (int s = 0; s < HBM_CHANNEL_NUM; s++) {
#pragma HLS UNROLL
                s_start_addr_every_cell_replicated[s].write(start_addr_every_cell);
            }
        }
    }
}

template<const int query_num, const int nprobe>
void replicate_s_scanned_entries_every_cell_Load_unit(
    hls::stream<int>& s_scanned_entries_every_cell_Load_unit,
    hls::stream<int> (&s_scanned_entries_every_cell_Load_unit_replicated)[HBM_CHANNEL_NUM]) {

    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int nprobe_id = 0; nprobe_id < nprobe; nprobe_id++) {

            int scanned_entries_every_cell_Load_unit = s_scanned_entries_every_cell_Load_unit.read();

            for (int s = 0; s < HBM_CHANNEL_NUM; s++) {
#pragma HLS UNROLL
                s_scanned_entries_every_cell_Load_unit_replicated[s].write(
                    scanned_entries_every_cell_Load_unit);
            }
        }
    }
}


template<const int query_num, const int nprobe>
void replicate_s_scanned_entries_every_cell_Split_unit(
    hls::stream<int>& s_scanned_entries_every_cell_Split_unit,
    hls::stream<int> (&s_scanned_entries_every_cell_Split_unit_replicated)[HBM_CHANNEL_NUM]) {

    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int nprobe_id = 0; nprobe_id < nprobe; nprobe_id++) {

            int scanned_entries_every_cell_Split_unit = s_scanned_entries_every_cell_Split_unit.read();

            for (int s = 0; s < HBM_CHANNEL_NUM; s++) {
#pragma HLS UNROLL
                s_scanned_entries_every_cell_Split_unit_replicated[s].write(
                    scanned_entries_every_cell_Split_unit);
            }
        }
    }
}


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
    hls::stream<int>& s_start_addr_every_cell,
    hls::stream<int>& s_scanned_entries_every_cell_Load_unit,
    hls::stream<int>& s_scanned_entries_every_cell_Split_unit,
    hls::stream<single_PQ> (&s_single_PQ)[3 * HBM_CHANNEL_NUM]) {

#pragma HLS dataflow

    hls::stream<int> s_start_addr_every_cell_replicated[HBM_CHANNEL_NUM];
#pragma HLS stream variable=s_start_addr_every_cell_replicated depth=8
#pragma HLS array_partition variable=s_start_addr_every_cell_replicated complete
#pragma HLS RESOURCE variable=s_start_addr_every_cell_replicated core=FIFO_SRL

    hls::stream<int> s_scanned_entries_every_cell_Load_unit_replicated[HBM_CHANNEL_NUM];
#pragma HLS stream variable=s_scanned_entries_every_cell_Load_unit_replicated depth=8
#pragma HLS array_partition variable=s_scanned_entries_every_cell_Load_unit_replicated complete
#pragma HLS RESOURCE variable=s_scanned_entries_every_cell_Load_unit_replicated core=FIFO_SRL

    hls::stream<int> s_scanned_entries_every_cell_Split_unit_replicated[HBM_CHANNEL_NUM];
#pragma HLS stream variable=s_scanned_entries_every_cell_Split_unit_replicated depth=8
#pragma HLS array_partition variable=s_scanned_entries_every_cell_Split_unit_replicated complete
#pragma HLS RESOURCE variable=s_scanned_entries_every_cell_Split_unit_replicated core=FIFO_SRL

    replicate_s_start_addr_every_cell<query_num, nprobe>(
        s_start_addr_every_cell, 
        s_start_addr_every_cell_replicated); 

    replicate_s_scanned_entries_every_cell_Load_unit<query_num, nprobe>(
        s_scanned_entries_every_cell_Load_unit, 
        s_scanned_entries_every_cell_Load_unit_replicated); 

    replicate_s_scanned_entries_every_cell_Split_unit<query_num, nprobe>(
        s_scanned_entries_every_cell_Split_unit, 
        s_scanned_entries_every_cell_Split_unit_replicated); 

    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in0, s_start_addr_every_cell_replicated[0], 
        s_scanned_entries_every_cell_Load_unit_replicated[0], 
        s_scanned_entries_every_cell_Split_unit_replicated[0],
        s_single_PQ[0 * 3 + 0], s_single_PQ[0 * 3 + 1], s_single_PQ[0 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in1, s_start_addr_every_cell_replicated[1], 
        s_scanned_entries_every_cell_Load_unit_replicated[1], 
        s_scanned_entries_every_cell_Split_unit_replicated[1],
        s_single_PQ[1 * 3 + 0], s_single_PQ[1 * 3 + 1], s_single_PQ[1 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in2, s_start_addr_every_cell_replicated[2], 
        s_scanned_entries_every_cell_Load_unit_replicated[2], 
        s_scanned_entries_every_cell_Split_unit_replicated[2],
        s_single_PQ[2 * 3 + 0], s_single_PQ[2 * 3 + 1], s_single_PQ[2 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in3, s_start_addr_every_cell_replicated[3], 
        s_scanned_entries_every_cell_Load_unit_replicated[3], 
        s_scanned_entries_every_cell_Split_unit_replicated[3],
        s_single_PQ[3 * 3 + 0], s_single_PQ[3 * 3 + 1], s_single_PQ[3 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in4, s_start_addr_every_cell_replicated[4], 
        s_scanned_entries_every_cell_Load_unit_replicated[4], 
        s_scanned_entries_every_cell_Split_unit_replicated[4],
        s_single_PQ[4 * 3 + 0], s_single_PQ[4 * 3 + 1], s_single_PQ[4 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in5, s_start_addr_every_cell_replicated[5], 
        s_scanned_entries_every_cell_Load_unit_replicated[5], 
        s_scanned_entries_every_cell_Split_unit_replicated[5],
        s_single_PQ[5 * 3 + 0], s_single_PQ[5 * 3 + 1], s_single_PQ[5 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in6, s_start_addr_every_cell_replicated[6], 
        s_scanned_entries_every_cell_Load_unit_replicated[6], 
        s_scanned_entries_every_cell_Split_unit_replicated[6],
        s_single_PQ[6 * 3 + 0], s_single_PQ[6 * 3 + 1], s_single_PQ[6 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in7, s_start_addr_every_cell_replicated[7], 
        s_scanned_entries_every_cell_Load_unit_replicated[7], 
        s_scanned_entries_every_cell_Split_unit_replicated[7],
        s_single_PQ[7 * 3 + 0], s_single_PQ[7 * 3 + 1], s_single_PQ[7 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in8, s_start_addr_every_cell_replicated[8], 
        s_scanned_entries_every_cell_Load_unit_replicated[8], 
        s_scanned_entries_every_cell_Split_unit_replicated[8],
        s_single_PQ[8 * 3 + 0], s_single_PQ[8 * 3 + 1], s_single_PQ[8 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in9, s_start_addr_every_cell_replicated[9], 
        s_scanned_entries_every_cell_Load_unit_replicated[9], 
        s_scanned_entries_every_cell_Split_unit_replicated[9],
        s_single_PQ[9 * 3 + 0], s_single_PQ[9 * 3 + 1], s_single_PQ[9 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in10, s_start_addr_every_cell_replicated[10], 
        s_scanned_entries_every_cell_Load_unit_replicated[10], 
        s_scanned_entries_every_cell_Split_unit_replicated[10],
        s_single_PQ[10 * 3 + 0], s_single_PQ[10 * 3 + 1], s_single_PQ[10 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in11, s_start_addr_every_cell_replicated[11], 
        s_scanned_entries_every_cell_Load_unit_replicated[11], 
        s_scanned_entries_every_cell_Split_unit_replicated[11],
        s_single_PQ[11 * 3 + 0], s_single_PQ[11 * 3 + 1], s_single_PQ[11 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in12, s_start_addr_every_cell_replicated[12], 
        s_scanned_entries_every_cell_Load_unit_replicated[12], 
        s_scanned_entries_every_cell_Split_unit_replicated[12],
        s_single_PQ[12 * 3 + 0], s_single_PQ[12 * 3 + 1], s_single_PQ[12 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in13, s_start_addr_every_cell_replicated[13], 
        s_scanned_entries_every_cell_Load_unit_replicated[13], 
        s_scanned_entries_every_cell_Split_unit_replicated[13],
        s_single_PQ[13 * 3 + 0], s_single_PQ[13 * 3 + 1], s_single_PQ[13 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in14, s_start_addr_every_cell_replicated[14], 
        s_scanned_entries_every_cell_Load_unit_replicated[14], 
        s_scanned_entries_every_cell_Split_unit_replicated[14],
        s_single_PQ[14 * 3 + 0], s_single_PQ[14 * 3 + 1], s_single_PQ[14 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in15, s_start_addr_every_cell_replicated[15], 
        s_scanned_entries_every_cell_Load_unit_replicated[15], 
        s_scanned_entries_every_cell_Split_unit_replicated[15],
        s_single_PQ[15 * 3 + 0], s_single_PQ[15 * 3 + 1], s_single_PQ[15 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in16, s_start_addr_every_cell_replicated[16], 
        s_scanned_entries_every_cell_Load_unit_replicated[16], 
        s_scanned_entries_every_cell_Split_unit_replicated[16],
        s_single_PQ[16 * 3 + 0], s_single_PQ[16 * 3 + 1], s_single_PQ[16 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in17, s_start_addr_every_cell_replicated[17], 
        s_scanned_entries_every_cell_Load_unit_replicated[17], 
        s_scanned_entries_every_cell_Split_unit_replicated[17],
        s_single_PQ[17 * 3 + 0], s_single_PQ[17 * 3 + 1], s_single_PQ[17 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in18, s_start_addr_every_cell_replicated[18], 
        s_scanned_entries_every_cell_Load_unit_replicated[18], 
        s_scanned_entries_every_cell_Split_unit_replicated[18],
        s_single_PQ[18 * 3 + 0], s_single_PQ[18 * 3 + 1], s_single_PQ[18 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in19, s_start_addr_every_cell_replicated[19], 
        s_scanned_entries_every_cell_Load_unit_replicated[19], 
        s_scanned_entries_every_cell_Split_unit_replicated[19],
        s_single_PQ[19 * 3 + 0], s_single_PQ[19 * 3 + 1], s_single_PQ[19 * 3 + 2]);
    load_and_split_PQ_codes<query_num, nprobe>(
        HBM_in20, s_start_addr_every_cell_replicated[20], 
        s_scanned_entries_every_cell_Load_unit_replicated[20], 
        s_scanned_entries_every_cell_Split_unit_replicated[20],
        s_single_PQ[20 * 3 + 0], s_single_PQ[20 * 3 + 1], s_single_PQ[20 * 3 + 2]);
}

void init_distance_table_partition(float table[512], float bias) {
#pragma HLS inline
    for (int j = 0; j < 512; j++) {
#pragma HLS pipeline II=1
        table[j] = bias + j;
    }
}

template<const int query_num, const int nprobe>
void dummy_distance_LUT_sender(
    hls::stream<uint512_t>& s_distance_LUT) {

    uint512_t dist_row;

    // dist_row.dist_0 = 0; 
    // dist_row.dist_1 = 1; 
    // dist_row.dist_2 = 2;
    // dist_row.dist_3 = 3; 
    // dist_row.dist_4 = 4; 
    // dist_row.dist_5 = 5; 
    // dist_row.dist_6 = 6; 
    // dist_row.dist_7 = 7; 
    // dist_row.dist_8 = 8; 
    // dist_row.dist_9 = 9; 
    // dist_row.dist_10 = 10; 
    // dist_row.dist_11 = 11; 
    // dist_row.dist_12 = 12; 
    // dist_row.dist_13 = 13; 
    // dist_row.dist_14 = 14; 
    // dist_row.dist_15 = 15;

    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int nprobe_id = 0; nprobe_id < nprobe; nprobe_id++) {

            for (int row_id = 0; row_id < K; row_id++) {
#pragma HLS pipeline II=1
                s_distance_LUT.write(dist_row);
            }

        }
    }
    
}
 
void init_distance_LUT(
    hls::stream<uint512_t>& s_distance_LUT, 
    float distance_LUT[3 * HBM_CHANNEL_NUM][8][512]) {

    for (int row_id = 0; row_id < K; row_id++) {
#pragma HLS pipeline II=1

        // Using a tree structure to relieve the routing issue
        // 1 -> 2 -> 4 -> 8 -> 16 -> 32 -> 64
        uint512_t reg = s_distance_LUT.read();
        
        uint32_t reg_array_0, reg_array_1, reg_array_2, reg_array_3,
            reg_array_4, reg_array_5, reg_array_6, reg_array_7, 
            reg_array_8, reg_array_9, reg_array_10, reg_array_11,
            reg_array_12, reg_array_13, reg_array_14, reg_array_15;

        reg_array_0 = reg.range((0 + 1) * 32 - 1, 0 * 32);
        reg_array_1 = reg.range((1 + 1) * 32 - 1, 1 * 32);
        reg_array_2 = reg.range((2 + 1) * 32 - 1, 2 * 32);
        reg_array_3 = reg.range((3 + 1) * 32 - 1, 3 * 32);
        reg_array_4 = reg.range((4 + 1) * 32 - 1, 4 * 32);
        reg_array_5 = reg.range((5 + 1) * 32 - 1, 5 * 32);
        reg_array_6 = reg.range((6 + 1) * 32 - 1, 6 * 32);
        reg_array_7 = reg.range((7 + 1) * 32 - 1, 7 * 32);
        reg_array_8 = reg.range((8 + 1) * 32 - 1, 8 * 32);
        reg_array_9 = reg.range((9 + 1) * 32 - 1, 9 * 32);
        reg_array_10 = reg.range((10 + 1) * 32 - 1, 10 * 32);
        reg_array_11 = reg.range((11 + 1) * 32 - 1, 11 * 32);
        reg_array_12 = reg.range((12 + 1) * 32 - 1, 12 * 32);
        reg_array_13 = reg.range((13 + 1) * 32 - 1, 13 * 32);
        reg_array_14 = reg.range((14 + 1) * 32 - 1, 14 * 32);
        reg_array_15 = reg.range((15 + 1) * 32 - 1, 015 * 32);

        volatile distance_LUT_PQ16_t dist_row_level_A;

        dist_row_level_A.dist_0 = *((float*) (&(reg_array_0)));
        dist_row_level_A.dist_1 = *((float*) (&(reg_array_1)));
        dist_row_level_A.dist_2 = *((float*) (&(reg_array_2)));
        dist_row_level_A.dist_3 = *((float*) (&(reg_array_3)));
        dist_row_level_A.dist_4 = *((float*) (&(reg_array_4)));
        dist_row_level_A.dist_5 = *((float*) (&(reg_array_5)));
        dist_row_level_A.dist_6 = *((float*) (&(reg_array_6)));
        dist_row_level_A.dist_7 = *((float*) (&(reg_array_7)));
        dist_row_level_A.dist_8 = *((float*) (&(reg_array_8)));
        dist_row_level_A.dist_9 = *((float*) (&(reg_array_9)));
        dist_row_level_A.dist_10 = *((float*) (&(reg_array_10)));
        dist_row_level_A.dist_11 = *((float*) (&(reg_array_11)));
        dist_row_level_A.dist_12 = *((float*) (&(reg_array_12)));
        dist_row_level_A.dist_13 = *((float*) (&(reg_array_13)));
        dist_row_level_A.dist_14 = *((float*) (&(reg_array_14)));
        dist_row_level_A.dist_15 = *((float*) (&(reg_array_15)));

        // Note: for volatile variable, C++ doesn't provide default struct copy
        //  thus need to manually copy all the attributes
        volatile distance_LUT_PQ16_t dist_row_level_B[2];
#pragma HLS array_partition variable=dist_row_level_B complete
        for (int s = 0; s < 2; s++) {
#pragma HLS UNROLL
            dist_row_level_B[s].dist_0 = dist_row_level_A.dist_0;
            dist_row_level_B[s].dist_1 = dist_row_level_A.dist_1;
            dist_row_level_B[s].dist_2 = dist_row_level_A.dist_2;
            dist_row_level_B[s].dist_3 = dist_row_level_A.dist_3;
            dist_row_level_B[s].dist_4 = dist_row_level_A.dist_4;
            dist_row_level_B[s].dist_5 = dist_row_level_A.dist_5;
            dist_row_level_B[s].dist_6 = dist_row_level_A.dist_6;
            dist_row_level_B[s].dist_7 = dist_row_level_A.dist_7;
            dist_row_level_B[s].dist_8 = dist_row_level_A.dist_8;
            dist_row_level_B[s].dist_9 = dist_row_level_A.dist_9;
            dist_row_level_B[s].dist_10 = dist_row_level_A.dist_10;
            dist_row_level_B[s].dist_11 = dist_row_level_A.dist_11;
            dist_row_level_B[s].dist_12 = dist_row_level_A.dist_12;
            dist_row_level_B[s].dist_13 = dist_row_level_A.dist_13;
            dist_row_level_B[s].dist_14 = dist_row_level_A.dist_14;
            dist_row_level_B[s].dist_15 = dist_row_level_A.dist_15;
        }

        volatile distance_LUT_PQ16_t dist_row_level_C[4];
#pragma HLS array_partition variable=dist_row_level_C complete
        for (int s = 0; s < 4; s++) {
#pragma HLS UNROLL
            dist_row_level_C[s].dist_0 = dist_row_level_B[s / 2].dist_0;
            dist_row_level_C[s].dist_1 = dist_row_level_B[s / 2].dist_1;
            dist_row_level_C[s].dist_2 = dist_row_level_B[s / 2].dist_2;
            dist_row_level_C[s].dist_3 = dist_row_level_B[s / 2].dist_3;
            dist_row_level_C[s].dist_4 = dist_row_level_B[s / 2].dist_4;
            dist_row_level_C[s].dist_5 = dist_row_level_B[s / 2].dist_5;
            dist_row_level_C[s].dist_6 = dist_row_level_B[s / 2].dist_6;
            dist_row_level_C[s].dist_7 = dist_row_level_B[s / 2].dist_7;
            dist_row_level_C[s].dist_8 = dist_row_level_B[s / 2].dist_8;
            dist_row_level_C[s].dist_9 = dist_row_level_B[s / 2].dist_9;
            dist_row_level_C[s].dist_10 = dist_row_level_B[s / 2].dist_10;
            dist_row_level_C[s].dist_11 = dist_row_level_B[s / 2].dist_11;
            dist_row_level_C[s].dist_12 = dist_row_level_B[s / 2].dist_12;
            dist_row_level_C[s].dist_13 = dist_row_level_B[s / 2].dist_13;
            dist_row_level_C[s].dist_14 = dist_row_level_B[s / 2].dist_14;
            dist_row_level_C[s].dist_15 = dist_row_level_B[s / 2].dist_15;
        }

        volatile distance_LUT_PQ16_t dist_row_level_D[8];
#pragma HLS array_partition variable=dist_row_level_D complete
        for (int s = 0; s < 8; s++) {
#pragma HLS UNROLL
            dist_row_level_D[s].dist_0 = dist_row_level_C[s / 2].dist_0;
            dist_row_level_D[s].dist_1 = dist_row_level_C[s / 2].dist_1;
            dist_row_level_D[s].dist_2 = dist_row_level_C[s / 2].dist_2;
            dist_row_level_D[s].dist_3 = dist_row_level_C[s / 2].dist_3;
            dist_row_level_D[s].dist_4 = dist_row_level_C[s / 2].dist_4;
            dist_row_level_D[s].dist_5 = dist_row_level_C[s / 2].dist_5;
            dist_row_level_D[s].dist_6 = dist_row_level_C[s / 2].dist_6;
            dist_row_level_D[s].dist_7 = dist_row_level_C[s / 2].dist_7;
            dist_row_level_D[s].dist_8 = dist_row_level_C[s / 2].dist_8;
            dist_row_level_D[s].dist_9 = dist_row_level_C[s / 2].dist_9;
            dist_row_level_D[s].dist_10 = dist_row_level_C[s / 2].dist_10;
            dist_row_level_D[s].dist_11 = dist_row_level_C[s / 2].dist_11;
            dist_row_level_D[s].dist_12 = dist_row_level_C[s / 2].dist_12;
            dist_row_level_D[s].dist_13 = dist_row_level_C[s / 2].dist_13;
            dist_row_level_D[s].dist_14 = dist_row_level_C[s / 2].dist_14;
            dist_row_level_D[s].dist_15 = dist_row_level_C[s / 2].dist_15;
        }

        volatile distance_LUT_PQ16_t dist_row_level_E[16];
#pragma HLS array_partition variable=dist_row_level_E complete
        for (int s = 0; s < 16; s++) {
#pragma HLS UNROLL
            dist_row_level_E[s].dist_0 = dist_row_level_D[s / 2].dist_0;
            dist_row_level_E[s].dist_1 = dist_row_level_D[s / 2].dist_1;
            dist_row_level_E[s].dist_2 = dist_row_level_D[s / 2].dist_2;
            dist_row_level_E[s].dist_3 = dist_row_level_D[s / 2].dist_3;
            dist_row_level_E[s].dist_4 = dist_row_level_D[s / 2].dist_4;
            dist_row_level_E[s].dist_5 = dist_row_level_D[s / 2].dist_5;
            dist_row_level_E[s].dist_6 = dist_row_level_D[s / 2].dist_6;
            dist_row_level_E[s].dist_7 = dist_row_level_D[s / 2].dist_7;
            dist_row_level_E[s].dist_8 = dist_row_level_D[s / 2].dist_8;
            dist_row_level_E[s].dist_9 = dist_row_level_D[s / 2].dist_9;
            dist_row_level_E[s].dist_10 = dist_row_level_D[s / 2].dist_10;
            dist_row_level_E[s].dist_11 = dist_row_level_D[s / 2].dist_11;
            dist_row_level_E[s].dist_12 = dist_row_level_D[s / 2].dist_12;
            dist_row_level_E[s].dist_13 = dist_row_level_D[s / 2].dist_13;
            dist_row_level_E[s].dist_14 = dist_row_level_D[s / 2].dist_14;
            dist_row_level_E[s].dist_15 = dist_row_level_D[s / 2].dist_15;
        }

        volatile distance_LUT_PQ16_t dist_row_level_F[32];
#pragma HLS array_partition variable=dist_row_level_F complete
        for (int s = 0; s < 32; s++) {
#pragma HLS UNROLL
            dist_row_level_F[s].dist_0 = dist_row_level_E[s / 2].dist_0;
            dist_row_level_F[s].dist_1 = dist_row_level_E[s / 2].dist_1;
            dist_row_level_F[s].dist_2 = dist_row_level_E[s / 2].dist_2;
            dist_row_level_F[s].dist_3 = dist_row_level_E[s / 2].dist_3;
            dist_row_level_F[s].dist_4 = dist_row_level_E[s / 2].dist_4;
            dist_row_level_F[s].dist_5 = dist_row_level_E[s / 2].dist_5;
            dist_row_level_F[s].dist_6 = dist_row_level_E[s / 2].dist_6;
            dist_row_level_F[s].dist_7 = dist_row_level_E[s / 2].dist_7;
            dist_row_level_F[s].dist_8 = dist_row_level_E[s / 2].dist_8;
            dist_row_level_F[s].dist_9 = dist_row_level_E[s / 2].dist_9;
            dist_row_level_F[s].dist_10 = dist_row_level_E[s / 2].dist_10;
            dist_row_level_F[s].dist_11 = dist_row_level_E[s / 2].dist_11;
            dist_row_level_F[s].dist_12 = dist_row_level_E[s / 2].dist_12;
            dist_row_level_F[s].dist_13 = dist_row_level_E[s / 2].dist_13;
            dist_row_level_F[s].dist_14 = dist_row_level_E[s / 2].dist_14;
            dist_row_level_F[s].dist_15 = dist_row_level_E[s / 2].dist_15;
        }
        
        for (int s = 0; s < 3 * HBM_CHANNEL_NUM; s++) {
#pragma HLS UNROLL
            // col 0 ~ 7
            distance_LUT[s][0][row_id] = dist_row_level_F[s / 2].dist_0; 
            distance_LUT[s][1][row_id] = dist_row_level_F[s / 2].dist_1; 
            distance_LUT[s][2][row_id] = dist_row_level_F[s / 2].dist_2;
            distance_LUT[s][3][row_id] = dist_row_level_F[s / 2].dist_3; 
            distance_LUT[s][4][row_id] = dist_row_level_F[s / 2].dist_4; 
            distance_LUT[s][5][row_id] = dist_row_level_F[s / 2].dist_5; 
            distance_LUT[s][6][row_id] = dist_row_level_F[s / 2].dist_6; 
            distance_LUT[s][7][row_id] = dist_row_level_F[s / 2].dist_7; 

            // col 8 ~ 15
            distance_LUT[s][0][row_id + 256] = dist_row_level_F[s / 2].dist_8; 
            distance_LUT[s][1][row_id + 256] = dist_row_level_F[s / 2].dist_9; 
            distance_LUT[s][2][row_id + 256] = dist_row_level_F[s / 2].dist_10; 
            distance_LUT[s][3][row_id + 256] = dist_row_level_F[s / 2].dist_11; 
            distance_LUT[s][4][row_id + 256] = dist_row_level_F[s / 2].dist_12; 
            distance_LUT[s][5][row_id + 256] = dist_row_level_F[s / 2].dist_13; 
            distance_LUT[s][6][row_id + 256] = dist_row_level_F[s / 2].dist_14; 
            distance_LUT[s][7][row_id + 256] = dist_row_level_F[s / 2].dist_15;
        }
    }
}

void PQ_lookup_computation(
    float distance_LUT[8][512],
    hls::stream<single_PQ>& s_single_PQ, 
    int scanned_entries_every_cell,
    int last_element_valid, 
    hls::stream<single_PQ_result>& s_single_PQ_result) {

    for (int entry_id = 0; entry_id < scanned_entries_every_cell; entry_id++) {
#pragma HLS pipeline II=1

        single_PQ PQ_local = s_single_PQ.read();

        single_PQ_result out; 
        out.vec_ID = PQ_local.vec_ID;
        out.dist = 
            distance_LUT[0][PQ_local.PQ_code[0]] + 
            distance_LUT[1][PQ_local.PQ_code[1]] + 
            distance_LUT[2][PQ_local.PQ_code[2]] + 
            distance_LUT[3][PQ_local.PQ_code[3]] + 
            distance_LUT[4][PQ_local.PQ_code[4]] + 
            distance_LUT[5][PQ_local.PQ_code[5]] + 
            distance_LUT[6][PQ_local.PQ_code[6]] + 
            distance_LUT[7][PQ_local.PQ_code[7]] + 

            distance_LUT[0][((int)PQ_local.PQ_code[8]) + 256] + 
            distance_LUT[1][((int)PQ_local.PQ_code[9]) + 256] + 
            distance_LUT[2][((int)PQ_local.PQ_code[10]) + 256] + 
            distance_LUT[3][((int)PQ_local.PQ_code[11]) + 256] + 
            distance_LUT[4][((int)PQ_local.PQ_code[12]) + 256] + 
            distance_LUT[5][((int)PQ_local.PQ_code[13]) + 256] + 
            distance_LUT[6][((int)PQ_local.PQ_code[14]) + 256] + 
            distance_LUT[7][((int)PQ_local.PQ_code[15]) + 256];

        // for padded element, replace its distance by large number
        if ((entry_id == (scanned_entries_every_cell - 1)) && (last_element_valid == 0)) {
            out.vec_ID = -1;
            out.dist = LARGE_NUM;
        }
        s_single_PQ_result.write(out);
    }
}

void dummy_PQ_result_sender(
    int scanned_entries_every_cell,
    hls::stream<single_PQ_result> &s_single_PQ_result) {

    single_PQ_result out; 
    out.vec_ID = -1;
    out.dist = LARGE_NUM;
    
    for (int entry_id = 0; entry_id < scanned_entries_every_cell; entry_id++) {
#pragma HLS pipeline II=1
        s_single_PQ_result.write(out);
    }
}

template<const int query_num, const int nprobe>
void PQ_lookup_computation_wrapper(
    hls::stream<single_PQ> (&s_single_PQ)[3 * HBM_CHANNEL_NUM], 
    hls::stream<uint512_t>& s_distance_LUT,
    hls::stream<int>& s_scanned_entries_every_cell_PQ_lookup_computation, 
    hls::stream<int>& s_last_valid_channel, 
    hls::stream<single_PQ_result> (&s_single_PQ_result)[4][16]) {

// Wenqi: Here, can enable (improve performance) or disable dataflow (save resources)
#pragma HLS dataflow

    float distance_LUT[3 * HBM_CHANNEL_NUM][8][512];
#pragma HLS array_partition variable=distance_LUT dim=1
#pragma HLS array_partition variable=distance_LUT dim=2
#pragma HLS resource variable=distance_LUT core=RAM_2P_BRAM

    int last_element_valid[3 * HBM_CHANNEL_NUM];
#pragma HLS array_partition variable=last_element_valid complete

    int scanned_entries_every_cell_replicated[64];
#pragma HLS array_partition variable=scanned_entries_every_cell_replicated complete

    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int nprobe_id = 0; nprobe_id < nprobe; nprobe_id++) {

            // per nprobe init
            int scanned_entries_every_cell = 
                s_scanned_entries_every_cell_PQ_lookup_computation.read();
            int last_valid_channel = s_last_valid_channel.read();
            
            for (int s = 0; s < 3 * HBM_CHANNEL_NUM; s++) {
#pragma HLS UNROLL 
                if (s > last_valid_channel) {
                    last_element_valid[s] = 0;
                }
                else {
                    last_element_valid[s] = 1;
                }
            }
            for (int s = 0; s < 64; s++) {
#pragma HLS UNROLL
                scanned_entries_every_cell_replicated[s] = scanned_entries_every_cell;
            }

            // load distance LUT
            init_distance_LUT(s_distance_LUT, distance_LUT);

            // Computer & Send results 
            for (int i = 0; i < 3; i++) {
#pragma HLS UNROLL
                for (int j = 0; j < 16; j++) {
#pragma HLS UNROLL
                    PQ_lookup_computation(
                        distance_LUT[i * 16 + j],
                        s_single_PQ[i * 16 + j], 
                        scanned_entries_every_cell_replicated[i * 16 + j], 
                        last_element_valid[i * 16 + j], 
                        s_single_PQ_result[i][j]);
                }
            }

            for (int j = 0; j < 15; j++) {
        #pragma HLS UNROLL
                PQ_lookup_computation(
                    distance_LUT[48 + j],
                    s_single_PQ[48+ j], 
                    scanned_entries_every_cell_replicated[48 + j], 
                    last_element_valid[48 + j], 
                    s_single_PQ_result[3][j]);
            }

            dummy_PQ_result_sender(
                scanned_entries_every_cell_replicated[63], s_single_PQ_result[3][15]);
        }
    }
}


////////////////////  Priority Queues for PQ results Starts  ////////////////////


template<const int query_num>
void replicate_scanned_entries_per_query_Redirected_sorted_stream(
        hls::stream<int>& s_scanned_entries_per_query_Priority_queue, 
        hls::stream<int> (&s_scanned_entries_every_cell_Redirected_sorted_stream)[16]) {
    
    for (int i = 0; i < query_num; i++) {

        int scanned_entries_per_query = s_scanned_entries_per_query_Priority_queue.read();
        
        for (int s = 0; s < 16; s++) {
#pragma HLS UNROLL
            s_scanned_entries_every_cell_Redirected_sorted_stream[s].write(scanned_entries_per_query);
        }
    }
}


template<const int query_num>
void consume_single_stream(
    hls::stream<single_PQ_result> &input_stream,
    hls::stream<int>& s_scanned_entries_every_cell) {

    for (int query_id = 0; query_id < query_num; query_id++) {

        int scanned_entries_every_cell = s_scanned_entries_every_cell.read();

        for (int entry_id = 0; entry_id < scanned_entries_every_cell; entry_id++) {
#pragma HLS pipeline II=1
            input_stream.read();
        }
    }
}


template<const int query_num>
void split_single_stream(
    hls::stream<single_PQ_result> &input_stream,
    hls::stream<int>& s_scanned_entries_every_cell,
    hls::stream<int>& s_scanned_entries_every_cell_Out_priority_queue_A, 
    hls::stream<int>& s_scanned_entries_every_cell_Out_priority_queue_B, 
    hls::stream<single_PQ_result> &output_stream_A,
    hls::stream<single_PQ_result> &output_stream_B) {

    for (int query_id = 0; query_id < query_num; query_id++) {

        int scanned_entries_every_cell = s_scanned_entries_every_cell.read();
        int half_scanned_entries_every_cell = scanned_entries_every_cell / 2;

        if ((scanned_entries_every_cell - 2 * half_scanned_entries_every_cell) == 1) {
            s_scanned_entries_every_cell_Out_priority_queue_A.write(half_scanned_entries_every_cell + 1);
            output_stream_A.write(input_stream.read());
        }
        else {
            s_scanned_entries_every_cell_Out_priority_queue_A.write(half_scanned_entries_every_cell); 
        }
        s_scanned_entries_every_cell_Out_priority_queue_B.write(half_scanned_entries_every_cell);

        for (int entry_id = 0; entry_id < half_scanned_entries_every_cell; entry_id++) {
#pragma HLS pipeline II=2
            output_stream_A.write(input_stream.read());
            output_stream_B.write(input_stream.read());
        }
    }
}


template<const int query_num>
void consume_and_redirect_sorted_streams(
    hls::stream<single_PQ_result> (&sorted_stream)[16], 
    hls::stream<int>& s_scanned_entries_per_query_In_Priority_queue,
    hls::stream<int> (&s_scanned_entries_every_cell_Out_priority_queue)[20],
    hls::stream<single_PQ_result> (&redirected_sorted_stream)[20]) {
    
#pragma HLS dataflow
    // for the top 16 elements, discard the last 6 
    // for the rest 10 elements, split them to 2 streams, since Priority Queue's
    //   insertion takes 2 CC

    hls::stream<int> s_scanned_entries_every_cell_Replicated[16];
#pragma HLS stream variable=s_scanned_entries_every_cell_Replicated depth=8
#pragma HLS array_partition variable=s_scanned_entries_every_cell_Replicated complete
#pragma HLS RESOURCE variable=s_scanned_entries_every_cell_Replicated core=FIFO_SRL

    replicate_scanned_entries_per_query_Redirected_sorted_stream<query_num>(
        s_scanned_entries_per_query_In_Priority_queue, 
        s_scanned_entries_every_cell_Replicated);

    for (int i = 0; i < 10; i++) {
#pragma HLS UNROLL
        split_single_stream<query_num>(
            sorted_stream[i], 
            s_scanned_entries_every_cell_Replicated[i],
            s_scanned_entries_every_cell_Out_priority_queue[2 * i],
            s_scanned_entries_every_cell_Out_priority_queue[2 * i + 1],
            redirected_sorted_stream[2 * i], 
            redirected_sorted_stream[2 * i + 1]);
    }

    for (int i = 10; i < 16; i++) {
#pragma HLS UNROLL
        consume_single_stream<query_num>(
            sorted_stream[i], 
            s_scanned_entries_every_cell_Replicated[i]);
    }
}


template<const int query_num, const int iter_num_per_query>
void send_iter_num(hls::stream<int>& s_merged_intermediate_result_iter) {

    for (int query_id = 0; query_id < query_num; query_id++) {
        s_merged_intermediate_result_iter.write(iter_num_per_query);
    }
}


template<const int query_num, const int priority_queue_len>
void merge_streams(
    hls::stream<single_PQ_result> (&intermediate_result)[20],
    hls::stream<single_PQ_result> &output_stream) {
    
    for (int query_id = 0; query_id < query_num; query_id++) {
        for (int d = 0; d < priority_queue_len; d++) {
            for (int s = 0; s < 20; s++) {
#pragma HLS pipeline II=1
                output_stream.write(intermediate_result[s].read());
            }
        }
    }
}


template<const int query_num>
void stream_redirect_to_priority_queue_wrapper( 
    hls::stream<int>& s_scanned_entries_per_query_Priority_queue,
    hls::stream<single_PQ_result> (&sorted_stream)[16], 
    hls::stream<single_PQ_result> &output_stream) {

    // Given 16 input stream (last 6 streams are discarded), redirect them to 
    // 20 priority queues (because 2 CC per insertion), and then insert them to a final
    // priority queue, return the results of top 10
#pragma HLS dataflow

    hls::stream<int> s_scanned_entries_every_cell_Redirected_sorted_stream[20];
#pragma HLS stream variable=s_scanned_entries_every_cell_Redirected_sorted_stream depth=8
#pragma HLS array_partition variable=s_scanned_entries_every_cell_Redirected_sorted_stream complete
#pragma HLS RESOURCE variable=s_scanned_entries_every_cell_Redirected_sorted_stream core=FIFO_SRL

    hls::stream<single_PQ_result> redirected_sorted_stream[20];
#pragma HLS stream variable=redirected_sorted_stream depth=8
#pragma HLS array_partition variable=redirected_sorted_stream complete
#pragma HLS RESOURCE variable=redirected_sorted_stream core=FIFO_SRL

    hls::stream<single_PQ_result> intermediate_result[20];
#pragma HLS stream variable=intermediate_result depth=8
#pragma HLS array_partition variable=intermediate_result complete
#pragma HLS RESOURCE variable=intermediate_result core=FIFO_SRL

    // collecting results from multiple sources need deeper FIFO
    hls::stream<single_PQ_result> merged_intermediate_result;
#pragma HLS stream variable=merged_intermediate_result depth=256

    hls::stream<int> s_merged_intermediate_result_iter;
#pragma HLS stream variable=s_merged_intermediate_result_iter depth=8
#pragma HLS RESOURCE variable=s_merged_intermediate_result_iter core=FIFO_SRL

    Priority_queue<single_PQ_result, PRIORITY_QUEUE_LEN, Collect_smallest> priority_queue_intermediate[20];
#pragma HLS array_partition variable=priority_queue_intermediate complete
    Priority_queue<single_PQ_result, PRIORITY_QUEUE_LEN, Collect_smallest> priority_queue_final;

    consume_and_redirect_sorted_streams<query_num>(
        sorted_stream, 
        s_scanned_entries_per_query_Priority_queue,
        s_scanned_entries_every_cell_Redirected_sorted_stream,
        redirected_sorted_stream); 

    // 2 CC per insertion
    for (int i = 0; i < 20; i++) {
#pragma HLS UNROLL
        // for each individual query, output intermediate_result
        priority_queue_intermediate[i].insert_wrapper<query_num>(
            s_scanned_entries_every_cell_Redirected_sorted_stream[i], 
            redirected_sorted_stream[i], intermediate_result[i]);
    }

    merge_streams<query_num, PRIORITY_QUEUE_LEN>(intermediate_result, merged_intermediate_result);

    // depth is 20 * 10 
    send_iter_num<query_num, 20 * PRIORITY_QUEUE_LEN>(s_merged_intermediate_result_iter);
    priority_queue_final.insert_wrapper<query_num>(
            s_merged_intermediate_result_iter,
            merged_intermediate_result, output_stream); 
}

////////////////////  Priority Queues for PQ results Ends  ////////////////////

template<const int total_len>
void write_result(hls::stream<single_PQ_result> &output_stream, ap_uint<64>* output) {

    // only write the last iteration
    for (int i = 0; i < total_len - PRIORITY_QUEUE_LEN; i++) {
        output_stream.read();
    }

    for (int i = 0; i < PRIORITY_QUEUE_LEN; i++) {
#pragma HLS pipeline II=1
        single_PQ_result raw_output = output_stream.read();
        ap_uint<64> reg;
        int vec_ID = raw_output.vec_ID;
        float dist = raw_output.dist;
        reg.range(31, 0) = *((ap_uint<32>*) (&vec_ID));
        reg.range(63, 32) = *((ap_uint<32>*) (&dist));
        output[i] = reg;
    }
}

#define TILE_SIZE 4
#define UNROLL_FACTOR 8
float acc[TILE_SIZE][UNROLL_FACTOR];
#pragma HLS array_partition variable=acc dim=2

// (N / TILE_SIZE) must be an integar
for (int x = 0; x < N / TILE_SIZE / UNROLL_FACTOR; x++)

    // M is the accumulation length
    for (int m = 0; m < M; m++) { 
        for (int t = 0; t < TILE_SIZE; t++) {
            // each cycle perform 
            for (int u = 0; u < UNROLL_FACTOR; u++) {
#pragma HLS UNROLL
                acc[t][u] += ..
            }
        }
    }

    // Write a tile of results
    for (int t = 0; t < TILE_SIZE * UNROLL_FACTOR; t++) {
        out[x * TILE_SIZE + t] = acc[t];
    }
}
