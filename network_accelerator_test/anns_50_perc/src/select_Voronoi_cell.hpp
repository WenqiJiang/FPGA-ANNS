#pragma once 

#include "constants.hpp"
#include "types.hpp"
#include "priority_queue_vector_quantizer.hpp"

////////////////////     Function to call in top-level     ////////////////////
void select_Voronoi_cell(
    hls::stream<dist_cell_ID_t> &s_distance_cell_ID,
    hls::stream<dist_cell_ID_t> &s_selected_distance_cell_ID);
////////////////////     Function to call in top-level     ////////////////////


void select_Voronoi_cell(
    hls::stream<dist_cell_ID_t> &s_distance_cell_ID,
    hls::stream<dist_cell_ID_t> &s_selected_distance_cell_ID) {
#pragma HLS inline

    // the depth of this priority queue is nprobe
    Priority_queue<dist_cell_ID_t, NPROBE, Collect_smallest> priority_queue_level_B;

    priority_queue_level_B.insert_wrapper<QUERY_NUM, NPROBE * 2>(
        s_distance_cell_ID, 
        s_selected_distance_cell_ID); 

}