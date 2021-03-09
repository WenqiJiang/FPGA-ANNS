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

    hls::stream<int> s_scanned_entries_every_cell_Dummy;
#pragma HLS stream variable=s_scanned_entries_every_cell_Dummy depth=512
// #pragma HLS RESOURCE variable=s_scanned_entries_every_cell_Dummy core=FIFO_SRL

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

    hls::stream<distance_LUT_PQ16_t> s_distance_LUT;
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
 
template<const int query_num, const int nprobe>
void PQ_lookup_computation(
    hls::stream<distance_LUT_PQ16_t>& s_distance_LUT,
    hls::stream<single_PQ>& s_single_PQ, 
    hls::stream<int>& s_scanned_entries_every_cell_PQ_lookup_computation,
    hls::stream<int>& s_last_element_valid_PQ_lookup_computation, 
    hls::stream<single_PQ_result>& s_single_PQ_result) {

    // each BRAM stores 2 tables, which can be looked up concurrently by 2 ports
    //    distance_lookup_table_local_0 -> LUT 0, 8
    //    distance_lookup_table_local_1 -> LUT 1, 9
    float distance_lookup_table_local_0[512], distance_lookup_table_local_1[512], 
        distance_lookup_table_local_2[512], distance_lookup_table_local_3[512], 
        distance_lookup_table_local_4[512], distance_lookup_table_local_5[512], 
        distance_lookup_table_local_6[512], distance_lookup_table_local_7[512];
    
    // init_distance_table_partition(distance_lookup_table_local_0, 0);
    // init_distance_table_partition(distance_lookup_table_local_1, 1);
    // init_distance_table_partition(distance_lookup_table_local_2, 2);
    // init_distance_table_partition(distance_lookup_table_local_3, 3);
    // init_distance_table_partition(distance_lookup_table_local_4, 4);
    // init_distance_table_partition(distance_lookup_table_local_5, 5);
    // init_distance_table_partition(distance_lookup_table_local_6, 6);
    // init_distance_table_partition(distance_lookup_table_local_7, 7);

    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int nprobe_id = 0; nprobe_id < nprobe; nprobe_id++) {

            int scanned_entries_every_cell = 
                s_scanned_entries_every_cell_PQ_lookup_computation.read();
            int last_element_valid = 
                s_last_element_valid_PQ_lookup_computation.read();

            for (int row_id = 0; row_id < K; row_id++) {
#pragma HLS pipeline II=1
                distance_LUT_PQ16_t dist_row = s_distance_LUT.read();
                
                // col 0 ~ 7
                distance_lookup_table_local_0[row_id] = dist_row.dist_0; 
                distance_lookup_table_local_1[row_id] = dist_row.dist_1; 
                distance_lookup_table_local_2[row_id] = dist_row.dist_2;
                distance_lookup_table_local_3[row_id] = dist_row.dist_3; 
                distance_lookup_table_local_4[row_id] = dist_row.dist_4; 
                distance_lookup_table_local_5[row_id] = dist_row.dist_5; 
                distance_lookup_table_local_6[row_id] = dist_row.dist_6; 
                distance_lookup_table_local_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_lookup_table_local_0[row_id + 256] = dist_row.dist_8; 
                distance_lookup_table_local_1[row_id + 256] = dist_row.dist_9; 
                distance_lookup_table_local_2[row_id + 256] = dist_row.dist_10; 
                distance_lookup_table_local_3[row_id + 256] = dist_row.dist_11; 
                distance_lookup_table_local_4[row_id + 256] = dist_row.dist_12; 
                distance_lookup_table_local_5[row_id + 256] = dist_row.dist_13; 
                distance_lookup_table_local_6[row_id + 256] = dist_row.dist_14; 
                distance_lookup_table_local_7[row_id + 256] = dist_row.dist_15;
            }

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



template<const int query_num, const int nprobe>
void replicate_s_scanned_entries_every_cell_PQ_lookup_computation(
    hls::stream<int>& s_scanned_entries_every_cell_PQ_lookup_computation,
    hls::stream<int> (&s_scanned_entries_every_cell_PQ_lookup_computation_replicated)[3 * HBM_CHANNEL_NUM]) {

    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int nprobe_id = 0; nprobe_id < nprobe; nprobe_id++) {

            int scanned_entries_every_cell_PQ_lookup_computation = 
                s_scanned_entries_every_cell_PQ_lookup_computation.read();

            for (int s = 0; s < 3 * HBM_CHANNEL_NUM; s++) {
#pragma HLS UNROLL
                s_scanned_entries_every_cell_PQ_lookup_computation_replicated[s].write(
                    scanned_entries_every_cell_PQ_lookup_computation);
            }
        }
    }
}


template<const int query_num, const int nprobe>
void send_s_last_element_valid_PQ_lookup_computation(
    hls::stream<int>& s_last_valid_channel,
    hls::stream<int> (&s_last_element_valid_PQ_lookup_computation)[3 * HBM_CHANNEL_NUM]) {

    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int nprobe_id = 0; nprobe_id < nprobe; nprobe_id++) {

            int last_valid_channel = s_last_valid_channel.read(); 

            for (int s = 0; s < 3 * HBM_CHANNEL_NUM; s++) {
#pragma HLS UNROLL
                if (s <= last_valid_channel) {
                    s_last_element_valid_PQ_lookup_computation[s].write(1); // valid, not padding
                }
                else {
                    s_last_element_valid_PQ_lookup_computation[s].write(0); // invalid, padded element
                }
            }
        }
    }
}


template<const int query_num, const int nprobe>
void PQ_lookup_computation_wrapper(
    hls::stream<single_PQ> (&s_single_PQ)[3 * HBM_CHANNEL_NUM], 
    hls::stream<distance_LUT_PQ16_t>& s_distance_LUT,
    hls::stream<int>& s_scanned_entries_every_cell_PQ_lookup_computation, 
    hls::stream<int>& s_last_valid_channel, 
    hls::stream<single_PQ_result> (&s_single_PQ_result)[4][16]) {

    single_PQ_result out_dummy;
    out_dummy.vec_ID = -1;
    out_dummy.dist = LARGE_NUM;

    // each BRAM stores 2 tables, which can be looked up concurrently by 2 ports
    //    distance_lookup_table_local_0 -> LUT 0, 8
    //    distance_lookup_table_local_1 -> LUT 1, 9
    float distance_LUT_PE0_0[512], distance_LUT_PE0_1[512], 
        distance_LUT_PE0_2[512], distance_LUT_PE0_3[512], 
        distance_LUT_PE0_4[512], distance_LUT_PE0_5[512], 
        distance_LUT_PE0_6[512], distance_LUT_PE0_7[512];
    float distance_LUT_PE1_0[512], distance_LUT_PE1_1[512], 
        distance_LUT_PE1_2[512], distance_LUT_PE1_3[512], 
        distance_LUT_PE1_4[512], distance_LUT_PE1_5[512], 
        distance_LUT_PE1_6[512], distance_LUT_PE1_7[512];
    float distance_LUT_PE2_0[512], distance_LUT_PE2_1[512], 
        distance_LUT_PE2_2[512], distance_LUT_PE2_3[512], 
        distance_LUT_PE2_4[512], distance_LUT_PE2_5[512], 
        distance_LUT_PE2_6[512], distance_LUT_PE2_7[512];
    float distance_LUT_PE3_0[512], distance_LUT_PE3_1[512], 
        distance_LUT_PE3_2[512], distance_LUT_PE3_3[512], 
        distance_LUT_PE3_4[512], distance_LUT_PE3_5[512], 
        distance_LUT_PE3_6[512], distance_LUT_PE3_7[512];
    float distance_LUT_PE4_0[512], distance_LUT_PE4_1[512], 
        distance_LUT_PE4_2[512], distance_LUT_PE4_3[512], 
        distance_LUT_PE4_4[512], distance_LUT_PE4_5[512], 
        distance_LUT_PE4_6[512], distance_LUT_PE4_7[512];
    float distance_LUT_PE5_0[512], distance_LUT_PE5_1[512], 
        distance_LUT_PE5_2[512], distance_LUT_PE5_3[512], 
        distance_LUT_PE5_4[512], distance_LUT_PE5_5[512], 
        distance_LUT_PE5_6[512], distance_LUT_PE5_7[512];
    float distance_LUT_PE6_0[512], distance_LUT_PE6_1[512], 
        distance_LUT_PE6_2[512], distance_LUT_PE6_3[512], 
        distance_LUT_PE6_4[512], distance_LUT_PE6_5[512], 
        distance_LUT_PE6_6[512], distance_LUT_PE6_7[512];
    float distance_LUT_PE7_0[512], distance_LUT_PE7_1[512], 
        distance_LUT_PE7_2[512], distance_LUT_PE7_3[512], 
        distance_LUT_PE7_4[512], distance_LUT_PE7_5[512], 
        distance_LUT_PE7_6[512], distance_LUT_PE7_7[512];
    float distance_LUT_PE8_0[512], distance_LUT_PE8_1[512], 
        distance_LUT_PE8_2[512], distance_LUT_PE8_3[512], 
        distance_LUT_PE8_4[512], distance_LUT_PE8_5[512], 
        distance_LUT_PE8_6[512], distance_LUT_PE8_7[512];
    float distance_LUT_PE9_0[512], distance_LUT_PE9_1[512], 
        distance_LUT_PE9_2[512], distance_LUT_PE9_3[512], 
        distance_LUT_PE9_4[512], distance_LUT_PE9_5[512], 
        distance_LUT_PE9_6[512], distance_LUT_PE9_7[512];
    float distance_LUT_PE10_0[512], distance_LUT_PE10_1[512], 
        distance_LUT_PE10_2[512], distance_LUT_PE10_3[512], 
        distance_LUT_PE10_4[512], distance_LUT_PE10_5[512], 
        distance_LUT_PE10_6[512], distance_LUT_PE10_7[512];
    float distance_LUT_PE11_0[512], distance_LUT_PE11_1[512], 
        distance_LUT_PE11_2[512], distance_LUT_PE11_3[512], 
        distance_LUT_PE11_4[512], distance_LUT_PE11_5[512], 
        distance_LUT_PE11_6[512], distance_LUT_PE11_7[512];
    float distance_LUT_PE12_0[512], distance_LUT_PE12_1[512], 
        distance_LUT_PE12_2[512], distance_LUT_PE12_3[512], 
        distance_LUT_PE12_4[512], distance_LUT_PE12_5[512], 
        distance_LUT_PE12_6[512], distance_LUT_PE12_7[512];
    float distance_LUT_PE13_0[512], distance_LUT_PE13_1[512], 
        distance_LUT_PE13_2[512], distance_LUT_PE13_3[512], 
        distance_LUT_PE13_4[512], distance_LUT_PE13_5[512], 
        distance_LUT_PE13_6[512], distance_LUT_PE13_7[512];
    float distance_LUT_PE14_0[512], distance_LUT_PE14_1[512], 
        distance_LUT_PE14_2[512], distance_LUT_PE14_3[512], 
        distance_LUT_PE14_4[512], distance_LUT_PE14_5[512], 
        distance_LUT_PE14_6[512], distance_LUT_PE14_7[512];
    float distance_LUT_PE15_0[512], distance_LUT_PE15_1[512], 
        distance_LUT_PE15_2[512], distance_LUT_PE15_3[512], 
        distance_LUT_PE15_4[512], distance_LUT_PE15_5[512], 
        distance_LUT_PE15_6[512], distance_LUT_PE15_7[512];
    float distance_LUT_PE16_0[512], distance_LUT_PE16_1[512], 
        distance_LUT_PE16_2[512], distance_LUT_PE16_3[512], 
        distance_LUT_PE16_4[512], distance_LUT_PE16_5[512], 
        distance_LUT_PE16_6[512], distance_LUT_PE16_7[512];
    float distance_LUT_PE17_0[512], distance_LUT_PE17_1[512], 
        distance_LUT_PE17_2[512], distance_LUT_PE17_3[512], 
        distance_LUT_PE17_4[512], distance_LUT_PE17_5[512], 
        distance_LUT_PE17_6[512], distance_LUT_PE17_7[512];
    float distance_LUT_PE18_0[512], distance_LUT_PE18_1[512], 
        distance_LUT_PE18_2[512], distance_LUT_PE18_3[512], 
        distance_LUT_PE18_4[512], distance_LUT_PE18_5[512], 
        distance_LUT_PE18_6[512], distance_LUT_PE18_7[512];
    float distance_LUT_PE19_0[512], distance_LUT_PE19_1[512], 
        distance_LUT_PE19_2[512], distance_LUT_PE19_3[512], 
        distance_LUT_PE19_4[512], distance_LUT_PE19_5[512], 
        distance_LUT_PE19_6[512], distance_LUT_PE19_7[512];
    float distance_LUT_PE20_0[512], distance_LUT_PE20_1[512], 
        distance_LUT_PE20_2[512], distance_LUT_PE20_3[512], 
        distance_LUT_PE20_4[512], distance_LUT_PE20_5[512], 
        distance_LUT_PE20_6[512], distance_LUT_PE20_7[512];
    float distance_LUT_PE21_0[512], distance_LUT_PE21_1[512], 
        distance_LUT_PE21_2[512], distance_LUT_PE21_3[512], 
        distance_LUT_PE21_4[512], distance_LUT_PE21_5[512], 
        distance_LUT_PE21_6[512], distance_LUT_PE21_7[512];
    float distance_LUT_PE22_0[512], distance_LUT_PE22_1[512], 
        distance_LUT_PE22_2[512], distance_LUT_PE22_3[512], 
        distance_LUT_PE22_4[512], distance_LUT_PE22_5[512], 
        distance_LUT_PE22_6[512], distance_LUT_PE22_7[512];
    float distance_LUT_PE23_0[512], distance_LUT_PE23_1[512], 
        distance_LUT_PE23_2[512], distance_LUT_PE23_3[512], 
        distance_LUT_PE23_4[512], distance_LUT_PE23_5[512], 
        distance_LUT_PE23_6[512], distance_LUT_PE23_7[512];
    float distance_LUT_PE24_0[512], distance_LUT_PE24_1[512], 
        distance_LUT_PE24_2[512], distance_LUT_PE24_3[512], 
        distance_LUT_PE24_4[512], distance_LUT_PE24_5[512], 
        distance_LUT_PE24_6[512], distance_LUT_PE24_7[512];
    float distance_LUT_PE25_0[512], distance_LUT_PE25_1[512], 
        distance_LUT_PE25_2[512], distance_LUT_PE25_3[512], 
        distance_LUT_PE25_4[512], distance_LUT_PE25_5[512], 
        distance_LUT_PE25_6[512], distance_LUT_PE25_7[512];
    float distance_LUT_PE26_0[512], distance_LUT_PE26_1[512], 
        distance_LUT_PE26_2[512], distance_LUT_PE26_3[512], 
        distance_LUT_PE26_4[512], distance_LUT_PE26_5[512], 
        distance_LUT_PE26_6[512], distance_LUT_PE26_7[512];
    float distance_LUT_PE27_0[512], distance_LUT_PE27_1[512], 
        distance_LUT_PE27_2[512], distance_LUT_PE27_3[512], 
        distance_LUT_PE27_4[512], distance_LUT_PE27_5[512], 
        distance_LUT_PE27_6[512], distance_LUT_PE27_7[512];
    float distance_LUT_PE28_0[512], distance_LUT_PE28_1[512], 
        distance_LUT_PE28_2[512], distance_LUT_PE28_3[512], 
        distance_LUT_PE28_4[512], distance_LUT_PE28_5[512], 
        distance_LUT_PE28_6[512], distance_LUT_PE28_7[512];
    float distance_LUT_PE29_0[512], distance_LUT_PE29_1[512], 
        distance_LUT_PE29_2[512], distance_LUT_PE29_3[512], 
        distance_LUT_PE29_4[512], distance_LUT_PE29_5[512], 
        distance_LUT_PE29_6[512], distance_LUT_PE29_7[512];
    float distance_LUT_PE30_0[512], distance_LUT_PE30_1[512], 
        distance_LUT_PE30_2[512], distance_LUT_PE30_3[512], 
        distance_LUT_PE30_4[512], distance_LUT_PE30_5[512], 
        distance_LUT_PE30_6[512], distance_LUT_PE30_7[512];
    float distance_LUT_PE31_0[512], distance_LUT_PE31_1[512], 
        distance_LUT_PE31_2[512], distance_LUT_PE31_3[512], 
        distance_LUT_PE31_4[512], distance_LUT_PE31_5[512], 
        distance_LUT_PE31_6[512], distance_LUT_PE31_7[512];
    float distance_LUT_PE32_0[512], distance_LUT_PE32_1[512], 
        distance_LUT_PE32_2[512], distance_LUT_PE32_3[512], 
        distance_LUT_PE32_4[512], distance_LUT_PE32_5[512], 
        distance_LUT_PE32_6[512], distance_LUT_PE32_7[512];
    float distance_LUT_PE33_0[512], distance_LUT_PE33_1[512], 
        distance_LUT_PE33_2[512], distance_LUT_PE33_3[512], 
        distance_LUT_PE33_4[512], distance_LUT_PE33_5[512], 
        distance_LUT_PE33_6[512], distance_LUT_PE33_7[512];
    float distance_LUT_PE34_0[512], distance_LUT_PE34_1[512], 
        distance_LUT_PE34_2[512], distance_LUT_PE34_3[512], 
        distance_LUT_PE34_4[512], distance_LUT_PE34_5[512], 
        distance_LUT_PE34_6[512], distance_LUT_PE34_7[512];
    float distance_LUT_PE35_0[512], distance_LUT_PE35_1[512], 
        distance_LUT_PE35_2[512], distance_LUT_PE35_3[512], 
        distance_LUT_PE35_4[512], distance_LUT_PE35_5[512], 
        distance_LUT_PE35_6[512], distance_LUT_PE35_7[512];
    float distance_LUT_PE36_0[512], distance_LUT_PE36_1[512], 
        distance_LUT_PE36_2[512], distance_LUT_PE36_3[512], 
        distance_LUT_PE36_4[512], distance_LUT_PE36_5[512], 
        distance_LUT_PE36_6[512], distance_LUT_PE36_7[512];
    float distance_LUT_PE37_0[512], distance_LUT_PE37_1[512], 
        distance_LUT_PE37_2[512], distance_LUT_PE37_3[512], 
        distance_LUT_PE37_4[512], distance_LUT_PE37_5[512], 
        distance_LUT_PE37_6[512], distance_LUT_PE37_7[512];
    float distance_LUT_PE38_0[512], distance_LUT_PE38_1[512], 
        distance_LUT_PE38_2[512], distance_LUT_PE38_3[512], 
        distance_LUT_PE38_4[512], distance_LUT_PE38_5[512], 
        distance_LUT_PE38_6[512], distance_LUT_PE38_7[512];
    float distance_LUT_PE39_0[512], distance_LUT_PE39_1[512], 
        distance_LUT_PE39_2[512], distance_LUT_PE39_3[512], 
        distance_LUT_PE39_4[512], distance_LUT_PE39_5[512], 
        distance_LUT_PE39_6[512], distance_LUT_PE39_7[512];
    float distance_LUT_PE40_0[512], distance_LUT_PE40_1[512], 
        distance_LUT_PE40_2[512], distance_LUT_PE40_3[512], 
        distance_LUT_PE40_4[512], distance_LUT_PE40_5[512], 
        distance_LUT_PE40_6[512], distance_LUT_PE40_7[512];
    float distance_LUT_PE41_0[512], distance_LUT_PE41_1[512], 
        distance_LUT_PE41_2[512], distance_LUT_PE41_3[512], 
        distance_LUT_PE41_4[512], distance_LUT_PE41_5[512], 
        distance_LUT_PE41_6[512], distance_LUT_PE41_7[512];
    float distance_LUT_PE42_0[512], distance_LUT_PE42_1[512], 
        distance_LUT_PE42_2[512], distance_LUT_PE42_3[512], 
        distance_LUT_PE42_4[512], distance_LUT_PE42_5[512], 
        distance_LUT_PE42_6[512], distance_LUT_PE42_7[512];
    float distance_LUT_PE43_0[512], distance_LUT_PE43_1[512], 
        distance_LUT_PE43_2[512], distance_LUT_PE43_3[512], 
        distance_LUT_PE43_4[512], distance_LUT_PE43_5[512], 
        distance_LUT_PE43_6[512], distance_LUT_PE43_7[512];
    float distance_LUT_PE44_0[512], distance_LUT_PE44_1[512], 
        distance_LUT_PE44_2[512], distance_LUT_PE44_3[512], 
        distance_LUT_PE44_4[512], distance_LUT_PE44_5[512], 
        distance_LUT_PE44_6[512], distance_LUT_PE44_7[512];
    float distance_LUT_PE45_0[512], distance_LUT_PE45_1[512], 
        distance_LUT_PE45_2[512], distance_LUT_PE45_3[512], 
        distance_LUT_PE45_4[512], distance_LUT_PE45_5[512], 
        distance_LUT_PE45_6[512], distance_LUT_PE45_7[512];
    float distance_LUT_PE46_0[512], distance_LUT_PE46_1[512], 
        distance_LUT_PE46_2[512], distance_LUT_PE46_3[512], 
        distance_LUT_PE46_4[512], distance_LUT_PE46_5[512], 
        distance_LUT_PE46_6[512], distance_LUT_PE46_7[512];
    float distance_LUT_PE47_0[512], distance_LUT_PE47_1[512], 
        distance_LUT_PE47_2[512], distance_LUT_PE47_3[512], 
        distance_LUT_PE47_4[512], distance_LUT_PE47_5[512], 
        distance_LUT_PE47_6[512], distance_LUT_PE47_7[512];
    float distance_LUT_PE48_0[512], distance_LUT_PE48_1[512], 
        distance_LUT_PE48_2[512], distance_LUT_PE48_3[512], 
        distance_LUT_PE48_4[512], distance_LUT_PE48_5[512], 
        distance_LUT_PE48_6[512], distance_LUT_PE48_7[512];
    float distance_LUT_PE49_0[512], distance_LUT_PE49_1[512], 
        distance_LUT_PE49_2[512], distance_LUT_PE49_3[512], 
        distance_LUT_PE49_4[512], distance_LUT_PE49_5[512], 
        distance_LUT_PE49_6[512], distance_LUT_PE49_7[512];
    float distance_LUT_PE50_0[512], distance_LUT_PE50_1[512], 
        distance_LUT_PE50_2[512], distance_LUT_PE50_3[512], 
        distance_LUT_PE50_4[512], distance_LUT_PE50_5[512], 
        distance_LUT_PE50_6[512], distance_LUT_PE50_7[512];
    float distance_LUT_PE51_0[512], distance_LUT_PE51_1[512], 
        distance_LUT_PE51_2[512], distance_LUT_PE51_3[512], 
        distance_LUT_PE51_4[512], distance_LUT_PE51_5[512], 
        distance_LUT_PE51_6[512], distance_LUT_PE51_7[512];
    float distance_LUT_PE52_0[512], distance_LUT_PE52_1[512], 
        distance_LUT_PE52_2[512], distance_LUT_PE52_3[512], 
        distance_LUT_PE52_4[512], distance_LUT_PE52_5[512], 
        distance_LUT_PE52_6[512], distance_LUT_PE52_7[512];
    float distance_LUT_PE53_0[512], distance_LUT_PE53_1[512], 
        distance_LUT_PE53_2[512], distance_LUT_PE53_3[512], 
        distance_LUT_PE53_4[512], distance_LUT_PE53_5[512], 
        distance_LUT_PE53_6[512], distance_LUT_PE53_7[512];
    float distance_LUT_PE54_0[512], distance_LUT_PE54_1[512], 
        distance_LUT_PE54_2[512], distance_LUT_PE54_3[512], 
        distance_LUT_PE54_4[512], distance_LUT_PE54_5[512], 
        distance_LUT_PE54_6[512], distance_LUT_PE54_7[512];
    float distance_LUT_PE55_0[512], distance_LUT_PE55_1[512], 
        distance_LUT_PE55_2[512], distance_LUT_PE55_3[512], 
        distance_LUT_PE55_4[512], distance_LUT_PE55_5[512], 
        distance_LUT_PE55_6[512], distance_LUT_PE55_7[512];
    float distance_LUT_PE56_0[512], distance_LUT_PE56_1[512], 
        distance_LUT_PE56_2[512], distance_LUT_PE56_3[512], 
        distance_LUT_PE56_4[512], distance_LUT_PE56_5[512], 
        distance_LUT_PE56_6[512], distance_LUT_PE56_7[512];
    float distance_LUT_PE57_0[512], distance_LUT_PE57_1[512], 
        distance_LUT_PE57_2[512], distance_LUT_PE57_3[512], 
        distance_LUT_PE57_4[512], distance_LUT_PE57_5[512], 
        distance_LUT_PE57_6[512], distance_LUT_PE57_7[512];
    float distance_LUT_PE58_0[512], distance_LUT_PE58_1[512], 
        distance_LUT_PE58_2[512], distance_LUT_PE58_3[512], 
        distance_LUT_PE58_4[512], distance_LUT_PE58_5[512], 
        distance_LUT_PE58_6[512], distance_LUT_PE58_7[512];
    float distance_LUT_PE59_0[512], distance_LUT_PE59_1[512], 
        distance_LUT_PE59_2[512], distance_LUT_PE59_3[512], 
        distance_LUT_PE59_4[512], distance_LUT_PE59_5[512], 
        distance_LUT_PE59_6[512], distance_LUT_PE59_7[512];
    float distance_LUT_PE60_0[512], distance_LUT_PE60_1[512], 
        distance_LUT_PE60_2[512], distance_LUT_PE60_3[512], 
        distance_LUT_PE60_4[512], distance_LUT_PE60_5[512], 
        distance_LUT_PE60_6[512], distance_LUT_PE60_7[512];
    float distance_LUT_PE61_0[512], distance_LUT_PE61_1[512], 
        distance_LUT_PE61_2[512], distance_LUT_PE61_3[512], 
        distance_LUT_PE61_4[512], distance_LUT_PE61_5[512], 
        distance_LUT_PE61_6[512], distance_LUT_PE61_7[512];
    float distance_LUT_PE62_0[512], distance_LUT_PE62_1[512], 
        distance_LUT_PE62_2[512], distance_LUT_PE62_3[512], 
        distance_LUT_PE62_4[512], distance_LUT_PE62_5[512], 
        distance_LUT_PE62_6[512], distance_LUT_PE62_7[512];

    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int nprobe_id = 0; nprobe_id < nprobe; nprobe_id++) {

            int scanned_entries_every_cell = 
                s_scanned_entries_every_cell_PQ_lookup_computation.read();
            int last_valid_channel = 
                s_last_valid_channel.read();

            ///////// Init Distance LUT //////////
            for (int row_id = 0; row_id < K; row_id++) {
#pragma HLS pipeline II=1
                distance_LUT_PQ16_t dist_row = s_distance_LUT.read();
                
                // col 0 ~ 7
                distance_LUT_PE0_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE0_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE0_2[row_id] = dist_row.dist_2;
                distance_LUT_PE0_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE0_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE0_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE0_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE0_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE0_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE0_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE0_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE0_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE0_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE0_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE0_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE0_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE1_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE1_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE1_2[row_id] = dist_row.dist_2;
                distance_LUT_PE1_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE1_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE1_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE1_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE1_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE1_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE1_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE1_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE1_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE1_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE1_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE1_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE1_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE2_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE2_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE2_2[row_id] = dist_row.dist_2;
                distance_LUT_PE2_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE2_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE2_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE2_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE2_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE2_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE2_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE2_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE2_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE2_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE2_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE2_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE2_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE3_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE3_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE3_2[row_id] = dist_row.dist_2;
                distance_LUT_PE3_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE3_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE3_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE3_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE3_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE3_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE3_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE3_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE3_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE3_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE3_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE3_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE3_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE4_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE4_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE4_2[row_id] = dist_row.dist_2;
                distance_LUT_PE4_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE4_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE4_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE4_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE4_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE4_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE4_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE4_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE4_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE4_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE4_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE4_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE4_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE5_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE5_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE5_2[row_id] = dist_row.dist_2;
                distance_LUT_PE5_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE5_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE5_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE5_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE5_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE5_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE5_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE5_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE5_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE5_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE5_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE5_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE5_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE6_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE6_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE6_2[row_id] = dist_row.dist_2;
                distance_LUT_PE6_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE6_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE6_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE6_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE6_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE6_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE6_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE6_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE6_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE6_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE6_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE6_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE6_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE7_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE7_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE7_2[row_id] = dist_row.dist_2;
                distance_LUT_PE7_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE7_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE7_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE7_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE7_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE7_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE7_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE7_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE7_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE7_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE7_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE7_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE7_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE8_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE8_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE8_2[row_id] = dist_row.dist_2;
                distance_LUT_PE8_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE8_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE8_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE8_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE8_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE8_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE8_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE8_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE8_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE8_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE8_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE8_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE8_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE9_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE9_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE9_2[row_id] = dist_row.dist_2;
                distance_LUT_PE9_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE9_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE9_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE9_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE9_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE9_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE9_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE9_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE9_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE9_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE9_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE9_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE9_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE10_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE10_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE10_2[row_id] = dist_row.dist_2;
                distance_LUT_PE10_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE10_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE10_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE10_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE10_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE10_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE10_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE10_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE10_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE10_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE10_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE10_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE10_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE11_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE11_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE11_2[row_id] = dist_row.dist_2;
                distance_LUT_PE11_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE11_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE11_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE11_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE11_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE11_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE11_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE11_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE11_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE11_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE11_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE11_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE11_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE12_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE12_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE12_2[row_id] = dist_row.dist_2;
                distance_LUT_PE12_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE12_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE12_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE12_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE12_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE12_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE12_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE12_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE12_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE12_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE12_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE12_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE12_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE13_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE13_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE13_2[row_id] = dist_row.dist_2;
                distance_LUT_PE13_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE13_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE13_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE13_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE13_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE13_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE13_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE13_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE13_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE13_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE13_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE13_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE13_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE14_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE14_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE14_2[row_id] = dist_row.dist_2;
                distance_LUT_PE14_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE14_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE14_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE14_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE14_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE14_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE14_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE14_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE14_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE14_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE14_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE14_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE14_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE15_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE15_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE15_2[row_id] = dist_row.dist_2;
                distance_LUT_PE15_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE15_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE15_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE15_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE15_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE15_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE15_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE15_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE15_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE15_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE15_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE15_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE15_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE16_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE16_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE16_2[row_id] = dist_row.dist_2;
                distance_LUT_PE16_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE16_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE16_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE16_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE16_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE16_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE16_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE16_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE16_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE16_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE16_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE16_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE16_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE17_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE17_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE17_2[row_id] = dist_row.dist_2;
                distance_LUT_PE17_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE17_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE17_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE17_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE17_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE17_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE17_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE17_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE17_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE17_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE17_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE17_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE17_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE18_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE18_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE18_2[row_id] = dist_row.dist_2;
                distance_LUT_PE18_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE18_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE18_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE18_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE18_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE18_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE18_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE18_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE18_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE18_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE18_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE18_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE18_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE19_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE19_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE19_2[row_id] = dist_row.dist_2;
                distance_LUT_PE19_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE19_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE19_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE19_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE19_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE19_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE19_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE19_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE19_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE19_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE19_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE19_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE19_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE20_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE20_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE20_2[row_id] = dist_row.dist_2;
                distance_LUT_PE20_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE20_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE20_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE20_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE20_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE20_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE20_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE20_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE20_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE20_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE20_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE20_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE20_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE21_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE21_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE21_2[row_id] = dist_row.dist_2;
                distance_LUT_PE21_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE21_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE21_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE21_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE21_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE21_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE21_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE21_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE21_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE21_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE21_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE21_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE21_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE22_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE22_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE22_2[row_id] = dist_row.dist_2;
                distance_LUT_PE22_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE22_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE22_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE22_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE22_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE22_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE22_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE22_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE22_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE22_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE22_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE22_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE22_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE23_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE23_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE23_2[row_id] = dist_row.dist_2;
                distance_LUT_PE23_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE23_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE23_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE23_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE23_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE23_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE23_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE23_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE23_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE23_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE23_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE23_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE23_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE24_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE24_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE24_2[row_id] = dist_row.dist_2;
                distance_LUT_PE24_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE24_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE24_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE24_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE24_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE24_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE24_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE24_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE24_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE24_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE24_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE24_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE24_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE25_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE25_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE25_2[row_id] = dist_row.dist_2;
                distance_LUT_PE25_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE25_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE25_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE25_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE25_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE25_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE25_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE25_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE25_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE25_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE25_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE25_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE25_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE26_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE26_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE26_2[row_id] = dist_row.dist_2;
                distance_LUT_PE26_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE26_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE26_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE26_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE26_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE26_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE26_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE26_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE26_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE26_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE26_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE26_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE26_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE27_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE27_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE27_2[row_id] = dist_row.dist_2;
                distance_LUT_PE27_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE27_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE27_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE27_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE27_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE27_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE27_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE27_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE27_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE27_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE27_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE27_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE27_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE28_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE28_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE28_2[row_id] = dist_row.dist_2;
                distance_LUT_PE28_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE28_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE28_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE28_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE28_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE28_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE28_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE28_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE28_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE28_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE28_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE28_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE28_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE29_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE29_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE29_2[row_id] = dist_row.dist_2;
                distance_LUT_PE29_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE29_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE29_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE29_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE29_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE29_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE29_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE29_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE29_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE29_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE29_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE29_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE29_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE30_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE30_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE30_2[row_id] = dist_row.dist_2;
                distance_LUT_PE30_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE30_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE30_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE30_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE30_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE30_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE30_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE30_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE30_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE30_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE30_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE30_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE30_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE31_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE31_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE31_2[row_id] = dist_row.dist_2;
                distance_LUT_PE31_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE31_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE31_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE31_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE31_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE31_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE31_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE31_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE31_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE31_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE31_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE31_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE31_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE32_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE32_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE32_2[row_id] = dist_row.dist_2;
                distance_LUT_PE32_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE32_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE32_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE32_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE32_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE32_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE32_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE32_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE32_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE32_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE32_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE32_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE32_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE33_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE33_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE33_2[row_id] = dist_row.dist_2;
                distance_LUT_PE33_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE33_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE33_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE33_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE33_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE33_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE33_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE33_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE33_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE33_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE33_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE33_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE33_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE34_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE34_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE34_2[row_id] = dist_row.dist_2;
                distance_LUT_PE34_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE34_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE34_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE34_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE34_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE34_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE34_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE34_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE34_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE34_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE34_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE34_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE34_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE35_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE35_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE35_2[row_id] = dist_row.dist_2;
                distance_LUT_PE35_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE35_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE35_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE35_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE35_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE35_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE35_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE35_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE35_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE35_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE35_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE35_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE35_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE36_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE36_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE36_2[row_id] = dist_row.dist_2;
                distance_LUT_PE36_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE36_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE36_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE36_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE36_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE36_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE36_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE36_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE36_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE36_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE36_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE36_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE36_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE37_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE37_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE37_2[row_id] = dist_row.dist_2;
                distance_LUT_PE37_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE37_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE37_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE37_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE37_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE37_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE37_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE37_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE37_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE37_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE37_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE37_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE37_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE38_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE38_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE38_2[row_id] = dist_row.dist_2;
                distance_LUT_PE38_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE38_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE38_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE38_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE38_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE38_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE38_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE38_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE38_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE38_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE38_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE38_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE38_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE39_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE39_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE39_2[row_id] = dist_row.dist_2;
                distance_LUT_PE39_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE39_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE39_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE39_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE39_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE39_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE39_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE39_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE39_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE39_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE39_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE39_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE39_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE40_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE40_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE40_2[row_id] = dist_row.dist_2;
                distance_LUT_PE40_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE40_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE40_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE40_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE40_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE40_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE40_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE40_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE40_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE40_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE40_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE40_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE40_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE41_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE41_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE41_2[row_id] = dist_row.dist_2;
                distance_LUT_PE41_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE41_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE41_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE41_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE41_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE41_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE41_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE41_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE41_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE41_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE41_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE41_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE41_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE42_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE42_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE42_2[row_id] = dist_row.dist_2;
                distance_LUT_PE42_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE42_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE42_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE42_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE42_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE42_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE42_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE42_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE42_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE42_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE42_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE42_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE42_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE43_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE43_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE43_2[row_id] = dist_row.dist_2;
                distance_LUT_PE43_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE43_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE43_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE43_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE43_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE43_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE43_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE43_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE43_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE43_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE43_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE43_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE43_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE44_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE44_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE44_2[row_id] = dist_row.dist_2;
                distance_LUT_PE44_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE44_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE44_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE44_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE44_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE44_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE44_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE44_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE44_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE44_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE44_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE44_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE44_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE45_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE45_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE45_2[row_id] = dist_row.dist_2;
                distance_LUT_PE45_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE45_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE45_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE45_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE45_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE45_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE45_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE45_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE45_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE45_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE45_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE45_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE45_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE46_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE46_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE46_2[row_id] = dist_row.dist_2;
                distance_LUT_PE46_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE46_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE46_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE46_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE46_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE46_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE46_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE46_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE46_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE46_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE46_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE46_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE46_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE47_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE47_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE47_2[row_id] = dist_row.dist_2;
                distance_LUT_PE47_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE47_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE47_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE47_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE47_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE47_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE47_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE47_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE47_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE47_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE47_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE47_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE47_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE48_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE48_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE48_2[row_id] = dist_row.dist_2;
                distance_LUT_PE48_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE48_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE48_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE48_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE48_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE48_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE48_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE48_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE48_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE48_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE48_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE48_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE48_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE49_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE49_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE49_2[row_id] = dist_row.dist_2;
                distance_LUT_PE49_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE49_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE49_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE49_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE49_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE49_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE49_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE49_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE49_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE49_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE49_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE49_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE49_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE50_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE50_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE50_2[row_id] = dist_row.dist_2;
                distance_LUT_PE50_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE50_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE50_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE50_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE50_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE50_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE50_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE50_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE50_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE50_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE50_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE50_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE50_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE51_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE51_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE51_2[row_id] = dist_row.dist_2;
                distance_LUT_PE51_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE51_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE51_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE51_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE51_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE51_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE51_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE51_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE51_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE51_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE51_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE51_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE51_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE52_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE52_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE52_2[row_id] = dist_row.dist_2;
                distance_LUT_PE52_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE52_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE52_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE52_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE52_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE52_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE52_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE52_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE52_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE52_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE52_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE52_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE52_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE53_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE53_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE53_2[row_id] = dist_row.dist_2;
                distance_LUT_PE53_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE53_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE53_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE53_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE53_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE53_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE53_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE53_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE53_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE53_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE53_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE53_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE53_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE54_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE54_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE54_2[row_id] = dist_row.dist_2;
                distance_LUT_PE54_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE54_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE54_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE54_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE54_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE54_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE54_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE54_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE54_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE54_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE54_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE54_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE54_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE55_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE55_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE55_2[row_id] = dist_row.dist_2;
                distance_LUT_PE55_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE55_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE55_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE55_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE55_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE55_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE55_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE55_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE55_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE55_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE55_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE55_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE55_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE56_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE56_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE56_2[row_id] = dist_row.dist_2;
                distance_LUT_PE56_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE56_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE56_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE56_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE56_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE56_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE56_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE56_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE56_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE56_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE56_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE56_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE56_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE57_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE57_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE57_2[row_id] = dist_row.dist_2;
                distance_LUT_PE57_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE57_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE57_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE57_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE57_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE57_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE57_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE57_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE57_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE57_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE57_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE57_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE57_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE58_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE58_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE58_2[row_id] = dist_row.dist_2;
                distance_LUT_PE58_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE58_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE58_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE58_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE58_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE58_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE58_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE58_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE58_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE58_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE58_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE58_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE58_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE59_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE59_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE59_2[row_id] = dist_row.dist_2;
                distance_LUT_PE59_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE59_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE59_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE59_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE59_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE59_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE59_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE59_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE59_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE59_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE59_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE59_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE59_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE60_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE60_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE60_2[row_id] = dist_row.dist_2;
                distance_LUT_PE60_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE60_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE60_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE60_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE60_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE60_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE60_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE60_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE60_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE60_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE60_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE60_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE60_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE61_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE61_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE61_2[row_id] = dist_row.dist_2;
                distance_LUT_PE61_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE61_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE61_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE61_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE61_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE61_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE61_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE61_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE61_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE61_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE61_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE61_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE61_7[row_id + 256] = dist_row.dist_15;

                // col 0 ~ 7
                distance_LUT_PE62_0[row_id] = dist_row.dist_0; 
                distance_LUT_PE62_1[row_id] = dist_row.dist_1; 
                distance_LUT_PE62_2[row_id] = dist_row.dist_2;
                distance_LUT_PE62_3[row_id] = dist_row.dist_3; 
                distance_LUT_PE62_4[row_id] = dist_row.dist_4; 
                distance_LUT_PE62_5[row_id] = dist_row.dist_5; 
                distance_LUT_PE62_6[row_id] = dist_row.dist_6; 
                distance_LUT_PE62_7[row_id] = dist_row.dist_7; 

                // col 8 ~ 15
                distance_LUT_PE62_0[row_id + 256] = dist_row.dist_8; 
                distance_LUT_PE62_1[row_id + 256] = dist_row.dist_9; 
                distance_LUT_PE62_2[row_id + 256] = dist_row.dist_10; 
                distance_LUT_PE62_3[row_id + 256] = dist_row.dist_11; 
                distance_LUT_PE62_4[row_id + 256] = dist_row.dist_12; 
                distance_LUT_PE62_5[row_id + 256] = dist_row.dist_13; 
                distance_LUT_PE62_6[row_id + 256] = dist_row.dist_14; 
                distance_LUT_PE62_7[row_id + 256] = dist_row.dist_15; 
            }

            for (int entry_id = 0; entry_id < scanned_entries_every_cell; entry_id++) {
#pragma HLS pipeline II=1

                single_PQ PQ_PE0 = s_single_PQ[0].read();
                single_PQ PQ_PE1 = s_single_PQ[1].read();
                single_PQ PQ_PE2 = s_single_PQ[2].read();
                single_PQ PQ_PE3 = s_single_PQ[3].read();
                single_PQ PQ_PE4 = s_single_PQ[4].read();
                single_PQ PQ_PE5 = s_single_PQ[5].read();
                single_PQ PQ_PE6 = s_single_PQ[6].read();
                single_PQ PQ_PE7 = s_single_PQ[7].read();
                single_PQ PQ_PE8 = s_single_PQ[8].read();
                single_PQ PQ_PE9 = s_single_PQ[9].read();
                single_PQ PQ_PE10 = s_single_PQ[10].read();
                single_PQ PQ_PE11 = s_single_PQ[11].read();
                single_PQ PQ_PE12 = s_single_PQ[12].read();
                single_PQ PQ_PE13 = s_single_PQ[13].read();
                single_PQ PQ_PE14 = s_single_PQ[14].read();
                single_PQ PQ_PE15 = s_single_PQ[15].read();
                single_PQ PQ_PE16 = s_single_PQ[16].read();
                single_PQ PQ_PE17 = s_single_PQ[17].read();
                single_PQ PQ_PE18 = s_single_PQ[18].read();
                single_PQ PQ_PE19 = s_single_PQ[19].read();
                single_PQ PQ_PE20 = s_single_PQ[20].read();
                single_PQ PQ_PE21 = s_single_PQ[21].read();
                single_PQ PQ_PE22 = s_single_PQ[22].read();
                single_PQ PQ_PE23 = s_single_PQ[23].read();
                single_PQ PQ_PE24 = s_single_PQ[24].read();
                single_PQ PQ_PE25 = s_single_PQ[25].read();
                single_PQ PQ_PE26 = s_single_PQ[26].read();
                single_PQ PQ_PE27 = s_single_PQ[27].read();
                single_PQ PQ_PE28 = s_single_PQ[28].read();
                single_PQ PQ_PE29 = s_single_PQ[29].read();
                single_PQ PQ_PE30 = s_single_PQ[30].read();
                single_PQ PQ_PE31 = s_single_PQ[31].read();
                single_PQ PQ_PE32 = s_single_PQ[32].read();
                single_PQ PQ_PE33 = s_single_PQ[33].read();
                single_PQ PQ_PE34 = s_single_PQ[34].read();
                single_PQ PQ_PE35 = s_single_PQ[35].read();
                single_PQ PQ_PE36 = s_single_PQ[36].read();
                single_PQ PQ_PE37 = s_single_PQ[37].read();
                single_PQ PQ_PE38 = s_single_PQ[38].read();
                single_PQ PQ_PE39 = s_single_PQ[39].read();
                single_PQ PQ_PE40 = s_single_PQ[40].read();
                single_PQ PQ_PE41 = s_single_PQ[41].read();
                single_PQ PQ_PE42 = s_single_PQ[42].read();
                single_PQ PQ_PE43 = s_single_PQ[43].read();
                single_PQ PQ_PE44 = s_single_PQ[44].read();
                single_PQ PQ_PE45 = s_single_PQ[45].read();
                single_PQ PQ_PE46 = s_single_PQ[46].read();
                single_PQ PQ_PE47 = s_single_PQ[47].read();
                single_PQ PQ_PE48 = s_single_PQ[48].read();
                single_PQ PQ_PE49 = s_single_PQ[49].read();
                single_PQ PQ_PE50 = s_single_PQ[50].read();
                single_PQ PQ_PE51 = s_single_PQ[51].read();
                single_PQ PQ_PE52 = s_single_PQ[52].read();
                single_PQ PQ_PE53 = s_single_PQ[53].read();
                single_PQ PQ_PE54 = s_single_PQ[54].read();
                single_PQ PQ_PE55 = s_single_PQ[55].read();
                single_PQ PQ_PE56 = s_single_PQ[56].read();
                single_PQ PQ_PE57 = s_single_PQ[57].read();
                single_PQ PQ_PE58 = s_single_PQ[58].read();
                single_PQ PQ_PE59 = s_single_PQ[59].read();
                single_PQ PQ_PE60 = s_single_PQ[60].read();
                single_PQ PQ_PE61 = s_single_PQ[61].read();
                single_PQ PQ_PE62 = s_single_PQ[62].read();

                unsigned char lookup_idx_PE0_0 = PQ_PE0.PQ_code[0];
                unsigned char lookup_idx_PE0_1 = PQ_PE0.PQ_code[1];
                unsigned char lookup_idx_PE0_2 = PQ_PE0.PQ_code[2];
                unsigned char lookup_idx_PE0_3 = PQ_PE0.PQ_code[3];
                unsigned char lookup_idx_PE0_4 = PQ_PE0.PQ_code[4];
                unsigned char lookup_idx_PE0_5 = PQ_PE0.PQ_code[5];
                unsigned char lookup_idx_PE0_6 = PQ_PE0.PQ_code[6];
                unsigned char lookup_idx_PE0_7 = PQ_PE0.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE0_8 = PQ_PE0.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE0_9 = PQ_PE0.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE0_10 = PQ_PE0.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE0_11 = PQ_PE0.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE0_12 = PQ_PE0.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE0_13 = PQ_PE0.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE0_14 = PQ_PE0.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE0_15 = PQ_PE0.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE1_0 = PQ_PE1.PQ_code[0];
                unsigned char lookup_idx_PE1_1 = PQ_PE1.PQ_code[1];
                unsigned char lookup_idx_PE1_2 = PQ_PE1.PQ_code[2];
                unsigned char lookup_idx_PE1_3 = PQ_PE1.PQ_code[3];
                unsigned char lookup_idx_PE1_4 = PQ_PE1.PQ_code[4];
                unsigned char lookup_idx_PE1_5 = PQ_PE1.PQ_code[5];
                unsigned char lookup_idx_PE1_6 = PQ_PE1.PQ_code[6];
                unsigned char lookup_idx_PE1_7 = PQ_PE1.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE1_8 = PQ_PE1.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE1_9 = PQ_PE1.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE1_10 = PQ_PE1.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE1_11 = PQ_PE1.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE1_12 = PQ_PE1.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE1_13 = PQ_PE1.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE1_14 = PQ_PE1.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE1_15 = PQ_PE1.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE2_0 = PQ_PE2.PQ_code[0];
                unsigned char lookup_idx_PE2_1 = PQ_PE2.PQ_code[1];
                unsigned char lookup_idx_PE2_2 = PQ_PE2.PQ_code[2];
                unsigned char lookup_idx_PE2_3 = PQ_PE2.PQ_code[3];
                unsigned char lookup_idx_PE2_4 = PQ_PE2.PQ_code[4];
                unsigned char lookup_idx_PE2_5 = PQ_PE2.PQ_code[5];
                unsigned char lookup_idx_PE2_6 = PQ_PE2.PQ_code[6];
                unsigned char lookup_idx_PE2_7 = PQ_PE2.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE2_8 = PQ_PE2.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE2_9 = PQ_PE2.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE2_10 = PQ_PE2.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE2_11 = PQ_PE2.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE2_12 = PQ_PE2.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE2_13 = PQ_PE2.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE2_14 = PQ_PE2.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE2_15 = PQ_PE2.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE3_0 = PQ_PE3.PQ_code[0];
                unsigned char lookup_idx_PE3_1 = PQ_PE3.PQ_code[1];
                unsigned char lookup_idx_PE3_2 = PQ_PE3.PQ_code[2];
                unsigned char lookup_idx_PE3_3 = PQ_PE3.PQ_code[3];
                unsigned char lookup_idx_PE3_4 = PQ_PE3.PQ_code[4];
                unsigned char lookup_idx_PE3_5 = PQ_PE3.PQ_code[5];
                unsigned char lookup_idx_PE3_6 = PQ_PE3.PQ_code[6];
                unsigned char lookup_idx_PE3_7 = PQ_PE3.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE3_8 = PQ_PE3.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE3_9 = PQ_PE3.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE3_10 = PQ_PE3.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE3_11 = PQ_PE3.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE3_12 = PQ_PE3.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE3_13 = PQ_PE3.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE3_14 = PQ_PE3.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE3_15 = PQ_PE3.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE4_0 = PQ_PE4.PQ_code[0];
                unsigned char lookup_idx_PE4_1 = PQ_PE4.PQ_code[1];
                unsigned char lookup_idx_PE4_2 = PQ_PE4.PQ_code[2];
                unsigned char lookup_idx_PE4_3 = PQ_PE4.PQ_code[3];
                unsigned char lookup_idx_PE4_4 = PQ_PE4.PQ_code[4];
                unsigned char lookup_idx_PE4_5 = PQ_PE4.PQ_code[5];
                unsigned char lookup_idx_PE4_6 = PQ_PE4.PQ_code[6];
                unsigned char lookup_idx_PE4_7 = PQ_PE4.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE4_8 = PQ_PE4.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE4_9 = PQ_PE4.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE4_10 = PQ_PE4.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE4_11 = PQ_PE4.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE4_12 = PQ_PE4.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE4_13 = PQ_PE4.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE4_14 = PQ_PE4.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE4_15 = PQ_PE4.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE5_0 = PQ_PE5.PQ_code[0];
                unsigned char lookup_idx_PE5_1 = PQ_PE5.PQ_code[1];
                unsigned char lookup_idx_PE5_2 = PQ_PE5.PQ_code[2];
                unsigned char lookup_idx_PE5_3 = PQ_PE5.PQ_code[3];
                unsigned char lookup_idx_PE5_4 = PQ_PE5.PQ_code[4];
                unsigned char lookup_idx_PE5_5 = PQ_PE5.PQ_code[5];
                unsigned char lookup_idx_PE5_6 = PQ_PE5.PQ_code[6];
                unsigned char lookup_idx_PE5_7 = PQ_PE5.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE5_8 = PQ_PE5.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE5_9 = PQ_PE5.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE5_10 = PQ_PE5.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE5_11 = PQ_PE5.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE5_12 = PQ_PE5.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE5_13 = PQ_PE5.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE5_14 = PQ_PE5.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE5_15 = PQ_PE5.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE6_0 = PQ_PE6.PQ_code[0];
                unsigned char lookup_idx_PE6_1 = PQ_PE6.PQ_code[1];
                unsigned char lookup_idx_PE6_2 = PQ_PE6.PQ_code[2];
                unsigned char lookup_idx_PE6_3 = PQ_PE6.PQ_code[3];
                unsigned char lookup_idx_PE6_4 = PQ_PE6.PQ_code[4];
                unsigned char lookup_idx_PE6_5 = PQ_PE6.PQ_code[5];
                unsigned char lookup_idx_PE6_6 = PQ_PE6.PQ_code[6];
                unsigned char lookup_idx_PE6_7 = PQ_PE6.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE6_8 = PQ_PE6.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE6_9 = PQ_PE6.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE6_10 = PQ_PE6.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE6_11 = PQ_PE6.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE6_12 = PQ_PE6.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE6_13 = PQ_PE6.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE6_14 = PQ_PE6.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE6_15 = PQ_PE6.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE7_0 = PQ_PE7.PQ_code[0];
                unsigned char lookup_idx_PE7_1 = PQ_PE7.PQ_code[1];
                unsigned char lookup_idx_PE7_2 = PQ_PE7.PQ_code[2];
                unsigned char lookup_idx_PE7_3 = PQ_PE7.PQ_code[3];
                unsigned char lookup_idx_PE7_4 = PQ_PE7.PQ_code[4];
                unsigned char lookup_idx_PE7_5 = PQ_PE7.PQ_code[5];
                unsigned char lookup_idx_PE7_6 = PQ_PE7.PQ_code[6];
                unsigned char lookup_idx_PE7_7 = PQ_PE7.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE7_8 = PQ_PE7.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE7_9 = PQ_PE7.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE7_10 = PQ_PE7.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE7_11 = PQ_PE7.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE7_12 = PQ_PE7.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE7_13 = PQ_PE7.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE7_14 = PQ_PE7.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE7_15 = PQ_PE7.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE8_0 = PQ_PE8.PQ_code[0];
                unsigned char lookup_idx_PE8_1 = PQ_PE8.PQ_code[1];
                unsigned char lookup_idx_PE8_2 = PQ_PE8.PQ_code[2];
                unsigned char lookup_idx_PE8_3 = PQ_PE8.PQ_code[3];
                unsigned char lookup_idx_PE8_4 = PQ_PE8.PQ_code[4];
                unsigned char lookup_idx_PE8_5 = PQ_PE8.PQ_code[5];
                unsigned char lookup_idx_PE8_6 = PQ_PE8.PQ_code[6];
                unsigned char lookup_idx_PE8_7 = PQ_PE8.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE8_8 = PQ_PE8.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE8_9 = PQ_PE8.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE8_10 = PQ_PE8.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE8_11 = PQ_PE8.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE8_12 = PQ_PE8.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE8_13 = PQ_PE8.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE8_14 = PQ_PE8.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE8_15 = PQ_PE8.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE9_0 = PQ_PE9.PQ_code[0];
                unsigned char lookup_idx_PE9_1 = PQ_PE9.PQ_code[1];
                unsigned char lookup_idx_PE9_2 = PQ_PE9.PQ_code[2];
                unsigned char lookup_idx_PE9_3 = PQ_PE9.PQ_code[3];
                unsigned char lookup_idx_PE9_4 = PQ_PE9.PQ_code[4];
                unsigned char lookup_idx_PE9_5 = PQ_PE9.PQ_code[5];
                unsigned char lookup_idx_PE9_6 = PQ_PE9.PQ_code[6];
                unsigned char lookup_idx_PE9_7 = PQ_PE9.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE9_8 = PQ_PE9.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE9_9 = PQ_PE9.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE9_10 = PQ_PE9.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE9_11 = PQ_PE9.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE9_12 = PQ_PE9.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE9_13 = PQ_PE9.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE9_14 = PQ_PE9.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE9_15 = PQ_PE9.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE10_0 = PQ_PE10.PQ_code[0];
                unsigned char lookup_idx_PE10_1 = PQ_PE10.PQ_code[1];
                unsigned char lookup_idx_PE10_2 = PQ_PE10.PQ_code[2];
                unsigned char lookup_idx_PE10_3 = PQ_PE10.PQ_code[3];
                unsigned char lookup_idx_PE10_4 = PQ_PE10.PQ_code[4];
                unsigned char lookup_idx_PE10_5 = PQ_PE10.PQ_code[5];
                unsigned char lookup_idx_PE10_6 = PQ_PE10.PQ_code[6];
                unsigned char lookup_idx_PE10_7 = PQ_PE10.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE10_8 = PQ_PE10.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE10_9 = PQ_PE10.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE10_10 = PQ_PE10.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE10_11 = PQ_PE10.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE10_12 = PQ_PE10.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE10_13 = PQ_PE10.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE10_14 = PQ_PE10.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE10_15 = PQ_PE10.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE11_0 = PQ_PE11.PQ_code[0];
                unsigned char lookup_idx_PE11_1 = PQ_PE11.PQ_code[1];
                unsigned char lookup_idx_PE11_2 = PQ_PE11.PQ_code[2];
                unsigned char lookup_idx_PE11_3 = PQ_PE11.PQ_code[3];
                unsigned char lookup_idx_PE11_4 = PQ_PE11.PQ_code[4];
                unsigned char lookup_idx_PE11_5 = PQ_PE11.PQ_code[5];
                unsigned char lookup_idx_PE11_6 = PQ_PE11.PQ_code[6];
                unsigned char lookup_idx_PE11_7 = PQ_PE11.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE11_8 = PQ_PE11.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE11_9 = PQ_PE11.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE11_10 = PQ_PE11.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE11_11 = PQ_PE11.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE11_12 = PQ_PE11.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE11_13 = PQ_PE11.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE11_14 = PQ_PE11.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE11_15 = PQ_PE11.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE12_0 = PQ_PE12.PQ_code[0];
                unsigned char lookup_idx_PE12_1 = PQ_PE12.PQ_code[1];
                unsigned char lookup_idx_PE12_2 = PQ_PE12.PQ_code[2];
                unsigned char lookup_idx_PE12_3 = PQ_PE12.PQ_code[3];
                unsigned char lookup_idx_PE12_4 = PQ_PE12.PQ_code[4];
                unsigned char lookup_idx_PE12_5 = PQ_PE12.PQ_code[5];
                unsigned char lookup_idx_PE12_6 = PQ_PE12.PQ_code[6];
                unsigned char lookup_idx_PE12_7 = PQ_PE12.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE12_8 = PQ_PE12.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE12_9 = PQ_PE12.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE12_10 = PQ_PE12.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE12_11 = PQ_PE12.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE12_12 = PQ_PE12.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE12_13 = PQ_PE12.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE12_14 = PQ_PE12.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE12_15 = PQ_PE12.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE13_0 = PQ_PE13.PQ_code[0];
                unsigned char lookup_idx_PE13_1 = PQ_PE13.PQ_code[1];
                unsigned char lookup_idx_PE13_2 = PQ_PE13.PQ_code[2];
                unsigned char lookup_idx_PE13_3 = PQ_PE13.PQ_code[3];
                unsigned char lookup_idx_PE13_4 = PQ_PE13.PQ_code[4];
                unsigned char lookup_idx_PE13_5 = PQ_PE13.PQ_code[5];
                unsigned char lookup_idx_PE13_6 = PQ_PE13.PQ_code[6];
                unsigned char lookup_idx_PE13_7 = PQ_PE13.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE13_8 = PQ_PE13.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE13_9 = PQ_PE13.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE13_10 = PQ_PE13.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE13_11 = PQ_PE13.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE13_12 = PQ_PE13.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE13_13 = PQ_PE13.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE13_14 = PQ_PE13.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE13_15 = PQ_PE13.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE14_0 = PQ_PE14.PQ_code[0];
                unsigned char lookup_idx_PE14_1 = PQ_PE14.PQ_code[1];
                unsigned char lookup_idx_PE14_2 = PQ_PE14.PQ_code[2];
                unsigned char lookup_idx_PE14_3 = PQ_PE14.PQ_code[3];
                unsigned char lookup_idx_PE14_4 = PQ_PE14.PQ_code[4];
                unsigned char lookup_idx_PE14_5 = PQ_PE14.PQ_code[5];
                unsigned char lookup_idx_PE14_6 = PQ_PE14.PQ_code[6];
                unsigned char lookup_idx_PE14_7 = PQ_PE14.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE14_8 = PQ_PE14.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE14_9 = PQ_PE14.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE14_10 = PQ_PE14.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE14_11 = PQ_PE14.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE14_12 = PQ_PE14.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE14_13 = PQ_PE14.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE14_14 = PQ_PE14.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE14_15 = PQ_PE14.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE15_0 = PQ_PE15.PQ_code[0];
                unsigned char lookup_idx_PE15_1 = PQ_PE15.PQ_code[1];
                unsigned char lookup_idx_PE15_2 = PQ_PE15.PQ_code[2];
                unsigned char lookup_idx_PE15_3 = PQ_PE15.PQ_code[3];
                unsigned char lookup_idx_PE15_4 = PQ_PE15.PQ_code[4];
                unsigned char lookup_idx_PE15_5 = PQ_PE15.PQ_code[5];
                unsigned char lookup_idx_PE15_6 = PQ_PE15.PQ_code[6];
                unsigned char lookup_idx_PE15_7 = PQ_PE15.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE15_8 = PQ_PE15.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE15_9 = PQ_PE15.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE15_10 = PQ_PE15.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE15_11 = PQ_PE15.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE15_12 = PQ_PE15.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE15_13 = PQ_PE15.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE15_14 = PQ_PE15.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE15_15 = PQ_PE15.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE16_0 = PQ_PE16.PQ_code[0];
                unsigned char lookup_idx_PE16_1 = PQ_PE16.PQ_code[1];
                unsigned char lookup_idx_PE16_2 = PQ_PE16.PQ_code[2];
                unsigned char lookup_idx_PE16_3 = PQ_PE16.PQ_code[3];
                unsigned char lookup_idx_PE16_4 = PQ_PE16.PQ_code[4];
                unsigned char lookup_idx_PE16_5 = PQ_PE16.PQ_code[5];
                unsigned char lookup_idx_PE16_6 = PQ_PE16.PQ_code[6];
                unsigned char lookup_idx_PE16_7 = PQ_PE16.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE16_8 = PQ_PE16.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE16_9 = PQ_PE16.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE16_10 = PQ_PE16.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE16_11 = PQ_PE16.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE16_12 = PQ_PE16.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE16_13 = PQ_PE16.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE16_14 = PQ_PE16.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE16_15 = PQ_PE16.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE17_0 = PQ_PE17.PQ_code[0];
                unsigned char lookup_idx_PE17_1 = PQ_PE17.PQ_code[1];
                unsigned char lookup_idx_PE17_2 = PQ_PE17.PQ_code[2];
                unsigned char lookup_idx_PE17_3 = PQ_PE17.PQ_code[3];
                unsigned char lookup_idx_PE17_4 = PQ_PE17.PQ_code[4];
                unsigned char lookup_idx_PE17_5 = PQ_PE17.PQ_code[5];
                unsigned char lookup_idx_PE17_6 = PQ_PE17.PQ_code[6];
                unsigned char lookup_idx_PE17_7 = PQ_PE17.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE17_8 = PQ_PE17.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE17_9 = PQ_PE17.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE17_10 = PQ_PE17.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE17_11 = PQ_PE17.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE17_12 = PQ_PE17.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE17_13 = PQ_PE17.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE17_14 = PQ_PE17.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE17_15 = PQ_PE17.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE18_0 = PQ_PE18.PQ_code[0];
                unsigned char lookup_idx_PE18_1 = PQ_PE18.PQ_code[1];
                unsigned char lookup_idx_PE18_2 = PQ_PE18.PQ_code[2];
                unsigned char lookup_idx_PE18_3 = PQ_PE18.PQ_code[3];
                unsigned char lookup_idx_PE18_4 = PQ_PE18.PQ_code[4];
                unsigned char lookup_idx_PE18_5 = PQ_PE18.PQ_code[5];
                unsigned char lookup_idx_PE18_6 = PQ_PE18.PQ_code[6];
                unsigned char lookup_idx_PE18_7 = PQ_PE18.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE18_8 = PQ_PE18.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE18_9 = PQ_PE18.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE18_10 = PQ_PE18.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE18_11 = PQ_PE18.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE18_12 = PQ_PE18.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE18_13 = PQ_PE18.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE18_14 = PQ_PE18.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE18_15 = PQ_PE18.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE19_0 = PQ_PE19.PQ_code[0];
                unsigned char lookup_idx_PE19_1 = PQ_PE19.PQ_code[1];
                unsigned char lookup_idx_PE19_2 = PQ_PE19.PQ_code[2];
                unsigned char lookup_idx_PE19_3 = PQ_PE19.PQ_code[3];
                unsigned char lookup_idx_PE19_4 = PQ_PE19.PQ_code[4];
                unsigned char lookup_idx_PE19_5 = PQ_PE19.PQ_code[5];
                unsigned char lookup_idx_PE19_6 = PQ_PE19.PQ_code[6];
                unsigned char lookup_idx_PE19_7 = PQ_PE19.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE19_8 = PQ_PE19.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE19_9 = PQ_PE19.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE19_10 = PQ_PE19.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE19_11 = PQ_PE19.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE19_12 = PQ_PE19.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE19_13 = PQ_PE19.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE19_14 = PQ_PE19.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE19_15 = PQ_PE19.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE20_0 = PQ_PE20.PQ_code[0];
                unsigned char lookup_idx_PE20_1 = PQ_PE20.PQ_code[1];
                unsigned char lookup_idx_PE20_2 = PQ_PE20.PQ_code[2];
                unsigned char lookup_idx_PE20_3 = PQ_PE20.PQ_code[3];
                unsigned char lookup_idx_PE20_4 = PQ_PE20.PQ_code[4];
                unsigned char lookup_idx_PE20_5 = PQ_PE20.PQ_code[5];
                unsigned char lookup_idx_PE20_6 = PQ_PE20.PQ_code[6];
                unsigned char lookup_idx_PE20_7 = PQ_PE20.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE20_8 = PQ_PE20.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE20_9 = PQ_PE20.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE20_10 = PQ_PE20.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE20_11 = PQ_PE20.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE20_12 = PQ_PE20.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE20_13 = PQ_PE20.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE20_14 = PQ_PE20.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE20_15 = PQ_PE20.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE21_0 = PQ_PE21.PQ_code[0];
                unsigned char lookup_idx_PE21_1 = PQ_PE21.PQ_code[1];
                unsigned char lookup_idx_PE21_2 = PQ_PE21.PQ_code[2];
                unsigned char lookup_idx_PE21_3 = PQ_PE21.PQ_code[3];
                unsigned char lookup_idx_PE21_4 = PQ_PE21.PQ_code[4];
                unsigned char lookup_idx_PE21_5 = PQ_PE21.PQ_code[5];
                unsigned char lookup_idx_PE21_6 = PQ_PE21.PQ_code[6];
                unsigned char lookup_idx_PE21_7 = PQ_PE21.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE21_8 = PQ_PE21.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE21_9 = PQ_PE21.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE21_10 = PQ_PE21.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE21_11 = PQ_PE21.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE21_12 = PQ_PE21.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE21_13 = PQ_PE21.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE21_14 = PQ_PE21.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE21_15 = PQ_PE21.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE22_0 = PQ_PE22.PQ_code[0];
                unsigned char lookup_idx_PE22_1 = PQ_PE22.PQ_code[1];
                unsigned char lookup_idx_PE22_2 = PQ_PE22.PQ_code[2];
                unsigned char lookup_idx_PE22_3 = PQ_PE22.PQ_code[3];
                unsigned char lookup_idx_PE22_4 = PQ_PE22.PQ_code[4];
                unsigned char lookup_idx_PE22_5 = PQ_PE22.PQ_code[5];
                unsigned char lookup_idx_PE22_6 = PQ_PE22.PQ_code[6];
                unsigned char lookup_idx_PE22_7 = PQ_PE22.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE22_8 = PQ_PE22.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE22_9 = PQ_PE22.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE22_10 = PQ_PE22.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE22_11 = PQ_PE22.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE22_12 = PQ_PE22.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE22_13 = PQ_PE22.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE22_14 = PQ_PE22.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE22_15 = PQ_PE22.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE23_0 = PQ_PE23.PQ_code[0];
                unsigned char lookup_idx_PE23_1 = PQ_PE23.PQ_code[1];
                unsigned char lookup_idx_PE23_2 = PQ_PE23.PQ_code[2];
                unsigned char lookup_idx_PE23_3 = PQ_PE23.PQ_code[3];
                unsigned char lookup_idx_PE23_4 = PQ_PE23.PQ_code[4];
                unsigned char lookup_idx_PE23_5 = PQ_PE23.PQ_code[5];
                unsigned char lookup_idx_PE23_6 = PQ_PE23.PQ_code[6];
                unsigned char lookup_idx_PE23_7 = PQ_PE23.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE23_8 = PQ_PE23.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE23_9 = PQ_PE23.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE23_10 = PQ_PE23.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE23_11 = PQ_PE23.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE23_12 = PQ_PE23.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE23_13 = PQ_PE23.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE23_14 = PQ_PE23.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE23_15 = PQ_PE23.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE24_0 = PQ_PE24.PQ_code[0];
                unsigned char lookup_idx_PE24_1 = PQ_PE24.PQ_code[1];
                unsigned char lookup_idx_PE24_2 = PQ_PE24.PQ_code[2];
                unsigned char lookup_idx_PE24_3 = PQ_PE24.PQ_code[3];
                unsigned char lookup_idx_PE24_4 = PQ_PE24.PQ_code[4];
                unsigned char lookup_idx_PE24_5 = PQ_PE24.PQ_code[5];
                unsigned char lookup_idx_PE24_6 = PQ_PE24.PQ_code[6];
                unsigned char lookup_idx_PE24_7 = PQ_PE24.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE24_8 = PQ_PE24.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE24_9 = PQ_PE24.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE24_10 = PQ_PE24.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE24_11 = PQ_PE24.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE24_12 = PQ_PE24.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE24_13 = PQ_PE24.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE24_14 = PQ_PE24.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE24_15 = PQ_PE24.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE25_0 = PQ_PE25.PQ_code[0];
                unsigned char lookup_idx_PE25_1 = PQ_PE25.PQ_code[1];
                unsigned char lookup_idx_PE25_2 = PQ_PE25.PQ_code[2];
                unsigned char lookup_idx_PE25_3 = PQ_PE25.PQ_code[3];
                unsigned char lookup_idx_PE25_4 = PQ_PE25.PQ_code[4];
                unsigned char lookup_idx_PE25_5 = PQ_PE25.PQ_code[5];
                unsigned char lookup_idx_PE25_6 = PQ_PE25.PQ_code[6];
                unsigned char lookup_idx_PE25_7 = PQ_PE25.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE25_8 = PQ_PE25.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE25_9 = PQ_PE25.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE25_10 = PQ_PE25.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE25_11 = PQ_PE25.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE25_12 = PQ_PE25.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE25_13 = PQ_PE25.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE25_14 = PQ_PE25.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE25_15 = PQ_PE25.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE26_0 = PQ_PE26.PQ_code[0];
                unsigned char lookup_idx_PE26_1 = PQ_PE26.PQ_code[1];
                unsigned char lookup_idx_PE26_2 = PQ_PE26.PQ_code[2];
                unsigned char lookup_idx_PE26_3 = PQ_PE26.PQ_code[3];
                unsigned char lookup_idx_PE26_4 = PQ_PE26.PQ_code[4];
                unsigned char lookup_idx_PE26_5 = PQ_PE26.PQ_code[5];
                unsigned char lookup_idx_PE26_6 = PQ_PE26.PQ_code[6];
                unsigned char lookup_idx_PE26_7 = PQ_PE26.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE26_8 = PQ_PE26.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE26_9 = PQ_PE26.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE26_10 = PQ_PE26.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE26_11 = PQ_PE26.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE26_12 = PQ_PE26.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE26_13 = PQ_PE26.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE26_14 = PQ_PE26.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE26_15 = PQ_PE26.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE27_0 = PQ_PE27.PQ_code[0];
                unsigned char lookup_idx_PE27_1 = PQ_PE27.PQ_code[1];
                unsigned char lookup_idx_PE27_2 = PQ_PE27.PQ_code[2];
                unsigned char lookup_idx_PE27_3 = PQ_PE27.PQ_code[3];
                unsigned char lookup_idx_PE27_4 = PQ_PE27.PQ_code[4];
                unsigned char lookup_idx_PE27_5 = PQ_PE27.PQ_code[5];
                unsigned char lookup_idx_PE27_6 = PQ_PE27.PQ_code[6];
                unsigned char lookup_idx_PE27_7 = PQ_PE27.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE27_8 = PQ_PE27.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE27_9 = PQ_PE27.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE27_10 = PQ_PE27.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE27_11 = PQ_PE27.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE27_12 = PQ_PE27.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE27_13 = PQ_PE27.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE27_14 = PQ_PE27.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE27_15 = PQ_PE27.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE28_0 = PQ_PE28.PQ_code[0];
                unsigned char lookup_idx_PE28_1 = PQ_PE28.PQ_code[1];
                unsigned char lookup_idx_PE28_2 = PQ_PE28.PQ_code[2];
                unsigned char lookup_idx_PE28_3 = PQ_PE28.PQ_code[3];
                unsigned char lookup_idx_PE28_4 = PQ_PE28.PQ_code[4];
                unsigned char lookup_idx_PE28_5 = PQ_PE28.PQ_code[5];
                unsigned char lookup_idx_PE28_6 = PQ_PE28.PQ_code[6];
                unsigned char lookup_idx_PE28_7 = PQ_PE28.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE28_8 = PQ_PE28.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE28_9 = PQ_PE28.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE28_10 = PQ_PE28.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE28_11 = PQ_PE28.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE28_12 = PQ_PE28.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE28_13 = PQ_PE28.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE28_14 = PQ_PE28.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE28_15 = PQ_PE28.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE29_0 = PQ_PE29.PQ_code[0];
                unsigned char lookup_idx_PE29_1 = PQ_PE29.PQ_code[1];
                unsigned char lookup_idx_PE29_2 = PQ_PE29.PQ_code[2];
                unsigned char lookup_idx_PE29_3 = PQ_PE29.PQ_code[3];
                unsigned char lookup_idx_PE29_4 = PQ_PE29.PQ_code[4];
                unsigned char lookup_idx_PE29_5 = PQ_PE29.PQ_code[5];
                unsigned char lookup_idx_PE29_6 = PQ_PE29.PQ_code[6];
                unsigned char lookup_idx_PE29_7 = PQ_PE29.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE29_8 = PQ_PE29.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE29_9 = PQ_PE29.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE29_10 = PQ_PE29.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE29_11 = PQ_PE29.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE29_12 = PQ_PE29.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE29_13 = PQ_PE29.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE29_14 = PQ_PE29.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE29_15 = PQ_PE29.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE30_0 = PQ_PE30.PQ_code[0];
                unsigned char lookup_idx_PE30_1 = PQ_PE30.PQ_code[1];
                unsigned char lookup_idx_PE30_2 = PQ_PE30.PQ_code[2];
                unsigned char lookup_idx_PE30_3 = PQ_PE30.PQ_code[3];
                unsigned char lookup_idx_PE30_4 = PQ_PE30.PQ_code[4];
                unsigned char lookup_idx_PE30_5 = PQ_PE30.PQ_code[5];
                unsigned char lookup_idx_PE30_6 = PQ_PE30.PQ_code[6];
                unsigned char lookup_idx_PE30_7 = PQ_PE30.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE30_8 = PQ_PE30.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE30_9 = PQ_PE30.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE30_10 = PQ_PE30.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE30_11 = PQ_PE30.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE30_12 = PQ_PE30.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE30_13 = PQ_PE30.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE30_14 = PQ_PE30.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE30_15 = PQ_PE30.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE31_0 = PQ_PE31.PQ_code[0];
                unsigned char lookup_idx_PE31_1 = PQ_PE31.PQ_code[1];
                unsigned char lookup_idx_PE31_2 = PQ_PE31.PQ_code[2];
                unsigned char lookup_idx_PE31_3 = PQ_PE31.PQ_code[3];
                unsigned char lookup_idx_PE31_4 = PQ_PE31.PQ_code[4];
                unsigned char lookup_idx_PE31_5 = PQ_PE31.PQ_code[5];
                unsigned char lookup_idx_PE31_6 = PQ_PE31.PQ_code[6];
                unsigned char lookup_idx_PE31_7 = PQ_PE31.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE31_8 = PQ_PE31.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE31_9 = PQ_PE31.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE31_10 = PQ_PE31.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE31_11 = PQ_PE31.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE31_12 = PQ_PE31.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE31_13 = PQ_PE31.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE31_14 = PQ_PE31.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE31_15 = PQ_PE31.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE32_0 = PQ_PE32.PQ_code[0];
                unsigned char lookup_idx_PE32_1 = PQ_PE32.PQ_code[1];
                unsigned char lookup_idx_PE32_2 = PQ_PE32.PQ_code[2];
                unsigned char lookup_idx_PE32_3 = PQ_PE32.PQ_code[3];
                unsigned char lookup_idx_PE32_4 = PQ_PE32.PQ_code[4];
                unsigned char lookup_idx_PE32_5 = PQ_PE32.PQ_code[5];
                unsigned char lookup_idx_PE32_6 = PQ_PE32.PQ_code[6];
                unsigned char lookup_idx_PE32_7 = PQ_PE32.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE32_8 = PQ_PE32.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE32_9 = PQ_PE32.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE32_10 = PQ_PE32.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE32_11 = PQ_PE32.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE32_12 = PQ_PE32.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE32_13 = PQ_PE32.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE32_14 = PQ_PE32.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE32_15 = PQ_PE32.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE33_0 = PQ_PE33.PQ_code[0];
                unsigned char lookup_idx_PE33_1 = PQ_PE33.PQ_code[1];
                unsigned char lookup_idx_PE33_2 = PQ_PE33.PQ_code[2];
                unsigned char lookup_idx_PE33_3 = PQ_PE33.PQ_code[3];
                unsigned char lookup_idx_PE33_4 = PQ_PE33.PQ_code[4];
                unsigned char lookup_idx_PE33_5 = PQ_PE33.PQ_code[5];
                unsigned char lookup_idx_PE33_6 = PQ_PE33.PQ_code[6];
                unsigned char lookup_idx_PE33_7 = PQ_PE33.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE33_8 = PQ_PE33.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE33_9 = PQ_PE33.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE33_10 = PQ_PE33.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE33_11 = PQ_PE33.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE33_12 = PQ_PE33.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE33_13 = PQ_PE33.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE33_14 = PQ_PE33.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE33_15 = PQ_PE33.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE34_0 = PQ_PE34.PQ_code[0];
                unsigned char lookup_idx_PE34_1 = PQ_PE34.PQ_code[1];
                unsigned char lookup_idx_PE34_2 = PQ_PE34.PQ_code[2];
                unsigned char lookup_idx_PE34_3 = PQ_PE34.PQ_code[3];
                unsigned char lookup_idx_PE34_4 = PQ_PE34.PQ_code[4];
                unsigned char lookup_idx_PE34_5 = PQ_PE34.PQ_code[5];
                unsigned char lookup_idx_PE34_6 = PQ_PE34.PQ_code[6];
                unsigned char lookup_idx_PE34_7 = PQ_PE34.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE34_8 = PQ_PE34.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE34_9 = PQ_PE34.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE34_10 = PQ_PE34.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE34_11 = PQ_PE34.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE34_12 = PQ_PE34.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE34_13 = PQ_PE34.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE34_14 = PQ_PE34.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE34_15 = PQ_PE34.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE35_0 = PQ_PE35.PQ_code[0];
                unsigned char lookup_idx_PE35_1 = PQ_PE35.PQ_code[1];
                unsigned char lookup_idx_PE35_2 = PQ_PE35.PQ_code[2];
                unsigned char lookup_idx_PE35_3 = PQ_PE35.PQ_code[3];
                unsigned char lookup_idx_PE35_4 = PQ_PE35.PQ_code[4];
                unsigned char lookup_idx_PE35_5 = PQ_PE35.PQ_code[5];
                unsigned char lookup_idx_PE35_6 = PQ_PE35.PQ_code[6];
                unsigned char lookup_idx_PE35_7 = PQ_PE35.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE35_8 = PQ_PE35.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE35_9 = PQ_PE35.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE35_10 = PQ_PE35.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE35_11 = PQ_PE35.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE35_12 = PQ_PE35.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE35_13 = PQ_PE35.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE35_14 = PQ_PE35.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE35_15 = PQ_PE35.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE36_0 = PQ_PE36.PQ_code[0];
                unsigned char lookup_idx_PE36_1 = PQ_PE36.PQ_code[1];
                unsigned char lookup_idx_PE36_2 = PQ_PE36.PQ_code[2];
                unsigned char lookup_idx_PE36_3 = PQ_PE36.PQ_code[3];
                unsigned char lookup_idx_PE36_4 = PQ_PE36.PQ_code[4];
                unsigned char lookup_idx_PE36_5 = PQ_PE36.PQ_code[5];
                unsigned char lookup_idx_PE36_6 = PQ_PE36.PQ_code[6];
                unsigned char lookup_idx_PE36_7 = PQ_PE36.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE36_8 = PQ_PE36.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE36_9 = PQ_PE36.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE36_10 = PQ_PE36.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE36_11 = PQ_PE36.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE36_12 = PQ_PE36.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE36_13 = PQ_PE36.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE36_14 = PQ_PE36.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE36_15 = PQ_PE36.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE37_0 = PQ_PE37.PQ_code[0];
                unsigned char lookup_idx_PE37_1 = PQ_PE37.PQ_code[1];
                unsigned char lookup_idx_PE37_2 = PQ_PE37.PQ_code[2];
                unsigned char lookup_idx_PE37_3 = PQ_PE37.PQ_code[3];
                unsigned char lookup_idx_PE37_4 = PQ_PE37.PQ_code[4];
                unsigned char lookup_idx_PE37_5 = PQ_PE37.PQ_code[5];
                unsigned char lookup_idx_PE37_6 = PQ_PE37.PQ_code[6];
                unsigned char lookup_idx_PE37_7 = PQ_PE37.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE37_8 = PQ_PE37.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE37_9 = PQ_PE37.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE37_10 = PQ_PE37.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE37_11 = PQ_PE37.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE37_12 = PQ_PE37.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE37_13 = PQ_PE37.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE37_14 = PQ_PE37.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE37_15 = PQ_PE37.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE38_0 = PQ_PE38.PQ_code[0];
                unsigned char lookup_idx_PE38_1 = PQ_PE38.PQ_code[1];
                unsigned char lookup_idx_PE38_2 = PQ_PE38.PQ_code[2];
                unsigned char lookup_idx_PE38_3 = PQ_PE38.PQ_code[3];
                unsigned char lookup_idx_PE38_4 = PQ_PE38.PQ_code[4];
                unsigned char lookup_idx_PE38_5 = PQ_PE38.PQ_code[5];
                unsigned char lookup_idx_PE38_6 = PQ_PE38.PQ_code[6];
                unsigned char lookup_idx_PE38_7 = PQ_PE38.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE38_8 = PQ_PE38.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE38_9 = PQ_PE38.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE38_10 = PQ_PE38.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE38_11 = PQ_PE38.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE38_12 = PQ_PE38.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE38_13 = PQ_PE38.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE38_14 = PQ_PE38.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE38_15 = PQ_PE38.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE39_0 = PQ_PE39.PQ_code[0];
                unsigned char lookup_idx_PE39_1 = PQ_PE39.PQ_code[1];
                unsigned char lookup_idx_PE39_2 = PQ_PE39.PQ_code[2];
                unsigned char lookup_idx_PE39_3 = PQ_PE39.PQ_code[3];
                unsigned char lookup_idx_PE39_4 = PQ_PE39.PQ_code[4];
                unsigned char lookup_idx_PE39_5 = PQ_PE39.PQ_code[5];
                unsigned char lookup_idx_PE39_6 = PQ_PE39.PQ_code[6];
                unsigned char lookup_idx_PE39_7 = PQ_PE39.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE39_8 = PQ_PE39.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE39_9 = PQ_PE39.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE39_10 = PQ_PE39.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE39_11 = PQ_PE39.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE39_12 = PQ_PE39.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE39_13 = PQ_PE39.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE39_14 = PQ_PE39.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE39_15 = PQ_PE39.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE40_0 = PQ_PE40.PQ_code[0];
                unsigned char lookup_idx_PE40_1 = PQ_PE40.PQ_code[1];
                unsigned char lookup_idx_PE40_2 = PQ_PE40.PQ_code[2];
                unsigned char lookup_idx_PE40_3 = PQ_PE40.PQ_code[3];
                unsigned char lookup_idx_PE40_4 = PQ_PE40.PQ_code[4];
                unsigned char lookup_idx_PE40_5 = PQ_PE40.PQ_code[5];
                unsigned char lookup_idx_PE40_6 = PQ_PE40.PQ_code[6];
                unsigned char lookup_idx_PE40_7 = PQ_PE40.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE40_8 = PQ_PE40.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE40_9 = PQ_PE40.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE40_10 = PQ_PE40.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE40_11 = PQ_PE40.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE40_12 = PQ_PE40.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE40_13 = PQ_PE40.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE40_14 = PQ_PE40.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE40_15 = PQ_PE40.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE41_0 = PQ_PE41.PQ_code[0];
                unsigned char lookup_idx_PE41_1 = PQ_PE41.PQ_code[1];
                unsigned char lookup_idx_PE41_2 = PQ_PE41.PQ_code[2];
                unsigned char lookup_idx_PE41_3 = PQ_PE41.PQ_code[3];
                unsigned char lookup_idx_PE41_4 = PQ_PE41.PQ_code[4];
                unsigned char lookup_idx_PE41_5 = PQ_PE41.PQ_code[5];
                unsigned char lookup_idx_PE41_6 = PQ_PE41.PQ_code[6];
                unsigned char lookup_idx_PE41_7 = PQ_PE41.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE41_8 = PQ_PE41.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE41_9 = PQ_PE41.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE41_10 = PQ_PE41.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE41_11 = PQ_PE41.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE41_12 = PQ_PE41.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE41_13 = PQ_PE41.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE41_14 = PQ_PE41.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE41_15 = PQ_PE41.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE42_0 = PQ_PE42.PQ_code[0];
                unsigned char lookup_idx_PE42_1 = PQ_PE42.PQ_code[1];
                unsigned char lookup_idx_PE42_2 = PQ_PE42.PQ_code[2];
                unsigned char lookup_idx_PE42_3 = PQ_PE42.PQ_code[3];
                unsigned char lookup_idx_PE42_4 = PQ_PE42.PQ_code[4];
                unsigned char lookup_idx_PE42_5 = PQ_PE42.PQ_code[5];
                unsigned char lookup_idx_PE42_6 = PQ_PE42.PQ_code[6];
                unsigned char lookup_idx_PE42_7 = PQ_PE42.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE42_8 = PQ_PE42.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE42_9 = PQ_PE42.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE42_10 = PQ_PE42.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE42_11 = PQ_PE42.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE42_12 = PQ_PE42.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE42_13 = PQ_PE42.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE42_14 = PQ_PE42.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE42_15 = PQ_PE42.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE43_0 = PQ_PE43.PQ_code[0];
                unsigned char lookup_idx_PE43_1 = PQ_PE43.PQ_code[1];
                unsigned char lookup_idx_PE43_2 = PQ_PE43.PQ_code[2];
                unsigned char lookup_idx_PE43_3 = PQ_PE43.PQ_code[3];
                unsigned char lookup_idx_PE43_4 = PQ_PE43.PQ_code[4];
                unsigned char lookup_idx_PE43_5 = PQ_PE43.PQ_code[5];
                unsigned char lookup_idx_PE43_6 = PQ_PE43.PQ_code[6];
                unsigned char lookup_idx_PE43_7 = PQ_PE43.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE43_8 = PQ_PE43.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE43_9 = PQ_PE43.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE43_10 = PQ_PE43.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE43_11 = PQ_PE43.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE43_12 = PQ_PE43.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE43_13 = PQ_PE43.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE43_14 = PQ_PE43.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE43_15 = PQ_PE43.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE44_0 = PQ_PE44.PQ_code[0];
                unsigned char lookup_idx_PE44_1 = PQ_PE44.PQ_code[1];
                unsigned char lookup_idx_PE44_2 = PQ_PE44.PQ_code[2];
                unsigned char lookup_idx_PE44_3 = PQ_PE44.PQ_code[3];
                unsigned char lookup_idx_PE44_4 = PQ_PE44.PQ_code[4];
                unsigned char lookup_idx_PE44_5 = PQ_PE44.PQ_code[5];
                unsigned char lookup_idx_PE44_6 = PQ_PE44.PQ_code[6];
                unsigned char lookup_idx_PE44_7 = PQ_PE44.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE44_8 = PQ_PE44.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE44_9 = PQ_PE44.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE44_10 = PQ_PE44.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE44_11 = PQ_PE44.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE44_12 = PQ_PE44.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE44_13 = PQ_PE44.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE44_14 = PQ_PE44.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE44_15 = PQ_PE44.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE45_0 = PQ_PE45.PQ_code[0];
                unsigned char lookup_idx_PE45_1 = PQ_PE45.PQ_code[1];
                unsigned char lookup_idx_PE45_2 = PQ_PE45.PQ_code[2];
                unsigned char lookup_idx_PE45_3 = PQ_PE45.PQ_code[3];
                unsigned char lookup_idx_PE45_4 = PQ_PE45.PQ_code[4];
                unsigned char lookup_idx_PE45_5 = PQ_PE45.PQ_code[5];
                unsigned char lookup_idx_PE45_6 = PQ_PE45.PQ_code[6];
                unsigned char lookup_idx_PE45_7 = PQ_PE45.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE45_8 = PQ_PE45.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE45_9 = PQ_PE45.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE45_10 = PQ_PE45.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE45_11 = PQ_PE45.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE45_12 = PQ_PE45.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE45_13 = PQ_PE45.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE45_14 = PQ_PE45.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE45_15 = PQ_PE45.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE46_0 = PQ_PE46.PQ_code[0];
                unsigned char lookup_idx_PE46_1 = PQ_PE46.PQ_code[1];
                unsigned char lookup_idx_PE46_2 = PQ_PE46.PQ_code[2];
                unsigned char lookup_idx_PE46_3 = PQ_PE46.PQ_code[3];
                unsigned char lookup_idx_PE46_4 = PQ_PE46.PQ_code[4];
                unsigned char lookup_idx_PE46_5 = PQ_PE46.PQ_code[5];
                unsigned char lookup_idx_PE46_6 = PQ_PE46.PQ_code[6];
                unsigned char lookup_idx_PE46_7 = PQ_PE46.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE46_8 = PQ_PE46.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE46_9 = PQ_PE46.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE46_10 = PQ_PE46.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE46_11 = PQ_PE46.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE46_12 = PQ_PE46.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE46_13 = PQ_PE46.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE46_14 = PQ_PE46.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE46_15 = PQ_PE46.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE47_0 = PQ_PE47.PQ_code[0];
                unsigned char lookup_idx_PE47_1 = PQ_PE47.PQ_code[1];
                unsigned char lookup_idx_PE47_2 = PQ_PE47.PQ_code[2];
                unsigned char lookup_idx_PE47_3 = PQ_PE47.PQ_code[3];
                unsigned char lookup_idx_PE47_4 = PQ_PE47.PQ_code[4];
                unsigned char lookup_idx_PE47_5 = PQ_PE47.PQ_code[5];
                unsigned char lookup_idx_PE47_6 = PQ_PE47.PQ_code[6];
                unsigned char lookup_idx_PE47_7 = PQ_PE47.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE47_8 = PQ_PE47.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE47_9 = PQ_PE47.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE47_10 = PQ_PE47.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE47_11 = PQ_PE47.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE47_12 = PQ_PE47.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE47_13 = PQ_PE47.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE47_14 = PQ_PE47.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE47_15 = PQ_PE47.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE48_0 = PQ_PE48.PQ_code[0];
                unsigned char lookup_idx_PE48_1 = PQ_PE48.PQ_code[1];
                unsigned char lookup_idx_PE48_2 = PQ_PE48.PQ_code[2];
                unsigned char lookup_idx_PE48_3 = PQ_PE48.PQ_code[3];
                unsigned char lookup_idx_PE48_4 = PQ_PE48.PQ_code[4];
                unsigned char lookup_idx_PE48_5 = PQ_PE48.PQ_code[5];
                unsigned char lookup_idx_PE48_6 = PQ_PE48.PQ_code[6];
                unsigned char lookup_idx_PE48_7 = PQ_PE48.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE48_8 = PQ_PE48.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE48_9 = PQ_PE48.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE48_10 = PQ_PE48.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE48_11 = PQ_PE48.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE48_12 = PQ_PE48.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE48_13 = PQ_PE48.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE48_14 = PQ_PE48.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE48_15 = PQ_PE48.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE49_0 = PQ_PE49.PQ_code[0];
                unsigned char lookup_idx_PE49_1 = PQ_PE49.PQ_code[1];
                unsigned char lookup_idx_PE49_2 = PQ_PE49.PQ_code[2];
                unsigned char lookup_idx_PE49_3 = PQ_PE49.PQ_code[3];
                unsigned char lookup_idx_PE49_4 = PQ_PE49.PQ_code[4];
                unsigned char lookup_idx_PE49_5 = PQ_PE49.PQ_code[5];
                unsigned char lookup_idx_PE49_6 = PQ_PE49.PQ_code[6];
                unsigned char lookup_idx_PE49_7 = PQ_PE49.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE49_8 = PQ_PE49.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE49_9 = PQ_PE49.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE49_10 = PQ_PE49.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE49_11 = PQ_PE49.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE49_12 = PQ_PE49.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE49_13 = PQ_PE49.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE49_14 = PQ_PE49.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE49_15 = PQ_PE49.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE50_0 = PQ_PE50.PQ_code[0];
                unsigned char lookup_idx_PE50_1 = PQ_PE50.PQ_code[1];
                unsigned char lookup_idx_PE50_2 = PQ_PE50.PQ_code[2];
                unsigned char lookup_idx_PE50_3 = PQ_PE50.PQ_code[3];
                unsigned char lookup_idx_PE50_4 = PQ_PE50.PQ_code[4];
                unsigned char lookup_idx_PE50_5 = PQ_PE50.PQ_code[5];
                unsigned char lookup_idx_PE50_6 = PQ_PE50.PQ_code[6];
                unsigned char lookup_idx_PE50_7 = PQ_PE50.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE50_8 = PQ_PE50.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE50_9 = PQ_PE50.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE50_10 = PQ_PE50.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE50_11 = PQ_PE50.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE50_12 = PQ_PE50.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE50_13 = PQ_PE50.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE50_14 = PQ_PE50.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE50_15 = PQ_PE50.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE51_0 = PQ_PE51.PQ_code[0];
                unsigned char lookup_idx_PE51_1 = PQ_PE51.PQ_code[1];
                unsigned char lookup_idx_PE51_2 = PQ_PE51.PQ_code[2];
                unsigned char lookup_idx_PE51_3 = PQ_PE51.PQ_code[3];
                unsigned char lookup_idx_PE51_4 = PQ_PE51.PQ_code[4];
                unsigned char lookup_idx_PE51_5 = PQ_PE51.PQ_code[5];
                unsigned char lookup_idx_PE51_6 = PQ_PE51.PQ_code[6];
                unsigned char lookup_idx_PE51_7 = PQ_PE51.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE51_8 = PQ_PE51.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE51_9 = PQ_PE51.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE51_10 = PQ_PE51.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE51_11 = PQ_PE51.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE51_12 = PQ_PE51.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE51_13 = PQ_PE51.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE51_14 = PQ_PE51.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE51_15 = PQ_PE51.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE52_0 = PQ_PE52.PQ_code[0];
                unsigned char lookup_idx_PE52_1 = PQ_PE52.PQ_code[1];
                unsigned char lookup_idx_PE52_2 = PQ_PE52.PQ_code[2];
                unsigned char lookup_idx_PE52_3 = PQ_PE52.PQ_code[3];
                unsigned char lookup_idx_PE52_4 = PQ_PE52.PQ_code[4];
                unsigned char lookup_idx_PE52_5 = PQ_PE52.PQ_code[5];
                unsigned char lookup_idx_PE52_6 = PQ_PE52.PQ_code[6];
                unsigned char lookup_idx_PE52_7 = PQ_PE52.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE52_8 = PQ_PE52.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE52_9 = PQ_PE52.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE52_10 = PQ_PE52.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE52_11 = PQ_PE52.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE52_12 = PQ_PE52.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE52_13 = PQ_PE52.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE52_14 = PQ_PE52.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE52_15 = PQ_PE52.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE53_0 = PQ_PE53.PQ_code[0];
                unsigned char lookup_idx_PE53_1 = PQ_PE53.PQ_code[1];
                unsigned char lookup_idx_PE53_2 = PQ_PE53.PQ_code[2];
                unsigned char lookup_idx_PE53_3 = PQ_PE53.PQ_code[3];
                unsigned char lookup_idx_PE53_4 = PQ_PE53.PQ_code[4];
                unsigned char lookup_idx_PE53_5 = PQ_PE53.PQ_code[5];
                unsigned char lookup_idx_PE53_6 = PQ_PE53.PQ_code[6];
                unsigned char lookup_idx_PE53_7 = PQ_PE53.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE53_8 = PQ_PE53.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE53_9 = PQ_PE53.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE53_10 = PQ_PE53.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE53_11 = PQ_PE53.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE53_12 = PQ_PE53.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE53_13 = PQ_PE53.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE53_14 = PQ_PE53.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE53_15 = PQ_PE53.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE54_0 = PQ_PE54.PQ_code[0];
                unsigned char lookup_idx_PE54_1 = PQ_PE54.PQ_code[1];
                unsigned char lookup_idx_PE54_2 = PQ_PE54.PQ_code[2];
                unsigned char lookup_idx_PE54_3 = PQ_PE54.PQ_code[3];
                unsigned char lookup_idx_PE54_4 = PQ_PE54.PQ_code[4];
                unsigned char lookup_idx_PE54_5 = PQ_PE54.PQ_code[5];
                unsigned char lookup_idx_PE54_6 = PQ_PE54.PQ_code[6];
                unsigned char lookup_idx_PE54_7 = PQ_PE54.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE54_8 = PQ_PE54.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE54_9 = PQ_PE54.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE54_10 = PQ_PE54.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE54_11 = PQ_PE54.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE54_12 = PQ_PE54.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE54_13 = PQ_PE54.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE54_14 = PQ_PE54.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE54_15 = PQ_PE54.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE55_0 = PQ_PE55.PQ_code[0];
                unsigned char lookup_idx_PE55_1 = PQ_PE55.PQ_code[1];
                unsigned char lookup_idx_PE55_2 = PQ_PE55.PQ_code[2];
                unsigned char lookup_idx_PE55_3 = PQ_PE55.PQ_code[3];
                unsigned char lookup_idx_PE55_4 = PQ_PE55.PQ_code[4];
                unsigned char lookup_idx_PE55_5 = PQ_PE55.PQ_code[5];
                unsigned char lookup_idx_PE55_6 = PQ_PE55.PQ_code[6];
                unsigned char lookup_idx_PE55_7 = PQ_PE55.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE55_8 = PQ_PE55.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE55_9 = PQ_PE55.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE55_10 = PQ_PE55.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE55_11 = PQ_PE55.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE55_12 = PQ_PE55.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE55_13 = PQ_PE55.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE55_14 = PQ_PE55.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE55_15 = PQ_PE55.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE56_0 = PQ_PE56.PQ_code[0];
                unsigned char lookup_idx_PE56_1 = PQ_PE56.PQ_code[1];
                unsigned char lookup_idx_PE56_2 = PQ_PE56.PQ_code[2];
                unsigned char lookup_idx_PE56_3 = PQ_PE56.PQ_code[3];
                unsigned char lookup_idx_PE56_4 = PQ_PE56.PQ_code[4];
                unsigned char lookup_idx_PE56_5 = PQ_PE56.PQ_code[5];
                unsigned char lookup_idx_PE56_6 = PQ_PE56.PQ_code[6];
                unsigned char lookup_idx_PE56_7 = PQ_PE56.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE56_8 = PQ_PE56.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE56_9 = PQ_PE56.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE56_10 = PQ_PE56.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE56_11 = PQ_PE56.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE56_12 = PQ_PE56.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE56_13 = PQ_PE56.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE56_14 = PQ_PE56.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE56_15 = PQ_PE56.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE57_0 = PQ_PE57.PQ_code[0];
                unsigned char lookup_idx_PE57_1 = PQ_PE57.PQ_code[1];
                unsigned char lookup_idx_PE57_2 = PQ_PE57.PQ_code[2];
                unsigned char lookup_idx_PE57_3 = PQ_PE57.PQ_code[3];
                unsigned char lookup_idx_PE57_4 = PQ_PE57.PQ_code[4];
                unsigned char lookup_idx_PE57_5 = PQ_PE57.PQ_code[5];
                unsigned char lookup_idx_PE57_6 = PQ_PE57.PQ_code[6];
                unsigned char lookup_idx_PE57_7 = PQ_PE57.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE57_8 = PQ_PE57.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE57_9 = PQ_PE57.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE57_10 = PQ_PE57.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE57_11 = PQ_PE57.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE57_12 = PQ_PE57.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE57_13 = PQ_PE57.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE57_14 = PQ_PE57.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE57_15 = PQ_PE57.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE58_0 = PQ_PE58.PQ_code[0];
                unsigned char lookup_idx_PE58_1 = PQ_PE58.PQ_code[1];
                unsigned char lookup_idx_PE58_2 = PQ_PE58.PQ_code[2];
                unsigned char lookup_idx_PE58_3 = PQ_PE58.PQ_code[3];
                unsigned char lookup_idx_PE58_4 = PQ_PE58.PQ_code[4];
                unsigned char lookup_idx_PE58_5 = PQ_PE58.PQ_code[5];
                unsigned char lookup_idx_PE58_6 = PQ_PE58.PQ_code[6];
                unsigned char lookup_idx_PE58_7 = PQ_PE58.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE58_8 = PQ_PE58.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE58_9 = PQ_PE58.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE58_10 = PQ_PE58.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE58_11 = PQ_PE58.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE58_12 = PQ_PE58.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE58_13 = PQ_PE58.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE58_14 = PQ_PE58.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE58_15 = PQ_PE58.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE59_0 = PQ_PE59.PQ_code[0];
                unsigned char lookup_idx_PE59_1 = PQ_PE59.PQ_code[1];
                unsigned char lookup_idx_PE59_2 = PQ_PE59.PQ_code[2];
                unsigned char lookup_idx_PE59_3 = PQ_PE59.PQ_code[3];
                unsigned char lookup_idx_PE59_4 = PQ_PE59.PQ_code[4];
                unsigned char lookup_idx_PE59_5 = PQ_PE59.PQ_code[5];
                unsigned char lookup_idx_PE59_6 = PQ_PE59.PQ_code[6];
                unsigned char lookup_idx_PE59_7 = PQ_PE59.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE59_8 = PQ_PE59.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE59_9 = PQ_PE59.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE59_10 = PQ_PE59.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE59_11 = PQ_PE59.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE59_12 = PQ_PE59.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE59_13 = PQ_PE59.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE59_14 = PQ_PE59.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE59_15 = PQ_PE59.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE60_0 = PQ_PE60.PQ_code[0];
                unsigned char lookup_idx_PE60_1 = PQ_PE60.PQ_code[1];
                unsigned char lookup_idx_PE60_2 = PQ_PE60.PQ_code[2];
                unsigned char lookup_idx_PE60_3 = PQ_PE60.PQ_code[3];
                unsigned char lookup_idx_PE60_4 = PQ_PE60.PQ_code[4];
                unsigned char lookup_idx_PE60_5 = PQ_PE60.PQ_code[5];
                unsigned char lookup_idx_PE60_6 = PQ_PE60.PQ_code[6];
                unsigned char lookup_idx_PE60_7 = PQ_PE60.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE60_8 = PQ_PE60.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE60_9 = PQ_PE60.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE60_10 = PQ_PE60.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE60_11 = PQ_PE60.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE60_12 = PQ_PE60.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE60_13 = PQ_PE60.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE60_14 = PQ_PE60.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE60_15 = PQ_PE60.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE61_0 = PQ_PE61.PQ_code[0];
                unsigned char lookup_idx_PE61_1 = PQ_PE61.PQ_code[1];
                unsigned char lookup_idx_PE61_2 = PQ_PE61.PQ_code[2];
                unsigned char lookup_idx_PE61_3 = PQ_PE61.PQ_code[3];
                unsigned char lookup_idx_PE61_4 = PQ_PE61.PQ_code[4];
                unsigned char lookup_idx_PE61_5 = PQ_PE61.PQ_code[5];
                unsigned char lookup_idx_PE61_6 = PQ_PE61.PQ_code[6];
                unsigned char lookup_idx_PE61_7 = PQ_PE61.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE61_8 = PQ_PE61.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE61_9 = PQ_PE61.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE61_10 = PQ_PE61.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE61_11 = PQ_PE61.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE61_12 = PQ_PE61.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE61_13 = PQ_PE61.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE61_14 = PQ_PE61.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE61_15 = PQ_PE61.PQ_code[15];// + 256;

                unsigned char lookup_idx_PE62_0 = PQ_PE62.PQ_code[0];
                unsigned char lookup_idx_PE62_1 = PQ_PE62.PQ_code[1];
                unsigned char lookup_idx_PE62_2 = PQ_PE62.PQ_code[2];
                unsigned char lookup_idx_PE62_3 = PQ_PE62.PQ_code[3];
                unsigned char lookup_idx_PE62_4 = PQ_PE62.PQ_code[4];
                unsigned char lookup_idx_PE62_5 = PQ_PE62.PQ_code[5];
                unsigned char lookup_idx_PE62_6 = PQ_PE62.PQ_code[6];
                unsigned char lookup_idx_PE62_7 = PQ_PE62.PQ_code[7];

                // not adding 256 here, it will overflow
                unsigned char lookup_idx_PE62_8 = PQ_PE62.PQ_code[8];// + 256;
                unsigned char lookup_idx_PE62_9 = PQ_PE62.PQ_code[9];// + 256;
                unsigned char lookup_idx_PE62_10 = PQ_PE62.PQ_code[10];// + 256;
                unsigned char lookup_idx_PE62_11 = PQ_PE62.PQ_code[11];// + 256;
                unsigned char lookup_idx_PE62_12 = PQ_PE62.PQ_code[12];// + 256;
                unsigned char lookup_idx_PE62_13 = PQ_PE62.PQ_code[13];// + 256;
                unsigned char lookup_idx_PE62_14 = PQ_PE62.PQ_code[14];// + 256;
                unsigned char lookup_idx_PE62_15 = PQ_PE62.PQ_code[15];// + 256;

                single_PQ_result out_PE0; 
                single_PQ_result out_PE1; 
                single_PQ_result out_PE2; 
                single_PQ_result out_PE3; 
                single_PQ_result out_PE4; 
                single_PQ_result out_PE5; 
                single_PQ_result out_PE6; 
                single_PQ_result out_PE7; 
                single_PQ_result out_PE8; 
                single_PQ_result out_PE9; 
                single_PQ_result out_PE10; 
                single_PQ_result out_PE11; 
                single_PQ_result out_PE12; 
                single_PQ_result out_PE13; 
                single_PQ_result out_PE14; 
                single_PQ_result out_PE15; 
                single_PQ_result out_PE16; 
                single_PQ_result out_PE17; 
                single_PQ_result out_PE18; 
                single_PQ_result out_PE19; 
                single_PQ_result out_PE20; 
                single_PQ_result out_PE21; 
                single_PQ_result out_PE22; 
                single_PQ_result out_PE23; 
                single_PQ_result out_PE24; 
                single_PQ_result out_PE25; 
                single_PQ_result out_PE26; 
                single_PQ_result out_PE27; 
                single_PQ_result out_PE28; 
                single_PQ_result out_PE29; 
                single_PQ_result out_PE30; 
                single_PQ_result out_PE31; 
                single_PQ_result out_PE32; 
                single_PQ_result out_PE33; 
                single_PQ_result out_PE34; 
                single_PQ_result out_PE35; 
                single_PQ_result out_PE36; 
                single_PQ_result out_PE37; 
                single_PQ_result out_PE38; 
                single_PQ_result out_PE39; 
                single_PQ_result out_PE40; 
                single_PQ_result out_PE41; 
                single_PQ_result out_PE42; 
                single_PQ_result out_PE43; 
                single_PQ_result out_PE44; 
                single_PQ_result out_PE45; 
                single_PQ_result out_PE46; 
                single_PQ_result out_PE47; 
                single_PQ_result out_PE48; 
                single_PQ_result out_PE49; 
                single_PQ_result out_PE50; 
                single_PQ_result out_PE51; 
                single_PQ_result out_PE52; 
                single_PQ_result out_PE53; 
                single_PQ_result out_PE54; 
                single_PQ_result out_PE55; 
                single_PQ_result out_PE56; 
                single_PQ_result out_PE57; 
                single_PQ_result out_PE58; 
                single_PQ_result out_PE59; 
                single_PQ_result out_PE60; 
                single_PQ_result out_PE61; 
                single_PQ_result out_PE62; 

                out_PE0.vec_ID = PQ_PE0.vec_ID;
                out_PE1.vec_ID = PQ_PE1.vec_ID;
                out_PE2.vec_ID = PQ_PE2.vec_ID;
                out_PE3.vec_ID = PQ_PE3.vec_ID;
                out_PE4.vec_ID = PQ_PE4.vec_ID;
                out_PE5.vec_ID = PQ_PE5.vec_ID;
                out_PE6.vec_ID = PQ_PE6.vec_ID;
                out_PE7.vec_ID = PQ_PE7.vec_ID;
                out_PE8.vec_ID = PQ_PE8.vec_ID;
                out_PE9.vec_ID = PQ_PE9.vec_ID;
                out_PE10.vec_ID = PQ_PE10.vec_ID;
                out_PE11.vec_ID = PQ_PE11.vec_ID;
                out_PE12.vec_ID = PQ_PE12.vec_ID;
                out_PE13.vec_ID = PQ_PE13.vec_ID;
                out_PE14.vec_ID = PQ_PE14.vec_ID;
                out_PE15.vec_ID = PQ_PE15.vec_ID;
                out_PE16.vec_ID = PQ_PE16.vec_ID;
                out_PE17.vec_ID = PQ_PE17.vec_ID;
                out_PE18.vec_ID = PQ_PE18.vec_ID;
                out_PE19.vec_ID = PQ_PE19.vec_ID;
                out_PE20.vec_ID = PQ_PE20.vec_ID;
                out_PE21.vec_ID = PQ_PE21.vec_ID;
                out_PE22.vec_ID = PQ_PE22.vec_ID;
                out_PE23.vec_ID = PQ_PE23.vec_ID;
                out_PE24.vec_ID = PQ_PE24.vec_ID;
                out_PE25.vec_ID = PQ_PE25.vec_ID;
                out_PE26.vec_ID = PQ_PE26.vec_ID;
                out_PE27.vec_ID = PQ_PE27.vec_ID;
                out_PE28.vec_ID = PQ_PE28.vec_ID;
                out_PE29.vec_ID = PQ_PE29.vec_ID;
                out_PE30.vec_ID = PQ_PE30.vec_ID;
                out_PE31.vec_ID = PQ_PE31.vec_ID;
                out_PE32.vec_ID = PQ_PE32.vec_ID;
                out_PE33.vec_ID = PQ_PE33.vec_ID;
                out_PE34.vec_ID = PQ_PE34.vec_ID;
                out_PE35.vec_ID = PQ_PE35.vec_ID;
                out_PE36.vec_ID = PQ_PE36.vec_ID;
                out_PE37.vec_ID = PQ_PE37.vec_ID;
                out_PE38.vec_ID = PQ_PE38.vec_ID;
                out_PE39.vec_ID = PQ_PE39.vec_ID;
                out_PE40.vec_ID = PQ_PE40.vec_ID;
                out_PE41.vec_ID = PQ_PE41.vec_ID;
                out_PE42.vec_ID = PQ_PE42.vec_ID;
                out_PE43.vec_ID = PQ_PE43.vec_ID;
                out_PE44.vec_ID = PQ_PE44.vec_ID;
                out_PE45.vec_ID = PQ_PE45.vec_ID;
                out_PE46.vec_ID = PQ_PE46.vec_ID;
                out_PE47.vec_ID = PQ_PE47.vec_ID;
                out_PE48.vec_ID = PQ_PE48.vec_ID;
                out_PE49.vec_ID = PQ_PE49.vec_ID;
                out_PE50.vec_ID = PQ_PE50.vec_ID;
                out_PE51.vec_ID = PQ_PE51.vec_ID;
                out_PE52.vec_ID = PQ_PE52.vec_ID;
                out_PE53.vec_ID = PQ_PE53.vec_ID;
                out_PE54.vec_ID = PQ_PE54.vec_ID;
                out_PE55.vec_ID = PQ_PE55.vec_ID;
                out_PE56.vec_ID = PQ_PE56.vec_ID;
                out_PE57.vec_ID = PQ_PE57.vec_ID;
                out_PE58.vec_ID = PQ_PE58.vec_ID;
                out_PE59.vec_ID = PQ_PE59.vec_ID;
                out_PE60.vec_ID = PQ_PE60.vec_ID;
                out_PE61.vec_ID = PQ_PE61.vec_ID;
                out_PE62.vec_ID = PQ_PE62.vec_ID;

                out_PE0.dist = 
                    distance_LUT_PE0_0[lookup_idx_PE0_0] + distance_LUT_PE0_1[lookup_idx_PE0_1] + 
                    distance_LUT_PE0_2[lookup_idx_PE0_2] + distance_LUT_PE0_3[lookup_idx_PE0_3] + 
                    distance_LUT_PE0_4[lookup_idx_PE0_4] + distance_LUT_PE0_5[lookup_idx_PE0_5] + 
                    distance_LUT_PE0_6[lookup_idx_PE0_6] + distance_LUT_PE0_7[lookup_idx_PE0_7] + 
                    distance_LUT_PE0_0[((int)lookup_idx_PE0_8) + 256] + distance_LUT_PE0_1[((int)lookup_idx_PE0_9) + 256] + 
                    distance_LUT_PE0_2[((int)lookup_idx_PE0_10) + 256] + distance_LUT_PE0_3[((int)lookup_idx_PE0_11) + 256] + 
                    distance_LUT_PE0_4[((int)lookup_idx_PE0_12) + 256] + distance_LUT_PE0_5[((int)lookup_idx_PE0_13) + 256] + 
                    distance_LUT_PE0_6[((int)lookup_idx_PE0_14) + 256] + distance_LUT_PE0_7[((int)lookup_idx_PE0_15) + 256];
                out_PE1.dist = 
                    distance_LUT_PE1_0[lookup_idx_PE1_0] + distance_LUT_PE1_1[lookup_idx_PE1_1] + 
                    distance_LUT_PE1_2[lookup_idx_PE1_2] + distance_LUT_PE1_3[lookup_idx_PE1_3] + 
                    distance_LUT_PE1_4[lookup_idx_PE1_4] + distance_LUT_PE1_5[lookup_idx_PE1_5] + 
                    distance_LUT_PE1_6[lookup_idx_PE1_6] + distance_LUT_PE1_7[lookup_idx_PE1_7] + 
                    distance_LUT_PE1_0[((int)lookup_idx_PE1_8) + 256] + distance_LUT_PE1_1[((int)lookup_idx_PE1_9) + 256] + 
                    distance_LUT_PE1_2[((int)lookup_idx_PE1_10) + 256] + distance_LUT_PE1_3[((int)lookup_idx_PE1_11) + 256] + 
                    distance_LUT_PE1_4[((int)lookup_idx_PE1_12) + 256] + distance_LUT_PE1_5[((int)lookup_idx_PE1_13) + 256] + 
                    distance_LUT_PE1_6[((int)lookup_idx_PE1_14) + 256] + distance_LUT_PE1_7[((int)lookup_idx_PE1_15) + 256];
                out_PE2.dist = 
                    distance_LUT_PE2_0[lookup_idx_PE2_0] + distance_LUT_PE2_1[lookup_idx_PE2_1] + 
                    distance_LUT_PE2_2[lookup_idx_PE2_2] + distance_LUT_PE2_3[lookup_idx_PE2_3] + 
                    distance_LUT_PE2_4[lookup_idx_PE2_4] + distance_LUT_PE2_5[lookup_idx_PE2_5] + 
                    distance_LUT_PE2_6[lookup_idx_PE2_6] + distance_LUT_PE2_7[lookup_idx_PE2_7] + 
                    distance_LUT_PE2_0[((int)lookup_idx_PE2_8) + 256] + distance_LUT_PE2_1[((int)lookup_idx_PE2_9) + 256] + 
                    distance_LUT_PE2_2[((int)lookup_idx_PE2_10) + 256] + distance_LUT_PE2_3[((int)lookup_idx_PE2_11) + 256] + 
                    distance_LUT_PE2_4[((int)lookup_idx_PE2_12) + 256] + distance_LUT_PE2_5[((int)lookup_idx_PE2_13) + 256] + 
                    distance_LUT_PE2_6[((int)lookup_idx_PE2_14) + 256] + distance_LUT_PE2_7[((int)lookup_idx_PE2_15) + 256];
                out_PE3.dist = 
                    distance_LUT_PE3_0[lookup_idx_PE3_0] + distance_LUT_PE3_1[lookup_idx_PE3_1] + 
                    distance_LUT_PE3_2[lookup_idx_PE3_2] + distance_LUT_PE3_3[lookup_idx_PE3_3] + 
                    distance_LUT_PE3_4[lookup_idx_PE3_4] + distance_LUT_PE3_5[lookup_idx_PE3_5] + 
                    distance_LUT_PE3_6[lookup_idx_PE3_6] + distance_LUT_PE3_7[lookup_idx_PE3_7] + 
                    distance_LUT_PE3_0[((int)lookup_idx_PE3_8) + 256] + distance_LUT_PE3_1[((int)lookup_idx_PE3_9) + 256] + 
                    distance_LUT_PE3_2[((int)lookup_idx_PE3_10) + 256] + distance_LUT_PE3_3[((int)lookup_idx_PE3_11) + 256] + 
                    distance_LUT_PE3_4[((int)lookup_idx_PE3_12) + 256] + distance_LUT_PE3_5[((int)lookup_idx_PE3_13) + 256] + 
                    distance_LUT_PE3_6[((int)lookup_idx_PE3_14) + 256] + distance_LUT_PE3_7[((int)lookup_idx_PE3_15) + 256];
                out_PE4.dist = 
                    distance_LUT_PE4_0[lookup_idx_PE4_0] + distance_LUT_PE4_1[lookup_idx_PE4_1] + 
                    distance_LUT_PE4_2[lookup_idx_PE4_2] + distance_LUT_PE4_3[lookup_idx_PE4_3] + 
                    distance_LUT_PE4_4[lookup_idx_PE4_4] + distance_LUT_PE4_5[lookup_idx_PE4_5] + 
                    distance_LUT_PE4_6[lookup_idx_PE4_6] + distance_LUT_PE4_7[lookup_idx_PE4_7] + 
                    distance_LUT_PE4_0[((int)lookup_idx_PE4_8) + 256] + distance_LUT_PE4_1[((int)lookup_idx_PE4_9) + 256] + 
                    distance_LUT_PE4_2[((int)lookup_idx_PE4_10) + 256] + distance_LUT_PE4_3[((int)lookup_idx_PE4_11) + 256] + 
                    distance_LUT_PE4_4[((int)lookup_idx_PE4_12) + 256] + distance_LUT_PE4_5[((int)lookup_idx_PE4_13) + 256] + 
                    distance_LUT_PE4_6[((int)lookup_idx_PE4_14) + 256] + distance_LUT_PE4_7[((int)lookup_idx_PE4_15) + 256];
                out_PE5.dist = 
                    distance_LUT_PE5_0[lookup_idx_PE5_0] + distance_LUT_PE5_1[lookup_idx_PE5_1] + 
                    distance_LUT_PE5_2[lookup_idx_PE5_2] + distance_LUT_PE5_3[lookup_idx_PE5_3] + 
                    distance_LUT_PE5_4[lookup_idx_PE5_4] + distance_LUT_PE5_5[lookup_idx_PE5_5] + 
                    distance_LUT_PE5_6[lookup_idx_PE5_6] + distance_LUT_PE5_7[lookup_idx_PE5_7] + 
                    distance_LUT_PE5_0[((int)lookup_idx_PE5_8) + 256] + distance_LUT_PE5_1[((int)lookup_idx_PE5_9) + 256] + 
                    distance_LUT_PE5_2[((int)lookup_idx_PE5_10) + 256] + distance_LUT_PE5_3[((int)lookup_idx_PE5_11) + 256] + 
                    distance_LUT_PE5_4[((int)lookup_idx_PE5_12) + 256] + distance_LUT_PE5_5[((int)lookup_idx_PE5_13) + 256] + 
                    distance_LUT_PE5_6[((int)lookup_idx_PE5_14) + 256] + distance_LUT_PE5_7[((int)lookup_idx_PE5_15) + 256];
                out_PE6.dist = 
                    distance_LUT_PE6_0[lookup_idx_PE6_0] + distance_LUT_PE6_1[lookup_idx_PE6_1] + 
                    distance_LUT_PE6_2[lookup_idx_PE6_2] + distance_LUT_PE6_3[lookup_idx_PE6_3] + 
                    distance_LUT_PE6_4[lookup_idx_PE6_4] + distance_LUT_PE6_5[lookup_idx_PE6_5] + 
                    distance_LUT_PE6_6[lookup_idx_PE6_6] + distance_LUT_PE6_7[lookup_idx_PE6_7] + 
                    distance_LUT_PE6_0[((int)lookup_idx_PE6_8) + 256] + distance_LUT_PE6_1[((int)lookup_idx_PE6_9) + 256] + 
                    distance_LUT_PE6_2[((int)lookup_idx_PE6_10) + 256] + distance_LUT_PE6_3[((int)lookup_idx_PE6_11) + 256] + 
                    distance_LUT_PE6_4[((int)lookup_idx_PE6_12) + 256] + distance_LUT_PE6_5[((int)lookup_idx_PE6_13) + 256] + 
                    distance_LUT_PE6_6[((int)lookup_idx_PE6_14) + 256] + distance_LUT_PE6_7[((int)lookup_idx_PE6_15) + 256];
                out_PE7.dist = 
                    distance_LUT_PE7_0[lookup_idx_PE7_0] + distance_LUT_PE7_1[lookup_idx_PE7_1] + 
                    distance_LUT_PE7_2[lookup_idx_PE7_2] + distance_LUT_PE7_3[lookup_idx_PE7_3] + 
                    distance_LUT_PE7_4[lookup_idx_PE7_4] + distance_LUT_PE7_5[lookup_idx_PE7_5] + 
                    distance_LUT_PE7_6[lookup_idx_PE7_6] + distance_LUT_PE7_7[lookup_idx_PE7_7] + 
                    distance_LUT_PE7_0[((int)lookup_idx_PE7_8) + 256] + distance_LUT_PE7_1[((int)lookup_idx_PE7_9) + 256] + 
                    distance_LUT_PE7_2[((int)lookup_idx_PE7_10) + 256] + distance_LUT_PE7_3[((int)lookup_idx_PE7_11) + 256] + 
                    distance_LUT_PE7_4[((int)lookup_idx_PE7_12) + 256] + distance_LUT_PE7_5[((int)lookup_idx_PE7_13) + 256] + 
                    distance_LUT_PE7_6[((int)lookup_idx_PE7_14) + 256] + distance_LUT_PE7_7[((int)lookup_idx_PE7_15) + 256];
                out_PE8.dist = 
                    distance_LUT_PE8_0[lookup_idx_PE8_0] + distance_LUT_PE8_1[lookup_idx_PE8_1] + 
                    distance_LUT_PE8_2[lookup_idx_PE8_2] + distance_LUT_PE8_3[lookup_idx_PE8_3] + 
                    distance_LUT_PE8_4[lookup_idx_PE8_4] + distance_LUT_PE8_5[lookup_idx_PE8_5] + 
                    distance_LUT_PE8_6[lookup_idx_PE8_6] + distance_LUT_PE8_7[lookup_idx_PE8_7] + 
                    distance_LUT_PE8_0[((int)lookup_idx_PE8_8) + 256] + distance_LUT_PE8_1[((int)lookup_idx_PE8_9) + 256] + 
                    distance_LUT_PE8_2[((int)lookup_idx_PE8_10) + 256] + distance_LUT_PE8_3[((int)lookup_idx_PE8_11) + 256] + 
                    distance_LUT_PE8_4[((int)lookup_idx_PE8_12) + 256] + distance_LUT_PE8_5[((int)lookup_idx_PE8_13) + 256] + 
                    distance_LUT_PE8_6[((int)lookup_idx_PE8_14) + 256] + distance_LUT_PE8_7[((int)lookup_idx_PE8_15) + 256];
                out_PE9.dist = 
                    distance_LUT_PE9_0[lookup_idx_PE9_0] + distance_LUT_PE9_1[lookup_idx_PE9_1] + 
                    distance_LUT_PE9_2[lookup_idx_PE9_2] + distance_LUT_PE9_3[lookup_idx_PE9_3] + 
                    distance_LUT_PE9_4[lookup_idx_PE9_4] + distance_LUT_PE9_5[lookup_idx_PE9_5] + 
                    distance_LUT_PE9_6[lookup_idx_PE9_6] + distance_LUT_PE9_7[lookup_idx_PE9_7] + 
                    distance_LUT_PE9_0[((int)lookup_idx_PE9_8) + 256] + distance_LUT_PE9_1[((int)lookup_idx_PE9_9) + 256] + 
                    distance_LUT_PE9_2[((int)lookup_idx_PE9_10) + 256] + distance_LUT_PE9_3[((int)lookup_idx_PE9_11) + 256] + 
                    distance_LUT_PE9_4[((int)lookup_idx_PE9_12) + 256] + distance_LUT_PE9_5[((int)lookup_idx_PE9_13) + 256] + 
                    distance_LUT_PE9_6[((int)lookup_idx_PE9_14) + 256] + distance_LUT_PE9_7[((int)lookup_idx_PE9_15) + 256];
                out_PE10.dist = 
                    distance_LUT_PE10_0[lookup_idx_PE10_0] + distance_LUT_PE10_1[lookup_idx_PE10_1] + 
                    distance_LUT_PE10_2[lookup_idx_PE10_2] + distance_LUT_PE10_3[lookup_idx_PE10_3] + 
                    distance_LUT_PE10_4[lookup_idx_PE10_4] + distance_LUT_PE10_5[lookup_idx_PE10_5] + 
                    distance_LUT_PE10_6[lookup_idx_PE10_6] + distance_LUT_PE10_7[lookup_idx_PE10_7] + 
                    distance_LUT_PE10_0[((int)lookup_idx_PE10_8) + 256] + distance_LUT_PE10_1[((int)lookup_idx_PE10_9) + 256] + 
                    distance_LUT_PE10_2[((int)lookup_idx_PE10_10) + 256] + distance_LUT_PE10_3[((int)lookup_idx_PE10_11) + 256] + 
                    distance_LUT_PE10_4[((int)lookup_idx_PE10_12) + 256] + distance_LUT_PE10_5[((int)lookup_idx_PE10_13) + 256] + 
                    distance_LUT_PE10_6[((int)lookup_idx_PE10_14) + 256] + distance_LUT_PE10_7[((int)lookup_idx_PE10_15) + 256];
                out_PE11.dist = 
                    distance_LUT_PE11_0[lookup_idx_PE11_0] + distance_LUT_PE11_1[lookup_idx_PE11_1] + 
                    distance_LUT_PE11_2[lookup_idx_PE11_2] + distance_LUT_PE11_3[lookup_idx_PE11_3] + 
                    distance_LUT_PE11_4[lookup_idx_PE11_4] + distance_LUT_PE11_5[lookup_idx_PE11_5] + 
                    distance_LUT_PE11_6[lookup_idx_PE11_6] + distance_LUT_PE11_7[lookup_idx_PE11_7] + 
                    distance_LUT_PE11_0[((int)lookup_idx_PE11_8) + 256] + distance_LUT_PE11_1[((int)lookup_idx_PE11_9) + 256] + 
                    distance_LUT_PE11_2[((int)lookup_idx_PE11_10) + 256] + distance_LUT_PE11_3[((int)lookup_idx_PE11_11) + 256] + 
                    distance_LUT_PE11_4[((int)lookup_idx_PE11_12) + 256] + distance_LUT_PE11_5[((int)lookup_idx_PE11_13) + 256] + 
                    distance_LUT_PE11_6[((int)lookup_idx_PE11_14) + 256] + distance_LUT_PE11_7[((int)lookup_idx_PE11_15) + 256];
                out_PE12.dist = 
                    distance_LUT_PE12_0[lookup_idx_PE12_0] + distance_LUT_PE12_1[lookup_idx_PE12_1] + 
                    distance_LUT_PE12_2[lookup_idx_PE12_2] + distance_LUT_PE12_3[lookup_idx_PE12_3] + 
                    distance_LUT_PE12_4[lookup_idx_PE12_4] + distance_LUT_PE12_5[lookup_idx_PE12_5] + 
                    distance_LUT_PE12_6[lookup_idx_PE12_6] + distance_LUT_PE12_7[lookup_idx_PE12_7] + 
                    distance_LUT_PE12_0[((int)lookup_idx_PE12_8) + 256] + distance_LUT_PE12_1[((int)lookup_idx_PE12_9) + 256] + 
                    distance_LUT_PE12_2[((int)lookup_idx_PE12_10) + 256] + distance_LUT_PE12_3[((int)lookup_idx_PE12_11) + 256] + 
                    distance_LUT_PE12_4[((int)lookup_idx_PE12_12) + 256] + distance_LUT_PE12_5[((int)lookup_idx_PE12_13) + 256] + 
                    distance_LUT_PE12_6[((int)lookup_idx_PE12_14) + 256] + distance_LUT_PE12_7[((int)lookup_idx_PE12_15) + 256];
                out_PE13.dist = 
                    distance_LUT_PE13_0[lookup_idx_PE13_0] + distance_LUT_PE13_1[lookup_idx_PE13_1] + 
                    distance_LUT_PE13_2[lookup_idx_PE13_2] + distance_LUT_PE13_3[lookup_idx_PE13_3] + 
                    distance_LUT_PE13_4[lookup_idx_PE13_4] + distance_LUT_PE13_5[lookup_idx_PE13_5] + 
                    distance_LUT_PE13_6[lookup_idx_PE13_6] + distance_LUT_PE13_7[lookup_idx_PE13_7] + 
                    distance_LUT_PE13_0[((int)lookup_idx_PE13_8) + 256] + distance_LUT_PE13_1[((int)lookup_idx_PE13_9) + 256] + 
                    distance_LUT_PE13_2[((int)lookup_idx_PE13_10) + 256] + distance_LUT_PE13_3[((int)lookup_idx_PE13_11) + 256] + 
                    distance_LUT_PE13_4[((int)lookup_idx_PE13_12) + 256] + distance_LUT_PE13_5[((int)lookup_idx_PE13_13) + 256] + 
                    distance_LUT_PE13_6[((int)lookup_idx_PE13_14) + 256] + distance_LUT_PE13_7[((int)lookup_idx_PE13_15) + 256];
                out_PE14.dist = 
                    distance_LUT_PE14_0[lookup_idx_PE14_0] + distance_LUT_PE14_1[lookup_idx_PE14_1] + 
                    distance_LUT_PE14_2[lookup_idx_PE14_2] + distance_LUT_PE14_3[lookup_idx_PE14_3] + 
                    distance_LUT_PE14_4[lookup_idx_PE14_4] + distance_LUT_PE14_5[lookup_idx_PE14_5] + 
                    distance_LUT_PE14_6[lookup_idx_PE14_6] + distance_LUT_PE14_7[lookup_idx_PE14_7] + 
                    distance_LUT_PE14_0[((int)lookup_idx_PE14_8) + 256] + distance_LUT_PE14_1[((int)lookup_idx_PE14_9) + 256] + 
                    distance_LUT_PE14_2[((int)lookup_idx_PE14_10) + 256] + distance_LUT_PE14_3[((int)lookup_idx_PE14_11) + 256] + 
                    distance_LUT_PE14_4[((int)lookup_idx_PE14_12) + 256] + distance_LUT_PE14_5[((int)lookup_idx_PE14_13) + 256] + 
                    distance_LUT_PE14_6[((int)lookup_idx_PE14_14) + 256] + distance_LUT_PE14_7[((int)lookup_idx_PE14_15) + 256];
                out_PE15.dist = 
                    distance_LUT_PE15_0[lookup_idx_PE15_0] + distance_LUT_PE15_1[lookup_idx_PE15_1] + 
                    distance_LUT_PE15_2[lookup_idx_PE15_2] + distance_LUT_PE15_3[lookup_idx_PE15_3] + 
                    distance_LUT_PE15_4[lookup_idx_PE15_4] + distance_LUT_PE15_5[lookup_idx_PE15_5] + 
                    distance_LUT_PE15_6[lookup_idx_PE15_6] + distance_LUT_PE15_7[lookup_idx_PE15_7] + 
                    distance_LUT_PE15_0[((int)lookup_idx_PE15_8) + 256] + distance_LUT_PE15_1[((int)lookup_idx_PE15_9) + 256] + 
                    distance_LUT_PE15_2[((int)lookup_idx_PE15_10) + 256] + distance_LUT_PE15_3[((int)lookup_idx_PE15_11) + 256] + 
                    distance_LUT_PE15_4[((int)lookup_idx_PE15_12) + 256] + distance_LUT_PE15_5[((int)lookup_idx_PE15_13) + 256] + 
                    distance_LUT_PE15_6[((int)lookup_idx_PE15_14) + 256] + distance_LUT_PE15_7[((int)lookup_idx_PE15_15) + 256];
                out_PE16.dist = 
                    distance_LUT_PE16_0[lookup_idx_PE16_0] + distance_LUT_PE16_1[lookup_idx_PE16_1] + 
                    distance_LUT_PE16_2[lookup_idx_PE16_2] + distance_LUT_PE16_3[lookup_idx_PE16_3] + 
                    distance_LUT_PE16_4[lookup_idx_PE16_4] + distance_LUT_PE16_5[lookup_idx_PE16_5] + 
                    distance_LUT_PE16_6[lookup_idx_PE16_6] + distance_LUT_PE16_7[lookup_idx_PE16_7] + 
                    distance_LUT_PE16_0[((int)lookup_idx_PE16_8) + 256] + distance_LUT_PE16_1[((int)lookup_idx_PE16_9) + 256] + 
                    distance_LUT_PE16_2[((int)lookup_idx_PE16_10) + 256] + distance_LUT_PE16_3[((int)lookup_idx_PE16_11) + 256] + 
                    distance_LUT_PE16_4[((int)lookup_idx_PE16_12) + 256] + distance_LUT_PE16_5[((int)lookup_idx_PE16_13) + 256] + 
                    distance_LUT_PE16_6[((int)lookup_idx_PE16_14) + 256] + distance_LUT_PE16_7[((int)lookup_idx_PE16_15) + 256];
                out_PE17.dist = 
                    distance_LUT_PE17_0[lookup_idx_PE17_0] + distance_LUT_PE17_1[lookup_idx_PE17_1] + 
                    distance_LUT_PE17_2[lookup_idx_PE17_2] + distance_LUT_PE17_3[lookup_idx_PE17_3] + 
                    distance_LUT_PE17_4[lookup_idx_PE17_4] + distance_LUT_PE17_5[lookup_idx_PE17_5] + 
                    distance_LUT_PE17_6[lookup_idx_PE17_6] + distance_LUT_PE17_7[lookup_idx_PE17_7] + 
                    distance_LUT_PE17_0[((int)lookup_idx_PE17_8) + 256] + distance_LUT_PE17_1[((int)lookup_idx_PE17_9) + 256] + 
                    distance_LUT_PE17_2[((int)lookup_idx_PE17_10) + 256] + distance_LUT_PE17_3[((int)lookup_idx_PE17_11) + 256] + 
                    distance_LUT_PE17_4[((int)lookup_idx_PE17_12) + 256] + distance_LUT_PE17_5[((int)lookup_idx_PE17_13) + 256] + 
                    distance_LUT_PE17_6[((int)lookup_idx_PE17_14) + 256] + distance_LUT_PE17_7[((int)lookup_idx_PE17_15) + 256];
                out_PE18.dist = 
                    distance_LUT_PE18_0[lookup_idx_PE18_0] + distance_LUT_PE18_1[lookup_idx_PE18_1] + 
                    distance_LUT_PE18_2[lookup_idx_PE18_2] + distance_LUT_PE18_3[lookup_idx_PE18_3] + 
                    distance_LUT_PE18_4[lookup_idx_PE18_4] + distance_LUT_PE18_5[lookup_idx_PE18_5] + 
                    distance_LUT_PE18_6[lookup_idx_PE18_6] + distance_LUT_PE18_7[lookup_idx_PE18_7] + 
                    distance_LUT_PE18_0[((int)lookup_idx_PE18_8) + 256] + distance_LUT_PE18_1[((int)lookup_idx_PE18_9) + 256] + 
                    distance_LUT_PE18_2[((int)lookup_idx_PE18_10) + 256] + distance_LUT_PE18_3[((int)lookup_idx_PE18_11) + 256] + 
                    distance_LUT_PE18_4[((int)lookup_idx_PE18_12) + 256] + distance_LUT_PE18_5[((int)lookup_idx_PE18_13) + 256] + 
                    distance_LUT_PE18_6[((int)lookup_idx_PE18_14) + 256] + distance_LUT_PE18_7[((int)lookup_idx_PE18_15) + 256];
                out_PE19.dist = 
                    distance_LUT_PE19_0[lookup_idx_PE19_0] + distance_LUT_PE19_1[lookup_idx_PE19_1] + 
                    distance_LUT_PE19_2[lookup_idx_PE19_2] + distance_LUT_PE19_3[lookup_idx_PE19_3] + 
                    distance_LUT_PE19_4[lookup_idx_PE19_4] + distance_LUT_PE19_5[lookup_idx_PE19_5] + 
                    distance_LUT_PE19_6[lookup_idx_PE19_6] + distance_LUT_PE19_7[lookup_idx_PE19_7] + 
                    distance_LUT_PE19_0[((int)lookup_idx_PE19_8) + 256] + distance_LUT_PE19_1[((int)lookup_idx_PE19_9) + 256] + 
                    distance_LUT_PE19_2[((int)lookup_idx_PE19_10) + 256] + distance_LUT_PE19_3[((int)lookup_idx_PE19_11) + 256] + 
                    distance_LUT_PE19_4[((int)lookup_idx_PE19_12) + 256] + distance_LUT_PE19_5[((int)lookup_idx_PE19_13) + 256] + 
                    distance_LUT_PE19_6[((int)lookup_idx_PE19_14) + 256] + distance_LUT_PE19_7[((int)lookup_idx_PE19_15) + 256];
                out_PE20.dist = 
                    distance_LUT_PE20_0[lookup_idx_PE20_0] + distance_LUT_PE20_1[lookup_idx_PE20_1] + 
                    distance_LUT_PE20_2[lookup_idx_PE20_2] + distance_LUT_PE20_3[lookup_idx_PE20_3] + 
                    distance_LUT_PE20_4[lookup_idx_PE20_4] + distance_LUT_PE20_5[lookup_idx_PE20_5] + 
                    distance_LUT_PE20_6[lookup_idx_PE20_6] + distance_LUT_PE20_7[lookup_idx_PE20_7] + 
                    distance_LUT_PE20_0[((int)lookup_idx_PE20_8) + 256] + distance_LUT_PE20_1[((int)lookup_idx_PE20_9) + 256] + 
                    distance_LUT_PE20_2[((int)lookup_idx_PE20_10) + 256] + distance_LUT_PE20_3[((int)lookup_idx_PE20_11) + 256] + 
                    distance_LUT_PE20_4[((int)lookup_idx_PE20_12) + 256] + distance_LUT_PE20_5[((int)lookup_idx_PE20_13) + 256] + 
                    distance_LUT_PE20_6[((int)lookup_idx_PE20_14) + 256] + distance_LUT_PE20_7[((int)lookup_idx_PE20_15) + 256];
                out_PE21.dist = 
                    distance_LUT_PE21_0[lookup_idx_PE21_0] + distance_LUT_PE21_1[lookup_idx_PE21_1] + 
                    distance_LUT_PE21_2[lookup_idx_PE21_2] + distance_LUT_PE21_3[lookup_idx_PE21_3] + 
                    distance_LUT_PE21_4[lookup_idx_PE21_4] + distance_LUT_PE21_5[lookup_idx_PE21_5] + 
                    distance_LUT_PE21_6[lookup_idx_PE21_6] + distance_LUT_PE21_7[lookup_idx_PE21_7] + 
                    distance_LUT_PE21_0[((int)lookup_idx_PE21_8) + 256] + distance_LUT_PE21_1[((int)lookup_idx_PE21_9) + 256] + 
                    distance_LUT_PE21_2[((int)lookup_idx_PE21_10) + 256] + distance_LUT_PE21_3[((int)lookup_idx_PE21_11) + 256] + 
                    distance_LUT_PE21_4[((int)lookup_idx_PE21_12) + 256] + distance_LUT_PE21_5[((int)lookup_idx_PE21_13) + 256] + 
                    distance_LUT_PE21_6[((int)lookup_idx_PE21_14) + 256] + distance_LUT_PE21_7[((int)lookup_idx_PE21_15) + 256];
                out_PE22.dist = 
                    distance_LUT_PE22_0[lookup_idx_PE22_0] + distance_LUT_PE22_1[lookup_idx_PE22_1] + 
                    distance_LUT_PE22_2[lookup_idx_PE22_2] + distance_LUT_PE22_3[lookup_idx_PE22_3] + 
                    distance_LUT_PE22_4[lookup_idx_PE22_4] + distance_LUT_PE22_5[lookup_idx_PE22_5] + 
                    distance_LUT_PE22_6[lookup_idx_PE22_6] + distance_LUT_PE22_7[lookup_idx_PE22_7] + 
                    distance_LUT_PE22_0[((int)lookup_idx_PE22_8) + 256] + distance_LUT_PE22_1[((int)lookup_idx_PE22_9) + 256] + 
                    distance_LUT_PE22_2[((int)lookup_idx_PE22_10) + 256] + distance_LUT_PE22_3[((int)lookup_idx_PE22_11) + 256] + 
                    distance_LUT_PE22_4[((int)lookup_idx_PE22_12) + 256] + distance_LUT_PE22_5[((int)lookup_idx_PE22_13) + 256] + 
                    distance_LUT_PE22_6[((int)lookup_idx_PE22_14) + 256] + distance_LUT_PE22_7[((int)lookup_idx_PE22_15) + 256];
                out_PE23.dist = 
                    distance_LUT_PE23_0[lookup_idx_PE23_0] + distance_LUT_PE23_1[lookup_idx_PE23_1] + 
                    distance_LUT_PE23_2[lookup_idx_PE23_2] + distance_LUT_PE23_3[lookup_idx_PE23_3] + 
                    distance_LUT_PE23_4[lookup_idx_PE23_4] + distance_LUT_PE23_5[lookup_idx_PE23_5] + 
                    distance_LUT_PE23_6[lookup_idx_PE23_6] + distance_LUT_PE23_7[lookup_idx_PE23_7] + 
                    distance_LUT_PE23_0[((int)lookup_idx_PE23_8) + 256] + distance_LUT_PE23_1[((int)lookup_idx_PE23_9) + 256] + 
                    distance_LUT_PE23_2[((int)lookup_idx_PE23_10) + 256] + distance_LUT_PE23_3[((int)lookup_idx_PE23_11) + 256] + 
                    distance_LUT_PE23_4[((int)lookup_idx_PE23_12) + 256] + distance_LUT_PE23_5[((int)lookup_idx_PE23_13) + 256] + 
                    distance_LUT_PE23_6[((int)lookup_idx_PE23_14) + 256] + distance_LUT_PE23_7[((int)lookup_idx_PE23_15) + 256];
                out_PE24.dist = 
                    distance_LUT_PE24_0[lookup_idx_PE24_0] + distance_LUT_PE24_1[lookup_idx_PE24_1] + 
                    distance_LUT_PE24_2[lookup_idx_PE24_2] + distance_LUT_PE24_3[lookup_idx_PE24_3] + 
                    distance_LUT_PE24_4[lookup_idx_PE24_4] + distance_LUT_PE24_5[lookup_idx_PE24_5] + 
                    distance_LUT_PE24_6[lookup_idx_PE24_6] + distance_LUT_PE24_7[lookup_idx_PE24_7] + 
                    distance_LUT_PE24_0[((int)lookup_idx_PE24_8) + 256] + distance_LUT_PE24_1[((int)lookup_idx_PE24_9) + 256] + 
                    distance_LUT_PE24_2[((int)lookup_idx_PE24_10) + 256] + distance_LUT_PE24_3[((int)lookup_idx_PE24_11) + 256] + 
                    distance_LUT_PE24_4[((int)lookup_idx_PE24_12) + 256] + distance_LUT_PE24_5[((int)lookup_idx_PE24_13) + 256] + 
                    distance_LUT_PE24_6[((int)lookup_idx_PE24_14) + 256] + distance_LUT_PE24_7[((int)lookup_idx_PE24_15) + 256];
                out_PE25.dist = 
                    distance_LUT_PE25_0[lookup_idx_PE25_0] + distance_LUT_PE25_1[lookup_idx_PE25_1] + 
                    distance_LUT_PE25_2[lookup_idx_PE25_2] + distance_LUT_PE25_3[lookup_idx_PE25_3] + 
                    distance_LUT_PE25_4[lookup_idx_PE25_4] + distance_LUT_PE25_5[lookup_idx_PE25_5] + 
                    distance_LUT_PE25_6[lookup_idx_PE25_6] + distance_LUT_PE25_7[lookup_idx_PE25_7] + 
                    distance_LUT_PE25_0[((int)lookup_idx_PE25_8) + 256] + distance_LUT_PE25_1[((int)lookup_idx_PE25_9) + 256] + 
                    distance_LUT_PE25_2[((int)lookup_idx_PE25_10) + 256] + distance_LUT_PE25_3[((int)lookup_idx_PE25_11) + 256] + 
                    distance_LUT_PE25_4[((int)lookup_idx_PE25_12) + 256] + distance_LUT_PE25_5[((int)lookup_idx_PE25_13) + 256] + 
                    distance_LUT_PE25_6[((int)lookup_idx_PE25_14) + 256] + distance_LUT_PE25_7[((int)lookup_idx_PE25_15) + 256];
                out_PE26.dist = 
                    distance_LUT_PE26_0[lookup_idx_PE26_0] + distance_LUT_PE26_1[lookup_idx_PE26_1] + 
                    distance_LUT_PE26_2[lookup_idx_PE26_2] + distance_LUT_PE26_3[lookup_idx_PE26_3] + 
                    distance_LUT_PE26_4[lookup_idx_PE26_4] + distance_LUT_PE26_5[lookup_idx_PE26_5] + 
                    distance_LUT_PE26_6[lookup_idx_PE26_6] + distance_LUT_PE26_7[lookup_idx_PE26_7] + 
                    distance_LUT_PE26_0[((int)lookup_idx_PE26_8) + 256] + distance_LUT_PE26_1[((int)lookup_idx_PE26_9) + 256] + 
                    distance_LUT_PE26_2[((int)lookup_idx_PE26_10) + 256] + distance_LUT_PE26_3[((int)lookup_idx_PE26_11) + 256] + 
                    distance_LUT_PE26_4[((int)lookup_idx_PE26_12) + 256] + distance_LUT_PE26_5[((int)lookup_idx_PE26_13) + 256] + 
                    distance_LUT_PE26_6[((int)lookup_idx_PE26_14) + 256] + distance_LUT_PE26_7[((int)lookup_idx_PE26_15) + 256];
                out_PE27.dist = 
                    distance_LUT_PE27_0[lookup_idx_PE27_0] + distance_LUT_PE27_1[lookup_idx_PE27_1] + 
                    distance_LUT_PE27_2[lookup_idx_PE27_2] + distance_LUT_PE27_3[lookup_idx_PE27_3] + 
                    distance_LUT_PE27_4[lookup_idx_PE27_4] + distance_LUT_PE27_5[lookup_idx_PE27_5] + 
                    distance_LUT_PE27_6[lookup_idx_PE27_6] + distance_LUT_PE27_7[lookup_idx_PE27_7] + 
                    distance_LUT_PE27_0[((int)lookup_idx_PE27_8) + 256] + distance_LUT_PE27_1[((int)lookup_idx_PE27_9) + 256] + 
                    distance_LUT_PE27_2[((int)lookup_idx_PE27_10) + 256] + distance_LUT_PE27_3[((int)lookup_idx_PE27_11) + 256] + 
                    distance_LUT_PE27_4[((int)lookup_idx_PE27_12) + 256] + distance_LUT_PE27_5[((int)lookup_idx_PE27_13) + 256] + 
                    distance_LUT_PE27_6[((int)lookup_idx_PE27_14) + 256] + distance_LUT_PE27_7[((int)lookup_idx_PE27_15) + 256];
                out_PE28.dist = 
                    distance_LUT_PE28_0[lookup_idx_PE28_0] + distance_LUT_PE28_1[lookup_idx_PE28_1] + 
                    distance_LUT_PE28_2[lookup_idx_PE28_2] + distance_LUT_PE28_3[lookup_idx_PE28_3] + 
                    distance_LUT_PE28_4[lookup_idx_PE28_4] + distance_LUT_PE28_5[lookup_idx_PE28_5] + 
                    distance_LUT_PE28_6[lookup_idx_PE28_6] + distance_LUT_PE28_7[lookup_idx_PE28_7] + 
                    distance_LUT_PE28_0[((int)lookup_idx_PE28_8) + 256] + distance_LUT_PE28_1[((int)lookup_idx_PE28_9) + 256] + 
                    distance_LUT_PE28_2[((int)lookup_idx_PE28_10) + 256] + distance_LUT_PE28_3[((int)lookup_idx_PE28_11) + 256] + 
                    distance_LUT_PE28_4[((int)lookup_idx_PE28_12) + 256] + distance_LUT_PE28_5[((int)lookup_idx_PE28_13) + 256] + 
                    distance_LUT_PE28_6[((int)lookup_idx_PE28_14) + 256] + distance_LUT_PE28_7[((int)lookup_idx_PE28_15) + 256];
                out_PE29.dist = 
                    distance_LUT_PE29_0[lookup_idx_PE29_0] + distance_LUT_PE29_1[lookup_idx_PE29_1] + 
                    distance_LUT_PE29_2[lookup_idx_PE29_2] + distance_LUT_PE29_3[lookup_idx_PE29_3] + 
                    distance_LUT_PE29_4[lookup_idx_PE29_4] + distance_LUT_PE29_5[lookup_idx_PE29_5] + 
                    distance_LUT_PE29_6[lookup_idx_PE29_6] + distance_LUT_PE29_7[lookup_idx_PE29_7] + 
                    distance_LUT_PE29_0[((int)lookup_idx_PE29_8) + 256] + distance_LUT_PE29_1[((int)lookup_idx_PE29_9) + 256] + 
                    distance_LUT_PE29_2[((int)lookup_idx_PE29_10) + 256] + distance_LUT_PE29_3[((int)lookup_idx_PE29_11) + 256] + 
                    distance_LUT_PE29_4[((int)lookup_idx_PE29_12) + 256] + distance_LUT_PE29_5[((int)lookup_idx_PE29_13) + 256] + 
                    distance_LUT_PE29_6[((int)lookup_idx_PE29_14) + 256] + distance_LUT_PE29_7[((int)lookup_idx_PE29_15) + 256];
                out_PE30.dist = 
                    distance_LUT_PE30_0[lookup_idx_PE30_0] + distance_LUT_PE30_1[lookup_idx_PE30_1] + 
                    distance_LUT_PE30_2[lookup_idx_PE30_2] + distance_LUT_PE30_3[lookup_idx_PE30_3] + 
                    distance_LUT_PE30_4[lookup_idx_PE30_4] + distance_LUT_PE30_5[lookup_idx_PE30_5] + 
                    distance_LUT_PE30_6[lookup_idx_PE30_6] + distance_LUT_PE30_7[lookup_idx_PE30_7] + 
                    distance_LUT_PE30_0[((int)lookup_idx_PE30_8) + 256] + distance_LUT_PE30_1[((int)lookup_idx_PE30_9) + 256] + 
                    distance_LUT_PE30_2[((int)lookup_idx_PE30_10) + 256] + distance_LUT_PE30_3[((int)lookup_idx_PE30_11) + 256] + 
                    distance_LUT_PE30_4[((int)lookup_idx_PE30_12) + 256] + distance_LUT_PE30_5[((int)lookup_idx_PE30_13) + 256] + 
                    distance_LUT_PE30_6[((int)lookup_idx_PE30_14) + 256] + distance_LUT_PE30_7[((int)lookup_idx_PE30_15) + 256];
                out_PE31.dist = 
                    distance_LUT_PE31_0[lookup_idx_PE31_0] + distance_LUT_PE31_1[lookup_idx_PE31_1] + 
                    distance_LUT_PE31_2[lookup_idx_PE31_2] + distance_LUT_PE31_3[lookup_idx_PE31_3] + 
                    distance_LUT_PE31_4[lookup_idx_PE31_4] + distance_LUT_PE31_5[lookup_idx_PE31_5] + 
                    distance_LUT_PE31_6[lookup_idx_PE31_6] + distance_LUT_PE31_7[lookup_idx_PE31_7] + 
                    distance_LUT_PE31_0[((int)lookup_idx_PE31_8) + 256] + distance_LUT_PE31_1[((int)lookup_idx_PE31_9) + 256] + 
                    distance_LUT_PE31_2[((int)lookup_idx_PE31_10) + 256] + distance_LUT_PE31_3[((int)lookup_idx_PE31_11) + 256] + 
                    distance_LUT_PE31_4[((int)lookup_idx_PE31_12) + 256] + distance_LUT_PE31_5[((int)lookup_idx_PE31_13) + 256] + 
                    distance_LUT_PE31_6[((int)lookup_idx_PE31_14) + 256] + distance_LUT_PE31_7[((int)lookup_idx_PE31_15) + 256];
                out_PE32.dist = 
                    distance_LUT_PE32_0[lookup_idx_PE32_0] + distance_LUT_PE32_1[lookup_idx_PE32_1] + 
                    distance_LUT_PE32_2[lookup_idx_PE32_2] + distance_LUT_PE32_3[lookup_idx_PE32_3] + 
                    distance_LUT_PE32_4[lookup_idx_PE32_4] + distance_LUT_PE32_5[lookup_idx_PE32_5] + 
                    distance_LUT_PE32_6[lookup_idx_PE32_6] + distance_LUT_PE32_7[lookup_idx_PE32_7] + 
                    distance_LUT_PE32_0[((int)lookup_idx_PE32_8) + 256] + distance_LUT_PE32_1[((int)lookup_idx_PE32_9) + 256] + 
                    distance_LUT_PE32_2[((int)lookup_idx_PE32_10) + 256] + distance_LUT_PE32_3[((int)lookup_idx_PE32_11) + 256] + 
                    distance_LUT_PE32_4[((int)lookup_idx_PE32_12) + 256] + distance_LUT_PE32_5[((int)lookup_idx_PE32_13) + 256] + 
                    distance_LUT_PE32_6[((int)lookup_idx_PE32_14) + 256] + distance_LUT_PE32_7[((int)lookup_idx_PE32_15) + 256];
                out_PE33.dist = 
                    distance_LUT_PE33_0[lookup_idx_PE33_0] + distance_LUT_PE33_1[lookup_idx_PE33_1] + 
                    distance_LUT_PE33_2[lookup_idx_PE33_2] + distance_LUT_PE33_3[lookup_idx_PE33_3] + 
                    distance_LUT_PE33_4[lookup_idx_PE33_4] + distance_LUT_PE33_5[lookup_idx_PE33_5] + 
                    distance_LUT_PE33_6[lookup_idx_PE33_6] + distance_LUT_PE33_7[lookup_idx_PE33_7] + 
                    distance_LUT_PE33_0[((int)lookup_idx_PE33_8) + 256] + distance_LUT_PE33_1[((int)lookup_idx_PE33_9) + 256] + 
                    distance_LUT_PE33_2[((int)lookup_idx_PE33_10) + 256] + distance_LUT_PE33_3[((int)lookup_idx_PE33_11) + 256] + 
                    distance_LUT_PE33_4[((int)lookup_idx_PE33_12) + 256] + distance_LUT_PE33_5[((int)lookup_idx_PE33_13) + 256] + 
                    distance_LUT_PE33_6[((int)lookup_idx_PE33_14) + 256] + distance_LUT_PE33_7[((int)lookup_idx_PE33_15) + 256];
                out_PE34.dist = 
                    distance_LUT_PE34_0[lookup_idx_PE34_0] + distance_LUT_PE34_1[lookup_idx_PE34_1] + 
                    distance_LUT_PE34_2[lookup_idx_PE34_2] + distance_LUT_PE34_3[lookup_idx_PE34_3] + 
                    distance_LUT_PE34_4[lookup_idx_PE34_4] + distance_LUT_PE34_5[lookup_idx_PE34_5] + 
                    distance_LUT_PE34_6[lookup_idx_PE34_6] + distance_LUT_PE34_7[lookup_idx_PE34_7] + 
                    distance_LUT_PE34_0[((int)lookup_idx_PE34_8) + 256] + distance_LUT_PE34_1[((int)lookup_idx_PE34_9) + 256] + 
                    distance_LUT_PE34_2[((int)lookup_idx_PE34_10) + 256] + distance_LUT_PE34_3[((int)lookup_idx_PE34_11) + 256] + 
                    distance_LUT_PE34_4[((int)lookup_idx_PE34_12) + 256] + distance_LUT_PE34_5[((int)lookup_idx_PE34_13) + 256] + 
                    distance_LUT_PE34_6[((int)lookup_idx_PE34_14) + 256] + distance_LUT_PE34_7[((int)lookup_idx_PE34_15) + 256];
                out_PE35.dist = 
                    distance_LUT_PE35_0[lookup_idx_PE35_0] + distance_LUT_PE35_1[lookup_idx_PE35_1] + 
                    distance_LUT_PE35_2[lookup_idx_PE35_2] + distance_LUT_PE35_3[lookup_idx_PE35_3] + 
                    distance_LUT_PE35_4[lookup_idx_PE35_4] + distance_LUT_PE35_5[lookup_idx_PE35_5] + 
                    distance_LUT_PE35_6[lookup_idx_PE35_6] + distance_LUT_PE35_7[lookup_idx_PE35_7] + 
                    distance_LUT_PE35_0[((int)lookup_idx_PE35_8) + 256] + distance_LUT_PE35_1[((int)lookup_idx_PE35_9) + 256] + 
                    distance_LUT_PE35_2[((int)lookup_idx_PE35_10) + 256] + distance_LUT_PE35_3[((int)lookup_idx_PE35_11) + 256] + 
                    distance_LUT_PE35_4[((int)lookup_idx_PE35_12) + 256] + distance_LUT_PE35_5[((int)lookup_idx_PE35_13) + 256] + 
                    distance_LUT_PE35_6[((int)lookup_idx_PE35_14) + 256] + distance_LUT_PE35_7[((int)lookup_idx_PE35_15) + 256];
                out_PE36.dist = 
                    distance_LUT_PE36_0[lookup_idx_PE36_0] + distance_LUT_PE36_1[lookup_idx_PE36_1] + 
                    distance_LUT_PE36_2[lookup_idx_PE36_2] + distance_LUT_PE36_3[lookup_idx_PE36_3] + 
                    distance_LUT_PE36_4[lookup_idx_PE36_4] + distance_LUT_PE36_5[lookup_idx_PE36_5] + 
                    distance_LUT_PE36_6[lookup_idx_PE36_6] + distance_LUT_PE36_7[lookup_idx_PE36_7] + 
                    distance_LUT_PE36_0[((int)lookup_idx_PE36_8) + 256] + distance_LUT_PE36_1[((int)lookup_idx_PE36_9) + 256] + 
                    distance_LUT_PE36_2[((int)lookup_idx_PE36_10) + 256] + distance_LUT_PE36_3[((int)lookup_idx_PE36_11) + 256] + 
                    distance_LUT_PE36_4[((int)lookup_idx_PE36_12) + 256] + distance_LUT_PE36_5[((int)lookup_idx_PE36_13) + 256] + 
                    distance_LUT_PE36_6[((int)lookup_idx_PE36_14) + 256] + distance_LUT_PE36_7[((int)lookup_idx_PE36_15) + 256];
                out_PE37.dist = 
                    distance_LUT_PE37_0[lookup_idx_PE37_0] + distance_LUT_PE37_1[lookup_idx_PE37_1] + 
                    distance_LUT_PE37_2[lookup_idx_PE37_2] + distance_LUT_PE37_3[lookup_idx_PE37_3] + 
                    distance_LUT_PE37_4[lookup_idx_PE37_4] + distance_LUT_PE37_5[lookup_idx_PE37_5] + 
                    distance_LUT_PE37_6[lookup_idx_PE37_6] + distance_LUT_PE37_7[lookup_idx_PE37_7] + 
                    distance_LUT_PE37_0[((int)lookup_idx_PE37_8) + 256] + distance_LUT_PE37_1[((int)lookup_idx_PE37_9) + 256] + 
                    distance_LUT_PE37_2[((int)lookup_idx_PE37_10) + 256] + distance_LUT_PE37_3[((int)lookup_idx_PE37_11) + 256] + 
                    distance_LUT_PE37_4[((int)lookup_idx_PE37_12) + 256] + distance_LUT_PE37_5[((int)lookup_idx_PE37_13) + 256] + 
                    distance_LUT_PE37_6[((int)lookup_idx_PE37_14) + 256] + distance_LUT_PE37_7[((int)lookup_idx_PE37_15) + 256];
                out_PE38.dist = 
                    distance_LUT_PE38_0[lookup_idx_PE38_0] + distance_LUT_PE38_1[lookup_idx_PE38_1] + 
                    distance_LUT_PE38_2[lookup_idx_PE38_2] + distance_LUT_PE38_3[lookup_idx_PE38_3] + 
                    distance_LUT_PE38_4[lookup_idx_PE38_4] + distance_LUT_PE38_5[lookup_idx_PE38_5] + 
                    distance_LUT_PE38_6[lookup_idx_PE38_6] + distance_LUT_PE38_7[lookup_idx_PE38_7] + 
                    distance_LUT_PE38_0[((int)lookup_idx_PE38_8) + 256] + distance_LUT_PE38_1[((int)lookup_idx_PE38_9) + 256] + 
                    distance_LUT_PE38_2[((int)lookup_idx_PE38_10) + 256] + distance_LUT_PE38_3[((int)lookup_idx_PE38_11) + 256] + 
                    distance_LUT_PE38_4[((int)lookup_idx_PE38_12) + 256] + distance_LUT_PE38_5[((int)lookup_idx_PE38_13) + 256] + 
                    distance_LUT_PE38_6[((int)lookup_idx_PE38_14) + 256] + distance_LUT_PE38_7[((int)lookup_idx_PE38_15) + 256];
                out_PE39.dist = 
                    distance_LUT_PE39_0[lookup_idx_PE39_0] + distance_LUT_PE39_1[lookup_idx_PE39_1] + 
                    distance_LUT_PE39_2[lookup_idx_PE39_2] + distance_LUT_PE39_3[lookup_idx_PE39_3] + 
                    distance_LUT_PE39_4[lookup_idx_PE39_4] + distance_LUT_PE39_5[lookup_idx_PE39_5] + 
                    distance_LUT_PE39_6[lookup_idx_PE39_6] + distance_LUT_PE39_7[lookup_idx_PE39_7] + 
                    distance_LUT_PE39_0[((int)lookup_idx_PE39_8) + 256] + distance_LUT_PE39_1[((int)lookup_idx_PE39_9) + 256] + 
                    distance_LUT_PE39_2[((int)lookup_idx_PE39_10) + 256] + distance_LUT_PE39_3[((int)lookup_idx_PE39_11) + 256] + 
                    distance_LUT_PE39_4[((int)lookup_idx_PE39_12) + 256] + distance_LUT_PE39_5[((int)lookup_idx_PE39_13) + 256] + 
                    distance_LUT_PE39_6[((int)lookup_idx_PE39_14) + 256] + distance_LUT_PE39_7[((int)lookup_idx_PE39_15) + 256];
                out_PE40.dist = 
                    distance_LUT_PE40_0[lookup_idx_PE40_0] + distance_LUT_PE40_1[lookup_idx_PE40_1] + 
                    distance_LUT_PE40_2[lookup_idx_PE40_2] + distance_LUT_PE40_3[lookup_idx_PE40_3] + 
                    distance_LUT_PE40_4[lookup_idx_PE40_4] + distance_LUT_PE40_5[lookup_idx_PE40_5] + 
                    distance_LUT_PE40_6[lookup_idx_PE40_6] + distance_LUT_PE40_7[lookup_idx_PE40_7] + 
                    distance_LUT_PE40_0[((int)lookup_idx_PE40_8) + 256] + distance_LUT_PE40_1[((int)lookup_idx_PE40_9) + 256] + 
                    distance_LUT_PE40_2[((int)lookup_idx_PE40_10) + 256] + distance_LUT_PE40_3[((int)lookup_idx_PE40_11) + 256] + 
                    distance_LUT_PE40_4[((int)lookup_idx_PE40_12) + 256] + distance_LUT_PE40_5[((int)lookup_idx_PE40_13) + 256] + 
                    distance_LUT_PE40_6[((int)lookup_idx_PE40_14) + 256] + distance_LUT_PE40_7[((int)lookup_idx_PE40_15) + 256];
                out_PE41.dist = 
                    distance_LUT_PE41_0[lookup_idx_PE41_0] + distance_LUT_PE41_1[lookup_idx_PE41_1] + 
                    distance_LUT_PE41_2[lookup_idx_PE41_2] + distance_LUT_PE41_3[lookup_idx_PE41_3] + 
                    distance_LUT_PE41_4[lookup_idx_PE41_4] + distance_LUT_PE41_5[lookup_idx_PE41_5] + 
                    distance_LUT_PE41_6[lookup_idx_PE41_6] + distance_LUT_PE41_7[lookup_idx_PE41_7] + 
                    distance_LUT_PE41_0[((int)lookup_idx_PE41_8) + 256] + distance_LUT_PE41_1[((int)lookup_idx_PE41_9) + 256] + 
                    distance_LUT_PE41_2[((int)lookup_idx_PE41_10) + 256] + distance_LUT_PE41_3[((int)lookup_idx_PE41_11) + 256] + 
                    distance_LUT_PE41_4[((int)lookup_idx_PE41_12) + 256] + distance_LUT_PE41_5[((int)lookup_idx_PE41_13) + 256] + 
                    distance_LUT_PE41_6[((int)lookup_idx_PE41_14) + 256] + distance_LUT_PE41_7[((int)lookup_idx_PE41_15) + 256];
                out_PE42.dist = 
                    distance_LUT_PE42_0[lookup_idx_PE42_0] + distance_LUT_PE42_1[lookup_idx_PE42_1] + 
                    distance_LUT_PE42_2[lookup_idx_PE42_2] + distance_LUT_PE42_3[lookup_idx_PE42_3] + 
                    distance_LUT_PE42_4[lookup_idx_PE42_4] + distance_LUT_PE42_5[lookup_idx_PE42_5] + 
                    distance_LUT_PE42_6[lookup_idx_PE42_6] + distance_LUT_PE42_7[lookup_idx_PE42_7] + 
                    distance_LUT_PE42_0[((int)lookup_idx_PE42_8) + 256] + distance_LUT_PE42_1[((int)lookup_idx_PE42_9) + 256] + 
                    distance_LUT_PE42_2[((int)lookup_idx_PE42_10) + 256] + distance_LUT_PE42_3[((int)lookup_idx_PE42_11) + 256] + 
                    distance_LUT_PE42_4[((int)lookup_idx_PE42_12) + 256] + distance_LUT_PE42_5[((int)lookup_idx_PE42_13) + 256] + 
                    distance_LUT_PE42_6[((int)lookup_idx_PE42_14) + 256] + distance_LUT_PE42_7[((int)lookup_idx_PE42_15) + 256];
                out_PE43.dist = 
                    distance_LUT_PE43_0[lookup_idx_PE43_0] + distance_LUT_PE43_1[lookup_idx_PE43_1] + 
                    distance_LUT_PE43_2[lookup_idx_PE43_2] + distance_LUT_PE43_3[lookup_idx_PE43_3] + 
                    distance_LUT_PE43_4[lookup_idx_PE43_4] + distance_LUT_PE43_5[lookup_idx_PE43_5] + 
                    distance_LUT_PE43_6[lookup_idx_PE43_6] + distance_LUT_PE43_7[lookup_idx_PE43_7] + 
                    distance_LUT_PE43_0[((int)lookup_idx_PE43_8) + 256] + distance_LUT_PE43_1[((int)lookup_idx_PE43_9) + 256] + 
                    distance_LUT_PE43_2[((int)lookup_idx_PE43_10) + 256] + distance_LUT_PE43_3[((int)lookup_idx_PE43_11) + 256] + 
                    distance_LUT_PE43_4[((int)lookup_idx_PE43_12) + 256] + distance_LUT_PE43_5[((int)lookup_idx_PE43_13) + 256] + 
                    distance_LUT_PE43_6[((int)lookup_idx_PE43_14) + 256] + distance_LUT_PE43_7[((int)lookup_idx_PE43_15) + 256];
                out_PE44.dist = 
                    distance_LUT_PE44_0[lookup_idx_PE44_0] + distance_LUT_PE44_1[lookup_idx_PE44_1] + 
                    distance_LUT_PE44_2[lookup_idx_PE44_2] + distance_LUT_PE44_3[lookup_idx_PE44_3] + 
                    distance_LUT_PE44_4[lookup_idx_PE44_4] + distance_LUT_PE44_5[lookup_idx_PE44_5] + 
                    distance_LUT_PE44_6[lookup_idx_PE44_6] + distance_LUT_PE44_7[lookup_idx_PE44_7] + 
                    distance_LUT_PE44_0[((int)lookup_idx_PE44_8) + 256] + distance_LUT_PE44_1[((int)lookup_idx_PE44_9) + 256] + 
                    distance_LUT_PE44_2[((int)lookup_idx_PE44_10) + 256] + distance_LUT_PE44_3[((int)lookup_idx_PE44_11) + 256] + 
                    distance_LUT_PE44_4[((int)lookup_idx_PE44_12) + 256] + distance_LUT_PE44_5[((int)lookup_idx_PE44_13) + 256] + 
                    distance_LUT_PE44_6[((int)lookup_idx_PE44_14) + 256] + distance_LUT_PE44_7[((int)lookup_idx_PE44_15) + 256];
                out_PE45.dist = 
                    distance_LUT_PE45_0[lookup_idx_PE45_0] + distance_LUT_PE45_1[lookup_idx_PE45_1] + 
                    distance_LUT_PE45_2[lookup_idx_PE45_2] + distance_LUT_PE45_3[lookup_idx_PE45_3] + 
                    distance_LUT_PE45_4[lookup_idx_PE45_4] + distance_LUT_PE45_5[lookup_idx_PE45_5] + 
                    distance_LUT_PE45_6[lookup_idx_PE45_6] + distance_LUT_PE45_7[lookup_idx_PE45_7] + 
                    distance_LUT_PE45_0[((int)lookup_idx_PE45_8) + 256] + distance_LUT_PE45_1[((int)lookup_idx_PE45_9) + 256] + 
                    distance_LUT_PE45_2[((int)lookup_idx_PE45_10) + 256] + distance_LUT_PE45_3[((int)lookup_idx_PE45_11) + 256] + 
                    distance_LUT_PE45_4[((int)lookup_idx_PE45_12) + 256] + distance_LUT_PE45_5[((int)lookup_idx_PE45_13) + 256] + 
                    distance_LUT_PE45_6[((int)lookup_idx_PE45_14) + 256] + distance_LUT_PE45_7[((int)lookup_idx_PE45_15) + 256];
                out_PE46.dist = 
                    distance_LUT_PE46_0[lookup_idx_PE46_0] + distance_LUT_PE46_1[lookup_idx_PE46_1] + 
                    distance_LUT_PE46_2[lookup_idx_PE46_2] + distance_LUT_PE46_3[lookup_idx_PE46_3] + 
                    distance_LUT_PE46_4[lookup_idx_PE46_4] + distance_LUT_PE46_5[lookup_idx_PE46_5] + 
                    distance_LUT_PE46_6[lookup_idx_PE46_6] + distance_LUT_PE46_7[lookup_idx_PE46_7] + 
                    distance_LUT_PE46_0[((int)lookup_idx_PE46_8) + 256] + distance_LUT_PE46_1[((int)lookup_idx_PE46_9) + 256] + 
                    distance_LUT_PE46_2[((int)lookup_idx_PE46_10) + 256] + distance_LUT_PE46_3[((int)lookup_idx_PE46_11) + 256] + 
                    distance_LUT_PE46_4[((int)lookup_idx_PE46_12) + 256] + distance_LUT_PE46_5[((int)lookup_idx_PE46_13) + 256] + 
                    distance_LUT_PE46_6[((int)lookup_idx_PE46_14) + 256] + distance_LUT_PE46_7[((int)lookup_idx_PE46_15) + 256];
                out_PE47.dist = 
                    distance_LUT_PE47_0[lookup_idx_PE47_0] + distance_LUT_PE47_1[lookup_idx_PE47_1] + 
                    distance_LUT_PE47_2[lookup_idx_PE47_2] + distance_LUT_PE47_3[lookup_idx_PE47_3] + 
                    distance_LUT_PE47_4[lookup_idx_PE47_4] + distance_LUT_PE47_5[lookup_idx_PE47_5] + 
                    distance_LUT_PE47_6[lookup_idx_PE47_6] + distance_LUT_PE47_7[lookup_idx_PE47_7] + 
                    distance_LUT_PE47_0[((int)lookup_idx_PE47_8) + 256] + distance_LUT_PE47_1[((int)lookup_idx_PE47_9) + 256] + 
                    distance_LUT_PE47_2[((int)lookup_idx_PE47_10) + 256] + distance_LUT_PE47_3[((int)lookup_idx_PE47_11) + 256] + 
                    distance_LUT_PE47_4[((int)lookup_idx_PE47_12) + 256] + distance_LUT_PE47_5[((int)lookup_idx_PE47_13) + 256] + 
                    distance_LUT_PE47_6[((int)lookup_idx_PE47_14) + 256] + distance_LUT_PE47_7[((int)lookup_idx_PE47_15) + 256];
                out_PE48.dist = 
                    distance_LUT_PE48_0[lookup_idx_PE48_0] + distance_LUT_PE48_1[lookup_idx_PE48_1] + 
                    distance_LUT_PE48_2[lookup_idx_PE48_2] + distance_LUT_PE48_3[lookup_idx_PE48_3] + 
                    distance_LUT_PE48_4[lookup_idx_PE48_4] + distance_LUT_PE48_5[lookup_idx_PE48_5] + 
                    distance_LUT_PE48_6[lookup_idx_PE48_6] + distance_LUT_PE48_7[lookup_idx_PE48_7] + 
                    distance_LUT_PE48_0[((int)lookup_idx_PE48_8) + 256] + distance_LUT_PE48_1[((int)lookup_idx_PE48_9) + 256] + 
                    distance_LUT_PE48_2[((int)lookup_idx_PE48_10) + 256] + distance_LUT_PE48_3[((int)lookup_idx_PE48_11) + 256] + 
                    distance_LUT_PE48_4[((int)lookup_idx_PE48_12) + 256] + distance_LUT_PE48_5[((int)lookup_idx_PE48_13) + 256] + 
                    distance_LUT_PE48_6[((int)lookup_idx_PE48_14) + 256] + distance_LUT_PE48_7[((int)lookup_idx_PE48_15) + 256];
                out_PE49.dist = 
                    distance_LUT_PE49_0[lookup_idx_PE49_0] + distance_LUT_PE49_1[lookup_idx_PE49_1] + 
                    distance_LUT_PE49_2[lookup_idx_PE49_2] + distance_LUT_PE49_3[lookup_idx_PE49_3] + 
                    distance_LUT_PE49_4[lookup_idx_PE49_4] + distance_LUT_PE49_5[lookup_idx_PE49_5] + 
                    distance_LUT_PE49_6[lookup_idx_PE49_6] + distance_LUT_PE49_7[lookup_idx_PE49_7] + 
                    distance_LUT_PE49_0[((int)lookup_idx_PE49_8) + 256] + distance_LUT_PE49_1[((int)lookup_idx_PE49_9) + 256] + 
                    distance_LUT_PE49_2[((int)lookup_idx_PE49_10) + 256] + distance_LUT_PE49_3[((int)lookup_idx_PE49_11) + 256] + 
                    distance_LUT_PE49_4[((int)lookup_idx_PE49_12) + 256] + distance_LUT_PE49_5[((int)lookup_idx_PE49_13) + 256] + 
                    distance_LUT_PE49_6[((int)lookup_idx_PE49_14) + 256] + distance_LUT_PE49_7[((int)lookup_idx_PE49_15) + 256];
                out_PE50.dist = 
                    distance_LUT_PE50_0[lookup_idx_PE50_0] + distance_LUT_PE50_1[lookup_idx_PE50_1] + 
                    distance_LUT_PE50_2[lookup_idx_PE50_2] + distance_LUT_PE50_3[lookup_idx_PE50_3] + 
                    distance_LUT_PE50_4[lookup_idx_PE50_4] + distance_LUT_PE50_5[lookup_idx_PE50_5] + 
                    distance_LUT_PE50_6[lookup_idx_PE50_6] + distance_LUT_PE50_7[lookup_idx_PE50_7] + 
                    distance_LUT_PE50_0[((int)lookup_idx_PE50_8) + 256] + distance_LUT_PE50_1[((int)lookup_idx_PE50_9) + 256] + 
                    distance_LUT_PE50_2[((int)lookup_idx_PE50_10) + 256] + distance_LUT_PE50_3[((int)lookup_idx_PE50_11) + 256] + 
                    distance_LUT_PE50_4[((int)lookup_idx_PE50_12) + 256] + distance_LUT_PE50_5[((int)lookup_idx_PE50_13) + 256] + 
                    distance_LUT_PE50_6[((int)lookup_idx_PE50_14) + 256] + distance_LUT_PE50_7[((int)lookup_idx_PE50_15) + 256];
                out_PE51.dist = 
                    distance_LUT_PE51_0[lookup_idx_PE51_0] + distance_LUT_PE51_1[lookup_idx_PE51_1] + 
                    distance_LUT_PE51_2[lookup_idx_PE51_2] + distance_LUT_PE51_3[lookup_idx_PE51_3] + 
                    distance_LUT_PE51_4[lookup_idx_PE51_4] + distance_LUT_PE51_5[lookup_idx_PE51_5] + 
                    distance_LUT_PE51_6[lookup_idx_PE51_6] + distance_LUT_PE51_7[lookup_idx_PE51_7] + 
                    distance_LUT_PE51_0[((int)lookup_idx_PE51_8) + 256] + distance_LUT_PE51_1[((int)lookup_idx_PE51_9) + 256] + 
                    distance_LUT_PE51_2[((int)lookup_idx_PE51_10) + 256] + distance_LUT_PE51_3[((int)lookup_idx_PE51_11) + 256] + 
                    distance_LUT_PE51_4[((int)lookup_idx_PE51_12) + 256] + distance_LUT_PE51_5[((int)lookup_idx_PE51_13) + 256] + 
                    distance_LUT_PE51_6[((int)lookup_idx_PE51_14) + 256] + distance_LUT_PE51_7[((int)lookup_idx_PE51_15) + 256];
                out_PE52.dist = 
                    distance_LUT_PE52_0[lookup_idx_PE52_0] + distance_LUT_PE52_1[lookup_idx_PE52_1] + 
                    distance_LUT_PE52_2[lookup_idx_PE52_2] + distance_LUT_PE52_3[lookup_idx_PE52_3] + 
                    distance_LUT_PE52_4[lookup_idx_PE52_4] + distance_LUT_PE52_5[lookup_idx_PE52_5] + 
                    distance_LUT_PE52_6[lookup_idx_PE52_6] + distance_LUT_PE52_7[lookup_idx_PE52_7] + 
                    distance_LUT_PE52_0[((int)lookup_idx_PE52_8) + 256] + distance_LUT_PE52_1[((int)lookup_idx_PE52_9) + 256] + 
                    distance_LUT_PE52_2[((int)lookup_idx_PE52_10) + 256] + distance_LUT_PE52_3[((int)lookup_idx_PE52_11) + 256] + 
                    distance_LUT_PE52_4[((int)lookup_idx_PE52_12) + 256] + distance_LUT_PE52_5[((int)lookup_idx_PE52_13) + 256] + 
                    distance_LUT_PE52_6[((int)lookup_idx_PE52_14) + 256] + distance_LUT_PE52_7[((int)lookup_idx_PE52_15) + 256];
                out_PE53.dist = 
                    distance_LUT_PE53_0[lookup_idx_PE53_0] + distance_LUT_PE53_1[lookup_idx_PE53_1] + 
                    distance_LUT_PE53_2[lookup_idx_PE53_2] + distance_LUT_PE53_3[lookup_idx_PE53_3] + 
                    distance_LUT_PE53_4[lookup_idx_PE53_4] + distance_LUT_PE53_5[lookup_idx_PE53_5] + 
                    distance_LUT_PE53_6[lookup_idx_PE53_6] + distance_LUT_PE53_7[lookup_idx_PE53_7] + 
                    distance_LUT_PE53_0[((int)lookup_idx_PE53_8) + 256] + distance_LUT_PE53_1[((int)lookup_idx_PE53_9) + 256] + 
                    distance_LUT_PE53_2[((int)lookup_idx_PE53_10) + 256] + distance_LUT_PE53_3[((int)lookup_idx_PE53_11) + 256] + 
                    distance_LUT_PE53_4[((int)lookup_idx_PE53_12) + 256] + distance_LUT_PE53_5[((int)lookup_idx_PE53_13) + 256] + 
                    distance_LUT_PE53_6[((int)lookup_idx_PE53_14) + 256] + distance_LUT_PE53_7[((int)lookup_idx_PE53_15) + 256];
                out_PE54.dist = 
                    distance_LUT_PE54_0[lookup_idx_PE54_0] + distance_LUT_PE54_1[lookup_idx_PE54_1] + 
                    distance_LUT_PE54_2[lookup_idx_PE54_2] + distance_LUT_PE54_3[lookup_idx_PE54_3] + 
                    distance_LUT_PE54_4[lookup_idx_PE54_4] + distance_LUT_PE54_5[lookup_idx_PE54_5] + 
                    distance_LUT_PE54_6[lookup_idx_PE54_6] + distance_LUT_PE54_7[lookup_idx_PE54_7] + 
                    distance_LUT_PE54_0[((int)lookup_idx_PE54_8) + 256] + distance_LUT_PE54_1[((int)lookup_idx_PE54_9) + 256] + 
                    distance_LUT_PE54_2[((int)lookup_idx_PE54_10) + 256] + distance_LUT_PE54_3[((int)lookup_idx_PE54_11) + 256] + 
                    distance_LUT_PE54_4[((int)lookup_idx_PE54_12) + 256] + distance_LUT_PE54_5[((int)lookup_idx_PE54_13) + 256] + 
                    distance_LUT_PE54_6[((int)lookup_idx_PE54_14) + 256] + distance_LUT_PE54_7[((int)lookup_idx_PE54_15) + 256];
                out_PE55.dist = 
                    distance_LUT_PE55_0[lookup_idx_PE55_0] + distance_LUT_PE55_1[lookup_idx_PE55_1] + 
                    distance_LUT_PE55_2[lookup_idx_PE55_2] + distance_LUT_PE55_3[lookup_idx_PE55_3] + 
                    distance_LUT_PE55_4[lookup_idx_PE55_4] + distance_LUT_PE55_5[lookup_idx_PE55_5] + 
                    distance_LUT_PE55_6[lookup_idx_PE55_6] + distance_LUT_PE55_7[lookup_idx_PE55_7] + 
                    distance_LUT_PE55_0[((int)lookup_idx_PE55_8) + 256] + distance_LUT_PE55_1[((int)lookup_idx_PE55_9) + 256] + 
                    distance_LUT_PE55_2[((int)lookup_idx_PE55_10) + 256] + distance_LUT_PE55_3[((int)lookup_idx_PE55_11) + 256] + 
                    distance_LUT_PE55_4[((int)lookup_idx_PE55_12) + 256] + distance_LUT_PE55_5[((int)lookup_idx_PE55_13) + 256] + 
                    distance_LUT_PE55_6[((int)lookup_idx_PE55_14) + 256] + distance_LUT_PE55_7[((int)lookup_idx_PE55_15) + 256];
                out_PE56.dist = 
                    distance_LUT_PE56_0[lookup_idx_PE56_0] + distance_LUT_PE56_1[lookup_idx_PE56_1] + 
                    distance_LUT_PE56_2[lookup_idx_PE56_2] + distance_LUT_PE56_3[lookup_idx_PE56_3] + 
                    distance_LUT_PE56_4[lookup_idx_PE56_4] + distance_LUT_PE56_5[lookup_idx_PE56_5] + 
                    distance_LUT_PE56_6[lookup_idx_PE56_6] + distance_LUT_PE56_7[lookup_idx_PE56_7] + 
                    distance_LUT_PE56_0[((int)lookup_idx_PE56_8) + 256] + distance_LUT_PE56_1[((int)lookup_idx_PE56_9) + 256] + 
                    distance_LUT_PE56_2[((int)lookup_idx_PE56_10) + 256] + distance_LUT_PE56_3[((int)lookup_idx_PE56_11) + 256] + 
                    distance_LUT_PE56_4[((int)lookup_idx_PE56_12) + 256] + distance_LUT_PE56_5[((int)lookup_idx_PE56_13) + 256] + 
                    distance_LUT_PE56_6[((int)lookup_idx_PE56_14) + 256] + distance_LUT_PE56_7[((int)lookup_idx_PE56_15) + 256];
                out_PE57.dist = 
                    distance_LUT_PE57_0[lookup_idx_PE57_0] + distance_LUT_PE57_1[lookup_idx_PE57_1] + 
                    distance_LUT_PE57_2[lookup_idx_PE57_2] + distance_LUT_PE57_3[lookup_idx_PE57_3] + 
                    distance_LUT_PE57_4[lookup_idx_PE57_4] + distance_LUT_PE57_5[lookup_idx_PE57_5] + 
                    distance_LUT_PE57_6[lookup_idx_PE57_6] + distance_LUT_PE57_7[lookup_idx_PE57_7] + 
                    distance_LUT_PE57_0[((int)lookup_idx_PE57_8) + 256] + distance_LUT_PE57_1[((int)lookup_idx_PE57_9) + 256] + 
                    distance_LUT_PE57_2[((int)lookup_idx_PE57_10) + 256] + distance_LUT_PE57_3[((int)lookup_idx_PE57_11) + 256] + 
                    distance_LUT_PE57_4[((int)lookup_idx_PE57_12) + 256] + distance_LUT_PE57_5[((int)lookup_idx_PE57_13) + 256] + 
                    distance_LUT_PE57_6[((int)lookup_idx_PE57_14) + 256] + distance_LUT_PE57_7[((int)lookup_idx_PE57_15) + 256];
                out_PE58.dist = 
                    distance_LUT_PE58_0[lookup_idx_PE58_0] + distance_LUT_PE58_1[lookup_idx_PE58_1] + 
                    distance_LUT_PE58_2[lookup_idx_PE58_2] + distance_LUT_PE58_3[lookup_idx_PE58_3] + 
                    distance_LUT_PE58_4[lookup_idx_PE58_4] + distance_LUT_PE58_5[lookup_idx_PE58_5] + 
                    distance_LUT_PE58_6[lookup_idx_PE58_6] + distance_LUT_PE58_7[lookup_idx_PE58_7] + 
                    distance_LUT_PE58_0[((int)lookup_idx_PE58_8) + 256] + distance_LUT_PE58_1[((int)lookup_idx_PE58_9) + 256] + 
                    distance_LUT_PE58_2[((int)lookup_idx_PE58_10) + 256] + distance_LUT_PE58_3[((int)lookup_idx_PE58_11) + 256] + 
                    distance_LUT_PE58_4[((int)lookup_idx_PE58_12) + 256] + distance_LUT_PE58_5[((int)lookup_idx_PE58_13) + 256] + 
                    distance_LUT_PE58_6[((int)lookup_idx_PE58_14) + 256] + distance_LUT_PE58_7[((int)lookup_idx_PE58_15) + 256];
                out_PE59.dist = 
                    distance_LUT_PE59_0[lookup_idx_PE59_0] + distance_LUT_PE59_1[lookup_idx_PE59_1] + 
                    distance_LUT_PE59_2[lookup_idx_PE59_2] + distance_LUT_PE59_3[lookup_idx_PE59_3] + 
                    distance_LUT_PE59_4[lookup_idx_PE59_4] + distance_LUT_PE59_5[lookup_idx_PE59_5] + 
                    distance_LUT_PE59_6[lookup_idx_PE59_6] + distance_LUT_PE59_7[lookup_idx_PE59_7] + 
                    distance_LUT_PE59_0[((int)lookup_idx_PE59_8) + 256] + distance_LUT_PE59_1[((int)lookup_idx_PE59_9) + 256] + 
                    distance_LUT_PE59_2[((int)lookup_idx_PE59_10) + 256] + distance_LUT_PE59_3[((int)lookup_idx_PE59_11) + 256] + 
                    distance_LUT_PE59_4[((int)lookup_idx_PE59_12) + 256] + distance_LUT_PE59_5[((int)lookup_idx_PE59_13) + 256] + 
                    distance_LUT_PE59_6[((int)lookup_idx_PE59_14) + 256] + distance_LUT_PE59_7[((int)lookup_idx_PE59_15) + 256];
                out_PE60.dist = 
                    distance_LUT_PE60_0[lookup_idx_PE60_0] + distance_LUT_PE60_1[lookup_idx_PE60_1] + 
                    distance_LUT_PE60_2[lookup_idx_PE60_2] + distance_LUT_PE60_3[lookup_idx_PE60_3] + 
                    distance_LUT_PE60_4[lookup_idx_PE60_4] + distance_LUT_PE60_5[lookup_idx_PE60_5] + 
                    distance_LUT_PE60_6[lookup_idx_PE60_6] + distance_LUT_PE60_7[lookup_idx_PE60_7] + 
                    distance_LUT_PE60_0[((int)lookup_idx_PE60_8) + 256] + distance_LUT_PE60_1[((int)lookup_idx_PE60_9) + 256] + 
                    distance_LUT_PE60_2[((int)lookup_idx_PE60_10) + 256] + distance_LUT_PE60_3[((int)lookup_idx_PE60_11) + 256] + 
                    distance_LUT_PE60_4[((int)lookup_idx_PE60_12) + 256] + distance_LUT_PE60_5[((int)lookup_idx_PE60_13) + 256] + 
                    distance_LUT_PE60_6[((int)lookup_idx_PE60_14) + 256] + distance_LUT_PE60_7[((int)lookup_idx_PE60_15) + 256];
                out_PE61.dist = 
                    distance_LUT_PE61_0[lookup_idx_PE61_0] + distance_LUT_PE61_1[lookup_idx_PE61_1] + 
                    distance_LUT_PE61_2[lookup_idx_PE61_2] + distance_LUT_PE61_3[lookup_idx_PE61_3] + 
                    distance_LUT_PE61_4[lookup_idx_PE61_4] + distance_LUT_PE61_5[lookup_idx_PE61_5] + 
                    distance_LUT_PE61_6[lookup_idx_PE61_6] + distance_LUT_PE61_7[lookup_idx_PE61_7] + 
                    distance_LUT_PE61_0[((int)lookup_idx_PE61_8) + 256] + distance_LUT_PE61_1[((int)lookup_idx_PE61_9) + 256] + 
                    distance_LUT_PE61_2[((int)lookup_idx_PE61_10) + 256] + distance_LUT_PE61_3[((int)lookup_idx_PE61_11) + 256] + 
                    distance_LUT_PE61_4[((int)lookup_idx_PE61_12) + 256] + distance_LUT_PE61_5[((int)lookup_idx_PE61_13) + 256] + 
                    distance_LUT_PE61_6[((int)lookup_idx_PE61_14) + 256] + distance_LUT_PE61_7[((int)lookup_idx_PE61_15) + 256];
                out_PE62.dist = 
                    distance_LUT_PE62_0[lookup_idx_PE62_0] + distance_LUT_PE62_1[lookup_idx_PE62_1] + 
                    distance_LUT_PE62_2[lookup_idx_PE62_2] + distance_LUT_PE62_3[lookup_idx_PE62_3] + 
                    distance_LUT_PE62_4[lookup_idx_PE62_4] + distance_LUT_PE62_5[lookup_idx_PE62_5] + 
                    distance_LUT_PE62_6[lookup_idx_PE62_6] + distance_LUT_PE62_7[lookup_idx_PE62_7] + 
                    distance_LUT_PE62_0[((int)lookup_idx_PE62_8) + 256] + distance_LUT_PE62_1[((int)lookup_idx_PE62_9) + 256] + 
                    distance_LUT_PE62_2[((int)lookup_idx_PE62_10) + 256] + distance_LUT_PE62_3[((int)lookup_idx_PE62_11) + 256] + 
                    distance_LUT_PE62_4[((int)lookup_idx_PE62_12) + 256] + distance_LUT_PE62_5[((int)lookup_idx_PE62_13) + 256] + 
                    distance_LUT_PE62_6[((int)lookup_idx_PE62_14) + 256] + distance_LUT_PE62_7[((int)lookup_idx_PE62_15) + 256];

                // for padded element, replace its distance by large number
                if (entry_id == (scanned_entries_every_cell - 1)) {
                    if (0 > last_valid_channel) {
                        out_PE0.vec_ID = -1;
                        out_PE0.dist = LARGE_NUM;
                    }
                    if (1 > last_valid_channel) {
                        out_PE1.vec_ID = -1;
                        out_PE1.dist = LARGE_NUM;
                    }
                    if (2 > last_valid_channel) {
                        out_PE2.vec_ID = -1;
                        out_PE2.dist = LARGE_NUM;
                    }
                    if (3 > last_valid_channel) {
                        out_PE3.vec_ID = -1;
                        out_PE3.dist = LARGE_NUM;
                    }
                    if (4 > last_valid_channel) {
                        out_PE4.vec_ID = -1;
                        out_PE4.dist = LARGE_NUM;
                    }
                    if (5 > last_valid_channel) {
                        out_PE5.vec_ID = -1;
                        out_PE5.dist = LARGE_NUM;
                    }
                    if (6 > last_valid_channel) {
                        out_PE6.vec_ID = -1;
                        out_PE6.dist = LARGE_NUM;
                    }
                    if (7 > last_valid_channel) {
                        out_PE7.vec_ID = -1;
                        out_PE7.dist = LARGE_NUM;
                    }
                    if (8 > last_valid_channel) {
                        out_PE8.vec_ID = -1;
                        out_PE8.dist = LARGE_NUM;
                    }
                    if (9 > last_valid_channel) {
                        out_PE9.vec_ID = -1;
                        out_PE9.dist = LARGE_NUM;
                    }
                    if (10 > last_valid_channel) {
                        out_PE10.vec_ID = -1;
                        out_PE10.dist = LARGE_NUM;
                    }
                    if (11 > last_valid_channel) {
                        out_PE11.vec_ID = -1;
                        out_PE11.dist = LARGE_NUM;
                    }
                    if (12 > last_valid_channel) {
                        out_PE12.vec_ID = -1;
                        out_PE12.dist = LARGE_NUM;
                    }
                    if (13 > last_valid_channel) {
                        out_PE13.vec_ID = -1;
                        out_PE13.dist = LARGE_NUM;
                    }
                    if (14 > last_valid_channel) {
                        out_PE14.vec_ID = -1;
                        out_PE14.dist = LARGE_NUM;
                    }
                    if (15 > last_valid_channel) {
                        out_PE15.vec_ID = -1;
                        out_PE15.dist = LARGE_NUM;
                    }
                    if (16 > last_valid_channel) {
                        out_PE16.vec_ID = -1;
                        out_PE16.dist = LARGE_NUM;
                    }
                    if (17 > last_valid_channel) {
                        out_PE17.vec_ID = -1;
                        out_PE17.dist = LARGE_NUM;
                    }
                    if (18 > last_valid_channel) {
                        out_PE18.vec_ID = -1;
                        out_PE18.dist = LARGE_NUM;
                    }
                    if (19 > last_valid_channel) {
                        out_PE19.vec_ID = -1;
                        out_PE19.dist = LARGE_NUM;
                    }
                    if (20 > last_valid_channel) {
                        out_PE20.vec_ID = -1;
                        out_PE20.dist = LARGE_NUM;
                    }
                    if (21 > last_valid_channel) {
                        out_PE21.vec_ID = -1;
                        out_PE21.dist = LARGE_NUM;
                    }
                    if (22 > last_valid_channel) {
                        out_PE22.vec_ID = -1;
                        out_PE22.dist = LARGE_NUM;
                    }
                    if (23 > last_valid_channel) {
                        out_PE23.vec_ID = -1;
                        out_PE23.dist = LARGE_NUM;
                    }
                    if (24 > last_valid_channel) {
                        out_PE24.vec_ID = -1;
                        out_PE24.dist = LARGE_NUM;
                    }
                    if (25 > last_valid_channel) {
                        out_PE25.vec_ID = -1;
                        out_PE25.dist = LARGE_NUM;
                    }
                    if (26 > last_valid_channel) {
                        out_PE26.vec_ID = -1;
                        out_PE26.dist = LARGE_NUM;
                    }
                    if (27 > last_valid_channel) {
                        out_PE27.vec_ID = -1;
                        out_PE27.dist = LARGE_NUM;
                    }
                    if (28 > last_valid_channel) {
                        out_PE28.vec_ID = -1;
                        out_PE28.dist = LARGE_NUM;
                    }
                    if (29 > last_valid_channel) {
                        out_PE29.vec_ID = -1;
                        out_PE29.dist = LARGE_NUM;
                    }
                    if (30 > last_valid_channel) {
                        out_PE30.vec_ID = -1;
                        out_PE30.dist = LARGE_NUM;
                    }
                    if (31 > last_valid_channel) {
                        out_PE31.vec_ID = -1;
                        out_PE31.dist = LARGE_NUM;
                    }
                    if (32 > last_valid_channel) {
                        out_PE32.vec_ID = -1;
                        out_PE32.dist = LARGE_NUM;
                    }
                    if (33 > last_valid_channel) {
                        out_PE33.vec_ID = -1;
                        out_PE33.dist = LARGE_NUM;
                    }
                    if (34 > last_valid_channel) {
                        out_PE34.vec_ID = -1;
                        out_PE34.dist = LARGE_NUM;
                    }
                    if (35 > last_valid_channel) {
                        out_PE35.vec_ID = -1;
                        out_PE35.dist = LARGE_NUM;
                    }
                    if (36 > last_valid_channel) {
                        out_PE36.vec_ID = -1;
                        out_PE36.dist = LARGE_NUM;
                    }
                    if (37 > last_valid_channel) {
                        out_PE37.vec_ID = -1;
                        out_PE37.dist = LARGE_NUM;
                    }
                    if (38 > last_valid_channel) {
                        out_PE38.vec_ID = -1;
                        out_PE38.dist = LARGE_NUM;
                    }
                    if (39 > last_valid_channel) {
                        out_PE39.vec_ID = -1;
                        out_PE39.dist = LARGE_NUM;
                    }
                    if (40 > last_valid_channel) {
                        out_PE40.vec_ID = -1;
                        out_PE40.dist = LARGE_NUM;
                    }
                    if (41 > last_valid_channel) {
                        out_PE41.vec_ID = -1;
                        out_PE41.dist = LARGE_NUM;
                    }
                    if (42 > last_valid_channel) {
                        out_PE42.vec_ID = -1;
                        out_PE42.dist = LARGE_NUM;
                    }
                    if (43 > last_valid_channel) {
                        out_PE43.vec_ID = -1;
                        out_PE43.dist = LARGE_NUM;
                    }
                    if (44 > last_valid_channel) {
                        out_PE44.vec_ID = -1;
                        out_PE44.dist = LARGE_NUM;
                    }
                    if (45 > last_valid_channel) {
                        out_PE45.vec_ID = -1;
                        out_PE45.dist = LARGE_NUM;
                    }
                    if (46 > last_valid_channel) {
                        out_PE46.vec_ID = -1;
                        out_PE46.dist = LARGE_NUM;
                    }
                    if (47 > last_valid_channel) {
                        out_PE47.vec_ID = -1;
                        out_PE47.dist = LARGE_NUM;
                    }
                    if (48 > last_valid_channel) {
                        out_PE48.vec_ID = -1;
                        out_PE48.dist = LARGE_NUM;
                    }
                    if (49 > last_valid_channel) {
                        out_PE49.vec_ID = -1;
                        out_PE49.dist = LARGE_NUM;
                    }
                    if (50 > last_valid_channel) {
                        out_PE50.vec_ID = -1;
                        out_PE50.dist = LARGE_NUM;
                    }
                    if (51 > last_valid_channel) {
                        out_PE51.vec_ID = -1;
                        out_PE51.dist = LARGE_NUM;
                    }
                    if (52 > last_valid_channel) {
                        out_PE52.vec_ID = -1;
                        out_PE52.dist = LARGE_NUM;
                    }
                    if (53 > last_valid_channel) {
                        out_PE53.vec_ID = -1;
                        out_PE53.dist = LARGE_NUM;
                    }
                    if (54 > last_valid_channel) {
                        out_PE54.vec_ID = -1;
                        out_PE54.dist = LARGE_NUM;
                    }
                    if (55 > last_valid_channel) {
                        out_PE55.vec_ID = -1;
                        out_PE55.dist = LARGE_NUM;
                    }
                    if (56 > last_valid_channel) {
                        out_PE56.vec_ID = -1;
                        out_PE56.dist = LARGE_NUM;
                    }
                    if (57 > last_valid_channel) {
                        out_PE57.vec_ID = -1;
                        out_PE57.dist = LARGE_NUM;
                    }
                    if (58 > last_valid_channel) {
                        out_PE58.vec_ID = -1;
                        out_PE58.dist = LARGE_NUM;
                    }
                    if (59 > last_valid_channel) {
                        out_PE59.vec_ID = -1;
                        out_PE59.dist = LARGE_NUM;
                    }
                    if (60 > last_valid_channel) {
                        out_PE60.vec_ID = -1;
                        out_PE60.dist = LARGE_NUM;
                    }
                    if (61 > last_valid_channel) {
                        out_PE61.vec_ID = -1;
                        out_PE61.dist = LARGE_NUM;
                    }
                    if (62 > last_valid_channel) {
                        out_PE62.vec_ID = -1;
                        out_PE62.dist = LARGE_NUM;
                    }
                }

                s_single_PQ_result[0][0].write(out_PE0);
                s_single_PQ_result[0][1].write(out_PE1);
                s_single_PQ_result[0][2].write(out_PE2);
                s_single_PQ_result[0][3].write(out_PE3);
                s_single_PQ_result[0][4].write(out_PE4);
                s_single_PQ_result[0][5].write(out_PE5);
                s_single_PQ_result[0][6].write(out_PE6);
                s_single_PQ_result[0][7].write(out_PE7);
                s_single_PQ_result[0][8].write(out_PE8);
                s_single_PQ_result[0][9].write(out_PE9);
                s_single_PQ_result[0][10].write(out_PE10);
                s_single_PQ_result[0][11].write(out_PE11);
                s_single_PQ_result[0][12].write(out_PE12);
                s_single_PQ_result[0][13].write(out_PE13);
                s_single_PQ_result[0][14].write(out_PE14);
                s_single_PQ_result[0][15].write(out_PE15);

                s_single_PQ_result[1][0].write(out_PE16);
                s_single_PQ_result[1][1].write(out_PE17);
                s_single_PQ_result[1][2].write(out_PE18);
                s_single_PQ_result[1][3].write(out_PE19);
                s_single_PQ_result[1][4].write(out_PE20);
                s_single_PQ_result[1][5].write(out_PE21);
                s_single_PQ_result[1][6].write(out_PE22);
                s_single_PQ_result[1][7].write(out_PE23);
                s_single_PQ_result[1][8].write(out_PE24);
                s_single_PQ_result[1][9].write(out_PE25);
                s_single_PQ_result[1][10].write(out_PE26);
                s_single_PQ_result[1][11].write(out_PE27);
                s_single_PQ_result[1][12].write(out_PE28);
                s_single_PQ_result[1][13].write(out_PE29);
                s_single_PQ_result[1][14].write(out_PE30);
                s_single_PQ_result[1][15].write(out_PE31);

                s_single_PQ_result[2][0].write(out_PE32);
                s_single_PQ_result[2][1].write(out_PE33);
                s_single_PQ_result[2][2].write(out_PE34);
                s_single_PQ_result[2][3].write(out_PE35);
                s_single_PQ_result[2][4].write(out_PE36);
                s_single_PQ_result[2][5].write(out_PE37);
                s_single_PQ_result[2][6].write(out_PE38);
                s_single_PQ_result[2][7].write(out_PE39);
                s_single_PQ_result[2][8].write(out_PE40);
                s_single_PQ_result[2][9].write(out_PE41);
                s_single_PQ_result[2][10].write(out_PE42);
                s_single_PQ_result[2][11].write(out_PE43);
                s_single_PQ_result[2][12].write(out_PE44);
                s_single_PQ_result[2][13].write(out_PE45);
                s_single_PQ_result[2][14].write(out_PE46);
                s_single_PQ_result[2][15].write(out_PE47);

                s_single_PQ_result[3][0].write(out_PE48);
                s_single_PQ_result[3][1].write(out_PE49);
                s_single_PQ_result[3][2].write(out_PE50);
                s_single_PQ_result[3][3].write(out_PE51);
                s_single_PQ_result[3][4].write(out_PE52);
                s_single_PQ_result[3][5].write(out_PE53);
                s_single_PQ_result[3][6].write(out_PE54);
                s_single_PQ_result[3][7].write(out_PE55);
                s_single_PQ_result[3][8].write(out_PE56);
                s_single_PQ_result[3][9].write(out_PE57);
                s_single_PQ_result[3][10].write(out_PE58);
                s_single_PQ_result[3][11].write(out_PE59);
                s_single_PQ_result[3][12].write(out_PE60);
                s_single_PQ_result[3][13].write(out_PE61);
                s_single_PQ_result[3][14].write(out_PE62);

                s_single_PQ_result[3][15].write(out_dummy);
            }
        }
    }
}

// template<const int query_num, const int nprobe>
// void PQ_lookup_computation_wrapper(
//     hls::stream<single_PQ> (&s_single_PQ)[3 * HBM_CHANNEL_NUM], 
//     hls::stream<int>& s_scanned_entries_every_cell_Dummy,
//     hls::stream<int>& s_scanned_entries_every_cell_PQ_lookup_computation, 
//     hls::stream<int>& s_last_valid_channel, 
//     hls::stream<single_PQ_result> (&s_single_PQ_result)[4][16]) {

// #pragma HLS dataflow

//     hls::stream<distance_LUT_PQ16_t> s_distance_LUT[3 * HBM_CHANNEL_NUM];
// #pragma HLS stream variable=s_distance_LUT depth=8
// #pragma HLS array_partition variable=s_distance_LUT complete
// #pragma HLS RESOURCE variable=s_distance_LUT core=FIFO_SRL

//     hls::stream<int> s_scanned_entries_every_cell_PQ_lookup_computation_replicated[3 * HBM_CHANNEL_NUM];
// #pragma HLS stream variable=s_scanned_entries_every_cell_PQ_lookup_computation_replicated depth=8
// #pragma HLS array_partition variable=s_scanned_entries_every_cell_PQ_lookup_computation_replicated complete
// #pragma HLS RESOURCE variable=s_scanned_entries_every_cell_PQ_lookup_computation_replicated core=FIFO_SRL

//     replicate_s_scanned_entries_every_cell_PQ_lookup_computation<query_num, nprobe>(
//         s_scanned_entries_every_cell_PQ_lookup_computation, 
//         s_scanned_entries_every_cell_PQ_lookup_computation_replicated);

//     hls::stream<int> s_last_element_valid_PQ_lookup_computation[3 * HBM_CHANNEL_NUM];
// #pragma HLS stream variable=s_last_element_valid_PQ_lookup_computation depth=8
// #pragma HLS array_partition variable=s_last_element_valid_PQ_lookup_computation complete
// #pragma HLS RESOURCE variable=s_last_element_valid_PQ_lookup_computation core=FIFO_SRL

//     // Note, here interpret the last valid element, rather than simply replicate
//     send_s_last_element_valid_PQ_lookup_computation<query_num, nprobe>(
//         s_last_valid_channel, 
//         s_last_element_valid_PQ_lookup_computation);

//     for (int i = 0; i < 3; i++) {
// #pragma HLS UNROLL
//         for (int j = 0; j < 16; j++) {
// #pragma HLS UNROLL
//             dummy_distance_LUT_sender<query_num, nprobe>(s_distance_LUT[i * 16 + j]);
//             PQ_lookup_computation<query_num, nprobe>(
//                 s_distance_LUT[i * 16 + j],
//                 s_single_PQ[i * 16 + j], 
//                 s_scanned_entries_every_cell_PQ_lookup_computation_replicated[i * 16 + j], 
//                 s_last_element_valid_PQ_lookup_computation[i * 16 + j], 
//                 s_single_PQ_result[i][j]);
//         }
//     }

//     for (int j = 0; j < 15; j++) {
// #pragma HLS UNROLL
//         dummy_distance_LUT_sender<query_num, nprobe>(s_distance_LUT[48 + j]);
//         PQ_lookup_computation<query_num, nprobe>(
//             s_distance_LUT[48 + j],
//             s_single_PQ[48+ j], 
//             s_scanned_entries_every_cell_PQ_lookup_computation_replicated[48 + j],
//             s_last_element_valid_PQ_lookup_computation[48 + j], 
//             s_single_PQ_result[3][j]);
//     }

//     dummy_PQ_result_sender<query_num, nprobe>(
//         s_scanned_entries_every_cell_Dummy, s_single_PQ_result[3][15]);
// }


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
