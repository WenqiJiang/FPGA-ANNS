import numpy as np

def compare_swap(array, idxA, idxB):
    assert idxA < idxB
    if array[idxA] > array[idxB]:
        regA = array[idxA]
        regB = array[idxB]
        array[idxA] = regB
        array[idxB] = regA
		
def compare_swap_range_head_tail(array, total_len, partition_num):
    # e.g., in the image phase merge 4 -> 8, the 1st stage
    elements_per_partition = int(total_len / partition_num)
    operations_per_partition = int(elements_per_partition / 2)

    for i in range(partition_num): # num partitions
        for j in range(operations_per_partition): # num operations
            compare_swap(input_array, i * elements_per_partition + j, (i + 1) * elements_per_partition - 1 - j)

def compare_swap_range_interval(array, total_len, partition_num):
    # e.g., in the image phase merge 4 -> 8, the 2nd and 3rd stage
    interval = int(total_len / partition_num / 2)
    elements_per_partition = int(total_len / partition_num)
    operations_per_partition = int(elements_per_partition / 2)

    for i in range(partition_num): # num partitions
        for j in range(operations_per_partition): # num operations
            compare_swap(input_array, i * elements_per_partition + j, i * elements_per_partition + interval + j)
	

if __name__ == "__main__":

    # input_array = np.random.randint(low=0, high=50, size=(16,))
    # print("Before: {}".format(input_array))

    # # Stage 1
    # compare_swap_range_interval(input_array, 16, 8)
        
    # # Stage 2: 2 -> 4
    # compare_swap_range_head_tail(input_array, 16, 4)
    # compare_swap_range_interval(input_array, 16, 8)
        
    # # Stage 3: 4 -> 8
    # compare_swap_range_head_tail(input_array, 16, 2)
    # compare_swap_range_interval(input_array, 16, 4)
    # compare_swap_range_interval(input_array, 16, 8)

    # # Stage 4: 8 -> 16
    # compare_swap_range_head_tail(input_array, 16, 1)
    # compare_swap_range_interval(input_array, 16, 2)
    # compare_swap_range_interval(input_array, 16, 4)
    # compare_swap_range_interval(input_array, 16, 8)

    # print("After: {}".format(input_array))


    # input_array = np.random.randint(low=0, high=100, size=(32,))
    input_array = [20, 76,  2,  0, 69, 36, 80, 68,  2, 19, 71, 98, 99, 64, 13, 33, 84, 33, 83, 70, 56, 38, 78, 90, 92, 97, 98, 78, 97, 15, 43, 63]
    print("Before: {}".format(input_array))

    # Stage 1
    compare_swap_range_interval(input_array, 32, 16)
    
    # Stage 2: 2 -> 4
    compare_swap_range_head_tail(input_array, 32, 8)
    compare_swap_range_interval(input_array, 32, 16)
        
    # Stage 3: 4 -> 8
    compare_swap_range_head_tail(input_array, 32, 4)
    compare_swap_range_interval(input_array, 32, 8)
    compare_swap_range_interval(input_array, 32, 16)

    # Stage 4: 8 -> 16
    compare_swap_range_head_tail(input_array, 32, 2)
    compare_swap_range_interval(input_array, 32, 4)
    compare_swap_range_interval(input_array, 32, 8)
    compare_swap_range_interval(input_array, 32, 16)

    # Stage 5: 16 -> 32
    compare_swap_range_head_tail(input_array, 32, 1)
    compare_swap_range_interval(input_array, 32, 2)
    compare_swap_range_interval(input_array, 32, 4)
    compare_swap_range_interval(input_array, 32, 8)
    compare_swap_range_interval(input_array, 32, 16)

    print("After: {}".format(input_array))