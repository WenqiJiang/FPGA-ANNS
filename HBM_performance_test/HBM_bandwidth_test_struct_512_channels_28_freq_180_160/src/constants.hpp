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
#define HBM_BANK0_SIZE 67108864
#define HBM_BANK1_SIZE 67108864
#define HBM_BANK2_SIZE 67108864
#define HBM_BANK3_SIZE 67108864
#define HBM_BANK4_SIZE 67108864
#define HBM_BANK5_SIZE 67108864
#define HBM_BANK6_SIZE 67108864
#define HBM_BANK7_SIZE 67108864
#define HBM_BANK8_SIZE 67108864
#define HBM_BANK9_SIZE 67108864
#define HBM_BANK10_SIZE 67108864
#define HBM_BANK11_SIZE 67108864
#define HBM_BANK12_SIZE 67108864
#define HBM_BANK13_SIZE 67108864
#define HBM_BANK14_SIZE 67108864
#define HBM_BANK15_SIZE 67108864
#define HBM_BANK16_SIZE 67108864
#define HBM_BANK17_SIZE 67108864
#define HBM_BANK18_SIZE 67108864
#define HBM_BANK19_SIZE 67108864
#define HBM_BANK20_SIZE 67108864
#define HBM_BANK21_SIZE 67108864
#define HBM_BANK22_SIZE 67108864
#define HBM_BANK23_SIZE 67108864
#define HBM_BANK24_SIZE 67108864
#define HBM_BANK25_SIZE 67108864
#define HBM_BANK26_SIZE 67108864
#define HBM_BANK27_SIZE 67108864
#define HBM_BANK28_SIZE 67108864
#define HBM_BANK29_SIZE 67108864
#define HBM_BANK30_SIZE 67108864
#define HBM_BANK31_SIZE 67108864

#define DDR_BANK0_SIZE 160000000
#define DDR_BANK1_SIZE 160000000

#define PLRAM_BANK0_SIZE 28000
#define PLRAM_BANK1_SIZE 84000
#define PLRAM_BANK2_SIZE 84000
#define PLRAM_BANK3_SIZE 84000

//////////////////////////////   TEMPLATE END  //////////////////////////////

struct PQ_codes{
    unsigned char PQ_code_A_0;
    unsigned char PQ_code_A_1;
    unsigned char PQ_code_A_2;
    unsigned char PQ_code_A_3;
    unsigned char PQ_code_A_4;
    unsigned char PQ_code_A_5;
    unsigned char PQ_code_A_6;
    unsigned char PQ_code_A_7;
    unsigned char PQ_code_A_8;
    unsigned char PQ_code_A_9;
    unsigned char PQ_code_A_10;
    unsigned char PQ_code_A_11;
    unsigned char PQ_code_A_12;
    unsigned char PQ_code_A_13;
    unsigned char PQ_code_A_14;
    unsigned char PQ_code_A_15;

    unsigned char PQ_code_B_0;
    unsigned char PQ_code_B_1;
    unsigned char PQ_code_B_2;
    unsigned char PQ_code_B_3;
    unsigned char PQ_code_B_4;
    unsigned char PQ_code_B_5;
    unsigned char PQ_code_B_6;
    unsigned char PQ_code_B_7;
    unsigned char PQ_code_B_8;
    unsigned char PQ_code_B_9;
    unsigned char PQ_code_B_10;
    unsigned char PQ_code_B_11;
    unsigned char PQ_code_B_12;
    unsigned char PQ_code_B_13;
    unsigned char PQ_code_B_14;
    unsigned char PQ_code_B_15;

    unsigned char PQ_code_C_0;
    unsigned char PQ_code_C_1;
    unsigned char PQ_code_C_2;
    unsigned char PQ_code_C_3;
    unsigned char PQ_code_C_4;
    unsigned char PQ_code_C_5;
    unsigned char PQ_code_C_6;
    unsigned char PQ_code_C_7;
    unsigned char PQ_code_C_8;
    unsigned char PQ_code_C_9;
    unsigned char PQ_code_C_10;
    unsigned char PQ_code_C_11;
    unsigned char PQ_code_C_12;
    unsigned char PQ_code_C_13;
    unsigned char PQ_code_C_14;
    unsigned char PQ_code_C_15;

    unsigned char PQ_code_D_0;
    unsigned char PQ_code_D_1;
    unsigned char PQ_code_D_2;
    unsigned char PQ_code_D_3;
    unsigned char PQ_code_D_4;
    unsigned char PQ_code_D_5;
    unsigned char PQ_code_D_6;
    unsigned char PQ_code_D_7;
    unsigned char PQ_code_D_8;
    unsigned char PQ_code_D_9;
    unsigned char PQ_code_D_10;
    unsigned char PQ_code_D_11;
    unsigned char PQ_code_D_12;
    unsigned char PQ_code_D_13;
    unsigned char PQ_code_D_14;
    unsigned char PQ_code_D_15;
};

typedef PQ_codes t_axi;
// typedef ap_int<512> t_axi;
typedef float D_TYPE;

