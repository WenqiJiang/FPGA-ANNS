import numpy as np

from constants import * 
from queue_and_sorting import *
from stages import *
from utils import *

"""
An example of the dict for Performance & Resource:

dict = {
    "name"     : "option_name",
    # Performance: 
    "cycles_per_query" : 1000,
    "QPS"      : 10000,
    # Resource:
    "HBM_bank" : 0,
    "BRAM_18K" : 10,
    "DSP48E"   : 100,    
    "FF"       : 2000,   
    "LUT"      : 1200, 
    "URAM"     : 6
}

perf_resource_dict["name"] = "option name"

perf_resource_dict["cycles_per_query"] = cycles_per_query
perf_resource_dict["QPS"] = QPS

perf_resource_dict["HBM_bank"] = 
perf_resource_dict["BRAM_18K"] = 
perf_resource_dict["DSP48E"] = 
perf_resource_dict["FF"] = 
perf_resource_dict["LUT"] = 
perf_resource_dict["URAM"] = 

"""

total_valid_design = 0 # design that is within resource consumption range

## TODO: add HBM interconnection, the shell, the global interconnection, and network stack

def get_best_hardware(nlist, nprobe, OPQ_enable=True):
    """
    given a single algorithm setting, return the hardware combination that achieves
        the highest performance
    """

    best_solution_QPS = 0
    best_solution_stage_option_list = []
    best_solution_PE_num_list = []

    ##### TODO: add no OPQ version

    options_preprocessing_OPQ = get_options_preprocessing_OPQ()
    options_stage_1_cluster_distance_computation = \
        get_options_stage_1_cluster_distance_computation(nlist)
    options_stage_2_select_Voronoi_cells = get_options_stage_2_select_Voronoi_cells(nlist, nprobe)
    options_stage_3_distance_LUT_construction = get_options_stage_3_distance_LUT_construction(nlist, nprobe)

    ##### TODO: here, stage_4_PE_num in related to HBM channel number
    #####    Add shell consumption, use 28 channels at most (2 for network, 2 reserved)
    #####    HBM_bank should be included in the shell part
    for stage_4_PE_num in range(1, 28 * 3 + 1):
        # N_compute_per_nprobe * nprobe == N_insertion_per_stream
        # PE_num == input_stream_num
        N_compute_per_nprobe = int(TOTAL_VECTORS / nlist / stage_4_PE_num) + 1
        N_insertion_per_stream = int(nprobe * N_compute_per_nprobe)

        options_stage_4_distance_estimation_by_LUT = \
            get_options_stage_4_distance_estimation_by_LUT(
                stage_4_PE_num, nprobe, N_compute_per_nprobe)
        options_stage_5_sort_reduction = \
            get_options_stage_5_sort_reduction(
                stage_4_PE_num, N_insertion_per_stream)

        # tune PE num
        #   the PE_num of stage 4 and 5 is fixed in the loop counter
        #   OPQ (stage 0) and stage 2 already reflects the PE num in its options
        #   thus, the tunable stages are 1 and 3


        if OPQ_enable:

            for option_preprocessing in options_preprocessing_OPQ:
                for option_stage_1 in options_stage_1_cluster_distance_computation:
                    for option_stage_2 in options_stage_2_select_Voronoi_cells:
                        for option_stage_3 in options_stage_3_distance_LUT_construction:
                            for option_stage_4 in options_stage_4_distance_estimation_by_LUT:
                                for option_stage_5 in options_stage_5_sort_reduction:

                                    option_list = \
                                        [option_preprocessing, option_stage_1, option_stage_2, \
                                            option_stage_3, option_stage_4, option_stage_5]
                                    PE_num_list = [1, 1, 1, 1, 1, 1]

                                    if fit_resource_constraints(option_list, PE_num_list):

                                        global total_valid_design
                                        total_valid_design = total_valid_design + 1 # each valide design counts

                                        bottleneck_ID, accelerator_QPS = get_bottleneck(option_list, PE_num_list)
                                        if accelerator_QPS > best_solution_QPS:
                                            best_solution_QPS = accelerator_QPS
                                            best_solution_stage_option_list = option_list
                                            best_solution_PE_num_list = PE_num_list
                                        elif accelerator_QPS == best_solution_QPS:
                                            # TODO: add tied condition
                                            if resource_consumption_A_less_than_B(
                                                option_list, PE_num_list,
                                                best_solution_stage_option_list, best_solution_PE_num_list):
                                                    best_solution_QPS = accelerator_QPS
                                                    best_solution_stage_option_list = option_list
                                                    best_solution_PE_num_list = PE_num_list

    return best_solution_QPS, best_solution_stage_option_list, best_solution_PE_num_list

def combine_stages():
    pass

if __name__ == "__main__":

    # unit_test()
    best_solution_QPS, best_solution_stage_option_list, best_solution_PE_num_list = \
        get_best_hardware(nlist=8192, nprobe=17, OPQ_enable=True)
    print("best_solution_QPS", best_solution_QPS)
    print("best_solution_stage_option_list")
    for option in best_solution_stage_option_list:
        print(option)
    print("best_solution_PE_num_list", best_solution_PE_num_list)
    print("total_valid_design:", total_valid_design)