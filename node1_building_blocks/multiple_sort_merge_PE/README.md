# Multiple Sorting PE

NOTE! The performance is not optimized because in "vadd.cpp" broadcast_stream is not optimized for performance. It is for verifying performance instead.

See "code_multiple_sorting_PE.png"

Multiple PE, each PE is a "bitonic_and_merge_recurrent"

## Scenario 

Suppose there are NLIST (8192) clusters in the coarse-grained quantizer.

These centroids as split to PE_NUM_DIST_COMP (32) distance computation PEs (in this project, suppose the distance computation is already finished).

32 distance computation PEs constantly send data pair (dist, center_id) to merge PEs. Each distance computation PE will send NLIST / PE_NUM_DIST_COMP = 256 elements per query. 

We have PE_NUM_SORT_MERGE (8) Merge PEs that will perform a sort on each 32 elements, and send them to merge units, repeat this for MERGE_ITER (8) iterations to finish sorting all 256 elements and output the smallest 32.

Each merge PE sends the 32 smallest elements to top merging network, which takes 32 * PE_NUM_SORT_MERGE (256) elements and produces the final 32 elements.

This process will repeat QUERY_NUM = 64 times.

## Constants

```
#define NLIST 8192
#define NPROBE 32 // merge len

#define PE_NUM_DIST_COMP NPROBE // TODO: this dependency may only work in this specific design
#define PE_NUM_SORT_MERGE 8 // distance computation: 8 cycle / 32 elements, merge speed: 64 cycle / 32 elements, thus need 8 PEs

#define MERGE_LEN NPROBE // the number of two input stream = 32, output stream len = 32
#define MERGE_ITER (NLIST / PE_NUM_DIST_COMP / MERGE_LEN)  // 8192 / 32 / 32 = 8

#define QUERY_NUM 64
```