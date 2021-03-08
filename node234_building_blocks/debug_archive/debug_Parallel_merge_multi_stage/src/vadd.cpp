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

    hls::stream<int> s_scanned_entries_every_cell_Dummy;
#pragma HLS stream variable=s_scanned_entries_every_cell_Dummy depth=512
// #pragma HLS stream variable=s_scanned_entries_every_cell_Dummy depth=2
// #pragma HLS array_partition variable=s_scanned_entries_every_cell_Dummy complete
// #pragma HLS RESOURCE variable=s_scanned_entries_every_cell_Dummy core=FIFO_SRL

    hls::stream<int> s_scanned_entries_per_query_Sort_and_reduction[3];
#pragma HLS stream variable=s_scanned_entries_per_query_Sort_and_reduction depth=512
#pragma HLS array_partition variable=s_scanned_entries_per_query_Sort_and_reduction complete
// #pragma HLS stream variable=s_scanned_entries_per_query_Sort_and_reduction depth=2
// #pragma HLS RESOURCE variable=s_scanned_entries_per_query_Sort_and_reduction core=FIFO_SRL

    hls::stream<int> s_scanned_entries_per_query_Result;
#pragma HLS stream variable=s_scanned_entries_per_query_Result depth=512
// #pragma HLS stream variable=s_scanned_entries_per_query_Result depth=2
// #pragma HLS RESOURCE variable=s_scanned_entries_per_query_Result core=FIFO_SRL

    ////////////// Control Signals Ends ///////////////

    ////////////// Data Streams Starts ///////////////

    // 64 streams = 21 channels * 3 + 1 dummy
    hls::stream<single_PQ_result> s_single_PQ_result[4][16];
#pragma HLS stream variable=s_single_PQ_result depth=8
#pragma HLS array_partition variable=s_single_PQ_result complete
#pragma HLS RESOURCE variable=s_single_PQ_result core=FIFO_SRL

    hls::stream<single_PQ_result> s_sorted_PQ_result_stage_0[2][16];
#pragma HLS stream variable=s_sorted_PQ_result_stage_0 depth=8
#pragma HLS array_partition variable=s_sorted_PQ_result_stage_0 complete
#pragma HLS RESOURCE variable=s_sorted_PQ_result_stage_0 core=FIFO_SRL

    hls::stream<single_PQ_result> s_sorted_PQ_result_stage_1[16];
#pragma HLS stream variable=s_sorted_PQ_result_stage_1 depth=8
#pragma HLS array_partition variable=s_sorted_PQ_result_stage_1 complete
#pragma HLS RESOURCE variable=s_sorted_PQ_result_stage_1 core=FIFO_SRL

    hls::stream<single_PQ_result> s_output; // the top 10 numbers
#pragma HLS stream variable=s_output depth=8

    ////////////// Data Streams Ends ///////////////

    generate_scanned_cell_id<QUERY_NUM, NPROBE>(s_scanned_cell_id);

    scan_controller<QUERY_NUM, NLIST, NPROBE>(
        HBM_info_start_addr_and_scanned_entries_every_cell,
        s_scanned_cell_id, 
        s_scanned_entries_every_cell_Dummy,
        s_scanned_entries_per_query_Sort_and_reduction,
        s_scanned_entries_per_query_Result);

    dummy_PQ_result_sender_wrapper<QUERY_NUM, NPROBE>(
        s_scanned_entries_every_cell_Dummy, s_single_PQ_result); 

    sort_reduction_64_to_16_with_vecID::parallel_merge_sort_16<QUERY_NUM>(
        s_scanned_entries_per_query_Sort_and_reduction[0],
        s_single_PQ_result[0], s_single_PQ_result[1], 
        s_sorted_PQ_result_stage_0[0]);

    sort_reduction_64_to_16_with_vecID::parallel_merge_sort_16<QUERY_NUM>(
        s_scanned_entries_per_query_Sort_and_reduction[1],
        s_single_PQ_result[2], s_single_PQ_result[3], 
        s_sorted_PQ_result_stage_0[1]);


    sort_reduction_64_to_16_with_vecID::parallel_merge_sort_16<QUERY_NUM>(
        s_scanned_entries_per_query_Sort_and_reduction[2],
        s_sorted_PQ_result_stage_0[0], s_sorted_PQ_result_stage_0[1], 
        s_sorted_PQ_result_stage_1);

    consume_and_write_result<QUERY_NUM>(
        s_sorted_PQ_result_stage_1, s_scanned_entries_per_query_Result, out_PLRAM);
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
    hls::stream<int>& s_scanned_cell_id_Input, 
    hls::stream<int> &s_scanned_entries_every_cell_Dummy,
    hls::stream<int> (&s_scanned_entries_per_query_Sort_and_reduction)[3],
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

            int scanned_entries_every_cell = scanned_entries_every_cell_LUT[cell_id];

            // TODO: check if the needed iteration is equal to this
            accumulated_scanned_entries_per_query += scanned_entries_every_cell;

            s_scanned_entries_every_cell_Dummy.write(scanned_entries_every_cell);
        }

        for (int s = 0; s < 3; s++) {
#pragma HLS UNROLL
            s_scanned_entries_per_query_Sort_and_reduction[s].write(accumulated_scanned_entries_per_query);
        }
        s_scanned_entries_per_query_Result.write(accumulated_scanned_entries_per_query);
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


template<const int query_num, const int nprobe>
void replicate_s_scanned_entries_every_cell_Dummy(
    hls::stream<int>& s_scanned_entries_every_cell_Dummy,
    hls::stream<int> (&s_scanned_entries_every_cell_Dummy_replicated)[64]) {

    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int nprobe_id = 0; nprobe_id < nprobe; nprobe_id++) {

            int scanned_entries_every_cell = s_scanned_entries_every_cell_Dummy.read();

            for (int s = 0; s < 64; s++) {
#pragma HLS UNROLL
                s_scanned_entries_every_cell_Dummy_replicated[s].write(scanned_entries_every_cell);
            }
        }
    }
}

template<const int query_num, const int nprobe>
void dummy_PQ_result_sender_wrapper(
    hls::stream<int>& s_scanned_entries_every_cell_Dummy,
    hls::stream<single_PQ_result> (&s_single_PQ_result)[4][16]) {

#pragma HLS dataflow

    hls::stream<int> s_scanned_entries_every_cell_Dummy_replicated[64];
#pragma HLS stream variable=s_scanned_entries_every_cell_Dummy_replicated depth=8
#pragma HLS array_partition variable=s_scanned_entries_every_cell_Dummy_replicated complete
#pragma HLS RESOURCE variable=s_scanned_entries_every_cell_Dummy_replicated core=FIFO_SRL

    replicate_s_scanned_entries_every_cell_Dummy<query_num, nprobe>(
        s_scanned_entries_every_cell_Dummy, s_scanned_entries_every_cell_Dummy_replicated);

    // For the same kind of PE, they should be pretty synchronous, 
    //   thus a short control FIFO is enough
    for (int i = 0; i < 4; i++) {
#pragma HLS UNROLL
        for (int j = 0; j < 16; j++) {
#pragma HLS UNROLL
            dummy_PQ_result_sender<query_num, nprobe>(
                s_scanned_entries_every_cell_Dummy_replicated[i * 16 + j], s_single_PQ_result[i][j]);
        }
    }
}

////////////////////  Priority Queues for PQ results Ends  ////////////////////

// Checked
template<const int query_num>
void consume_and_write_result(
    hls::stream<single_PQ_result> (&output_stream)[16],
    hls::stream<int>& s_scanned_entries_every_cell,
    ap_uint<64>* output) {

    single_PQ_result output_array[16];
#pragma HLS array_partition variable=output_array complete

    for (int query_id = 0; query_id < query_num; query_id++) {

        int scanned_entries_every_cell = s_scanned_entries_every_cell.read();

        for (int entry_id = 0; entry_id < scanned_entries_every_cell; entry_id++) {
#pragma HLS pipeline II=1
            for (int s = 0; s < 16; s++) {
#pragma HLS UNROLL
                output_array[s] = output_stream[s].read();
            }
        }
    }

    for (int s = 0; s < 16; s++) {
        ap_uint<64> reg;
        int vec_ID = output_array[s].vec_ID;
        float dist = output_array[s].dist;
        reg.range(31, 0) = *((ap_uint<32>*) (&vec_ID));
        reg.range(63, 32) = *((ap_uint<32>*) (&dist));
        output[s] = reg;
    }
}
