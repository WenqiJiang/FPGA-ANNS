#pragma once
#include <ap_int.h>

//////////////////////////////   TEMPLATE START  //////////////////////////////

#define PLRAM_BANK_NUM 4
#define HBM_BANK_NUM 32
#define DDR_BANK 2

/////////////////////////   HBM   ///////////////////////// 
// alignment of tables to HBM: 
// table 0 ~ 31 -> HBM 0 ~ 31
// table 32 ~ 63 -> HBM 0 ~ 31

// 256 MB = 268435456 bytes = 67108864 float32
#define HBM_BANK0_SIZE 100000
#define HBM_BANK1_SIZE 100000
#define HBM_BANK2_SIZE 100000
#define HBM_BANK3_SIZE 100000
#define HBM_BANK4_SIZE 100000
#define HBM_BANK5_SIZE 100000
#define HBM_BANK6_SIZE 100000
#define HBM_BANK7_SIZE 100000
#define HBM_BANK8_SIZE 100000
#define HBM_BANK9_SIZE 100000
#define HBM_BANK10_SIZE 100000
#define HBM_BANK11_SIZE 100000
#define HBM_BANK12_SIZE 100000
#define HBM_BANK13_SIZE 100000
#define HBM_BANK14_SIZE 100000
#define HBM_BANK15_SIZE 100000
#define HBM_BANK16_SIZE 100000
#define HBM_BANK17_SIZE 100000
#define HBM_BANK18_SIZE 100000
#define HBM_BANK19_SIZE 100000
#define HBM_BANK20_SIZE 100000
#define HBM_BANK21_SIZE 100000
#define HBM_BANK22_SIZE 100000
#define HBM_BANK23_SIZE 100000
#define HBM_BANK24_SIZE 100000
#define HBM_BANK25_SIZE 100000
#define HBM_BANK26_SIZE 100000
#define HBM_BANK27_SIZE 100000
#define HBM_BANK28_SIZE 100000
#define HBM_BANK29_SIZE 100000
#define HBM_BANK30_SIZE 100000
#define HBM_BANK31_SIZE 100000

#define DDR_BANK0_SIZE 1000000
#define DDR_BANK1_SIZE 1000000

#define PLRAM_BANK0_SIZE 28000
#define PLRAM_BANK1_SIZE 84000
#define PLRAM_BANK2_SIZE 84000
#define PLRAM_BANK3_SIZE 84000

//////////////////////////////   TEMPLATE END  //////////////////////////////

//typedef ap_int<512> t_axi;
typedef float t_axi;
typedef float D_TYPE;

// #define NUM_LOOPS 32
// #define MERGE_ITER 8 // the number of input sorted array (32 elements per partition)
#define LARGE_NUM 9999999999

#define NLIST 8192
#define NPROBE 32 // merge len

#define PE_NUM_DIST_COMP NPROBE // TODO: this dependency may only work in this specific design
#define PE_NUM_SORT_MERGE 8 // distance computation: 8 cycle / 32 elements, merge speed: 64 cycle / 32 elements, thus need 8 PEs

#define MERGE_LEN NPROBE // the number of two input stream = 32, output stream len = 32
#define MERGE_ITER (NLIST / PE_NUM_DIST_COMP / MERGE_LEN)  // 8192 / 32 / 32 = 8

#define QUERY_NUM 4