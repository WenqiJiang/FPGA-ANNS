#pragma once 

// #include <type_traits>
#include "constants.hpp"
// NOTES: 1. use 2020.2 
// 2. Use constructor to partition member array / include pragma 
//    ERROR: [v++ 214-122] '#pragma HLS' is only allowed in function scope: /mnt/scratch/wenqi/FPGA-ANNS/building_blocks/class_priority_queue/src/priority_queue.hpp:23
// enum class Order { Collect_smallest, Collect_largest };

enum Order { Collect_smallest, Collect_largest };

template<typename T, const int queue_size, Order order> 
class Priority_queue;

template<const int queue_size> 
class Priority_queue<single_PQ_result, queue_size, Collect_smallest> {
// class Priority_queue {

    // static_assert(queue_size >= 1, "ERROR: Priority queue size less than 1.");

    // for Collect_smallest, the smallest number is the last element
    

    // const Order order = Collect_smallest; 
    // constexpr int queue_size = queue_size;

    public: 

        Priority_queue() {
#pragma HLS inline
        }

        // Version 1: unfixed number of reads per query
        void insert_wrapper(
            hls::stream<int>& control_stream_iter_num_per_query,
            hls::stream<single_PQ_result> &s_input, 
            hls::stream<single_PQ_result> &s_output, 
            const int query_num) {
            
            single_PQ_result queue[queue_size];
#pragma HLS array_partition variable=queue complete

            for (int query_id = 0; query_id < query_num; query_id++) {
                // Fixed, originally "const int iter_num"
                int iter_num = control_stream_iter_num_per_query.read();

                for (int i = 0; i < queue_size; i++) {
#pragma HLS UNROLL
                    queue[i].vec_ID = -1;
                    queue[i].dist = LARGE_NUM;
                }

                // insert: 
                for (int i = 0; i < iter_num; i++) {
#pragma HLS pipeline II=1
                    single_PQ_result reg = s_input.read();
                    queue[0] = queue[0].dist < reg.dist? queue[0] : reg;

                    // start from idx 0, odd-even swap
                    for (int j = 0; j < queue_size / 2; j++) {
#pragma HLS UNROLL
                        compare_swap(queue, 2 * j, 2 * j + 1);
                    }

                    // start from idx 1, odd-even swap
                    for (int j = 0; j < (queue_size - 1) / 2; j++) {
#pragma HLS UNROLL
                        compare_swap(queue, 2 * j + 1, 2 * j + 2);
                    }
                }

                for (int i = 0; i < queue_size; i++) {
#pragma HLS pipeline II=1
                    s_output.write(queue[i]);
                }
            }
        }

        // Version 2: fixed number of reads per query
        template<const int read_iter_per_query>
        void insert_wrapper(
            hls::stream<single_PQ_result> &s_input, 
            hls::stream<single_PQ_result> &s_output, 
            const int query_num) {
            
            single_PQ_result queue[queue_size];
#pragma HLS array_partition variable=queue complete

            for (int query_id = 0; query_id < query_num; query_id++) {

                for (int i = 0; i < queue_size; i++) {
#pragma HLS UNROLL
                    queue[i].vec_ID = -1;
                    queue[i].dist = LARGE_NUM;
                }

                // insert: 
                for (int i = 0; i < read_iter_per_query; i++) {
#pragma HLS pipeline II=1
                    single_PQ_result reg = s_input.read();
                    queue[0] = queue[0].dist < reg.dist? queue[0] : reg;

                    // start from idx 0, odd-even swap
                    for (int j = 0; j < queue_size / 2; j++) {
#pragma HLS UNROLL
                        compare_swap(queue, 2 * j, 2 * j + 1);
                    }

                    // start from idx 1, odd-even swap
                    for (int j = 0; j < (queue_size - 1) / 2; j++) {
#pragma HLS UNROLL
                        compare_swap(queue, 2 * j + 1, 2 * j + 2);
                    }
                }

                for (int i = 0; i < queue_size; i++) {
#pragma HLS pipeline II=1
                    s_output.write(queue[i]);
                }
            }
        }

    private:
    
        void compare_swap(single_PQ_result* array, int idxA, int idxB) {
            // if smaller -> swap to right
            // note: idxA must < idxB
#pragma HLS inline
            if (array[idxA].dist < array[idxB].dist) {
                single_PQ_result regA = array[idxA];
                single_PQ_result regB = array[idxB];
                array[idxA] = regB;
                array[idxB] = regA;
            }
        }

        void compare_swap_array_step_A(single_PQ_result* array) {
            // start from idx 0, odd-even swap
#pragma HLS inline
            for (int j = 0; j < queue_size / 2; j++) {
#pragma HLS UNROLL
                compare_swap(array, 2 * j, 2 * j + 1);
            }
        }
                    
        void compare_swap_array_step_B(single_PQ_result* array) {
            // start from idx 1, odd-even swap
#pragma HLS inline
            for (int j = 0; j < (queue_size - 1) / 2; j++) {
#pragma HLS UNROLL
                compare_swap(array, 2 * j + 1, 2 * j + 2);
            }
        }
};


template<const int queue_size> 
class Priority_queue<dist_cell_ID_t, queue_size, Collect_smallest> {
// class Priority_queue {

    // static_assert(queue_size >= 1, "ERROR: Priority queue size less than 1.");

    // for Collect_smallest, the smallest number is the last element
    

    // const Order order = Collect_smallest; 
    // constexpr int queue_size = queue_size;

    public: 

        Priority_queue() {
#pragma HLS inline
        }

        // Version 1: unfixed number of reads per query
        void insert_wrapper(
            hls::stream<int>& control_stream_iter_num_per_query,
            hls::stream<dist_cell_ID_t> &s_input, 
            hls::stream<dist_cell_ID_t> &s_output, 
            const int query_num) {
            
            dist_cell_ID_t queue[queue_size];
#pragma HLS array_partition variable=queue complete

            for (int query_id = 0; query_id < query_num; query_id++) {
                // Fixed, originally "const int iter_num"
                int iter_num = control_stream_iter_num_per_query.read();

                for (int i = 0; i < queue_size; i++) {
#pragma HLS UNROLL
                    queue[i].cell_ID = -1;
                    queue[i].dist = LARGE_NUM;
                }

                // insert: 
                for (int i = 0; i < iter_num; i++) {
#pragma HLS pipeline II=1
                    dist_cell_ID_t reg = s_input.read();
                    queue[0] = queue[0].dist < reg.dist? queue[0] : reg;

                    // start from idx 0, odd-even swap
                    for (int j = 0; j < queue_size / 2; j++) {
#pragma HLS UNROLL
                        compare_swap(queue, 2 * j, 2 * j + 1);
                    }

                    // start from idx 1, odd-even swap
                    for (int j = 0; j < (queue_size - 1) / 2; j++) {
#pragma HLS UNROLL
                        compare_swap(queue, 2 * j + 1, 2 * j + 2);
                    }
                }

                for (int i = 0; i < queue_size; i++) {
#pragma HLS pipeline II=1
                    s_output.write(queue[i]);
                }
            }
        }

        // Version 2: fixed number of reads per query
        template<const int read_iter_per_query>
        void insert_wrapper(
            hls::stream<dist_cell_ID_t> &s_input, 
            hls::stream<dist_cell_ID_t> &s_output, 
            const int query_num) {
            
            dist_cell_ID_t queue[queue_size];
#pragma HLS array_partition variable=queue complete

            for (int query_id = 0; query_id < query_num; query_id++) {

                for (int i = 0; i < queue_size; i++) {
#pragma HLS UNROLL
                    queue[i].cell_ID = -1;
                    queue[i].dist = LARGE_NUM;
                }

                // insert: 
                for (int i = 0; i < read_iter_per_query; i++) {
#pragma HLS pipeline II=1
                    dist_cell_ID_t reg = s_input.read();
                    queue[0] = queue[0].dist < reg.dist? queue[0] : reg;

                    // start from idx 0, odd-even swap
                    for (int j = 0; j < queue_size / 2; j++) {
#pragma HLS UNROLL
                        compare_swap(queue, 2 * j, 2 * j + 1);
                    }

                    // start from idx 1, odd-even swap
                    for (int j = 0; j < (queue_size - 1) / 2; j++) {
#pragma HLS UNROLL
                        compare_swap(queue, 2 * j + 1, 2 * j + 2);
                    }
                }

                for (int i = 0; i < queue_size; i++) {
#pragma HLS pipeline II=1
                    s_output.write(queue[i]);
                }
            }
        }

    private:
    
        void compare_swap(dist_cell_ID_t* array, int idxA, int idxB) {
            // if smaller -> swap to right
            // note: idxA must < idxB
#pragma HLS inline
            if (array[idxA].dist < array[idxB].dist) {
                dist_cell_ID_t regA = array[idxA];
                dist_cell_ID_t regB = array[idxB];
                array[idxA] = regB;
                array[idxB] = regA;
            }
        }

        void compare_swap_array_step_A(dist_cell_ID_t* array) {
            // start from idx 0, odd-even swap
#pragma HLS inline
            for (int j = 0; j < queue_size / 2; j++) {
#pragma HLS UNROLL
                compare_swap(array, 2 * j, 2 * j + 1);
            }
        }
                    
        void compare_swap_array_step_B(dist_cell_ID_t* array) {
            // start from idx 1, odd-even swap
#pragma HLS inline
            for (int j = 0; j < (queue_size - 1) / 2; j++) {
#pragma HLS UNROLL
                compare_swap(array, 2 * j + 1, 2 * j + 2);
            }
        }
};
