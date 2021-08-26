#pragma once

#include "constants.hpp"
#include "types.hpp"
#include "priority_queue_distance_results.hpp"

template<const int query_num, const int stream_num>
void replicate_scanned_entries_per_query_Redirected_sorted_stream(
        hls::stream<int> &s_scanned_entries_per_query_Priority_queue, 
        hls::stream<int> (&s_scanned_entries_every_cell_Redirected_sorted_stream)[stream_num]);

template<const int query_num>
void consume_single_stream(
    hls::stream<single_PQ_result> &input_stream,
    hls::stream<int> &s_scanned_entries_every_cell);

template<const int query_num>
void split_single_stream(
    hls::stream<single_PQ_result> &input_stream,
    hls::stream<int> &s_scanned_entries_every_cell,
    hls::stream<int> &s_scanned_entries_every_cell_Out_priority_queue_A, 
    hls::stream<int> &s_scanned_entries_every_cell_Out_priority_queue_B, 
    hls::stream<single_PQ_result> &output_stream_A,
    hls::stream<single_PQ_result> &output_stream_B);

template<const int query_num, const int stream_num>
void split_single_PQ_result_wrapper(
    hls::stream<single_PQ_result> (&s_input)[stream_num], 
    hls::stream<int> &s_scanned_entries_per_query_In_Priority_queue,
    hls::stream<int> (&s_scanned_entries_every_cell_Out_priority_queue)[2 * stream_num],
    hls::stream<single_PQ_result> (&s_single_PQ_result_splitted)[2 * stream_num]);

template<const int query_num, const int iter_num_per_query>
void send_iter_num(hls::stream<int> &s_merged_intermediate_result_iter);

template<const int query_num, const int priority_queue_len, const int stream_num>
void merge_streams(
    hls::stream<single_PQ_result> (&intermediate_result)[stream_num],
    hls::stream<single_PQ_result> &output_stream);

template<const int query_num, const int stream_num>
void stream_redirect_to_priority_queue_wrapper( 
    hls::stream<int> &s_scanned_entries_per_query_Priority_queue,
    hls::stream<single_PQ_result> (&s_input)[stream_num], 
    hls::stream<single_PQ_result> &output_stream);



template<const int query_num, const int stream_num>
void replicate_scanned_entries_per_query_Redirected_sorted_stream(
        hls::stream<int> &s_scanned_entries_per_query_Priority_queue, 
        hls::stream<int> (&s_scanned_entries_every_cell_Redirected_sorted_stream)[stream_num]) {
    
    for (int i = 0; i < query_num; i++) {

        int scanned_entries_per_query = s_scanned_entries_per_query_Priority_queue.read();
        
        for (int s = 0; s < stream_num; s++) {
#pragma HLS UNROLL
            s_scanned_entries_every_cell_Redirected_sorted_stream[s].write(scanned_entries_per_query);
        }
    }
}


template<const int query_num>
void consume_single_stream(
    hls::stream<single_PQ_result> &input_stream,
    hls::stream<int> &s_scanned_entries_every_cell) {

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
    hls::stream<int> &s_scanned_entries_every_cell,
    hls::stream<int> &s_scanned_entries_every_cell_Out_priority_queue_A, 
    hls::stream<int> &s_scanned_entries_every_cell_Out_priority_queue_B, 
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

template<const int query_num, const int stream_num>
void split_single_PQ_result_wrapper(
    hls::stream<single_PQ_result> (&s_input)[stream_num], 
    hls::stream<int> &s_scanned_entries_per_query_In_Priority_queue,
    hls::stream<int> (&s_scanned_entries_every_cell_Out_priority_queue)[2 * stream_num],
    hls::stream<single_PQ_result> (&s_single_PQ_result_splitted)[2 * stream_num]) {
    
#pragma HLS inline
    // for the top 16 elements, discard the last 6 
    // for the rest 10 elements, split them to 2 streams, since Priority Queue's
    //   insertion takes 2 CC

    hls::stream<int> s_scanned_entries_every_cell_Replicated[stream_num];
#pragma HLS stream variable=s_scanned_entries_every_cell_Replicated depth=8
#pragma HLS array_partition variable=s_scanned_entries_every_cell_Replicated complete
// #pragma HLS RESOURCE variable=s_scanned_entries_every_cell_Replicated core=FIFO_SRL

    replicate_scanned_entries_per_query_Redirected_sorted_stream<query_num, stream_num>(
        s_scanned_entries_per_query_In_Priority_queue, 
        s_scanned_entries_every_cell_Replicated);

    for (int i = 0; i < stream_num; i++) {
#pragma HLS UNROLL
        split_single_stream<query_num>(
            s_input[i], 
            s_scanned_entries_every_cell_Replicated[i],
            s_scanned_entries_every_cell_Out_priority_queue[2 * i],
            s_scanned_entries_every_cell_Out_priority_queue[2 * i + 1],
            s_single_PQ_result_splitted[2 * i], 
            s_single_PQ_result_splitted[2 * i + 1]);
    }
}

template<const int query_num, const int iter_num_per_query>
void send_iter_num(hls::stream<int> &s_merged_intermediate_result_iter) {

    for (int query_id = 0; query_id < query_num; query_id++) {
        s_merged_intermediate_result_iter.write(iter_num_per_query);
    }
}


template<const int query_num, const int priority_queue_len, const int stream_num>
void merge_streams(
    hls::stream<single_PQ_result> (&intermediate_result)[stream_num],
    hls::stream<single_PQ_result> &output_stream) {
    
    for (int query_id = 0; query_id < query_num; query_id++) {
        for (int d = 0; d < priority_queue_len; d++) {
            for (int s = 0; s < stream_num; s++) {
#pragma HLS pipeline II=1
                output_stream.write(intermediate_result[s].read());
            }
        }
    }
}


template<const int query_num, const int stream_num,
    const int L2_queue_num, >
void stage6_priority_queue_group_L3_wrapper( 
    hls::stream<int> &s_scanned_entries_per_query_Priority_queue,
    hls::stream<single_PQ_result> (&s_input)[stream_num], 
    hls::stream<single_PQ_result> &output_stream) {
    // L1 queue num = 2 * stream_num
    // L2 queue num < L1 queue num, each of the first (L2_queue_num - 1) queues
    //   takes care of a streams from L1 per queue , while the last queue takes care of
    //   b streams. (L2_queue_num - 1) * a + b = L1_queue_num = 2 * stream_num
    // L3 has only 1 queue
#pragma HLS inline

    hls::stream<int> s_scanned_entries_every_cell_Redirected_sorted_stream[2 * stream_num];
#pragma HLS stream variable=s_scanned_entries_every_cell_Redirected_sorted_stream depth=8
#pragma HLS array_partition variable=s_scanned_entries_every_cell_Redirected_sorted_stream complete
// #pragma HLS RESOURCE variable=s_scanned_entries_every_cell_Redirected_sorted_stream core=FIFO_SRL

    hls::stream<single_PQ_result> s_single_PQ_result_splitted[2 * stream_num];
#pragma HLS stream variable=s_single_PQ_result_splitted depth=8
#pragma HLS array_partition variable=s_single_PQ_result_splitted complete
// #pragma HLS RESOURCE variable=s_single_PQ_result_splitted core=FIFO_SRL

    hls::stream<single_PQ_result> intermediate_result[2 * stream_num];
#pragma HLS stream variable=intermediate_result depth=8
#pragma HLS array_partition variable=intermediate_result complete
// #pragma HLS RESOURCE variable=intermediate_result core=FIFO_SRL

    // collecting results from multiple sources need deeper FIFO
    hls::stream<single_PQ_result> merged_intermediate_result;
#pragma HLS stream variable=merged_intermediate_result depth=256

    hls::stream<int> s_merged_intermediate_result_iter;
#pragma HLS stream variable=s_merged_intermediate_result_iter depth=8
// #pragma HLS RESOURCE variable=s_merged_intermediate_result_iter core=FIFO_SRL

    Priority_queue<single_PQ_result, PRIORITY_QUEUE_LEN, Collect_smallest> priority_queue_intermediate[2 * stream_num];
#pragma HLS array_partition variable=priority_queue_intermediate complete
    Priority_queue<single_PQ_result, PRIORITY_QUEUE_LEN, Collect_smallest> priority_queue_final;

    split_single_PQ_result_wrapper<query_num, stream_num>(
        s_input, 
        s_scanned_entries_per_query_Priority_queue,
        s_scanned_entries_every_cell_Redirected_sorted_stream,
        s_single_PQ_result_splitted); 

    // 2 CC per insertion
    for (int i = 0; i < 2 * stream_num; i++) {
#pragma HLS UNROLL
        // for each individual query, output intermediate_result
        priority_queue_intermediate[i].insert_wrapper<query_num>(
            s_scanned_entries_every_cell_Redirected_sorted_stream[i], 
            s_single_PQ_result_splitted[i], intermediate_result[i]);
    }

    merge_streams<query_num, PRIORITY_QUEUE_LEN, 2 * stream_num>(
        intermediate_result, merged_intermediate_result);

    // depth is 20 * 10 
    send_iter_num<query_num, 2 * stream_num * PRIORITY_QUEUE_LEN>(s_merged_intermediate_result_iter);
    priority_queue_final.insert_wrapper<query_num>(
            s_merged_intermediate_result_iter,
            merged_intermediate_result, 
            output_stream); 
}
