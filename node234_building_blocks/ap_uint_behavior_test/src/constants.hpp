#pragma once
#include <ap_int.h>

#define NLIST 8192
#define NPROBE 32
#define D 128
#define M 16
#define K 256
#define CENTROID_PARTITIONS 32
#define CENTROIDS_PER_PARTITION (NLIST / CENTROID_PARTITIONS)
#define QUERY_NUM 32

#define LARGE_NUM 99999999 // used to init the heap

typedef struct {
    // 64 bits
    int i;
    float f;
} int_float_struct_t;

typedef struct {
    // 64 * 8 = 512 bit
    int_float_struct_t fs[8];
} eight_int_float_struct_t;

// typedef ap_uint<512> result_t;
typedef ap_uint<512> t_axi;
typedef ap_uint<512> D_TYPE;

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

#define DDR_BANK0_SIZE 1600000
#define DDR_BANK1_SIZE 1600000

#define PLRAM_BANK0_SIZE 28000
#define PLRAM_BANK1_SIZE 84000
#define PLRAM_BANK2_SIZE 84000
#define PLRAM_BANK3_SIZE 84000

//////////////////////////////   TEMPLATE END  //////////////////////////////



