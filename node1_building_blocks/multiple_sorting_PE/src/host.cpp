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

    int size_results_out = MERGE_LEN * QUERY_NUM; 
    std::vector<float,aligned_allocator<float>> source_hw_results(size_results_out);
    std::vector<float,aligned_allocator<float>> source_sw_results(size_results_out);

//// INIT SORTED arrays ////
    // MERGE_ITER = 8, the following array are 8 unsorted arrays, each with 32 elements
    // 8 * 32 = 256 elements in total
    float input_array[MERGE_LEN * MERGE_ITER] = {
       631, 794, 430,  56, 969, 953, 357, 220,  28, 572, 140, 271, 508,
       170, 378, 976, 258, 365, 178, 141, 662, 338, 896, 687, 990, 229,
       617, 155, 524, 401,  75,  75, 613,  20,  62, 344, 138, 484, 504,
       395, 911, 700, 893, 900, 468, 687, 354, 951, 917, 384, 539, 500,
       492, 948, 702, 575, 494, 208, 756, 553, 443, 455, 221,  80, 340,
       670, 955, 244, 976, 400, 124, 830, 660, 726, 644, 557, 260, 171,
       784, 217, 742, 453, 882, 521,  94, 386,  70, 187, 564, 225,  86,
       566,  67, 528, 913, 756, 636, 580, 223, 736, 347, 332, 357, 504,
       855, 227,  14, 486, 479, 922, 688,  11, 218, 209, 696, 260, 484,
       606, 628,   7, 359, 244, 838, 223, 967, 365, 536, 976, 662, 794,
       551, 812, 535,  80, 586, 140, 504, 255, 233, 877, 848,  35, 912,
       756, 154, 417, 524, 869, 443, 964, 668, 661, 825, 775, 699, 499,
       553, 140, 746, 253, 427, 542, 600, 627, 847, 896, 273, 638, 905,
       546, 474, 809, 481, 407, 197,  66, 857,  68, 798, 552,  88, 189,
       477, 988, 644, 342, 626, 708, 787, 855, 549, 584, 312, 360, 235,
       494, 857, 705,  71, 739,  95, 303, 434, 793, 495, 874, 872, 748,
       145, 878, 651, 513, 464, 541, 695, 327, 971, 164, 393, 280, 330,
       755,  73, 740,  72, 314, 220, 361, 381, 431, 569, 448, 712, 300,
       519, 636, 596, 421, 268, 355, 634, 479, 738, 829, 737,  67, 646,
         0, 368, 398, 794, 288, 933,  33,  30, 528
    };
    // the true smallest 32 numbers:
    //     0,   7,  11,  14,  20,  28,  30,  33,  35,  56,  62,  66,  67,
    //    67,  68,  70,  71,  72,  73,  75,  75,  80,  80,  86,  88,  94,
    //    95, 124, 138, 140, 140, 140
    for (int i = 0; i < MERGE_LEN * MERGE_ITER; i++) {
        DDR_embedding0[i] = input_array[i];
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
