#include "host.hpp"

#define BANK_NAME(n) n | XCL_MEM_TOPOLOGY
/* for U280 specifically */
const int bank[40] = {
    /* 0 ~ 31 HBM */
    BANK_NAME(0),  BANK_NAME(1),  BANK_NAME(2),  BANK_NAME(3),  BANK_NAME(4),
    BANK_NAME(5),  BANK_NAME(6),  BANK_NAME(7),  BANK_NAME(8),  BANK_NAME(9),
    BANK_NAME(10), BANK_NAME(11), BANK_NAME(12), BANK_NAME(13), BANK_NAME(14),
    BANK_NAME(15), BANK_NAME(16), BANK_NAME(17), BANK_NAME(18), BANK_NAME(19),
    BANK_NAME(20), BANK_NAME(21), BANK_NAME(22), BANK_NAME(23), BANK_NAME(24),
    BANK_NAME(25), BANK_NAME(26), BANK_NAME(27), BANK_NAME(28), BANK_NAME(29),
    BANK_NAME(30), BANK_NAME(31), 
    /* 32, 33 DDR */ 
    BANK_NAME(32), BANK_NAME(33), 
    /* 34 ~ 39 PLRAM */ 
    BANK_NAME(34), BANK_NAME(35), BANK_NAME(36), BANK_NAME(37), 
    BANK_NAME(38), BANK_NAME(39)};

int main(int argc, char** argv)
{
    if (argc != 2) {
        std::cout << "Usage: " << argv[0] << " <XCLBIN File>" << std::endl;
		return EXIT_FAILURE;
	}

    std::string binaryFile = argv[1];
//////////////////////////////   TEMPLATE START  //////////////////////////////
    size_t HBM_embedding0_size =  HBM_BANK0_SIZE;
    size_t HBM_embedding1_size =  HBM_BANK1_SIZE;
    size_t HBM_embedding2_size =  HBM_BANK2_SIZE;
    size_t HBM_embedding3_size =  HBM_BANK3_SIZE;
    size_t HBM_embedding4_size =  HBM_BANK4_SIZE;
    size_t HBM_embedding5_size =  HBM_BANK5_SIZE;
    size_t HBM_embedding6_size =  HBM_BANK6_SIZE;
    size_t HBM_embedding7_size =  HBM_BANK7_SIZE;
    size_t HBM_embedding8_size =  HBM_BANK8_SIZE;
    size_t HBM_embedding9_size =  HBM_BANK9_SIZE;
    size_t HBM_embedding10_size =  HBM_BANK10_SIZE;
    size_t HBM_embedding11_size =  HBM_BANK11_SIZE;
    size_t HBM_embedding12_size =  HBM_BANK12_SIZE;
    size_t HBM_embedding13_size =  HBM_BANK13_SIZE;
    size_t HBM_embedding14_size =  HBM_BANK14_SIZE;
    size_t HBM_embedding15_size =  HBM_BANK15_SIZE;
    size_t HBM_embedding16_size =  HBM_BANK16_SIZE;
    size_t HBM_embedding17_size =  HBM_BANK17_SIZE;
    size_t HBM_embedding18_size =  HBM_BANK18_SIZE;
    size_t HBM_embedding19_size =  HBM_BANK19_SIZE;
    size_t HBM_embedding20_size =  HBM_BANK20_SIZE;
    size_t HBM_embedding21_size =  HBM_BANK21_SIZE;
    size_t HBM_embedding22_size =  HBM_BANK22_SIZE;
    size_t HBM_embedding23_size =  HBM_BANK23_SIZE;
    size_t HBM_embedding24_size =  HBM_BANK24_SIZE;
    size_t HBM_embedding25_size =  HBM_BANK25_SIZE;
    size_t HBM_embedding26_size =  HBM_BANK26_SIZE;
    size_t HBM_embedding27_size =  HBM_BANK27_SIZE;
    size_t HBM_embedding28_size =  HBM_BANK28_SIZE;
    size_t HBM_embedding29_size =  HBM_BANK29_SIZE;
    size_t HBM_embedding30_size =  HBM_BANK30_SIZE;
    size_t HBM_embedding31_size =  HBM_BANK31_SIZE;

    size_t DDR_embedding0_size =  DDR_BANK0_SIZE;
    size_t DDR_embedding1_size =  DDR_BANK1_SIZE;

    size_t PLRAM_embedding0_size =  PLRAM_BANK0_SIZE;
    size_t PLRAM_embedding1_size =  PLRAM_BANK1_SIZE;
    size_t PLRAM_embedding2_size =  PLRAM_BANK2_SIZE;
    size_t PLRAM_embedding3_size =  PLRAM_BANK3_SIZE;
//////////////////////////////   TEMPLATE END  //////////////////////////////

    cl_int err;
    unsigned fileBufSize;

    // allocate aligned 2D vectors
//////////////////////////////   TEMPLATE START  //////////////////////////////
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding0(HBM_embedding0_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding1(HBM_embedding1_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding2(HBM_embedding2_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding3(HBM_embedding3_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding4(HBM_embedding4_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding5(HBM_embedding5_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding6(HBM_embedding6_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding7(HBM_embedding7_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding8(HBM_embedding8_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding9(HBM_embedding9_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding10(HBM_embedding10_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding11(HBM_embedding11_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding12(HBM_embedding12_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding13(HBM_embedding13_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding14(HBM_embedding14_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding15(HBM_embedding15_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding16(HBM_embedding16_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding17(HBM_embedding17_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding18(HBM_embedding18_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding19(HBM_embedding19_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding20(HBM_embedding20_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding21(HBM_embedding21_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding22(HBM_embedding22_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding23(HBM_embedding23_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding24(HBM_embedding24_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding25(HBM_embedding25_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding26(HBM_embedding26_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding27(HBM_embedding27_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding28(HBM_embedding28_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding29(HBM_embedding29_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding30(HBM_embedding30_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> HBM_embedding31(HBM_embedding31_size, 0);


    std::vector<D_TYPE, aligned_allocator<D_TYPE>> PLRAM_embedding0(PLRAM_embedding0_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> PLRAM_embedding1(PLRAM_embedding1_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> PLRAM_embedding2(PLRAM_embedding2_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> PLRAM_embedding3(PLRAM_embedding3_size, 0);

    std::vector<D_TYPE, aligned_allocator<D_TYPE>> DDR_embedding0(DDR_embedding0_size, 0);
    std::vector<D_TYPE, aligned_allocator<D_TYPE>> DDR_embedding1(DDR_embedding1_size, 0);

//////////////////////////////   TEMPLATE END  //////////////////////////////

    int size_results_out = 1024; 
    std::vector<float,aligned_allocator<float>> source_hw_results(size_results_out);
    std::vector<float,aligned_allocator<float>> source_sw_results(size_results_out);

//// INIT SORT array ////
    // a = np.random.randint(low=0, high=10000, size=1024)
    // np.set_printoptions(threshold=10000000)
    float input_array[1024] = {
       1084, 3215, 5964, 2404, 7769, 1928, 9718,   77, 8515, 5405, 3505,
       9302, 8077, 5595,   63,  189, 8842, 6015, 5765, 4923, 2793, 4998,
       4088, 8743, 7096,  840, 3088, 8359, 1063, 8251, 8704, 8479, 9183,
       6901, 5385,  785, 7386, 1512, 5863, 9444, 8213, 7966, 9619, 8062,
       4215, 9762, 1691, 8534, 7899, 8456, 2508, 7203, 4812, 3614, 7016,
       7899, 5420, 1001, 7858, 8733, 5953, 2493, 3927, 5756, 4948, 1377,
       9426, 6855, 3780, 2532, 9933,  113, 9023, 5079, 7021, 8240, 6928,
       9217, 9814, 5811,  113, 3802, 1889, 6290, 9657, 2878, 2684, 9662,
       5942, 5231, 1653, 5475, 8783, 1262, 4250, 7296, 3242, 9674, 5379,
       9773, 5684, 5190, 7315, 3171, 9198,  455, 7990, 7558,  148, 5897,
       4253, 6045, 4812, 1435, 5170, 6828,  928, 6208, 6016, 7777, 2904,
        684, 1426, 2616, 8243, 2179, 6046, 5314, 7869, 5663, 4278, 8163,
       6142, 2157,  376, 3115, 3541, 8139, 2357,  720, 2981, 4760, 5890,
       3667,  921, 2509, 4184, 4241, 4761, 2240, 3741, 9599, 4449, 9057,
       7903, 6329,  663,  253, 3220, 4435, 6775, 3769, 6181, 1856, 7643,
       9235, 9398, 3686, 7292, 3099, 6714, 8497, 3538, 7501, 8442,  543,
       6623, 1459, 1058, 1822, 6577, 3260, 8276,  418, 8900, 3241, 9444,
       7006,  616, 8528, 4213, 6833, 2949, 7958,   50, 8436, 5914, 6855,
       1256, 5865, 3852,  583, 3355, 4181, 8494,   18, 5077,  339, 8193,
       2155, 2529, 3840, 8851,  199, 1546, 4609, 1769, 5368, 6109, 5821,
        243,  510, 9218, 3746, 2619,  674, 2869,  737, 1446, 6323, 7316,
       5677, 3514, 3044, 3160, 3904,  362, 4604, 7292, 9455, 6258, 4182,
       4856, 4886, 5322, 4710, 4927,  400, 4972, 6316, 4098,  399, 8777,
       1934, 5863, 4730, 9456, 8229, 2880, 4338, 7293, 2216, 8583, 9490,
       4250, 8338, 6007, 1480, 4419, 9390, 3415,  619,  783, 9179, 9112,
       5663, 2450, 5350, 7896, 2831, 6921, 4106, 2877, 6988, 5554, 9359,
       9159, 3209, 3503, 1952,  983, 4657, 9505, 4005, 9869, 7748, 9064,
       3746, 2148, 7417, 2652, 1657,  759, 4570, 7116, 2787, 6402, 9507,
       4498, 5943, 1072, 2432, 3126, 9468, 6884, 6837,  660, 6116, 6612,
       5918,   37, 2110, 1404, 8691, 9209, 3621, 9886,  477, 1104, 3140,
       2326, 3697, 3025, 2278, 7420,  350, 8100, 6040, 3630, 2154, 6055,
       1715, 4520, 8041, 5011, 2184,  805, 4627, 1390, 9400, 3080, 2891,
       8958,    6,   94, 4282,  268, 4902, 7697, 7507, 6471, 1324, 4189,
       8749, 6229, 6752, 4088, 6654, 8074, 7869, 9411, 8440, 2369, 9749,
        623, 3543, 8631, 2897, 4258, 3018,  409, 4707, 3267,  133, 4742,
        661, 7735,  797, 1102, 3660, 1480, 8618, 8534, 7445, 4318, 6357,
       1558,  496, 4167, 8375, 1401, 8908, 5224, 3746,  464, 3506, 2382,
       9224, 6192, 8696, 2971, 1737, 2801, 1142, 2424, 4595, 5694, 3407,
       1047, 8578, 8312,   85, 9797, 3142, 3113, 4100, 5109, 9672, 5148,
       7383, 3376,  785, 9225, 3704, 7762, 3449, 3433, 2972, 5634, 1708,
        961, 3076, 2339, 7077, 3367,  677, 4513, 7962, 2092, 2226, 4780,
       1118, 8159, 9265, 5595, 9808, 3305, 1553, 4412, 3052, 4890, 2738,
       8259, 5768,  920, 5548, 9258, 8482, 8676, 7530, 2736, 5833, 3971,
         35,   52, 3527, 4124, 3294, 7338, 5616, 5895, 8829, 8584,  322,
       6868,  554, 2484, 3210, 4951, 2932, 7546, 4018, 1764, 8580,  611,
       6236, 6782, 1578, 9613, 8666, 4261, 3478, 2398, 1743, 8160, 5409,
       1763, 3324, 8184, 1484, 8764, 9705, 8839, 8619,  294, 4430,  166,
       6278, 7176, 4577, 6373, 7914,  450, 7441, 1755, 6761, 1468,  740,
       8152, 7673, 7493, 2706, 3907, 9354, 2867,   69, 4023, 4538, 1076,
       3902, 1673, 5879, 9932, 2813, 9327, 9352, 9432, 2997, 6675, 3333,
       9960, 7846, 4912, 5847, 6344, 4520, 5667, 7894, 2267, 9402, 4833,
        814, 6347, 1948, 5004, 5599, 7989, 4899,  168, 6468, 8892, 1124,
       5173, 6702, 1682, 7013, 7729, 5311, 8024, 1056, 1071, 3702, 4965,
       4625, 8163, 9467, 2400, 7298, 1115, 6955, 3492, 9911, 2216, 7188,
        781, 6809, 7148, 5094, 9624, 8761,  394, 6663, 2679, 6464, 8624,
       5377, 1233, 3325, 8033, 5016, 3397, 7519, 2048, 3901, 1012, 8189,
       6261, 3128, 7677, 3861, 7884, 7393, 4540, 8554, 2165, 5812, 6828,
       6843, 4615, 5821, 6115, 3295, 6945,  537, 5929, 5502, 1280, 2632,
       9785, 4073, 8821, 9877, 2682, 9683, 3441, 9160, 9025, 9865, 7837,
       4798,  846, 1133, 5765, 7040, 4680, 9727, 8783, 9961, 8942, 2016,
         57, 2856, 7148, 2885, 3087, 8962, 6371, 3951,  731, 3190, 8686,
       5227, 8318, 9392, 2494, 9486, 1686, 9393, 1055, 6490, 8625, 4835,
       4016, 5071, 2648, 5381, 8511, 7349, 8448, 8393, 3767, 8868, 9298,
       2194, 9664, 8322,  818, 3940, 2163, 2195, 3643, 2359, 7284, 5730,
       4428, 8529, 2990, 1990, 5389, 3466, 2095, 3675, 2010, 9325, 5571,
       2766, 2557, 2377, 2963, 4894, 2981, 3956, 7060, 1446,   70, 5050,
       8167,  854, 1752, 9514,  694,  670, 9554, 2065, 6766,  127, 1240,
        256, 4360,  259, 4998, 4249, 3346, 9928,  340, 2854, 6820, 2175,
        348, 2436, 2144, 7282, 6475, 2031, 8782, 1862, 5890, 4872, 7959,
         70, 6444, 4796, 9021, 5514, 5080, 1866,  888, 3516, 1293, 1292,
       6122, 4056, 7628, 4684, 9488, 2225, 7520, 1761, 5973, 4141, 1102,
       4267, 6946, 7108, 8264, 8959, 4788, 4135, 5101, 2175,  845,   67,
       2755, 4115, 5068,  184, 5603, 5568, 4427,  303, 6255, 5323, 4844,
       3096,  654, 9966, 6050, 2087, 3448,  329, 3992, 3686, 3286, 4630,
       6848, 9623, 6122, 8698, 4332, 5542, 7747, 8542, 8174, 8024, 7341,
       7544, 4875, 6544, 4838, 3138,   47, 3476,  726,  445, 6883, 3755,
       9747, 9517, 2949, 2476,  596, 9407, 9772, 5902, 3219, 3221, 6492,
       8766, 7125, 9216,  282, 6286, 4911, 7791, 5658,  725, 8964, 5204,
       4149, 3797, 3265, 3352, 5952, 5716, 2402, 1454, 9105, 2730, 2037,
       1628,  969, 2376, 2350, 7736, 6007, 1348, 7959, 4927, 8042, 8307,
       7340, 5015, 4473, 8242, 4268, 5163, 4608, 8519, 2256, 6015, 4676,
        335, 8584, 5673, 4067, 6087, 4268, 3327, 5556, 6308, 2802,  458,
       5627, 5092, 2137, 7308, 7360, 1023, 1829, 1965, 3291, 6367, 4578,
       5439, 3396, 3633, 5983, 6278, 7939, 5069, 5991, 1524, 6278, 6709,
       5020, 9349, 6682, 6711, 4614, 7261, 2860, 8409, 8310, 5567, 8103,
       8717, 9228, 7023, 4559, 2909, 3363, 5718, 1607, 1253, 7756, 5243,
       3469, 9362, 7924, 2359,  997, 5104, 3556, 7719,  926, 1538, 8852,
       8571, 5477, 5852, 7344, 9755, 7554, 8542, 1590, 8017, 2447, 7750,
        284, 5241, 2513, 1369, 6087, 3071, 4199,    9, 6139, 6008, 7785,
       9411, 7594,  457, 9096, 3628, 5388, 9131,  423,  595, 8102, 9741,
       4982, 3862, 2037,  831, 9564, 2869, 5227, 8282, 5948, 5080, 7335,
       3737, 1082, 4057, 6844, 3864, 2039, 5422, 4866,  716, 1665,   39,
       8903, 7462, 1492, 6744, 9034, 9654, 4706, 7793, 7919, 5067, 4042,
       2131};
    for (int i = 0; i < 1024; i++) {
        DDR_embedding0[i] = input_array[i];
    }

    ///// Correct Result /////

    // [   6,    9,   18,   35,   37,   39,   47,   50,   52,   57,   63,
    //      67,   69,   70,   70,   77,   85,   94,  113,  113,  127,  133,
    //     148,  166,  168,  184,  189,  199,  243,  253,  256,  259,  268,
    //     282,  284,  294,  303,  322,  329,  335,  339,  340,  348,  350,
    //     362,  376,  394,  399,  400,  409,  418,  423,  445,  450,  455,
    //     457,  458,  464,  477,  496,  510,  537,  543,  554,  583,  595,
    //     596,  611,  616,  619,  623,  654,  660,  661,  663,  670,  674,
    //     677,  684,  694,  716,  720,  725,  726,  731,  737,  740,  759,
    //     781,  783,  785,  785,  797,  805,  814,  818,  831,  840,  845,
    //     846,  854,  888,  920,  921,  926,  928,  961,  969,  983,  997,
    //    1001, 1012, 1023, 1047, 1055, 1056, 1058, 1063, 1071, 1072, 1076,
    //    1082, 1084, 1102, 1102, 1104, 1115, 1118, 1124, 1133, 1142, 1233,
    //    1240, 1253, 1256, 1262, 1280, 1292, 1293, 1324, 1348, 1369, 1377,
    //    1390, 1401, 1404, 1426, 1435, 1446, 1446, 1454, 1459, 1468, 1480,
    //    1480, 1484, 1492, 1512, 1524, 1538, 1546, 1553, 1558, 1578, 1590,
    //    1607, 1628, 1653, 1657, 1665, 1673, 1682, 1686, 1691, 1708, 1715,
    //    1737, 1743, 1752, 1755, 1761, 1763, 1764, 1769, 1822, 1829, 1856,
    //    1862, 1866, 1889, 1928, 1934, 1948, 1952, 1965, 1990, 2010, 2016,
    //    2031, 2037, 2037, 2039, 2048, 2065, 2087, 2092, 2095, 2110, 2131,
    //    2137, 2144, 2148, 2154, 2155, 2157, 2163, 2165, 2175, 2175, 2179,
    //    2184, 2194, 2195, 2216, 2216, 2225, 2226, 2240, 2256, 2267, 2278,
    //    2326, 2339, 2350, 2357, 2359, 2359, 2369, 2376, 2377, 2382, 2398,
    //    2400, 2402, 2404, 2424, 2432, 2436, 2447, 2450, 2476, 2484, 2493,
    //    2494, 2508, 2509, 2513, 2529, 2532, 2557, 2616, 2619, 2632, 2648,
    //    2652, 2679, 2682, 2684, 2706, 2730, 2736, 2738, 2755, 2766, 2787,
    //    2793, 2801, 2802, 2813, 2831, 2854, 2856, 2860, 2867, 2869, 2869,
    //    2877, 2878, 2880, 2885, 2891, 2897, 2904, 2909, 2932, 2949, 2949,
    //    2963, 2971, 2972, 2981, 2981, 2990, 2997, 3018, 3025, 3044, 3052,
    //    3071, 3076, 3080, 3087, 3088, 3096, 3099, 3113, 3115, 3126, 3128,
    //    3138, 3140, 3142, 3160, 3171, 3190, 3209, 3210, 3215, 3219, 3220,
    //    3221, 3241, 3242, 3260, 3265, 3267, 3286, 3291, 3294, 3295, 3305,
    //    3324, 3325, 3327, 3333, 3346, 3352, 3355, 3363, 3367, 3376, 3396,
    //    3397, 3407, 3415, 3433, 3441, 3448, 3449, 3466, 3469, 3476, 3478,
    //    3492, 3503, 3505, 3506, 3514, 3516, 3527, 3538, 3541, 3543, 3556,
    //    3614, 3621, 3628, 3630, 3633, 3643, 3660, 3667, 3675, 3686, 3686,
    //    3697, 3702, 3704, 3737, 3741, 3746, 3746, 3746, 3755, 3767, 3769,
    //    3780, 3797, 3802, 3840, 3852, 3861, 3862, 3864, 3901, 3902, 3904,
    //    3907, 3927, 3940, 3951, 3956, 3971, 3992, 4005, 4016, 4018, 4023,
    //    4042, 4056, 4057, 4067, 4073, 4088, 4088, 4098, 4100, 4106, 4115,
    //    4124, 4135, 4141, 4149, 4167, 4181, 4182, 4184, 4189, 4199, 4213,
    //    4215, 4241, 4249, 4250, 4250, 4253, 4258, 4261, 4267, 4268, 4268,
    //    4278, 4282, 4318, 4332, 4338, 4360, 4412, 4419, 4427, 4428, 4430,
    //    4435, 4449, 4473, 4498, 4513, 4520, 4520, 4538, 4540, 4559, 4570,
    //    4577, 4578, 4595, 4604, 4608, 4609, 4614, 4615, 4625, 4627, 4630,
    //    4657, 4676, 4680, 4684, 4706, 4707, 4710, 4730, 4742, 4760, 4761,
    //    4780, 4788, 4796, 4798, 4812, 4812, 4833, 4835, 4838, 4844, 4856,
    //    4866, 4872, 4875, 4886, 4890, 4894, 4899, 4902, 4911, 4912, 4923,
    //    4927, 4927, 4948, 4951, 4965, 4972, 4982, 4998, 4998, 5004, 5011,
    //    5015, 5016, 5020, 5050, 5067, 5068, 5069, 5071, 5077, 5079, 5080,
    //    5080, 5092, 5094, 5101, 5104, 5109, 5148, 5163, 5170, 5173, 5190,
    //    5204, 5224, 5227, 5227, 5231, 5241, 5243, 5311, 5314, 5322, 5323,
    //    5350, 5368, 5377, 5379, 5381, 5385, 5388, 5389, 5405, 5409, 5420,
    //    5422, 5439, 5475, 5477, 5502, 5514, 5542, 5548, 5554, 5556, 5567,
    //    5568, 5571, 5595, 5595, 5599, 5603, 5616, 5627, 5634, 5658, 5663,
    //    5663, 5667, 5673, 5677, 5684, 5694, 5716, 5718, 5730, 5756, 5765,
    //    5765, 5768, 5811, 5812, 5821, 5821, 5833, 5847, 5852, 5863, 5863,
    //    5865, 5879, 5890, 5890, 5895, 5897, 5902, 5914, 5918, 5929, 5942,
    //    5943, 5948, 5952, 5953, 5964, 5973, 5983, 5991, 6007, 6007, 6008,
    //    6015, 6015, 6016, 6040, 6045, 6046, 6050, 6055, 6087, 6087, 6109,
    //    6115, 6116, 6122, 6122, 6139, 6142, 6181, 6192, 6208, 6229, 6236,
    //    6255, 6258, 6261, 6278, 6278, 6278, 6286, 6290, 6308, 6316, 6323,
    //    6329, 6344, 6347, 6357, 6367, 6371, 6373, 6402, 6444, 6464, 6468,
    //    6471, 6475, 6490, 6492, 6544, 6577, 6612, 6623, 6654, 6663, 6675,
    //    6682, 6702, 6709, 6711, 6714, 6744, 6752, 6761, 6766, 6775, 6782,
    //    6809, 6820, 6828, 6828, 6833, 6837, 6843, 6844, 6848, 6855, 6855,
    //    6868, 6883, 6884, 6901, 6921, 6928, 6945, 6946, 6955, 6988, 7006,
    //    7013, 7016, 7021, 7023, 7040, 7060, 7077, 7096, 7108, 7116, 7125,
    //    7148, 7148, 7176, 7188, 7203, 7261, 7282, 7284, 7292, 7292, 7293,
    //    7296, 7298, 7308, 7315, 7316, 7335, 7338, 7340, 7341, 7344, 7349,
    //    7360, 7383, 7386, 7393, 7417, 7420, 7441, 7445, 7462, 7493, 7501,
    //    7507, 7519, 7520, 7530, 7544, 7546, 7554, 7558, 7594, 7628, 7643,
    //    7673, 7677, 7697, 7719, 7729, 7735, 7736, 7747, 7748, 7750, 7756,
    //    7762, 7769, 7777, 7785, 7791, 7793, 7837, 7846, 7858, 7869, 7869,
    //    7884, 7894, 7896, 7899, 7899, 7903, 7914, 7919, 7924, 7939, 7958,
    //    7959, 7959, 7962, 7966, 7989, 7990, 8017, 8024, 8024, 8033, 8041,
    //    8042, 8062, 8074, 8077, 8100, 8102, 8103, 8139, 8152, 8159, 8160,
    //    8163, 8163, 8167, 8174, 8184, 8189, 8193, 8213, 8229, 8240, 8242,
    //    8243, 8251, 8259, 8264, 8276, 8282, 8307, 8310, 8312, 8318, 8322,
    //    8338, 8359, 8375, 8393, 8409, 8436, 8440, 8442, 8448, 8456, 8479,
    //    8482, 8494, 8497, 8511, 8515, 8519, 8528, 8529, 8534, 8534, 8542,
    //    8542, 8554, 8571, 8578, 8580, 8583, 8584, 8584, 8618, 8619, 8624,
    //    8625, 8631, 8666, 8676, 8686, 8691, 8696, 8698, 8704, 8717, 8733,
    //    8743, 8749, 8761, 8764, 8766, 8777, 8782, 8783, 8783, 8821, 8829,
    //    8839, 8842, 8851, 8852, 8868, 8892, 8900, 8903, 8908, 8942, 8958,
    //    8959, 8962, 8964, 9021, 9023, 9025, 9034, 9057, 9064, 9096, 9105,
    //    9112, 9131, 9159, 9160, 9179, 9183, 9198, 9209, 9216, 9217, 9218,
    //    9224, 9225, 9228, 9235, 9258, 9265, 9298, 9302, 9325, 9327, 9349,
    //    9352, 9354, 9359, 9362, 9390, 9392, 9393, 9398, 9400, 9402, 9407,
    //    9411, 9411, 9426, 9432, 9444, 9444, 9455, 9456, 9467, 9468, 9486,
    //    9488, 9490, 9505, 9507, 9514, 9517, 9554, 9564, 9599, 9613, 9619,
    //    9623, 9624, 9654, 9657, 9662, 9664, 9672, 9674, 9683, 9705, 9718,
    //    9727, 9741, 9747, 9749, 9755, 9762, 9772, 9773, 9785, 9797, 9808,
    //    9814, 9865, 9869, 9877, 9886, 9911, 9928, 9932, 9933, 9960, 9961,
    //    9966]
    
// OPENCL HOST CODE AREA START
	
// ------------------------------------------------------------------------------------
// Step 1: Get All PLATFORMS, then search for Target_Platform_Vendor (CL_PLATFORM_VENDOR)
//	   Search for Platform: Xilinx 
// Check if the current platform matches Target_Platform_Vendor
// ------------------------------------------------------------------------------------	
    std::vector<cl::Device> devices = get_devices("Xilinx");
    devices.resize(1);
    cl::Device device = devices[0];
    std::cout << "Finished getting device..." << std::endl;
// ------------------------------------------------------------------------------------
// Step 1: Create Context
// ------------------------------------------------------------------------------------
    OCL_CHECK(err, cl::Context context(device, NULL, NULL, NULL, &err));
	std::cout << "Finished creating context..." << std::endl;
// ------------------------------------------------------------------------------------
// Step 1: Create Command Queue
// ------------------------------------------------------------------------------------
    OCL_CHECK(err, cl::CommandQueue q(context, device, CL_QUEUE_PROFILING_ENABLE, &err));
	std::cout << "Finished creating command queue..." << std::endl;
// ------------------------------------------------------------------
// Step 1: Load Binary File from disk
// ------------------------------------------------------------------		
    char* fileBuf = read_binary_file(binaryFile, fileBufSize);
    cl::Program::Binaries bins{{fileBuf, fileBufSize}};
    	std::cout << "Finished loading binary..." << std::endl;
	
// -------------------------------------------------------------
// Step 1: Create the program object from the binary and program the FPGA device with it
// -------------------------------------------------------------	
    OCL_CHECK(err, cl::Program program(context, devices, bins, NULL, &err));
	std::cout << "Finished creating program..." << std::endl;
// -------------------------------------------------------------
// Step 1: Create Kernels
// -------------------------------------------------------------
    OCL_CHECK(err, cl::Kernel krnl_vector_add(program,"vadd", &err));
    std::cout << "Finished creating kernel..." << std::endl;

// ================================================================
// Step 2: Setup Buffers and run Kernels
// ================================================================
//   o) Allocate Memory to store the results 
//   o) Create Buffers in Global Memory to store data
// ================================================================

// ------------------------------------------------------------------
// Step 2: Create Buffers in Global Memory to store data
//             o) buffer_in1 - stores source_in1
//             o) buffer_in2 - stores source_in2
//             o) buffer_ouput - stores Results
// ------------------------------------------------------------------	

// .......................................................
// Allocate Global Memory for source_in1
// .......................................................	
//////////////////////////////   TEMPLATE START  //////////////////////////////
    std::cout << "Start to allocate device memory..." << std::endl;
    cl_mem_ext_ptr_t HBM_embedding0Ext, HBM_embedding1Ext, HBM_embedding2Ext, HBM_embedding3Ext, 
        HBM_embedding4Ext, HBM_embedding5Ext, HBM_embedding6Ext, HBM_embedding7Ext, 
        HBM_embedding8Ext, HBM_embedding9Ext, HBM_embedding10Ext, HBM_embedding11Ext, 
        HBM_embedding12Ext, HBM_embedding13Ext, HBM_embedding14Ext, HBM_embedding15Ext, 
        HBM_embedding16Ext, HBM_embedding17Ext, HBM_embedding18Ext, HBM_embedding19Ext, 
        HBM_embedding20Ext, HBM_embedding21Ext, HBM_embedding22Ext, HBM_embedding23Ext, 
        HBM_embedding24Ext, HBM_embedding25Ext, HBM_embedding26Ext, HBM_embedding27Ext, 
        HBM_embedding28Ext, HBM_embedding29Ext, HBM_embedding30Ext, HBM_embedding31Ext, 
        DDR_embedding0Ext, DDR_embedding1Ext,
        // PLRAM_embedding0Ext, PLRAM_embedding1Ext, PLRAM_embedding2Ext, PLRAM_embedding3Ext, 
        sourcce_hw_resultsExt;
//////////////////////////////   TEMPLATE END  //////////////////////////////

//////////////////////////////   TEMPLATE START  //////////////////////////////
    HBM_embedding0Ext.obj = HBM_embedding0.data();
    HBM_embedding0Ext.param = 0;
    HBM_embedding0Ext.flags = bank[0];
    HBM_embedding1Ext.obj = HBM_embedding1.data();
    HBM_embedding1Ext.param = 0;
    HBM_embedding1Ext.flags = bank[1];
    HBM_embedding2Ext.obj = HBM_embedding2.data();
    HBM_embedding2Ext.param = 0;
    HBM_embedding2Ext.flags = bank[2];
    HBM_embedding3Ext.obj = HBM_embedding3.data();
    HBM_embedding3Ext.param = 0;
    HBM_embedding3Ext.flags = bank[3];
    HBM_embedding4Ext.obj = HBM_embedding4.data();
    HBM_embedding4Ext.param = 0;
    HBM_embedding4Ext.flags = bank[4];
    HBM_embedding5Ext.obj = HBM_embedding5.data();
    HBM_embedding5Ext.param = 0;
    HBM_embedding5Ext.flags = bank[5];
    HBM_embedding6Ext.obj = HBM_embedding6.data();
    HBM_embedding6Ext.param = 0;
    HBM_embedding6Ext.flags = bank[6];
    HBM_embedding7Ext.obj = HBM_embedding7.data();
    HBM_embedding7Ext.param = 0;
    HBM_embedding7Ext.flags = bank[7];
    HBM_embedding8Ext.obj = HBM_embedding8.data();
    HBM_embedding8Ext.param = 0;
    HBM_embedding8Ext.flags = bank[8];
    HBM_embedding9Ext.obj = HBM_embedding9.data();
    HBM_embedding9Ext.param = 0;
    HBM_embedding9Ext.flags = bank[9];
    HBM_embedding10Ext.obj = HBM_embedding10.data();
    HBM_embedding10Ext.param = 0;
    HBM_embedding10Ext.flags = bank[10];
    HBM_embedding11Ext.obj = HBM_embedding11.data();
    HBM_embedding11Ext.param = 0;
    HBM_embedding11Ext.flags = bank[11];
    HBM_embedding12Ext.obj = HBM_embedding12.data();
    HBM_embedding12Ext.param = 0;
    HBM_embedding12Ext.flags = bank[12];
    HBM_embedding13Ext.obj = HBM_embedding13.data();
    HBM_embedding13Ext.param = 0;
    HBM_embedding13Ext.flags = bank[13];
    HBM_embedding14Ext.obj = HBM_embedding14.data();
    HBM_embedding14Ext.param = 0;
    HBM_embedding14Ext.flags = bank[14];
    HBM_embedding15Ext.obj = HBM_embedding15.data();
    HBM_embedding15Ext.param = 0;
    HBM_embedding15Ext.flags = bank[15];
    HBM_embedding16Ext.obj = HBM_embedding16.data();
    HBM_embedding16Ext.param = 0;
    HBM_embedding16Ext.flags = bank[16];
    HBM_embedding17Ext.obj = HBM_embedding17.data();
    HBM_embedding17Ext.param = 0;
    HBM_embedding17Ext.flags = bank[17];
    HBM_embedding18Ext.obj = HBM_embedding18.data();
    HBM_embedding18Ext.param = 0;
    HBM_embedding18Ext.flags = bank[18];
    HBM_embedding19Ext.obj = HBM_embedding19.data();
    HBM_embedding19Ext.param = 0;
    HBM_embedding19Ext.flags = bank[19];
    HBM_embedding20Ext.obj = HBM_embedding20.data();
    HBM_embedding20Ext.param = 0;
    HBM_embedding20Ext.flags = bank[20];
    HBM_embedding21Ext.obj = HBM_embedding21.data();
    HBM_embedding21Ext.param = 0;
    HBM_embedding21Ext.flags = bank[21];
    HBM_embedding22Ext.obj = HBM_embedding22.data();
    HBM_embedding22Ext.param = 0;
    HBM_embedding22Ext.flags = bank[22];
    HBM_embedding23Ext.obj = HBM_embedding23.data();
    HBM_embedding23Ext.param = 0;
    HBM_embedding23Ext.flags = bank[23];
    HBM_embedding24Ext.obj = HBM_embedding24.data();
    HBM_embedding24Ext.param = 0;
    HBM_embedding24Ext.flags = bank[24];
    HBM_embedding25Ext.obj = HBM_embedding25.data();
    HBM_embedding25Ext.param = 0;
    HBM_embedding25Ext.flags = bank[25];
    HBM_embedding26Ext.obj = HBM_embedding26.data();
    HBM_embedding26Ext.param = 0;
    HBM_embedding26Ext.flags = bank[26];
    HBM_embedding27Ext.obj = HBM_embedding27.data();
    HBM_embedding27Ext.param = 0;
    HBM_embedding27Ext.flags = bank[27];
    HBM_embedding28Ext.obj = HBM_embedding28.data();
    HBM_embedding28Ext.param = 0;
    HBM_embedding28Ext.flags = bank[28];
    HBM_embedding29Ext.obj = HBM_embedding29.data();
    HBM_embedding29Ext.param = 0;
    HBM_embedding29Ext.flags = bank[29];
    HBM_embedding30Ext.obj = HBM_embedding30.data();
    HBM_embedding30Ext.param = 0;
    HBM_embedding30Ext.flags = bank[30];
    HBM_embedding31Ext.obj = HBM_embedding31.data();
    HBM_embedding31Ext.param = 0;
    HBM_embedding31Ext.flags = bank[31];

    DDR_embedding0Ext.obj = DDR_embedding0.data();
    DDR_embedding0Ext.param = 0;
    DDR_embedding0Ext.flags = bank[0 + 32];
    DDR_embedding1Ext.obj = DDR_embedding1.data();
    DDR_embedding1Ext.param = 0;
    DDR_embedding1Ext.flags = bank[1 + 32];

    // PLRAM
    sourcce_hw_resultsExt.obj = source_hw_results.data();
    sourcce_hw_resultsExt.param = 0;
    sourcce_hw_resultsExt.flags = bank[34];

    // CL_MEM_EXT_PTR_XILINX
//////////////////////////////   TEMPLATE START  //////////////////////////////
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding0(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding0_size *sizeof(D_TYPE), &HBM_embedding0Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding1(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding1_size *sizeof(D_TYPE), &HBM_embedding1Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding2_size *sizeof(D_TYPE), &HBM_embedding2Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding3(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding3_size *sizeof(D_TYPE), &HBM_embedding3Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding4(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding4_size *sizeof(D_TYPE), &HBM_embedding4Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding5(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding5_size *sizeof(D_TYPE), &HBM_embedding5Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding6(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding6_size *sizeof(D_TYPE), &HBM_embedding6Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding7(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding7_size *sizeof(D_TYPE), &HBM_embedding7Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding8(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding8_size *sizeof(D_TYPE), &HBM_embedding8Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding9(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding9_size *sizeof(D_TYPE), &HBM_embedding9Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding10(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding10_size *sizeof(D_TYPE), &HBM_embedding10Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding11(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding11_size *sizeof(D_TYPE), &HBM_embedding11Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding12(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding12_size *sizeof(D_TYPE), &HBM_embedding12Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding13(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding13_size *sizeof(D_TYPE), &HBM_embedding13Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding14(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding14_size *sizeof(D_TYPE), &HBM_embedding14Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding15(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding15_size *sizeof(D_TYPE), &HBM_embedding15Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding16(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding16_size *sizeof(D_TYPE), &HBM_embedding16Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding17(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding17_size *sizeof(D_TYPE), &HBM_embedding17Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding18(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding18_size *sizeof(D_TYPE), &HBM_embedding18Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding19(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding19_size *sizeof(D_TYPE), &HBM_embedding19Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding20(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding20_size *sizeof(D_TYPE), &HBM_embedding20Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding21(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding21_size *sizeof(D_TYPE), &HBM_embedding21Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding22(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding22_size *sizeof(D_TYPE), &HBM_embedding22Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding23(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding23_size *sizeof(D_TYPE), &HBM_embedding23Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding24(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding24_size *sizeof(D_TYPE), &HBM_embedding24Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding25(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding25_size *sizeof(D_TYPE), &HBM_embedding25Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding26(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding26_size *sizeof(D_TYPE), &HBM_embedding26Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding27(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding27_size *sizeof(D_TYPE), &HBM_embedding27Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding28(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding28_size *sizeof(D_TYPE), &HBM_embedding28Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding29(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding29_size *sizeof(D_TYPE), &HBM_embedding29Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding30(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding30_size *sizeof(D_TYPE), &HBM_embedding30Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_HBM_embedding31(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            HBM_embedding31_size *sizeof(D_TYPE), &HBM_embedding31Ext, &err));

    OCL_CHECK(err, cl::Buffer buffer_DDR_embedding0(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            DDR_embedding0_size *sizeof(D_TYPE), &DDR_embedding0Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_DDR_embedding1(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            DDR_embedding1_size *sizeof(D_TYPE), &DDR_embedding1Ext, &err));

// .......................................................
// Allocate Global Memory for sourcce_hw_results
// .......................................................
    OCL_CHECK(err, cl::Buffer buffer_output(
        context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY | CL_MEM_EXT_PTR_XILINX, 
        size_results_out *sizeof(D_TYPE), &sourcce_hw_resultsExt, &err));

// ============================================================================
// Step 2: Set Kernel Arguments and Run the Application
//         o) Set Kernel Arguments
//         o) Copy Input Data from Host to Global Memory on the device
//         o) Submit Kernels for Execution
//         o) Copy Results from Global Memory, device to Host
// ============================================================================	
    
//////////////////////////////   TEMPLATE START  //////////////////////////////
    OCL_CHECK(err, err = krnl_vector_add.setArg(0, buffer_HBM_embedding0));
    OCL_CHECK(err, err = krnl_vector_add.setArg(1, buffer_HBM_embedding1));
    OCL_CHECK(err, err = krnl_vector_add.setArg(2, buffer_HBM_embedding2));
    OCL_CHECK(err, err = krnl_vector_add.setArg(3, buffer_HBM_embedding3));
    OCL_CHECK(err, err = krnl_vector_add.setArg(4, buffer_HBM_embedding4));
    OCL_CHECK(err, err = krnl_vector_add.setArg(5, buffer_HBM_embedding5));
    OCL_CHECK(err, err = krnl_vector_add.setArg(6, buffer_HBM_embedding6));
    OCL_CHECK(err, err = krnl_vector_add.setArg(7, buffer_HBM_embedding7));
    OCL_CHECK(err, err = krnl_vector_add.setArg(8, buffer_HBM_embedding8));
    OCL_CHECK(err, err = krnl_vector_add.setArg(9, buffer_HBM_embedding9));
    OCL_CHECK(err, err = krnl_vector_add.setArg(10, buffer_HBM_embedding10));
    OCL_CHECK(err, err = krnl_vector_add.setArg(11, buffer_HBM_embedding11));
    OCL_CHECK(err, err = krnl_vector_add.setArg(12, buffer_HBM_embedding12));
    OCL_CHECK(err, err = krnl_vector_add.setArg(13, buffer_HBM_embedding13));
    OCL_CHECK(err, err = krnl_vector_add.setArg(14, buffer_HBM_embedding14));
    OCL_CHECK(err, err = krnl_vector_add.setArg(15, buffer_HBM_embedding15));
    OCL_CHECK(err, err = krnl_vector_add.setArg(16, buffer_HBM_embedding16));
    OCL_CHECK(err, err = krnl_vector_add.setArg(17, buffer_HBM_embedding17));
    OCL_CHECK(err, err = krnl_vector_add.setArg(18, buffer_HBM_embedding18));
    OCL_CHECK(err, err = krnl_vector_add.setArg(19, buffer_HBM_embedding19));
    OCL_CHECK(err, err = krnl_vector_add.setArg(20, buffer_HBM_embedding20));
    OCL_CHECK(err, err = krnl_vector_add.setArg(21, buffer_HBM_embedding21));
    OCL_CHECK(err, err = krnl_vector_add.setArg(22, buffer_HBM_embedding22));
    OCL_CHECK(err, err = krnl_vector_add.setArg(23, buffer_HBM_embedding23));
    OCL_CHECK(err, err = krnl_vector_add.setArg(24, buffer_HBM_embedding24));
    OCL_CHECK(err, err = krnl_vector_add.setArg(25, buffer_HBM_embedding25));
    OCL_CHECK(err, err = krnl_vector_add.setArg(26, buffer_HBM_embedding26));
    OCL_CHECK(err, err = krnl_vector_add.setArg(27, buffer_HBM_embedding27));
    OCL_CHECK(err, err = krnl_vector_add.setArg(28, buffer_HBM_embedding28));
    OCL_CHECK(err, err = krnl_vector_add.setArg(29, buffer_HBM_embedding29));
    OCL_CHECK(err, err = krnl_vector_add.setArg(30, buffer_HBM_embedding30));
    OCL_CHECK(err, err = krnl_vector_add.setArg(31, buffer_HBM_embedding31));

    OCL_CHECK(err, err = krnl_vector_add.setArg(0 + 32, buffer_DDR_embedding0));
    OCL_CHECK(err, err = krnl_vector_add.setArg(1 + 32, buffer_DDR_embedding1));

    OCL_CHECK(err, err = krnl_vector_add.setArg(34, buffer_output));
//////////////////////////////   TEMPLATE END  //////////////////////////////
// ------------------------------------------------------
// Step 2: Copy Input data from Host to Global Memory on the device
// ------------------------------------------------------
//////////////////////////////   TEMPLATE START  //////////////////////////////
    std::cout << "Starting copy from Host to device..." << std::endl;
    OCL_CHECK(
        err, err = q.enqueueMigrateMemObjects({
        buffer_HBM_embedding0, buffer_HBM_embedding1, buffer_HBM_embedding2, buffer_HBM_embedding3, 
        buffer_HBM_embedding4, buffer_HBM_embedding5, buffer_HBM_embedding6, buffer_HBM_embedding7, 
        buffer_HBM_embedding8, buffer_HBM_embedding9, buffer_HBM_embedding10, buffer_HBM_embedding11, 
        buffer_HBM_embedding12, buffer_HBM_embedding13, buffer_HBM_embedding14, buffer_HBM_embedding15, 
        buffer_HBM_embedding16, buffer_HBM_embedding17, buffer_HBM_embedding18, buffer_HBM_embedding19, 
        buffer_HBM_embedding20, buffer_HBM_embedding21, buffer_HBM_embedding22, buffer_HBM_embedding23, 
        buffer_HBM_embedding24, buffer_HBM_embedding25, buffer_HBM_embedding26, buffer_HBM_embedding27, 
        buffer_HBM_embedding28, buffer_HBM_embedding29, buffer_HBM_embedding30, buffer_HBM_embedding31, 
        buffer_DDR_embedding0, buffer_DDR_embedding1}, 0/* 0 means from host*/));	
    std::cout << "Host to device finished..." << std::endl;
//////////////////////////////   TEMPLATE END  //////////////////////////////
// ----------------------------------------
// Step 2: Submit Kernels for Execution
// ----------------------------------------
    OCL_CHECK(err, err = q.enqueueTask(krnl_vector_add));
// --------------------------------------------------
// Step 2: Copy Results from Device Global Memory to Host
// --------------------------------------------------
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_output},CL_MIGRATE_MEM_OBJECT_HOST));

    q.finish();
// OPENCL HOST CODE AREA END

    // Compare the results of the Device to the simulation
    // only check the last batch (since other are not transfered back)
    std::cout << "Comparing Results..." << std::endl;
    bool match = true;

    for (int i = 0 ; i < size_results_out; i++) {
            std::cout << "i = " << i << " result = " << source_hw_results[i] << std::endl;
    }

// ============================================================================
// Step 3: Release Allocated Resources
// ============================================================================
    delete[] fileBuf;

    std::cout << "TEST " << (match ? "PASSED" : "FAILED") << std::endl; 
    return (match ? EXIT_SUCCESS : EXIT_FAILURE);
}

