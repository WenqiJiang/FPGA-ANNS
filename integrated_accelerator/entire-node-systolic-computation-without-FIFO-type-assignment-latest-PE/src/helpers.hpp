#pragma once 

#include "constants.hpp"
#include "types.hpp"

/* This file include functions that help connecting 
     all the major PEs of different stages*/

template<const int query_num>
void load_query_vectors(
    const float* DRAM_query_vector,
    hls::stream<float> &s_query_vectors_distance_computation_PE,
    hls::stream<float> &s_query_vectors_lookup_PE);

void load_center_vectors(
    const float* DRAM_center_vectors, 
    hls::stream<float> &s_center_vectors_init_distance_computation_PE,
    hls::stream<float> &s_center_vectors_init_lookup_PE);

void load_PQ_quantizer(
    const float* DRAM_PQ_quantizer,
    hls::stream<float> &s_PQ_quantizer_init);

template<const int query_num>
void split_cell_ID(
    hls::stream<dist_cell_ID_t> &s_merge_output, 
    hls::stream<int> &s_searched_cell_id_lookup_PE, 
    hls::stream<int> &s_searched_cell_id_scan_controller);

template<const int query_num>
void lookup_center_vectors(
    hls::stream<float> &s_center_vectors_init_lookup_PE,
    hls::stream<int> &s_searched_cell_id_lookup_PE,
    hls::stream<float> &s_center_vectors_LUT_construction_PE);

template<const int query_num, const int nlist, const int nprobe>
void scan_controller(
    const int* HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid,
    hls::stream<int> &s_scanned_cell_id_Input, // from the cluster selection unit
    hls::stream<int> &s_start_addr_every_cell,
    hls::stream<int> &s_scanned_entries_every_cell_Load_unit,
    hls::stream<int> &s_scanned_entries_every_cell_Split_unit,
    hls::stream<int> &s_scanned_entries_every_cell_PQ_lookup_computation,
    hls::stream<int> &s_scanned_entries_every_cell_Dummy,
    hls::stream<int> &s_last_valid_channel,
    hls::stream<int> &s_scanned_entries_per_query_Sort_and_reduction,
    hls::stream<int> &s_scanned_entries_per_query_Priority_queue);

// template<const int query_num>
// void merge_partial_cell_distance(
//     hls::stream<dist_cell_ID_t> (&s_partial_cell_distance)[PE_NUM_CENTER_DIST_COMP],
//     hls::stream<dist_cell_ID_t> &s_merged_cell_distance);

template<const int query_num>
void write_result(
    hls::stream<single_PQ_result> &output_stream, 
    ap_uint64_t* output);



template<const int query_num>
void load_query_vectors(
    const float* DRAM_query_vector,
    hls::stream<float> &s_query_vectors_distance_computation_PE,
    hls::stream<float> &s_query_vectors_lookup_PE) {

    // Data type: suppose each vector = 128 D, FPGA freq = 200 MHz
    //   then it takes 640 + 200 ns < 1 us to load a query vector, 
    //   much faster than computing distance and constructing LUT (> 10 us)

    // query vector (1 vector per NPROBE=32 center vector)
    for (int query_id = 0; query_id < query_num; query_id++) {

        for (int d = 0; d < D; d++) {
#pragma HLS pipeline II=1
            float reg = DRAM_query_vector[query_id * D + d];
            s_query_vectors_lookup_PE.write(reg);
            s_query_vectors_distance_computation_PE.write(reg);
        }
    }
}

void load_center_vectors(
    const float* DRAM_center_vectors, 
    hls::stream<float> &s_center_vectors_init_distance_computation_PE,
    hls::stream<float> &s_center_vectors_init_lookup_PE) {

    for (int i = 0; i < NLIST * D; i++) {
#pragma HLS pipeline II=1
        float reg = DRAM_center_vectors[i];
        s_center_vectors_init_distance_computation_PE.write(reg);
        s_center_vectors_init_lookup_PE.write(reg);
    }
}

void load_PQ_quantizer(
    const float* DRAM_PQ_quantizer,
    hls::stream<float> &s_PQ_quantizer_init) {

    // load PQ quantizer centers from HBM
    for (int i = 0; i < K * D; i++) {
#pragma HLS pipeline II=1
        s_PQ_quantizer_init.write(DRAM_PQ_quantizer[i]);
    }
}

template<const int query_num>
void split_cell_ID(
    hls::stream<dist_cell_ID_t> &s_merge_output, 
    hls::stream<int> &s_searched_cell_id_lookup_PE, 
    hls::stream<int> &s_searched_cell_id_scan_controller) {
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
            s_searched_cell_id_scan_controller.write(searched_cell_id_local[i]);
        }
    }
}

template<const int query_num>
void lookup_center_vectors(
    hls::stream<float> &s_center_vectors_init_lookup_PE,
    hls::stream<int> &s_searched_cell_id_lookup_PE,
    hls::stream<float> &s_center_vectors_LUT_construction_PE) {

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
                s_center_vectors_LUT_construction_PE.write(center_vector_local[start_addr + i]);
            }
        }
    }
}


template<const int query_num, const int nlist, const int nprobe>
void scan_controller(
    const int* HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid,
    hls::stream<int> &s_scanned_cell_id_Input, // from the cluster selection unit
    hls::stream<int> &s_start_addr_every_cell,
    hls::stream<int> &s_scanned_entries_every_cell_Load_unit,
    hls::stream<int> &s_scanned_entries_every_cell_Split_unit,
    hls::stream<int> &s_scanned_entries_every_cell_PQ_lookup_computation,
    hls::stream<int> &s_scanned_entries_every_cell_Dummy,
    hls::stream<int> &s_last_valid_channel,
    hls::stream<int> &s_scanned_entries_per_query_Sort_and_reduction,
    hls::stream<int> &s_scanned_entries_per_query_Priority_queue) {
   
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
        start_addr_LUT[i] = HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid[i];
    }
    for (int i = 0; i < nlist; i++) {
#pragma HLS pipeline II=1
        scanned_entries_every_cell_LUT[i] = 
            HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid[nlist + i];
    }
    // ---- Fixed ----
    for (int i = 0; i < nlist; i++) {
#pragma HLS pipeline II=1
        last_valid_channel_LUT[i] = 
            HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid[2 * nlist + i];
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
            s_scanned_entries_every_cell_Dummy.write(scanned_entries_every_cell);
            s_scanned_entries_every_cell_PQ_lookup_computation.write(scanned_entries_every_cell);
            s_last_valid_channel.write(last_valid_channel);
        }

        s_scanned_entries_per_query_Sort_and_reduction.write(accumulated_scanned_entries_per_query);
        s_scanned_entries_per_query_Priority_queue.write(accumulated_scanned_entries_per_query);
    }
}

// template<const int query_num>
// void merge_partial_cell_distance(
//     hls::stream<dist_cell_ID_t> (&s_partial_cell_distance)[PE_NUM_CENTER_DIST_COMP],
//     hls::stream<dist_cell_ID_t> &s_merged_cell_distance) {

//     for (int query_id = 0; query_id < query_num; query_id++) {

//         for (int c = 0; c < CENTROIDS_PER_PARTITION; c++) {

//             for (int s = 0; s < PE_NUM_CENTER_DIST_COMP; s++) {
// #pragma HLS pipeline II=1
//                 s_merged_cell_distance.write(s_partial_cell_distance[s].read());
//             }
//         }
//     }
// }

template<const int query_num>
void write_result(
    hls::stream<single_PQ_result> &output_stream, 
    ap_uint64_t* output) {

    for (int i = 0; i < query_num * PRIORITY_QUEUE_LEN; i++) {
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
