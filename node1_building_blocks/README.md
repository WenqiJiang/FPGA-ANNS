# Folder Organization

See "folder_organization.png".

## Main Folders

### node1

The entire coordinator node (without network logic).

Given input query vectors, output (1) which Voronoi cells to search; (2) the distance lookup table of each searched cell.

### node1_fixed_query_num

Same as node1, except that the query number is fixed at compile time.

### first_half_distance_computation_and_cell_selection

The first half of node1: given query vectors, (1) compute its distance with all Voronoi cells (2) sorting the distance, and select which cells to search in.

### second_half_center_lookup_and_distance_table_construction

The second half of node1: given the cell IDs to search in, construct the distance lookup tables.

### bitonic_and_merge_recurrent_with_vecID

The sorting network, given an input stream (e.g., len=8192), return the 32 smallest values, as well as the array indexes (IDs) of these values.

### multiple_disntance_computation_PEs_with_vecID

Given a query vector, compute the distance with Voronoi cells. Using multiple PEs for such workload.

### distance_computation_PE

Given a query vector, compute the distance with Voronoi cells, with just a single distance computation PE.

### multiple_lookup_table_construction_PEs

Given a query vector, and searched Voronoi cell ID, constructing distance lookup tables. Using multiple PEs for such workload.

### lookup_table_construction_PE

Given a query vector, and searched Voronoi cell ID, constructing distance lookup tables, with just a single PE.

## Other Folders


### bitonic_and_merge_recurrent

Same as bitonic_and_merge_recurrent_with_vecID, except that no array indexes (IDs) will be returned.

### single_sort_merge_PE

This folder wraps bitonic sort + recurrent merging to a single PE.

(Note: this folder is not used for the current project, but can be useful in the future. In this project, given the estimated performance of PQ scanning, even just 1 sorting network PE can fulfill the requirement, but in the future we may need multiple of them.)


### top_merging_network

Given multiple sorted streams, merge them to a final stream of 32 sorted smallest elements.

(Note: this folder is not used for the current project, but can be useful in the future. In this project, given the estimated performance of PQ scanning, even just 1 sorting network PE can fulfill the requirement, but in the future we may need multiple of them.)

### multiple_sort_merge_PE

N * single_sort_merge_PE + top_merging_network

Given input streams, using multiple sort-recurrent-merge network to get the top 32 values of each stream set, then using a top-merging network to merge the result of sorting PEs, and output the final 32 values.

(Note: this folder is not used for the current project, but can be useful in the future. In this project, given the estimated performance of PQ scanning, even just 1 sorting network PE can fulfill the requirement, but in the future we may need multiple of them.)