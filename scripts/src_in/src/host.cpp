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
    size_t embedding0_size_bytes = sizeof(int) * TABLE_SIZE0 * DATA_SIZE0;
//////////////////////////////   TEMPLATE END  //////////////////////////////

    size_t result_size_bytes = sizeof(int) * BATCH_NUM * BATCH_SIZE;
    size_t idx_size_bytes = sizeof(int) * BATCH_NUM * BATCH_SIZE * TABLE_NUM;
    cl_int err;
    unsigned fileBufSize;

    // allocate aligned 2D vectors
//////////////////////////////   TEMPLATE START  //////////////////////////////
    std::vector<int, aligned_allocator<int>> embedding0(TABLE_SIZE0 * DATA_SIZE0);
//////////////////////////////   TEMPLATE END  //////////////////////////////
    std::vector<int, aligned_allocator<int>> access_idx(BATCH_NUM * BATCH_SIZE * TABLE_NUM);
    std::vector<int, aligned_allocator<int>> source_hw_results(BATCH_NUM * BATCH_SIZE, 0);
    std::vector<int, aligned_allocator<int>> source_sw_results(BATCH_NUM * BATCH_SIZE, 0);
    
    // generate embedding table
//////////////////////////////   TEMPLATE START  //////////////////////////////
    for (int i = 0 ; i < TABLE_SIZE1 ; i++) {
        for (int j = 0; j < DATA_SIZE1; j++) {
            embedding1[i * DATA_SIZE1 + j] = i * TABLE_NUM + 1;
        }
    }
//////////////////////////////   TEMPLATE END  //////////////////////////////
    // software result
    for (int i = 0 ; i < BATCH_NUM; i++) {
        
        for (int j = 0; j < BATCH_SIZE; j++) {

            int result_addr = i * BATCH_SIZE + j;
            int idx_base_addr = result_addr * TABLE_NUM;

//////////////////////////////   TEMPLATE START  //////////////////////////////
            access_idx[idx_base_addr + 1] = j;
            for (int k = 0; k < DATA_SIZE1; k++) {
                source_sw_results[result_addr] += embedding1[access_idx[idx_base_addr + 1] * DATA_SIZE1 + k];
            }
//////////////////////////////   TEMPLATE END  //////////////////////////////
        }
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

// ------------------------------------------------------------------------------------
// Step 1: Create Context
// ------------------------------------------------------------------------------------
    OCL_CHECK(err, cl::Context context(device, NULL, NULL, NULL, &err));
	
// ------------------------------------------------------------------------------------
// Step 1: Create Command Queue
// ------------------------------------------------------------------------------------
    OCL_CHECK(err, cl::CommandQueue q(context, device, CL_QUEUE_PROFILING_ENABLE, &err));

// ------------------------------------------------------------------
// Step 1: Load Binary File from disk
// ------------------------------------------------------------------		
    char* fileBuf = read_binary_file(binaryFile, fileBufSize);
    cl::Program::Binaries bins{{fileBuf, fileBufSize}};
	
// -------------------------------------------------------------
// Step 1: Create the program object from the binary and program the FPGA device with it
// -------------------------------------------------------------	
    OCL_CHECK(err, cl::Program program(context, devices, bins, NULL, &err));

// -------------------------------------------------------------
// Step 1: Create Kernels
// -------------------------------------------------------------
    OCL_CHECK(err, cl::Kernel krnl_vector_add(program,"vadd", &err));

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
    cl_mem_ext_ptr_t embedding0Ext, 
        access_idxExt, sourcce_hw_resultsExt;
//////////////////////////////   TEMPLATE END  //////////////////////////////

//////////////////////////////   TEMPLATE START  //////////////////////////////
    embedding1Ext.obj = embedding1.data();
    embedding1Ext.param = 0;
    embedding1Ext.flags = 
//////////////////////////////   TEMPLATE END  //////////////////////////////
    access_idxExt.obj = access_idx.data();
    access_idxExt.param = 0;
    access_idxExt.flags = bank[32];
    sourcce_hw_resultsExt.obj = source_hw_results.data();
    sourcce_hw_resultsExt.param = 0;
    sourcce_hw_resultsExt.flags = bank[33];

    // CL_MEM_EXT_PTR_XILINX
//////////////////////////////   TEMPLATE START  //////////////////////////////
    OCL_CHECK(err, cl::Buffer buffer_embedding0(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding0_size_bytes, &embedding0Ext, &err));
//////////////////////////////   TEMPLATE END  //////////////////////////////
    OCL_CHECK(err, cl::Buffer buffer_idx(context, 
        CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
        idx_size_bytes, &access_idxExt, &err));
// .......................................................
// Allocate Global Memory for sourcce_hw_results
// .......................................................
    OCL_CHECK(err, cl::Buffer buffer_output(
        context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY | CL_MEM_EXT_PTR_XILINX, 
        result_size_bytes, &sourcce_hw_resultsExt, &err));

// ============================================================================
// Step 2: Set Kernel Arguments and Run the Application
//         o) Set Kernel Arguments
//         o) Copy Input Data from Host to Global Memory on the device
//         o) Submit Kernels for Execution
//         o) Copy Results from Global Memory, device to Host
// ============================================================================	
    
//////////////////////////////   TEMPLATE START  //////////////////////////////
    OCL_CHECK(err, err = krnl_vector_add.setArg(0, buffer_embedding0));
//////////////////////////////   TEMPLATE END  //////////////////////////////

    // NOTE! Manually adjust this!
// use replicate_str.py, set totol_num = 1 start=47
//////////////////////////////   TEMPLATE START  //////////////////////////////
    OCL_CHECK(err, err = krnl_vector_add.setArg(15, buffer_idx));
//////////////////////////////   TEMPLATE END  //////////////////////////////
//////////////////////////////   TEMPLATE START  //////////////////////////////
    OCL_CHECK(err, err = krnl_vector_add.setArg(16, buffer_output));
//////////////////////////////   TEMPLATE END  //////////////////////////////
// ------------------------------------------------------
// Step 2: Copy Input data from Host to Global Memory on the device
// ------------------------------------------------------
//////////////////////////////   TEMPLATE START  //////////////////////////////
    OCL_CHECK(
        err, err = q.enqueueMigrateMemObjects({buffer_embedding1, 
        buffer_idx}, 0/* 0 means from host*/));	
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
    bool match = true;
    for (int i = 0 ; i < BATCH_NUM * BATCH_SIZE; i++) {
        if (source_hw_results[i] != source_sw_results[i]) {
            std::cout << "Error: Result mismatch" << std::endl;
            std::cout << "i = " << i << " CPU result = " << source_sw_results[i]
                << " Device result = " << source_hw_results[i] << std::endl;
            match = false;
            break;
        }
    }

    // Print results no matter if they are correct
    for (int i = 0; i < BATCH_SIZE * BATCH_NUM; i++) {
        if (source_sw_results[i] == source_hw_results[i]) {
            std::cout << "i = " << i << "\tresult = " << source_sw_results[i] << std::endl; 
        }
        else { 
            std::cout << "i = " << i << "\tCPU result = " << source_sw_results[i] 
                << "\tFPGA result = " << source_hw_results[i] << std::endl;
        }
    }
    
// ============================================================================
// Step 3: Release Allocated Resources
// ============================================================================
    delete[] fileBuf;

    std::cout << "TEST " << (match ? "PASSED" : "FAILED") << std::endl; 
    return (match ? EXIT_SUCCESS : EXIT_FAILURE);
}

