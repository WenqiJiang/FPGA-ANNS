# Three Version of Bitonic Sort in HLS

ARRAY_LEN = 32

## HLS Version 1 
Naive Implementation -> Low Performance, High Resource Consumption

```
// HLS Version 1
// NO inline -> try to infer function reuse
// UNROLL on the outer loop

void compare_swap(float* array, int idxA, int idxB) {
    // note: idxA must < idxB
#pragma HLS inline
    if (array[idxA] > array[idxB]) {
      	float regA = array[idxA];
        float regB = array[idxB];
        array[idxA] = regB;
        array[idxB] = regA;
    }
}

template<const int total_len, const int partition_num>
void compare_swap_range_head_tail(float* array) {
    // e.g., in the image phase merge 4 -> 8, the 1st stage
    // Input these constants to make computation fast
// #pragma HLS inline
  
    const int elements_per_partition = total_len / partition_num;
    const int operations_per_partition = elements_per_partition / 2;

    for (int i = 0; i < partition_num; i++) {
        #pragma HLS UNROLL
        for (int j = 0; j < operations_per_partition; j++) {
            compare_swap(array, i * elements_per_partition + j, (i + 1) * elements_per_partition - 1 - j);
        }
    }
}

template<const int total_len, const int partition_num>
void compare_swap_range_interval(float* array) {
    // e.g., in the image phase merge 4 -> 8, the 2nd and 3rd stage
// #pragma HLS inline
  
    const int elements_per_partition = total_len / partition_num;
    const int operations_per_partition = elements_per_partition / 2;
	const int interval = operations_per_partition;

		for (int i = 0; i < partition_num; i++) {
        #pragma HLS UNROLL
            for (int j = 0; j < operations_per_partition; j++) {
          	compare_swap(array, i * elements_per_partition + j, i * elements_per_partition + interval + j);
        }
    }
}

void bitonic_sort(float input_array[32]) {
    // len = 32, np.random.randint(low=0, high=100, size=32)

    // Total: 15 sub-stages
    // Stage 1
    compare_swap_range_interval<32, 16>(input_array);

    // Stage 2: 2 -> 4
    compare_swap_range_head_tail<32, 8>(input_array);
    compare_swap_range_interval<32, 16>(input_array);

    // Stage 3: 4 -> 8
    compare_swap_range_head_tail<32, 4>(input_array);
    compare_swap_range_interval<32, 8>(input_array);
    compare_swap_range_interval<32, 16>(input_array);

    // Stage 4: 8 -> 16
    compare_swap_range_head_tail<32, 2>(input_array);
    compare_swap_range_interval<32, 4>(input_array);
    compare_swap_range_interval<32, 8>(input_array);
    compare_swap_range_interval<32, 16>(input_array);
      
    // Stage 5: 16 -> 32
    compare_swap_range_head_tail<32, 1>(input_array);
    compare_swap_range_interval<32, 2>(input_array);
    compare_swap_range_interval<32, 4>(input_array);
    compare_swap_range_interval<32, 8>(input_array);
    compare_swap_range_interval<32, 16>(input_array);
}


void main() {
    // len = 32, np.random.randint(low=0, high=100, size=32)
		float input_array[32] = {20, 76,  2,  0, 69, 36, 80, 68,  2, 19, 71, 98, 99, 64, 13, 33, 84, 33, 83, 70, 56, 38, 78, 90, 92, 97, 98, 78, 97, 15, 43, 63};
    // result: [0, 2, 2, 13, 15, 19, 20, 33, 33, 36, 38, 43, 56, 63, 64, 68, 69, 70, 71, 76, 78, 78, 80, 83, 84, 90, 92, 97, 97, 98, 98, 99]
    #pragma HLS array_partition variable=input_array complete
  
    // Total: 15 sub-stages
    // Stage 1
    compare_swap_range_interval<32, 16>(input_array);

    // Stage 2: 2 -> 4
    compare_swap_range_head_tail<32, 8>(input_array);
    compare_swap_range_interval<32, 16>(input_array);
16 + (8 + 16) + (4 + 8 + 16) + (2 + 4 + 8 + 16) + (1 + 2 + 4 + 8 + 16)
    // Stage 3: 4 -> 8
    compare_swap_range_head_tail<32, 4>(input_array);
    compare_swap_range_interval<32, 8>(input_array);
    compare_swap_range_interval<32, 16>(input_array);

    // Stage 4: 8 -> 16
    compare_swap_range_head_tail<32, 2>(input_array);
    compare_swap_range_interval<32, 4>(input_array);
    compare_swap_range_interval<32, 8>(input_array);
    compare_swap_range_interval<32, 16>(input_array);
      
    // Stage 5: 16 -> 32
    compare_swap_range_head_tail<32, 1>(input_array);
    compare_swap_range_interval<32, 2>(input_array);
    compare_swap_range_interval<32, 4>(input_array);
    compare_swap_range_interval<32, 8>(input_array);
    compare_swap_range_interval<32, 16>(input_array);
}



426 CC; 1% FF; 4% LUT

CONCLUSION:
  Using this coding style, the function units can be reused, yet HLS CANNOT Infer that the loop can be executed in parallel in 1 CC. Note that only compare_swap_range_interval_32_16 can be finished in 1 CC, because the index is simple, while all other functions takes 40+ CC to be done.
    
    + Detail:
        * Instance:
        +------------------------------+-------------------+---------+---------+----------+----------+-----+-----+---------+
        |                              |                   |  Latency (cycles) |  Latency (absolute) |  Interval | Pipeline|
        |           Instance           |       Module      |   min   |   max   |    min   |    max   | min | max |   Type  |
        +------------------------------+-------------------+---------+---------+----------+----------+-----+-----+---------+
        |grp_bitonic_sort_fu_258       |bitonic_sort       |      426|      426| 3.043 us | 3.043 us |  426|  426|   none  |
        |grp_write_result_32_s_fu_294  |write_result_32_s  |       38|       38| 0.271 us | 0.271 us |   38|   38|   none  |
        |grp_init_array_32_s_fu_333    |init_array_32_s    |       40|       40| 0.286 us | 0.286 us |   40|   40|   none  |
        +------------------------------+-------------------+---------+---------+----------+----------+-----+-----+---------+

in bitonic sort (I re-synthesized it by copying the content of sort function to the top-level function):

+ Latency:
    * Summary:
    +---------+---------+----------+----------+-----+-----+---------+
    |  Latency (cycles) |  Latency (absolute) |  Interval | Pipeline|
    |   min   |   max   |    min   |    max   | min | max |   Type  |
    +---------+---------+----------+----------+-----+-----+---------+
    |      508|      508| 3.629 us | 3.629 us |  508|  508|   none  |
    +---------+---------+----------+----------+-----+-----+---------+
                  |                                                |                                     |  Latency (cycles) |  Latency (absolute) |  Interval | Pipeline|
        |                    Instance                    |                Module               |   min   |   max   |    min   |    max   | min | max |   Type  |
        +------------------------------------------------+-------------------------------------+---------+---------+----------+----------+-----+-----+---------+
        |grp_compare_swap_range_head_tail_32_2_s_fu_272  |compare_swap_range_head_tail_32_2_s  |       42|       42| 0.300 us | 0.300 us |   42|   42|   none  |
        |grp_compare_swap_range_interval_32_2_s_fu_308   |compare_swap_range_interval_32_2_s   |       42|       42| 0.300 us | 0.300 us |   42|   42|   none  |
        |grp_compare_swap_range_interval_32_4_s_fu_344   |compare_swap_range_interval_32_4_s   |       48|       48| 0.343 us | 0.343 us |   48|   48|   none  |
        |grp_compare_swap_range_head_tail_32_4_s_fu_380  |compare_swap_range_head_tail_32_4_s  |       48|       48| 0.343 us | 0.343 us |   48|   48|   none  |
        |grp_compare_swap_range_head_tail_32_8_s_fu_416  |compare_swap_range_head_tail_32_8_s  |       40|       40| 0.286 us | 0.286 us |   40|   40|   none
        |grp_compare_swap_range_interval_32_4_s_fu_344   |compare_swap_range_interval_32_4_s   |       48|       48| 0.343 us | 0.343 us |   48|   48|   none  |
        |grp_compare_swap_range_head_tail_32_4_s_fu_380  |compare_swap_range_head_tail_32_4_s  |       48|       48| 0.343 us | 0.343 us |   48|   48|   none  |
        |grp_compare_swap_range_head_tail_32_8_s_fu_416  |compare_swap_range_head_tail_32_8_s  |       40|       40| 0.286 us | 0.286 us |   40|   40|   none  |
        |grp_compare_swap_range_interval_32_8_s_fu_452   |compare_swap_range_interval_32_8_s   |       40|       40| 0.286 us | 0.286 us |   40|   40|   none  |
        |grp_compare_swap_range_interval_32_16_s_fu_488  |compare_swap_range_interval_32_16_s  |        1|        1| 7.143 ns | 7.143 ns |    1|    1|   none  |
        |grp_compare_swap_range_head_tail_32_1_s_fu_556  |compare_swap_range_head_tail_32_1_s  |       18|       18| 0.129 us | 0.129 us |   18|   18|   none  |
        |grp_write_result_32_s_fu_592                    |write_result_32_s                    |       38|       38| 0.271 us | 0.271 us |   38|   38|   none  |
        |grp_init_array_32_s_fu_631                      |init_array_32_s                      |       40|       40| 0.286 us | 0.286 us |   40|   40|   none  |
        +------------------------------------------------+-------------------------------------+---------+---------+----------+----------+-----+-----+---------+

          
================================================================
== Utilization Estimates
================================================================
* Summary:
+---------------------+---------+-------+---------+---------+-----+
|         Name        | BRAM_18K| DSP48E|    FF   |   LUT   | URAM|
+---------------------+---------+-------+---------+---------+-----+
|DSP                  |        -|      -|        -|        -|    -|
|Expression           |        -|      -|        0|        6|    -|
|FIFO                 |        -|      -|        -|        -|    -|
|Instance             |        4|      0|    31618|    55066|    -|
|Memory               |        -|      -|        -|        -|    -|
|Multiplexer          |        -|      -|        -|       83|    -|
|Register             |        -|      -|     2187|        -|    -|
+---------------------+---------+-------+---------+---------+-----+
|Total                |        4|      0|    33805|    55155|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available SLR        |     1344|   3008|   869120|   434560|  320|
+---------------------+---------+-------+---------+---------+-----+
|Utilization SLR (%)  |    ~0   |      0|        3|       12|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available            |     4032|   9024|  2607360|  1303680|  960|
+---------------------+---------+-------+---------+---------+-----+
|Utilization (%)      |    ~0   |      0|        1|        4|    0|
+---------------------+---------+-------+---------+---------+-----+
```

## HLS Version 2: Maximum Performance, Maximum Resource Consumptions

15 CC

22832 / 2607360 FF (0.88%)

50555 / 1303680 LUT (3.88%) -> too much if we have 32 such sorting networks


```
// HLS Version 2 -> Maximum Performance, Maximum Resource Consumptions
// Use unroll in BOTH outside and inside loops to get the array index inferred to be executed in parallel
// This succesfully make the function unit execution time to be 1 CC per stage
// Use function inline to maximize the performance
template<const int total_len, const int partition_num>
void compare_swap_range_head_tail(float* array) {
    // e.g., in the image phase merge 4 -> 8, the 1st stage
    // Input these constants to make computation fast
#pragma HLS inline
  
    const int elements_per_partition = total_len / partition_num;
    const int operations_per_partition = elements_per_partition / 2;

    for (int i = 0; i < partition_num; i++) {
    #pragma HLS UNROLL
        for (int j = 0; j < operations_per_partition; j++) {
        #pragma HLS UNROLL
            compare_swap(array, i * elements_per_partition + j, (i + 1) * elements_per_partition - 1 - j);
        }
    }
}

template<const int total_len, const int partition_num>
void compare_swap_range_interval(float* array) {
    // e.g., in the image phase merge 4 -> 8, the 2nd and 3rd stage
#pragma HLS inline
  
    const int elements_per_partition = total_len / partition_num;
    const int operations_per_partition = elements_per_partition / 2;
	const int interval = operations_per_partition;

    for (int i = 0; i < partition_num; i++) {
    #pragma HLS UNROLL
        for (int j = 0; j < operations_per_partition; j++) {
        #pragma HLS UNROLL
        compare_swap(array, i * elements_per_partition + j, i * elements_per_partition + interval + j);
        }
    }
}

// Conclusion: Maxmimum Performance, Maximum Resource Consumption
15 CC
22832 / 2607360 FF (0.88%)
50555 / 1303680 LUT (3.88%) -> too much if we have 32 such sorting networks
  
+ Latency:
    * Summary:
    +---------+---------+----------+----------+-----+-----+---------+
    |  Latency (cycles) |  Latency (absolute) |  Interval | Pipeline|
    |   min   |   max   |    min   |    max   | min | max |   Type  |
    +---------+---------+----------+----------+-----+-----+---------+
    |       98|       98| 0.700 us | 0.700 us |   98|   98|   none  |
    +---------+---------+----------+----------+-----+-----+---------+

    + Detail:
        * Instance:
        +------------------------------+-------------------+---------+---------+----------+----------+-----+-----+---------+
        |                              |                   |  Latency (cycles) |  Latency (absolute) |  Interval | Pipeline|
        |           Instance           |       Module      |   min   |   max   |    min   |    max   | min | max |   Type  |
        +------------------------------+-------------------+---------+---------+----------+----------+-----+-----+---------+
        |grp_bitonic_sort_fu_258       |bitonic_sort       |       15|       15| 0.107 us | 0.107 us |   15|   15|   none  |
        |grp_write_result_32_s_fu_326  |write_result_32_s  |       38|       38| 0.271 us | 0.271 us |   38|   38|   none  |
        |grp_init_array_32_s_fu_365    |init_array_32_s    |       40|       40| 0.286 us | 0.286 us |   40|   40|   none  |
        +------------------------------+-------------------+---------+---------+----------+----------+-----+-----+---------+

* Summary:
+---------------------+---------+-------+---------+---------+-----+
|         Name        | BRAM_18K| DSP48E|    FF   |   LUT   | URAM|
+---------------------+---------+-------+---------+---------+-----+
|DSP                  |        -|      -|        -|        -|    -|
|Expression           |        -|      -|        0|        6|    -|
|FIFO                 |        -|      -|        -|        -|    -|
|Instance             |        4|      0|    27436|    56633|    -|
|Memory               |        -|      -|        -|        -|    -|
|Multiplexer          |        -|      -|        -|       83|    -|
|Register             |        -|      -|     2187|        -|    -|
+---------------------+---------+-------+---------+---------+-----+
|Total                |        4|      0|    29623|    56722|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available SLR        |     1344|   3008|   869120|   434560|  320|
+---------------------+---------+-------+---------+---------+-----+
|Utilization SLR (%)  |    ~0   |      0|        3|       13|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available            |     4032|   9024|  2607360|  1303680|  960|
+---------------------+---------+-------+---------+---------+-----+
|Utilization (%)      |    ~0   |      0|        1|        4|    0|
+---------------------+---------+-------+---------+---------+-----+

+ Detail:
    * Instance:
    +------------------------------+--------------------+---------+-------+-------+-------+-----+
    |           Instance           |       Module       | BRAM_18K| DSP48E|   FF  |  LUT  | URAM|
    +------------------------------+--------------------+---------+-------+-------+-------+-----+
    |grp_bitonic_sort_fu_258       |bitonic_sort        |        0|      0|  22832|  50555|    0|
```

## HLS Version 3 -> Final version (Balance Performance and Resource Consumption)

25 CC
16537 / 2607360 FF (0.63%)
25530 / 1303680 LUT (1.96%) -> probably too much if we have 32 such sorting networks

```
// HLS Version 3 -> Final version (Balance Performance and Resource Consumption)
// Use unroll in BOTH outside and inside loops to get the array index inferred to be executed in parallel
// This succesfully make the function unit execution time to be 1 CC per stage

template<const int total_len, const int partition_num>
void compare_swap_range_head_tail(float* array) {
    // e.g., in the image phase merge 4 -> 8, the 1st stage
    // Input these constants to make computation fast
// #pragma HLS inline
  
    const int elements_per_partition = total_len / partition_num;
    const int operations_per_partition = elements_per_partition / 2;

    for (int i = 0; i < partition_num; i++) {
    #pragma HLS UNROLL
        for (int j = 0; j < operations_per_partition; j++) {
        #pragma HLS UNROLL
            compare_swap(array, i * elements_per_partition + j, (i + 1) * elements_per_partition - 1 - j);
        }
    }
}

template<const int total_len, const int partition_num>
void compare_swap_range_interval(float* array) {
    // e.g., in the image phase merge 4 -> 8, the 2nd and 3rd stage
// #pragma HLS inline
  
    const int elements_per_partition = total_len / partition_num;
    const int operations_per_partition = elements_per_partition / 2;
	  const int interval = operations_per_partition;

    for (int i = 0; i < partition_num; i++) {
    #pragma HLS UNROLL
        for (int j = 0; j < operations_per_partition; j++) {
        #pragma HLS UNROLL
        compare_swap(array, i * elements_per_partition + j, i * elements_per_partition + interval + j);
        }
    }
}

//// Bitonic function wrapped ////

25 CC

16537 / 2607360 FF (0.63%)

25530 / 1303680 LUT (1.96%) -> probably too much if we have 32 such sorting networks
  
+ Latency:
    * Summary:
    +---------+---------+----------+----------+-----+-----+---------+
    |  Latency (cycles) |  Latency (absolute) |  Interval | Pipeline|
    |   min   |   max   |    min   |    max   | min | max |   Type  |
    +---------+---------+----------+----------+-----+-----+---------+
    |      108|      108| 0.771 us | 0.771 us |  108|  108|   none  |
    +---------+---------+----------+----------+-----+-----+---------+

    + Detail:
        * Instance:
        +------------------------------+-------------------+---------+---------+----------+----------+-----+-----+---------+
        |                              |                   |  Latency (cycles) |  Latency (absolute) |  Interval | Pipeline|
        |           Instance           |       Module      |   min   |   max   |    min   |    max   | min | max |   Type  |
        +------------------------------+-------------------+---------+---------+----------+----------+-----+-----+---------+
        |grp_bitonic_sort_fu_258       |bitonic_sort       |       25|       25| 0.179 us | 0.179 us |   25|   25|   none  |
        |grp_write_result_32_s_fu_294  |write_result_32_s  |       38|       38| 0.271 us | 0.271 us |   38|   38|   none  |
        |grp_init_array_32_s_fu_333    |init_array_32_s    |       40|       40| 0.286 us | 0.286 us |   40|   40|   none  |
        +------------------------------+-------------------+---------+---------+----------+----------+-----+-----+---------+

== Utilization Estimates
================================================================
* Summary:
+---------------------+---------+-------+---------+---------+-----+
|         Name        | BRAM_18K| DSP48E|    FF   |   LUT   | URAM|
+---------------------+---------+-------+---------+---------+-----+
|DSP                  |        -|      -|        -|        -|    -|
|Expression           |        -|      -|        0|        6|    -|
|FIFO                 |        -|      -|        -|        -|    -|
|Instance             |        4|      0|    21141|    31608|    -|
|Memory               |        -|      -|        -|        -|    -|
|Multiplexer          |        -|      -|        -|       83|    -|
|Register             |        -|      -|     2187|        -|    -|
+---------------------+---------+-------+---------+---------+-----+
|Total                |        4|      0|    23328|    31697|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available SLR        |     1344|   3008|   869120|   434560|  320|
+---------------------+---------+-------+---------+---------+-----+
|Utilization SLR (%)  |    ~0   |      0|        2|        7|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available            |     4032|   9024|  2607360|  1303680|  960|
+---------------------+---------+-------+---------+---------+-----+
|Utilization (%)      |    ~0   |      0|    ~0   |        2|    0|
+---------------------+---------+-------+---------+---------+-----+

+ Detail:
    * Instance:
    +------------------------------+--------------------+---------+-------+-------+-------+-----+
    |           Instance           |       Module       | BRAM_18K| DSP48E|   FF  |  LUT  | URAM|
    +------------------------------+--------------------+---------+-------+-------+-------+-----+
    |grp_bitonic_sort_fu_258       |bitonic_sort        |        0|      0|  16537|  25530|    0|
      
      
      
//// Bitonic function inlined to top level ////

+ Latency:
    * Summary:
    +---------+---------+----------+----------+-----+-----+---------+
    |  Latency (cycles) |  Latency (absolute) |  Interval | Pipeline|
    |   min   |   max   |    min   |    max   | min | max |   Type  |
    +---------+---------+----------+----------+-----+-----+---------+
    |      107|      107| 0.764 us | 0.764 us |  107|  107|   none  |
    +---------+---------+----------+----------+-----+-----+---------+

    + Detail:
        * Instance:
        +------------------------------------------------+-------------------------------------+---------+---------+----------+----------+-----+-----+---------+
        |                                                |                                     |  Latency (cycles) |  Latency (absolute) |  Interval | Pipeline|
        |                    Instance                    |                Module               |   min   |   max   |    min   |    max   | min | max |   Type  |
        +------------------------------------------------+-------------------------------------+---------+---------+----------+----------+-----+-----+---------+
        |grp_compare_swap_range_interval_32_16_s_fu_272  |compare_swap_range_interval_32_16_s  |        1|        1| 7.143 ns | 7.143 ns |    1|    1|   none  |
        |grp_compare_swap_range_interval_32_8_s_fu_340   |compare_swap_range_interval_32_8_s   |        1|        1| 7.143 ns | 7.143 ns |    1|    1|   none  |
        |grp_compare_swap_range_interval_32_4_s_fu_408   |compare_swap_range_interval_32_4_s   |        1|        1| 7.143 ns | 7.143 ns |    1|    1|   none  |
        |grp_write_result_32_s_fu_476                    |write_result_32_s                    |       38|       38| 0.271 us | 0.271 us |   38|   38|   none  |
        |grp_init_array_32_s_fu_515                      |init_array_32_s                      |       40|       40| 0.286 us | 0.286 us |   40|   40|   none  |
        +------------------------------------------------+-------------------------------------+---------+---------+----------+----------+-----+-----+---------+

          
================================================================
== Utilization Estimates
================================================================
* Summary:
+---------------------+---------+-------+---------+---------+-----+
|         Name        | BRAM_18K| DSP48E|    FF   |   LUT   | URAM|
+---------------------+---------+-------+---------+---------+-----+
|DSP                  |        -|      -|        -|        -|    -|
|Expression           |        -|      -|        0|    10726|    -|
|FIFO                 |        -|      -|        -|        -|    -|
|Instance             |        4|      0|    11906|    16381|    -|
|Memory               |        -|      -|        -|        -|    -|
|Multiplexer          |        -|      -|        -|     4274|    -|
|Register             |        -|      -|     9371|        -|    -|
+---------------------+---------+-------+---------+---------+-----+
|Total                |        4|      0|    21277|    31381|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available SLR        |     1344|   3008|   869120|   434560|  320|
+---------------------+---------+-------+---------+---------+-----+
|Utilization SLR (%)  |    ~0   |      0|        2|        7|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available            |     4032|   9024|  2607360|  1303680|  960|
+---------------------+---------+-------+---------+---------+-----+
|Utilization (%)      |    ~0   |      0|    ~0   |        2|    0|
+---------------------+---------+-------+---------+---------+-----+

+ Detail:
    * Instance:
    +------------------------------------------------+-------------------------------------+---------+-------+------+------+-----+
    |                    Instance                    |                Module               | BRAM_18K| DSP48E|  FF  |  LUT | URAM|
    +------------------------------------------------+-------------------------------------+---------+-------+------+------+-----+
    |grp_compare_swap_range_interval_32_16_s_fu_272  |compare_swap_range_interval_32_16_s  |        0|      0|  2082|  3189|    0|
    |grp_compare_swap_range_interval_32_4_s_fu_408   |compare_swap_range_interval_32_4_s   |        0|      0|  2082|  3189|    0|
      
```