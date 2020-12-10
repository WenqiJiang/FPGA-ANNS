#include <hls_stream.h>

#include "constants.hpp"

extern "C" {

void vadd(  
    const t_axi* table_HBM0, const t_axi* table_HBM1, 
    const t_axi* table_HBM2, const t_axi* table_HBM3, 
    const t_axi* table_HBM4, const t_axi* table_HBM5, 
    const t_axi* table_HBM6, const t_axi* table_HBM7, 
    const t_axi* table_HBM8, const t_axi* table_HBM9, 
    const t_axi* table_HBM10, const t_axi* table_HBM11, 
    const t_axi* table_HBM12, const t_axi* table_HBM13, 
    const t_axi* table_HBM14, const t_axi* table_HBM15, 
    const t_axi* table_HBM16, const t_axi* table_HBM17, 
    const t_axi* table_HBM18, const t_axi* table_HBM19, 
    const t_axi* table_HBM20, const t_axi* table_HBM21, 
    const t_axi* table_HBM22, const t_axi* table_HBM23, 
    const t_axi* table_HBM24, const t_axi* table_HBM25, 
    const t_axi* table_HBM26, const t_axi* table_HBM27, 
    const t_axi* table_HBM28, const t_axi* table_HBM29, 
    const t_axi* table_HBM30, const t_axi* table_HBM31, 
    const t_axi* table_DDR0, const t_axi* table_DDR1,
    float* out_PLRAM
    );
}

void broadcast_query_vector(
    const t_axi* table_DDR0,
    hls::stream<float>& s_query_vector0, hls::stream<float>& s_query_vector1, 
    hls::stream<float>& s_query_vector2, hls::stream<float>& s_query_vector3, 
    hls::stream<float>& s_query_vector4, hls::stream<float>& s_query_vector5, 
    hls::stream<float>& s_query_vector6, hls::stream<float>& s_query_vector7, 
    hls::stream<float>& s_query_vector8, hls::stream<float>& s_query_vector9, 
    hls::stream<float>& s_query_vector10, hls::stream<float>& s_query_vector11, 
    hls::stream<float>& s_query_vector12, hls::stream<float>& s_query_vector13, 
    hls::stream<float>& s_query_vector14, hls::stream<float>& s_query_vector15, 
    hls::stream<float>& s_query_vector16, hls::stream<float>& s_query_vector17, 
    hls::stream<float>& s_query_vector18, hls::stream<float>& s_query_vector19, 
    hls::stream<float>& s_query_vector20, hls::stream<float>& s_query_vector21, 
    hls::stream<float>& s_query_vector22, hls::stream<float>& s_query_vector23, 
    hls::stream<float>& s_query_vector24, hls::stream<float>& s_query_vector25, 
    hls::stream<float>& s_query_vector26, hls::stream<float>& s_query_vector27, 
    hls::stream<float>& s_query_vector28, hls::stream<float>& s_query_vector29, 
    hls::stream<float>& s_query_vector30, hls::stream<float>& s_query_vector31);

void compute_cell_distance_wrapper(
    hls::stream<float>& s_query_vector0, hls::stream<float>& s_query_vector1, 
    hls::stream<float>& s_query_vector2, hls::stream<float>& s_query_vector3, 
    hls::stream<float>& s_query_vector4, hls::stream<float>& s_query_vector5, 
    hls::stream<float>& s_query_vector6, hls::stream<float>& s_query_vector7, 
    hls::stream<float>& s_query_vector8, hls::stream<float>& s_query_vector9, 
    hls::stream<float>& s_query_vector10, hls::stream<float>& s_query_vector11, 
    hls::stream<float>& s_query_vector12, hls::stream<float>& s_query_vector13, 
    hls::stream<float>& s_query_vector14, hls::stream<float>& s_query_vector15, 
    hls::stream<float>& s_query_vector16, hls::stream<float>& s_query_vector17, 
    hls::stream<float>& s_query_vector18, hls::stream<float>& s_query_vector19, 
    hls::stream<float>& s_query_vector20, hls::stream<float>& s_query_vector21, 
    hls::stream<float>& s_query_vector22, hls::stream<float>& s_query_vector23, 
    hls::stream<float>& s_query_vector24, hls::stream<float>& s_query_vector25, 
    hls::stream<float>& s_query_vector26, hls::stream<float>& s_query_vector27, 
    hls::stream<float>& s_query_vector28, hls::stream<float>& s_query_vector29, 
    hls::stream<float>& s_query_vector30, hls::stream<float>& s_query_vector31, 
    float cell_centroids_partition_0[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_1[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_2[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_3[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_4[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_5[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_6[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_7[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_8[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_9[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_10[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_11[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_12[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_13[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_14[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_15[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_16[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_17[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_18[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_19[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_20[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_21[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_22[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_23[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_24[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_25[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_26[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_27[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_28[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_29[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_30[CENTROIDS_PER_PARTITION][D], 
    float cell_centroids_partition_31[CENTROIDS_PER_PARTITION][D],
    hls::stream<float>& s_partial_cell_distance0, hls::stream<float>& s_partial_cell_distance1, 
    hls::stream<float>& s_partial_cell_distance2, hls::stream<float>& s_partial_cell_distance3, 
    hls::stream<float>& s_partial_cell_distance4, hls::stream<float>& s_partial_cell_distance5, 
    hls::stream<float>& s_partial_cell_distance6, hls::stream<float>& s_partial_cell_distance7, 
    hls::stream<float>& s_partial_cell_distance8, hls::stream<float>& s_partial_cell_distance9, 
    hls::stream<float>& s_partial_cell_distance10, hls::stream<float>& s_partial_cell_distance11, 
    hls::stream<float>& s_partial_cell_distance12, hls::stream<float>& s_partial_cell_distance13, 
    hls::stream<float>& s_partial_cell_distance14, hls::stream<float>& s_partial_cell_distance15, 
    hls::stream<float>& s_partial_cell_distance16, hls::stream<float>& s_partial_cell_distance17, 
    hls::stream<float>& s_partial_cell_distance18, hls::stream<float>& s_partial_cell_distance19, 
    hls::stream<float>& s_partial_cell_distance20, hls::stream<float>& s_partial_cell_distance21, 
    hls::stream<float>& s_partial_cell_distance22, hls::stream<float>& s_partial_cell_distance23, 
    hls::stream<float>& s_partial_cell_distance24, hls::stream<float>& s_partial_cell_distance25, 
    hls::stream<float>& s_partial_cell_distance26, hls::stream<float>& s_partial_cell_distance27, 
    hls::stream<float>& s_partial_cell_distance28, hls::stream<float>& s_partial_cell_distance29, 
    hls::stream<float>& s_partial_cell_distance30, hls::stream<float>& s_partial_cell_distance31);

void compute_cell_distance(
    hls::stream<float>& s_query_vector,
    float cell_centroids_partition[CENTROIDS_PER_PARTITION][D],
    hls::stream<float>& s_partial_cell_distance);

void heap_sort(
    hls::stream<float>& s_partial_cell_distance0, hls::stream<float>& s_partial_cell_distance1, 
    hls::stream<float>& s_partial_cell_distance2, hls::stream<float>& s_partial_cell_distance3, 
    hls::stream<float>& s_partial_cell_distance4, hls::stream<float>& s_partial_cell_distance5, 
    hls::stream<float>& s_partial_cell_distance6, hls::stream<float>& s_partial_cell_distance7, 
    hls::stream<float>& s_partial_cell_distance8, hls::stream<float>& s_partial_cell_distance9, 
    hls::stream<float>& s_partial_cell_distance10, hls::stream<float>& s_partial_cell_distance11, 
    hls::stream<float>& s_partial_cell_distance12, hls::stream<float>& s_partial_cell_distance13, 
    hls::stream<float>& s_partial_cell_distance14, hls::stream<float>& s_partial_cell_distance15, 
    hls::stream<float>& s_partial_cell_distance16, hls::stream<float>& s_partial_cell_distance17, 
    hls::stream<float>& s_partial_cell_distance18, hls::stream<float>& s_partial_cell_distance19, 
    hls::stream<float>& s_partial_cell_distance20, hls::stream<float>& s_partial_cell_distance21, 
    hls::stream<float>& s_partial_cell_distance22, hls::stream<float>& s_partial_cell_distance23, 
    hls::stream<float>& s_partial_cell_distance24, hls::stream<float>& s_partial_cell_distance25, 
    hls::stream<float>& s_partial_cell_distance26, hls::stream<float>& s_partial_cell_distance27, 
    hls::stream<float>& s_partial_cell_distance28, hls::stream<float>& s_partial_cell_distance29, 
    hls::stream<float>& s_partial_cell_distance30, hls::stream<float>& s_partial_cell_distance31,
    hls::stream<int>& searched_cell_id);

void partial_heap_sort_stage_A(
    hls::stream<float>& s_partial_cell_distance0, hls::stream<float>& s_partial_cell_distance1, 
    int start_cell_id0, int start_cell_id1, 
    hls::stream<float>& s_partial_heap_result, hls::stream<int>& s_partial_centroid_id);

void partial_heap_sort_stage_B(
    hls::stream<float>& s_partial_heap_result0, hls::stream<float>& s_partial_heap_result1, 
    hls::stream<float>& s_partial_heap_result2, hls::stream<float>& s_partial_heap_result3, 
    hls::stream<float>& s_partial_heap_result4, hls::stream<float>& s_partial_heap_result5, 
    hls::stream<float>& s_partial_heap_result6, hls::stream<float>& s_partial_heap_result7, 
    hls::stream<float>& s_partial_heap_result8, hls::stream<float>& s_partial_heap_result9, 
    hls::stream<float>& s_partial_heap_result10, hls::stream<float>& s_partial_heap_result11, 
    hls::stream<float>& s_partial_heap_result12, hls::stream<float>& s_partial_heap_result13, 
    hls::stream<float>& s_partial_heap_result14, hls::stream<float>& s_partial_heap_result15,
    hls::stream<int>& s_partial_centroid_id0, hls::stream<int>& s_partial_centroid_id1, 
    hls::stream<int>& s_partial_centroid_id2, hls::stream<int>& s_partial_centroid_id3, 
    hls::stream<int>& s_partial_centroid_id4, hls::stream<int>& s_partial_centroid_id5, 
    hls::stream<int>& s_partial_centroid_id6, hls::stream<int>& s_partial_centroid_id7, 
    hls::stream<int>& s_partial_centroid_id8, hls::stream<int>& s_partial_centroid_id9, 
    hls::stream<int>& s_partial_centroid_id10, hls::stream<int>& s_partial_centroid_id11, 
    hls::stream<int>& s_partial_centroid_id12, hls::stream<int>& s_partial_centroid_id13, 
    hls::stream<int>& s_partial_centroid_id14, hls::stream<int>& s_partial_centroid_id15,
    hls::stream<int>& s_centroid_id_result);

void update_heap(float distance_heap[NPROBE],
    float* max_dist_in_heap, int* max_dist_entry);

void write_result(
    hls::stream<int>& s_result, int* results_out);