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

    int size_results_out = 256; 
    std::vector<float,aligned_allocator<float>> source_hw_results(size_results_out);
    std::vector<float,aligned_allocator<float>> source_sw_results(size_results_out);

//// INIT SORT array ////

    float input_array[256] = {
       -7697,  6302,  8146,  5497,  9145,  9220,  7362,  1836,  8043,
       -2242,  9788,  9542,  6670, -2552,   307,  3511,  4154,  4957,
        6871,  6794, -9809, -5051, -5328,  9276,  3487, -2494,  9710,
        7251,  7052, -9316, -7863, -1777,  6126,  5905, -4542,   908,
       -1469,  4797,  7026,  5676,  9778,  9388, -3342, -5375, -2251,
         191, -1757,  8197,  7452,    86,  1563,  7097,  1622, -6445,
        6881,  5207, -6831,  1165,  4983,  4806,  4382,   896, -8841,
       -2583,  1556,  6189,  7744,  6578, -6377, -1260, -3091,  9391,
       -2933,  4884, -4022,  1174,   263, -9811, -7338,  4906, -4196,
        4507, -7055,    25, -5406,  7299,    68,  9559, -1203,  7139,
         784,  5104, -1495,  1584,  7281,   989,  8067, -2745,  4124,
       -4071,  5973, -5237,  2796,  1391,  3618,  6859,  1377, -2426,
       -6975, -7485,  6181,  2289,  4478,   549, -7201,  1835,  -924,
        7176, -1529, -1558, -2938,  -211,  1437, -3611,  1725, -3924,
       -7409,   190, -2697,  5564,  1043,  2773, -5309, -8282, -4868,
       -4730,  5701,  8211, -4005, -4291, -4784, -4957,  -200,  8432,
        9223,  8179, -3608,  6369,  8698,  7758,  2540, -7930, -1941,
       -7929, -9022,  6642,  3118,   250, -1605, -7590, -6561,  6207,
       -4653, -1554, -7343,   165,  4086,  5995, -3948, -6835, -4146,
       -5763,  9438,  4781, -2805, -8646, -6233, -3096,  6687, -4455,
        9794, -6309,  -610, -4068, -5697,  2979,  8171, -9229, -9021,
        2874,  9262,  9590,  5093, -2392,  7830,  1637,  2089, -7344,
        6584, -1143,  -661, -1273,   879, -7734,  9754, -8943,  -967,
       -9372,  5010, -2952,  6803, -3899,  5950,  5462,  5063, -2537,
        3300, -5785, -8662, -8197, -7883, -5727, -3846, -9246, -7111,
        4922, -8809,  2724, -7191,  1547, -4320, -6338,  5675, -9751,
       -2288, -3331,  4249, -7358, -7248, -4070,  1159, -6155, -9684,
        9335,  -925,  9210,  6976, -1363, -7245,  4365, -8008, -3535,
       -6550, -9297,  -727,  6410};
        // Correct result: 
//         [-9811, -9809, -9751, -9684, -9372, -9316, -9297, -9246, -9229,
//        -9022, -9021, -8943, -8841, -8809, -8662, -8646, -8282, -8197,
//        -8008, -7930, -7929, -7883, -7863, -7734, -7697, -7590, -7485,
//        -7409, -7358, -7344, -7343, -7338, -7248, -7245, -7201, -7191,
//        -7111, -7055, -6975, -6835, -6831, -6561, -6550, -6445, -6377,
//        -6338, -6309, -6233, -6155, -5785, -5763, -5727, -5697, -5406,
//        -5375, -5328, -5309, -5237, -5051, -4957, -4868, -4784, -4730,
//        -4653, -4542, -4455, -4320, -4291, -4196, -4146, -4071, -4070,
//        -4068, -4022, -4005, -3948, -3924, -3899, -3846, -3611, -3608,
//        -3535, -3342, -3331, -3096, -3091, -2952, -2938, -2933, -2805,
//        -2745, -2697, -2583, -2552, -2537, -2494, -2426, -2392, -2288,
//        -2251, -2242, -1941, -1777, -1757, -1605, -1558, -1554, -1529,
//        -1495, -1469, -1363, -1273, -1260, -1203, -1143,  -967,  -925,
//         -924,  -727,  -661,  -610,  -211,  -200,    25,    68,    86,
//          165,   190,   191,   250,   263,   307,   549,   784,   879,
//          896,   908,   989,  1043,  1159,  1165,  1174,  1377,  1391,
//         1437,  1547,  1556,  1563,  1584,  1622,  1637,  1725,  1835,
//         1836,  2089,  2289,  2540,  2724,  2773,  2796,  2874,  2979,
//         3118,  3300,  3487,  3511,  3618,  4086,  4124,  4154,  4249,
//         4365,  4382,  4478,  4507,  4781,  4797,  4806,  4884,  4906,
//         4922,  4957,  4983,  5010,  5063,  5093,  5104,  5207,  5462,
//         5497,  5564,  5675,  5676,  5701,  5905,  5950,  5973,  5995,
//         6126,  6181,  6189,  6207,  6302,  6369,  6410,  6578,  6584,
//         6642,  6670,  6687,  6794,  6803,  6859,  6871,  6881,  6976,
//         7026,  7052,  7097,  7139,  7176,  7251,  7281,  7299,  7362,
//         7452,  7744,  7758,  7830,  8043,  8067,  8146,  8171,  8179,
//         8197,  8211,  8432,  8698,  9145,  9210,  9220,  9223,  9262,
//         9276,  9335,  9388,  9391,  9438,  9542,  9559,  9590,  9710,
//         9754,  9778,  9788,  9794]
        
    for (int i = 0; i < 256; i++) {
        HBM_embedding0[i] = input_array[i];
    }
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

    for (int i = 0 ; i < 256; i++) {
            std::cout << "i = " << i << " result = " << source_hw_results[i] << std::endl;
    }

// ============================================================================
// Step 3: Release Allocated Resources
// ============================================================================
    delete[] fileBuf;

    std::cout << "TEST " << (match ? "PASSED" : "FAILED") << std::endl; 
    return (match ? EXIT_SUCCESS : EXIT_FAILURE);
}

