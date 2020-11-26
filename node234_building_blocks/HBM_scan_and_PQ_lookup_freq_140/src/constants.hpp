#pragma once
#include <ap_int.h>

#define NLIST 8192
#define NPROBE 32
#define D 128
#define M 16
#define K 256
#define CENTROID_PARTITIONS 32
#define CENTROIDS_PER_PARTITION (NLIST / CENTROID_PARTITIONS)

// #define ITER_NUM 2
// #define QUERY_NUM_PER_ITER 1024 

#define ITER_NUM 16
#define QUERY_NUM_PER_ITER (1024 * 1024) // 64 B * 1024 * 1024 = 64 MB
#define QUERY_NUM (ITER_NUM * QUERY_NUM_PER_ITER) // 64 B * 1024 * 1024 = 64 MB

#define LARGE_NUM 99999999 // used to init the heap

typedef struct {
    int vec_ID;
    unsigned char PQ_code[M];
} single_PQ;
 
typedef struct {
    // a wrapper for single_PQ
    // used in the ap_uint<480> to 3 x PQ split function
    single_PQ PQ_0;
    single_PQ PQ_1;
    single_PQ PQ_2;
} three_PQ_codes;

typedef struct {
    int vec_ID;
    float dist;
} single_PQ_result; 

typedef ap_uint<256> result_t;
typedef ap_uint<512> t_axi;

//////////////////////////////   TEMPLATE START  //////////////////////////////

#define PLRAM_BANK_NUM 4
#define HBM_BANK_NUM 32
#define DDR_BANK 2

/////////////////////////   HBM   ///////////////////////// 
// alignment of tables to HBM: 
// table 0 ~ 31 -> HBM 0 ~ 31
// table 32 ~ 63 -> HBM 0 ~ 31

// 256 MB = 268435456 bytes = 67108864 float32 = 4194304 ap_int<512>
// 128 MB = 2097152 ap_int<512>
#define HBM_BANK0_SIZE 2097152
#define HBM_BANK1_SIZE 2097152
#define HBM_BANK2_SIZE 2097152
#define HBM_BANK3_SIZE 2097152
#define HBM_BANK4_SIZE 2097152
#define HBM_BANK5_SIZE 2097152
#define HBM_BANK6_SIZE 2097152
#define HBM_BANK7_SIZE 2097152
#define HBM_BANK8_SIZE 2097152
#define HBM_BANK9_SIZE 2097152
#define HBM_BANK10_SIZE 2097152
#define HBM_BANK11_SIZE 2097152
#define HBM_BANK12_SIZE 2097152
#define HBM_BANK13_SIZE 2097152
#define HBM_BANK14_SIZE 2097152
#define HBM_BANK15_SIZE 2097152
#define HBM_BANK16_SIZE 2097152
#define HBM_BANK17_SIZE 2097152
#define HBM_BANK18_SIZE 2097152
#define HBM_BANK19_SIZE 2097152
#define HBM_BANK20_SIZE 2097152
#define HBM_BANK21_SIZE 2097152
#define HBM_BANK22_SIZE 2097152
#define HBM_BANK23_SIZE 2097152
#define HBM_BANK24_SIZE 2097152
#define HBM_BANK25_SIZE 2097152
#define HBM_BANK26_SIZE 2097152
#define HBM_BANK27_SIZE 2097152
#define HBM_BANK28_SIZE 2097152
#define HBM_BANK29_SIZE 2097152
#define HBM_BANK30_SIZE 2097152
#define HBM_BANK31_SIZE 2097152

#define DDR_BANK0_SIZE 1600000
#define DDR_BANK1_SIZE 1600000

#define PLRAM_BANK0_SIZE 28000
#define PLRAM_BANK1_SIZE 84000
#define PLRAM_BANK2_SIZE 84000
#define PLRAM_BANK3_SIZE 84000

//////////////////////////////   TEMPLATE END  //////////////////////////////



