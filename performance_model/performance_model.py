import numpy as np


""" Resource related constants """
MAX_UTIL_PERC = 0.8 

TOTAL_BRAM_18K = 4032 
TOTAL_DSP48E = 9024
TOTAL_FF = 2607360 
TOTAL_LUT = 1303680
TOTAL_URAM = 960

MAX_HBM_bank = 30 # reserve 30, 31 unused due to their overlap with PCIe
MAX_BRAM_18K = TOTAL_BRAM_18K * MAX_UTIL_PERC
MAX_DSP48E = TOTAL_DSP48E * MAX_UTIL_PERC
MAX_FF = TOTAL_FF * MAX_UTIL_PERC
MAX_LUT = TOTAL_LUT * MAX_UTIL_PERC
MAX_URAM = TOTAL_URAM * MAX_UTIL_PERC
MAX_LUT = TOTAL_LUT * MAX_UTIL_PERC

""" Performannce related constants """
FREQ = 140 * 1e6

""" Algorithm related constants """
D = 128
topK = 10

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

def max_of_two(a, b):
    if a >= b:
        return a
    else:
        return b

def max_of_three(a, b, c):
    if a >= b:
        if a >= c:
            return a
        else: 
            return c
    else:
        if b >= c:
            return b
        else:
            return c

""" Basic building blocks, i.e., priority queue and sorting network """
def get_priority_queue_info(queue_len, N_insertion):
    
    """ Return a single result (no multiple options) """

    perf_resource_dict = dict()

    # Performance
    L_control = 3 
    L_insertion=5
    II_insertion=2
    L_perf_resource_dictput=2
    N_output=queue_len
    II_output=1

    cycles_per_query = L_control + (L_insertion + N_insertion * II_insertion) + (L_perf_resource_dictput + N_output * II_output)
    QPS = 1 / (cycles_per_query / FREQ)

    perf_resource_dict['cycles_per_query'] = cycles_per_query
    perf_resource_dict['QPS'] = QPS

    # The resource consumption is almost linear to the queue_len
    FF = 2177 / 10 * queue_len
    LUT = 3597 / 10 * queue_len

    perf_resource_dict["HBM_bank"] = 0
    perf_resource_dict["BRAM_18K"] = 0
    perf_resource_dict["DSP48E"] = 0
    perf_resource_dict["FF"] = FF
    perf_resource_dict["LUT"] = LUT 
    perf_resource_dict["URAM"] = 0

    return perf_resource_dict
    
def get_bitonic_sort_16_info(N_insertion):

    """ Return a single result (no multiple options) """

    perf_resource_dict = dict()

    # Performance
    L_insertion = 12
    II_insertion = 1
    cycles_per_query = L_insertion + N_insertion * II_insertion
    QPS = 1 / (cycles_per_query / FREQ)
    perf_resource_dict['cycles_per_query'] = cycles_per_query
    perf_resource_dict['QPS'] = QPS

    # Resource
    perf_resource_dict["HBM_bank"] = 0
    perf_resource_dict["BRAM_18K"] = 0
    perf_resource_dict["DSP48E"] = 0
    perf_resource_dict["FF"] = 15693
    perf_resource_dict["LUT"] = 20373 
    perf_resource_dict["URAM"] = 0

    return perf_resource_dict


def get_parallel_merge_32_to_16_info(N_insertion):

    """ Return a single result (no multiple options) """

    perf_resource_dict = dict()

    # Performance
    L_insertion = 7
    II_insertion = 1
    cycles_per_query = L_insertion + N_insertion * II_insertion
    QPS = 1 / (cycles_per_query / FREQ)
    perf_resource_dict['cycles_per_query'] = cycles_per_query
    perf_resource_dict['QPS'] = QPS

    # Resource
    perf_resource_dict["HBM_bank"] = 0
    perf_resource_dict["BRAM_18K"] = 0
    perf_resource_dict["DSP48E"] = 0
    perf_resource_dict["FF"] = 9480
    perf_resource_dict["LUT"] = 11861 
    perf_resource_dict["URAM"] = 0

    return perf_resource_dict

""" The 6 Stages """

def get_options_preprocessing_OPQ():
    
    option_list = []

    """ Option 1: UNROLL 8 """
    perf_resource_dict = dict()
    perf_resource_dict["name"] = "UNROLL 8"

    L_load = 128
    L_write = 128
    L_compute = 37
    UNROLL_FACTOR = 8
    II_compute = 1
    cycles_per_query = L_load + (L_compute + (D * D) / UNROLL_FACTOR * II_compute) + L_write
    QPS = 1 / (cycles_per_query / FREQ)
    perf_resource_dict['cycles_per_query'] = cycles_per_query
    perf_resource_dict['QPS'] = QPS
    
    perf_resource_dict["HBM_bank"] = 0
    perf_resource_dict["BRAM_18K"] = 33
    perf_resource_dict["DSP48E"] = 40
    perf_resource_dict["FF"] = 5134
    perf_resource_dict["LUT"] = 3660 
    perf_resource_dict["URAM"] = 0

    option_list.append(perf_resource_dict)

    """ Option 2: UNROLL 4 """
    perf_resource_dict = dict()
    perf_resource_dict["name"] = "UNROLL 4"

    L_load = 128
    L_write = 128
    L_compute = 21
    UNROLL_FACTOR = 4
    II_compute = 1
    cycles_per_query = L_load + (L_compute + (D * D) / UNROLL_FACTOR * II_compute) + L_write
    QPS = 1 / (cycles_per_query / FREQ)
    perf_resource_dict['cycles_per_query'] = cycles_per_query
    perf_resource_dict['QPS'] = QPS
    
    perf_resource_dict["HBM_bank"] = 0
    perf_resource_dict["BRAM_18K"] = 37
    perf_resource_dict["DSP48E"] = 20
    perf_resource_dict["FF"] = 2659
    perf_resource_dict["LUT"] = 2152 
    perf_resource_dict["URAM"] = 0

    option_list.append(perf_resource_dict)

    """ Option 3: UNROLL 2 """
    perf_resource_dict = dict()
    perf_resource_dict["name"] = "UNROLL 2"

    L_load = 128
    L_write = 128
    L_compute = 13
    UNROLL_FACTOR = 2
    II_compute = 1
    cycles_per_query = L_load + (L_compute + (D * D) / UNROLL_FACTOR * II_compute) + L_write
    QPS = 1 / (cycles_per_query / FREQ)
    perf_resource_dict['cycles_per_query'] = cycles_per_query
    perf_resource_dict['QPS'] = QPS

    perf_resource_dict["HBM_bank"] = 0
    perf_resource_dict["BRAM_18K"] = 33
    perf_resource_dict["DSP48E"] = 10
    perf_resource_dict["FF"] = 1534
    perf_resource_dict["LUT"] = 1428 
    perf_resource_dict["URAM"] = 0

    option_list.append(perf_resource_dict)

    """ Option 4: no UNROLL  """
    perf_resource_dict = dict()
    perf_resource_dict["name"] = "no UNROL"

    L_load = 128
    L_write = 128
    L_compute = 9
    UNROLL_FACTOR = 1
    II_compute = 1
    cycles_per_query = L_load + (L_compute + (D * D) / UNROLL_FACTOR * II_compute) + L_write
    QPS = 1 / (cycles_per_query / FREQ)
    perf_resource_dict['cycles_per_query'] = cycles_per_query
    perf_resource_dict['QPS'] = QPS
    
    perf_resource_dict["HBM_bank"] = 0
    perf_resource_dict["BRAM_18K"] = 31
    perf_resource_dict["DSP48E"] = 5
    perf_resource_dict["FF"] = 1055
    perf_resource_dict["LUT"] = 1125 
    perf_resource_dict["URAM"] = 0

    option_list.append(perf_resource_dict)

    return option_list

def get_options_stage_1_cluster_distance_computation(nlist):
    
    """ The performance / resource of a single PE
        currently only the most optimized option is included """

    option_list = []

    perf_resource_dict = dict()
    perf_resource_dict["name"] = "distance_computation_PE_optimized_version3"

    L_load_query = 128
    L_comp = 36
    N_comp = nlist
    II_comp = 1
    cycles_per_query = L_load_query + (L_comp + N_comp * II_comp)
    QPS = 1 / (cycles_per_query / FREQ)
    perf_resource_dict['cycles_per_query'] = cycles_per_query
    perf_resource_dict['QPS'] = QPS
    

    perf_resource_dict["BRAM_18K"] =0
    perf_resource_dict["DSP48E"] = 894
    perf_resource_dict["FF"] = 96756
    perf_resource_dict["LUT"] = 77333 

    # on-chip or off-chip storage given different nlist size
    if nlist <= 8192:
        perf_resource_dict["HBM_bank"] = 0
        perf_resource_dict["URAM"] = 128
    elif nlist == 16384:
        perf_resource_dict["HBM_bank"] = 0
        perf_resource_dict["URAM"] = 256
    elif nlist == 32768:
        perf_resource_dict["HBM_bank"] = 0
        perf_resource_dict["URAM"] = 512
    elif nlist > 32768:
         # load 128 floats per cycle, 128 * 32 / 512
        perf_resource_dict["HBM_bank"] = 8
        perf_resource_dict["URAM"] = 0
    else:
        raise("nlist not included in the switch condition")

    option_list.append(perf_resource_dict)

    return option_list

def get_options_stage_2_select_Voronoi_cells(nlist, nprobe, insertion_per_cycle):
    
    """ Insertion_per_cycle should equal to the PE num of stage 1, suppose
           it can output 1 distance per cycle 
        This stage currently only provides 1 option which is hierachical priority queue """

    option_list = []

    """ Option 1: single priority queue """
    queue_size = nprobe
    N_insertion_per_queue = nlist
    perf_resource_dict = get_priority_queue_info(queue_size, N_insertion_per_queue)
    perf_resource_dict["name"] = "single prirority queue"

    option_list.append(perf_resource_dict)
    
    """ Option 2: hierachical priority queue """
    queue_size_level_A = nprobe
    queue_size_level_B = nprobe
    # 2 level of queues, 
    #  the first level collect the output of stage 1 in parallel
    #  the second level collect the result of level 1
    queue_num_level_A = int(insertion_per_cycle * 2)
    queue_num_level_B = 1
    N_insertion_per_queue_level_A = int(nlist / queue_num_level_A)
    N_insertion_level_B = int(queue_num_level_A * queue_size_level_A)

    perf_resource_dict_level_A = get_priority_queue_info(queue_size_level_A, N_insertion_per_queue_level_A)
    perf_resource_dict_level_B = get_priority_queue_info(queue_size_level_B, N_insertion_level_B)

    perf_resource_dict = dict()
    perf_resource_dict["name"] = "hierachical prirority queue level A: {} queues, level B: {} queue".format(
        queue_num_level_A, queue_num_level_B)

    if perf_resource_dict_level_A['cycles_per_query'] > perf_resource_dict_level_B['cycles_per_query']:
        perf_resource_dict['cycles_per_query'] = perf_resource_dict_level_A['cycles_per_query'] 
    else:
        perf_resource_dict['cycles_per_query'] = perf_resource_dict_level_B['cycles_per_query'] 
    perf_resource_dict['QPS'] = 1 / (perf_resource_dict['cycles_per_query'] / FREQ) 
    
    perf_resource_dict["BRAM_18K"] = queue_num_level_A * perf_resource_dict_level_A["BRAM_18K"] + \
        queue_num_level_B * perf_resource_dict_level_B["BRAM_18K"]
    perf_resource_dict["DSP48E"] = queue_num_level_A * perf_resource_dict_level_A["DSP48E"] + \
        queue_num_level_B * perf_resource_dict_level_B["DSP48E"]
    perf_resource_dict["FF"] = queue_num_level_A * perf_resource_dict_level_A["FF"] + \
        queue_num_level_B * perf_resource_dict_level_B["FF"]
    perf_resource_dict["LUT"] = queue_num_level_A * perf_resource_dict_level_A["LUT"] + \
        queue_num_level_B * perf_resource_dict_level_B["LUT"]
    perf_resource_dict["HBM_bank"] = queue_num_level_A * perf_resource_dict_level_A["HBM_bank"] + \
        queue_num_level_B * perf_resource_dict_level_B["HBM_bank"]
    perf_resource_dict["URAM"] = queue_num_level_A * perf_resource_dict_level_A["URAM"] + \
        queue_num_level_B * perf_resource_dict_level_B["URAM"]

    option_list.append(perf_resource_dict)

    return option_list

def get_options_stage_3_distance_LUT_construction(nprobe):
    
    """ Now we only use the most optimized version, i.e.,
          single_lookup_table_construction_PE_optimized_version2 """

    option_list = []

    perf_resource_dict = dict()
    perf_resource_dict["name"] = "single_lookup_table_construction_PE_optimized_version2"

    L_load_query = 129
    L_load_and_compute_row = 307
    cycles_per_query = L_load_query + nprobe * L_load_and_compute_row
    QPS = 1 / (cycles_per_query / FREQ)
    perf_resource_dict['cycles_per_query'] = cycles_per_query
    perf_resource_dict['QPS'] = QPS
    
    perf_resource_dict["HBM_bank"] = 0
    perf_resource_dict["BRAM_18K"] = 128
    perf_resource_dict["DSP48E"] = 864
    perf_resource_dict["FF"] = 94399
    perf_resource_dict["LUT"] = 90037 
    perf_resource_dict["URAM"] = 0

    option_list.append(perf_resource_dict)

    return option_list

def get_options_stage_4_distance_estimation_by_LUT(PE_num, nprobe, N_compute_per_nprobe):
    
    """ this function returns the performance and resource consumption of
          the entire systolic array """

    option_list = []

    perf_resource_dict = dict()
    perf_resource_dict["name"] = "systolic array with {} PEs".format(PE_num)

    L_load = 2
    N_load = 256
    II_load = 1
    L_compute = 63
    II_compute = 1
    cycles_per_query = \
        nprobe * ((L_load + N_load * II_load + PE_num - 1) + \
            (L_compute + N_compute_per_nprobe * II_compute))
    QPS = 1 / (cycles_per_query / FREQ)
    perf_resource_dict['cycles_per_query'] = cycles_per_query
    perf_resource_dict['QPS'] = QPS

    perf_resource_dict["HBM_bank"] = 0 * PE_num 
    perf_resource_dict["BRAM_18K"] = 16 * PE_num
    perf_resource_dict["DSP48E"] = 30 * PE_num
    perf_resource_dict["FF"] = 5437 * PE_num
    perf_resource_dict["LUT"] = 5329 * PE_num
    perf_resource_dict["URAM"] = 0 * PE_num

    option_list.append(perf_resource_dict)

    return option_list


def get_options_stage_5_sort_reduction(input_stream_num, N_insertion_per_stream):

    """
        return 1 or 2 options 
        TODO: constraint: HBM_channel_num_for_PQ_code * 3 ~= input_stream_num
    """

    option_list = []

    """ Option 1: hierachical priority queue """
    queue_num_level_A = int(input_stream_num * 2)
    N_insertion_per_stream_level_A = int(N_insertion_per_stream / 2)
    perf_resource_dict_level_A = get_priority_queue_info(
        queue_len=topK, N_insertion=N_insertion_per_stream_level_A)

    def find_num_queues(cycles_per_query_upper_level, N_insertion_total_level, upper_level_queue_num):
        """ find an option that the lower level can match the upper level's performance """
        queue_num_level_N = 1
        for i in range(1, upper_level_queue_num):
            perf_resource_dict_level_N = get_priority_queue_info(
                queue_len=topK, N_insertion=int(N_insertion_total_level / queue_num_level_N))
            if perf_resource_dict_level_N["cycles_per_query"] > cycles_per_query_upper_level:
                queue_num_level_N = queue_num_level_N + 1
            else:
                return (queue_num_level_N, perf_resource_dict_level_N)
        return False

    def find_hierachical_queue_structure_recursive(
            cycles_per_query_upper_level, N_insertion_total_level, upper_level_queue_num):

        if not find_num_queues(cycles_per_query_upper_level, N_insertion_total_level, upper_level_queue_num):
            return False
        else: 
            queue_num_level_N, perf_resource_dict_level_N = \
                find_num_queues(cycles_per_query_upper_level, N_insertion_total_level, upper_level_queue_num)

            if queue_num_level_N == 1:
                return [1]
            else: 
                queue_num_array = find_hierachical_queue_structure_recursive(
                    cycles_per_query_upper_level=perf_resource_dict_level_N["cycles_per_query"],
                    N_insertion_total_level=int(queue_num_level_N * topK),
                    upper_level_queue_num=queue_num_level_N)
                if queue_num_array:
                    queue_num_array.append(queue_num_level_N)
                else:
                    return False

            return queue_num_array


    # if lower level cannot reduce the number of queues used to match upper level, 
    #   then hierarchical priority queue is not an option
    queue_num_array = find_hierachical_queue_structure_recursive(
        cycles_per_query_upper_level=perf_resource_dict_level_A["cycles_per_query"], 
        N_insertion_total_level=int(queue_num_level_A * topK),
        upper_level_queue_num=queue_num_level_A)

    if queue_num_array:

        queue_num_array.append(queue_num_level_A)

        total_priority_queue_num = np.sum(np.array(queue_num_array))

        perf_resource_dict = dict()
        perf_resource_dict["name"] = "hierarchical priority queue: {} total: {}".format(
            queue_num_array, total_priority_queue_num)

        # all levels use the same priority queue of depth=topK
        perf_resource_dict["HBM_bank"] = \
            total_priority_queue_num * perf_resource_dict_level_A["HBM_bank"]
        perf_resource_dict["BRAM_18K"] = \
            total_priority_queue_num * perf_resource_dict_level_A["BRAM_18K"]
        perf_resource_dict["DSP48E"] = \
            total_priority_queue_num * perf_resource_dict_level_A["DSP48E"]
        perf_resource_dict["FF"] = \
            total_priority_queue_num * perf_resource_dict_level_A["FF"]
        perf_resource_dict["LUT"] = \
            total_priority_queue_num * perf_resource_dict_level_A["LUT"]
        perf_resource_dict["URAM"] = \
            total_priority_queue_num * perf_resource_dict_level_A["URAM"]

        # lower level is faster than upper level
        perf_resource_dict["cycles_per_query"] = perf_resource_dict_level_A["cycles_per_query"]
        perf_resource_dict["QPS"] = 1 / (perf_resource_dict["cycles_per_query"] / FREQ)
    
        option_list.append(perf_resource_dict) 

    """ Option 2: sort reduction network """
    perf_resource_dict_bitonic_sort_16 = \
        get_bitonic_sort_16_info(N_insertion=N_insertion_per_stream)
    perf_resource_dict_parallel_merge_32_to_16 = \
        get_parallel_merge_32_to_16_info(N_insertion=N_insertion_per_stream)

    if input_stream_num == 16:

        perf_resource_dict = dict()
        perf_resource_dict["name"] = \
            "sort reduction (1 sort 0 merge) + priority queue group (21)"

        perf_resource_dict["HBM_bank"] = \
            21 * perf_resource_dict_level_A["HBM_bank"] + \
            1 * perf_resource_dict_bitonic_sort_16["HBM_bank"] + \
            0 * perf_resource_dict_parallel_merge_32_to_16["HBM_bank"]
        perf_resource_dict["BRAM_18K"] = \
            21 * perf_resource_dict_level_A["BRAM_18K"] + \
            1 * perf_resource_dict_bitonic_sort_16["BRAM_18K"] + \
            0 * perf_resource_dict_parallel_merge_32_to_16["BRAM_18K"]
        perf_resource_dict["DSP48E"] = \
            21 * perf_resource_dict_level_A["DSP48E"] + \
            1 * perf_resource_dict_bitonic_sort_16["DSP48E"] + \
            0 * perf_resource_dict_parallel_merge_32_to_16["DSP48E"]
        perf_resource_dict["FF"] = \
            21 * perf_resource_dict_level_A["FF"] + \
            1 * perf_resource_dict_bitonic_sort_16["FF"] + \
            0 * perf_resource_dict_parallel_merge_32_to_16["FF"]
        perf_resource_dict["LUT"] = \
            21 * perf_resource_dict_level_A["LUT"] + \
            1 * perf_resource_dict_bitonic_sort_16["LUT"] + \
            0 * perf_resource_dict_parallel_merge_32_to_16["LUT"]
        perf_resource_dict["URAM"] = \
            21 * perf_resource_dict_level_A["URAM"] + \
            1 * perf_resource_dict_bitonic_sort_16["URAM"] + \
            0 * perf_resource_dict_parallel_merge_32_to_16["URAM"]

        option_list.append(perf_resource_dict) 

    elif input_stream_num == 32:

        perf_resource_dict = dict()
        perf_resource_dict["name"] = \
            "sort reduction (2 sort 1 merge) + priority queue group (21)"

        perf_resource_dict["HBM_bank"] = \
            21 * perf_resource_dict_level_A["HBM_bank"] + \
            2 * perf_resource_dict_bitonic_sort_16["HBM_bank"] + \
            1 * perf_resource_dict_parallel_merge_32_to_16["HBM_bank"]
        perf_resource_dict["BRAM_18K"] = \
            21 * perf_resource_dict_level_A["BRAM_18K"] + \
            2 * perf_resource_dict_bitonic_sort_16["BRAM_18K"] + \
            1 * perf_resource_dict_parallel_merge_32_to_16["BRAM_18K"]
        perf_resource_dict["DSP48E"] = \
            21 * perf_resource_dict_level_A["DSP48E"] + \
            2 * perf_resource_dict_bitonic_sort_16["DSP48E"] + \
            1 * perf_resource_dict_parallel_merge_32_to_16["DSP48E"]
        perf_resource_dict["FF"] = \
            21 * perf_resource_dict_level_A["FF"] + \
            2 * perf_resource_dict_bitonic_sort_16["FF"] + \
            1 * perf_resource_dict_parallel_merge_32_to_16["FF"]
        perf_resource_dict["LUT"] = \
            21 * perf_resource_dict_level_A["LUT"] + \
            2 * perf_resource_dict_bitonic_sort_16["LUT"] + \
            1 * perf_resource_dict_parallel_merge_32_to_16["LUT"]
        perf_resource_dict["URAM"] = \
            21 * perf_resource_dict_level_A["URAM"] + \
            2 * perf_resource_dict_bitonic_sort_16["URAM"] + \
            1 * perf_resource_dict_parallel_merge_32_to_16["URAM"]

        option_list.append(perf_resource_dict) 

    elif input_stream_num == 48:

        perf_resource_dict = dict()
        perf_resource_dict["name"] = \
            "sort reduction (3 sort 2 merge) + priority queue group (21)"

        perf_resource_dict["HBM_bank"] = \
            21 * perf_resource_dict_level_A["HBM_bank"] + \
            3 * perf_resource_dict_bitonic_sort_16["HBM_bank"] + \
            2 * perf_resource_dict_parallel_merge_32_to_16["HBM_bank"]
        perf_resource_dict["BRAM_18K"] = \
            21 * perf_resource_dict_level_A["BRAM_18K"] + \
            3 * perf_resource_dict_bitonic_sort_16["BRAM_18K"] + \
            2 * perf_resource_dict_parallel_merge_32_to_16["BRAM_18K"]
        perf_resource_dict["DSP48E"] = \
            21 * perf_resource_dict_level_A["DSP48E"] + \
            3 * perf_resource_dict_bitonic_sort_16["DSP48E"] + \
            2 * perf_resource_dict_parallel_merge_32_to_16["DSP48E"]
        perf_resource_dict["FF"] = \
            21 * perf_resource_dict_level_A["FF"] + \
            3 * perf_resource_dict_bitonic_sort_16["FF"] + \
            2 * perf_resource_dict_parallel_merge_32_to_16["FF"]
        perf_resource_dict["LUT"] = \
            21 * perf_resource_dict_level_A["LUT"] + \
            3 * perf_resource_dict_bitonic_sort_16["LUT"] + \
            2 * perf_resource_dict_parallel_merge_32_to_16["LUT"]
        perf_resource_dict["URAM"] = \
            21 * perf_resource_dict_level_A["URAM"] + \
            3 * perf_resource_dict_bitonic_sort_16["URAM"] + \
            2 * perf_resource_dict_parallel_merge_32_to_16["URAM"]

        option_list.append(perf_resource_dict) 

    elif input_stream_num == 64:

        perf_resource_dict = dict()
        perf_resource_dict["name"] = \
            "sort reduction (4 sort 3 merge) + priority queue group (21)"

        perf_resource_dict["HBM_bank"] = \
            21 * perf_resource_dict_level_A["HBM_bank"] + \
            4 * perf_resource_dict_bitonic_sort_16["HBM_bank"] + \
            3 * perf_resource_dict_parallel_merge_32_to_16["HBM_bank"]
        perf_resource_dict["BRAM_18K"] = \
            21 * perf_resource_dict_level_A["BRAM_18K"] + \
            4 * perf_resource_dict_bitonic_sort_16["BRAM_18K"] + \
            3 * perf_resource_dict_parallel_merge_32_to_16["BRAM_18K"]
        perf_resource_dict["DSP48E"] = \
            21 * perf_resource_dict_level_A["DSP48E"] + \
            4 * perf_resource_dict_bitonic_sort_16["DSP48E"] + \
            3 * perf_resource_dict_parallel_merge_32_to_16["DSP48E"]
        perf_resource_dict["FF"] = \
            21 * perf_resource_dict_level_A["FF"] + \
            4 * perf_resource_dict_bitonic_sort_16["FF"] + \
            3 * perf_resource_dict_parallel_merge_32_to_16["FF"]
        perf_resource_dict["LUT"] = \
            21 * perf_resource_dict_level_A["LUT"] + \
            4 * perf_resource_dict_bitonic_sort_16["LUT"] + \
            3 * perf_resource_dict_parallel_merge_32_to_16["LUT"]
        perf_resource_dict["URAM"] = \
            21 * perf_resource_dict_level_A["URAM"] + \
            4 * perf_resource_dict_bitonic_sort_16["URAM"] + \
            3 * perf_resource_dict_parallel_merge_32_to_16["URAM"]

        option_list.append(perf_resource_dict) 

    return option_list


## TODO: add HBM interconnection, the shell, the global interconnection, and network stack

def combine_stages():
    pass


def unit_test():
    """ Print the options of each function unit """

    print("\nget_priority_queue_info:\n")
    perf_resource_dict = get_priority_queue_info(queue_len=32, N_insertion=8192)
    print(perf_resource_dict)

    print("\nget_bitonic_sort_16_info:\n")
    perf_resource_dict = get_bitonic_sort_16_info(N_insertion=1e8/8192/64*32)
    print(perf_resource_dict)

    print("\nget_parallel_merge_32_to_16_info:\n")
    perf_resource_dict = get_parallel_merge_32_to_16_info(N_insertion=1e8/8192/64*32)
    print(perf_resource_dict)

    option_list = get_options_preprocessing_OPQ()
    print("\nget_options_preprocessing_OPQ:\n")
    for option in option_list:
        print(option)

    print("\nget_options_stage_1_cluster_distance_computation:\n")
    nlist_options = [2**10, 2**11, 2**12, 2**13, 2**14, 2**15, 2**16, 2**17, 2**18]
    for nlist in nlist_options:
        option_list = get_options_stage_1_cluster_distance_computation(nlist)
        print("nlist={}".format(nlist))
        for option in option_list:
            print(option)

    print("\nget_options_stage_2_select_Voronoi_cells:\n")
    print("insertion_per_cycle = 1")
    option_list = get_options_stage_2_select_Voronoi_cells(nlist=8192, nprobe=32, insertion_per_cycle=1)
    for option in option_list:
        print(option)
    print("insertion_per_cycle = 2")
    option_list = get_options_stage_2_select_Voronoi_cells(nlist=8192, nprobe=32, insertion_per_cycle=2)
    for option in option_list:
        print(option)

    print("\nget_options_stage_3_distance_LUT_construction:\n")    
    option_list = get_options_stage_3_distance_LUT_construction(nprobe=32)
    for option in option_list:
        print(option)

    print("\nget_options_stage_4_distance_estimation_by_LUT:\n")    
    option_list = get_options_stage_4_distance_estimation_by_LUT(
        PE_num=63, nprobe=32, N_compute_per_nprobe=int(1e8/8192/63))
    for option in option_list:
        print(option)

    # for a small amount of number being scanned, hierachical priority queue is not
    #   really an option
    print("\nget_options_stage_5_sort_reduction:\n")    
    # for small number of Voronoi cells, only 2 level is required
    print("nlist=8192, nprobe=32, nstreams=64")
    option_list = get_options_stage_5_sort_reduction(
        input_stream_num=64, 
        N_insertion_per_stream=int(1e8/8192*32/64))
    for option in option_list:
        print(option)
    # for large number of Voronoi cells, 4 level is required
    print("nlist=262144, nprobe=32, nstreams=64")
    option_list = get_options_stage_5_sort_reduction(
        input_stream_num=64, 
        N_insertion_per_stream=int(1e8/262144*32/64))
    for option in option_list:
        print(option)
    # try different stream num
    print("nlist=8192, nprobe=32, nstreams=48")
    option_list = get_options_stage_5_sort_reduction(
        input_stream_num=48, 
        N_insertion_per_stream=int(1e8/8192*32/64))
    for option in option_list:
        print(option)
    print("nlist=8192, nprobe=32, nstreams=32")
    option_list = get_options_stage_5_sort_reduction(
        input_stream_num=32, 
        N_insertion_per_stream=int(1e8/8192*32/64))
    for option in option_list:
        print(option)
    print("nlist=8192, nprobe=32, nstreams=16")
    option_list = get_options_stage_5_sort_reduction(
        input_stream_num=16, 
        N_insertion_per_stream=int(1e8/8192*32/64))
    for option in option_list:
        print(option)

if __name__ == "__main__":

    unit_test()