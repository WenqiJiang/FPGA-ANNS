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
    size_t embedding1_size_bytes = sizeof(int) * TABLE_SIZE1 * DATA_SIZE1;
    size_t embedding2_size_bytes = sizeof(int) * TABLE_SIZE2 * DATA_SIZE2;
    size_t embedding3_size_bytes = sizeof(int) * TABLE_SIZE3 * DATA_SIZE3;
    size_t embedding4_size_bytes = sizeof(int) * TABLE_SIZE4 * DATA_SIZE4;
    size_t embedding5_size_bytes = sizeof(int) * TABLE_SIZE5 * DATA_SIZE5;
    size_t embedding6_size_bytes = sizeof(int) * TABLE_SIZE6 * DATA_SIZE6;
    size_t embedding7_size_bytes = sizeof(int) * TABLE_SIZE7 * DATA_SIZE7;
    size_t embedding8_size_bytes = sizeof(int) * TABLE_SIZE8 * DATA_SIZE8;
    size_t embedding9_size_bytes = sizeof(int) * TABLE_SIZE9 * DATA_SIZE9;
    size_t embedding10_size_bytes = sizeof(int) * TABLE_SIZE10 * DATA_SIZE10;
    size_t embedding11_size_bytes = sizeof(int) * TABLE_SIZE11 * DATA_SIZE11;
    size_t embedding12_size_bytes = sizeof(int) * TABLE_SIZE12 * DATA_SIZE12;
    size_t embedding13_size_bytes = sizeof(int) * TABLE_SIZE13 * DATA_SIZE13;
    size_t embedding14_size_bytes = sizeof(int) * TABLE_SIZE14 * DATA_SIZE14;
    size_t embedding15_size_bytes = sizeof(int) * TABLE_SIZE15 * DATA_SIZE15;
    size_t embedding16_size_bytes = sizeof(int) * TABLE_SIZE16 * DATA_SIZE16;
    size_t embedding17_size_bytes = sizeof(int) * TABLE_SIZE17 * DATA_SIZE17;
    size_t embedding18_size_bytes = sizeof(int) * TABLE_SIZE18 * DATA_SIZE18;
    size_t embedding19_size_bytes = sizeof(int) * TABLE_SIZE19 * DATA_SIZE19;
    size_t embedding20_size_bytes = sizeof(int) * TABLE_SIZE20 * DATA_SIZE20;
    size_t embedding21_size_bytes = sizeof(int) * TABLE_SIZE21 * DATA_SIZE21;
    size_t embedding22_size_bytes = sizeof(int) * TABLE_SIZE22 * DATA_SIZE22;
    size_t embedding23_size_bytes = sizeof(int) * TABLE_SIZE23 * DATA_SIZE23;
    size_t embedding24_size_bytes = sizeof(int) * TABLE_SIZE24 * DATA_SIZE24;
    size_t embedding25_size_bytes = sizeof(int) * TABLE_SIZE25 * DATA_SIZE25;
    size_t embedding26_size_bytes = sizeof(int) * TABLE_SIZE26 * DATA_SIZE26;
    size_t embedding27_size_bytes = sizeof(int) * TABLE_SIZE27 * DATA_SIZE27;
    size_t embedding28_size_bytes = sizeof(int) * TABLE_SIZE28 * DATA_SIZE28;
    size_t embedding29_size_bytes = sizeof(int) * TABLE_SIZE29 * DATA_SIZE29;
    size_t embedding30_size_bytes = sizeof(int) * TABLE_SIZE30 * DATA_SIZE30;
    size_t embedding31_size_bytes = sizeof(int) * TABLE_SIZE31 * DATA_SIZE31;
    size_t embedding32_size_bytes = sizeof(int) * TABLE_SIZE32 * DATA_SIZE32;
    size_t embedding33_size_bytes = sizeof(int) * TABLE_SIZE33 * DATA_SIZE33;
    size_t embedding34_size_bytes = sizeof(int) * TABLE_SIZE34 * DATA_SIZE34;
    size_t embedding35_size_bytes = sizeof(int) * TABLE_SIZE35 * DATA_SIZE35;
    size_t embedding36_size_bytes = sizeof(int) * TABLE_SIZE36 * DATA_SIZE36;
    size_t embedding37_size_bytes = sizeof(int) * TABLE_SIZE37 * DATA_SIZE37;
    size_t embedding38_size_bytes = sizeof(int) * TABLE_SIZE38 * DATA_SIZE38;
    size_t embedding39_size_bytes = sizeof(int) * TABLE_SIZE39 * DATA_SIZE39;
    size_t embedding40_size_bytes = sizeof(int) * TABLE_SIZE40 * DATA_SIZE40;
    size_t embedding41_size_bytes = sizeof(int) * TABLE_SIZE41 * DATA_SIZE41;
    size_t embedding42_size_bytes = sizeof(int) * TABLE_SIZE42 * DATA_SIZE42;
    size_t embedding43_size_bytes = sizeof(int) * TABLE_SIZE43 * DATA_SIZE43;
    size_t embedding44_size_bytes = sizeof(int) * TABLE_SIZE44 * DATA_SIZE44;
    size_t embedding45_size_bytes = sizeof(int) * TABLE_SIZE45 * DATA_SIZE45;
    size_t embedding46_size_bytes = sizeof(int) * TABLE_SIZE46 * DATA_SIZE46;
    size_t embedding47_size_bytes = sizeof(int) * TABLE_SIZE47 * DATA_SIZE47;
    size_t embedding48_size_bytes = sizeof(int) * TABLE_SIZE48 * DATA_SIZE48;
    size_t embedding49_size_bytes = sizeof(int) * TABLE_SIZE49 * DATA_SIZE49;
    size_t embedding50_size_bytes = sizeof(int) * TABLE_SIZE50 * DATA_SIZE50;
    size_t embedding51_size_bytes = sizeof(int) * TABLE_SIZE51 * DATA_SIZE51;
    size_t embedding52_size_bytes = sizeof(int) * TABLE_SIZE52 * DATA_SIZE52;
    size_t embedding53_size_bytes = sizeof(int) * TABLE_SIZE53 * DATA_SIZE53;
    size_t embedding54_size_bytes = sizeof(int) * TABLE_SIZE54 * DATA_SIZE54;
    size_t embedding55_size_bytes = sizeof(int) * TABLE_SIZE55 * DATA_SIZE55;
    size_t embedding56_size_bytes = sizeof(int) * TABLE_SIZE56 * DATA_SIZE56;
    size_t embedding57_size_bytes = sizeof(int) * TABLE_SIZE57 * DATA_SIZE57;
    size_t embedding58_size_bytes = sizeof(int) * TABLE_SIZE58 * DATA_SIZE58;
    size_t embedding59_size_bytes = sizeof(int) * TABLE_SIZE59 * DATA_SIZE59;
    size_t embedding60_size_bytes = sizeof(int) * TABLE_SIZE60 * DATA_SIZE60;
    size_t embedding61_size_bytes = sizeof(int) * TABLE_SIZE61 * DATA_SIZE61;
    size_t embedding62_size_bytes = sizeof(int) * TABLE_SIZE62 * DATA_SIZE62;
    size_t embedding63_size_bytes = sizeof(int) * TABLE_SIZE63 * DATA_SIZE63;
    size_t embedding64_size_bytes = sizeof(int) * TABLE_SIZE64 * DATA_SIZE64;
    size_t embedding65_size_bytes = sizeof(int) * TABLE_SIZE65 * DATA_SIZE65;
    size_t embedding66_size_bytes = sizeof(int) * TABLE_SIZE66 * DATA_SIZE66;
    size_t embedding67_size_bytes = sizeof(int) * TABLE_SIZE67 * DATA_SIZE67;
    size_t embedding68_size_bytes = sizeof(int) * TABLE_SIZE68 * DATA_SIZE68;
    size_t embedding69_size_bytes = sizeof(int) * TABLE_SIZE69 * DATA_SIZE69;
    size_t embedding70_size_bytes = sizeof(int) * TABLE_SIZE70 * DATA_SIZE70;
    size_t embedding71_size_bytes = sizeof(int) * TABLE_SIZE71 * DATA_SIZE71;
    size_t embedding72_size_bytes = sizeof(int) * TABLE_SIZE72 * DATA_SIZE72;
    size_t embedding73_size_bytes = sizeof(int) * TABLE_SIZE73 * DATA_SIZE73;
    size_t embedding74_size_bytes = sizeof(int) * TABLE_SIZE74 * DATA_SIZE74;
    size_t embedding75_size_bytes = sizeof(int) * TABLE_SIZE75 * DATA_SIZE75;
    size_t embedding76_size_bytes = sizeof(int) * TABLE_SIZE76 * DATA_SIZE76;
    size_t embedding77_size_bytes = sizeof(int) * TABLE_SIZE77 * DATA_SIZE77;
    size_t embedding78_size_bytes = sizeof(int) * TABLE_SIZE78 * DATA_SIZE78;
    size_t embedding79_size_bytes = sizeof(int) * TABLE_SIZE79 * DATA_SIZE79;
    size_t embedding80_size_bytes = sizeof(int) * TABLE_SIZE80 * DATA_SIZE80;
    size_t embedding81_size_bytes = sizeof(int) * TABLE_SIZE81 * DATA_SIZE81;
    size_t embedding82_size_bytes = sizeof(int) * TABLE_SIZE82 * DATA_SIZE82;
    size_t embedding83_size_bytes = sizeof(int) * TABLE_SIZE83 * DATA_SIZE83;
    size_t embedding84_size_bytes = sizeof(int) * TABLE_SIZE84 * DATA_SIZE84;
    size_t embedding85_size_bytes = sizeof(int) * TABLE_SIZE85 * DATA_SIZE85;
    size_t embedding86_size_bytes = sizeof(int) * TABLE_SIZE86 * DATA_SIZE86;
    size_t embedding87_size_bytes = sizeof(int) * TABLE_SIZE87 * DATA_SIZE87;
    size_t embedding88_size_bytes = sizeof(int) * TABLE_SIZE88 * DATA_SIZE88;
    size_t embedding89_size_bytes = sizeof(int) * TABLE_SIZE89 * DATA_SIZE89;
    size_t embedding90_size_bytes = sizeof(int) * TABLE_SIZE90 * DATA_SIZE90;
    size_t embedding91_size_bytes = sizeof(int) * TABLE_SIZE91 * DATA_SIZE91;
    size_t embedding92_size_bytes = sizeof(int) * TABLE_SIZE92 * DATA_SIZE92;
    size_t embedding93_size_bytes = sizeof(int) * TABLE_SIZE93 * DATA_SIZE93;
    size_t embedding94_size_bytes = sizeof(int) * TABLE_SIZE94 * DATA_SIZE94;
    size_t embedding95_size_bytes = sizeof(int) * TABLE_SIZE95 * DATA_SIZE95;
    size_t embedding96_size_bytes = sizeof(int) * TABLE_SIZE96 * DATA_SIZE96;
    size_t embedding97_size_bytes = sizeof(int) * TABLE_SIZE97 * DATA_SIZE97;
    size_t embedding98_size_bytes = sizeof(int) * TABLE_SIZE98 * DATA_SIZE98;
    size_t embedding99_size_bytes = sizeof(int) * TABLE_SIZE99 * DATA_SIZE99;
    size_t embedding100_size_bytes = sizeof(int) * TABLE_SIZE100 * DATA_SIZE100;
    size_t embedding101_size_bytes = sizeof(int) * TABLE_SIZE101 * DATA_SIZE101;
    size_t embedding102_size_bytes = sizeof(int) * TABLE_SIZE102 * DATA_SIZE102;
    size_t embedding103_size_bytes = sizeof(int) * TABLE_SIZE103 * DATA_SIZE103;
    size_t embedding104_size_bytes = sizeof(int) * TABLE_SIZE104 * DATA_SIZE104;
    size_t embedding105_size_bytes = sizeof(int) * TABLE_SIZE105 * DATA_SIZE105;
    size_t embedding106_size_bytes = sizeof(int) * TABLE_SIZE106 * DATA_SIZE106;
    size_t embedding107_size_bytes = sizeof(int) * TABLE_SIZE107 * DATA_SIZE107;
    size_t embedding108_size_bytes = sizeof(int) * TABLE_SIZE108 * DATA_SIZE108;
    size_t embedding109_size_bytes = sizeof(int) * TABLE_SIZE109 * DATA_SIZE109;
    size_t embedding110_size_bytes = sizeof(int) * TABLE_SIZE110 * DATA_SIZE110;
    size_t embedding111_size_bytes = sizeof(int) * TABLE_SIZE111 * DATA_SIZE111;
    size_t embedding112_size_bytes = sizeof(int) * TABLE_SIZE112 * DATA_SIZE112;
    size_t embedding113_size_bytes = sizeof(int) * TABLE_SIZE113 * DATA_SIZE113;
    size_t embedding114_size_bytes = sizeof(int) * TABLE_SIZE114 * DATA_SIZE114;
    size_t embedding115_size_bytes = sizeof(int) * TABLE_SIZE115 * DATA_SIZE115;
    size_t embedding116_size_bytes = sizeof(int) * TABLE_SIZE116 * DATA_SIZE116;
    size_t embedding117_size_bytes = sizeof(int) * TABLE_SIZE117 * DATA_SIZE117;
    size_t embedding118_size_bytes = sizeof(int) * TABLE_SIZE118 * DATA_SIZE118;
    size_t embedding119_size_bytes = sizeof(int) * TABLE_SIZE119 * DATA_SIZE119;
    size_t embedding120_size_bytes = sizeof(int) * TABLE_SIZE120 * DATA_SIZE120;
    size_t embedding121_size_bytes = sizeof(int) * TABLE_SIZE121 * DATA_SIZE121;
    size_t embedding122_size_bytes = sizeof(int) * TABLE_SIZE122 * DATA_SIZE122;
    size_t embedding123_size_bytes = sizeof(int) * TABLE_SIZE123 * DATA_SIZE123;
    size_t embedding124_size_bytes = sizeof(int) * TABLE_SIZE124 * DATA_SIZE124;
    size_t embedding125_size_bytes = sizeof(int) * TABLE_SIZE125 * DATA_SIZE125;
    size_t embedding126_size_bytes = sizeof(int) * TABLE_SIZE126 * DATA_SIZE126;
    size_t embedding127_size_bytes = sizeof(int) * TABLE_SIZE127 * DATA_SIZE127;
//////////////////////////////   TEMPLATE END  //////////////////////////////

    size_t result_size_bytes = sizeof(int) * BATCH_NUM * BATCH_SIZE;
    size_t idx_size_bytes = sizeof(int) * BATCH_NUM * BATCH_SIZE * TABLE_NUM;
    cl_int err;
    unsigned fileBufSize;

    // allocate aligned 2D vectors
//////////////////////////////   TEMPLATE START  //////////////////////////////
    std::vector<int, aligned_allocator<int>> embedding0(TABLE_SIZE0 * DATA_SIZE0);
    std::vector<int, aligned_allocator<int>> embedding1(TABLE_SIZE1 * DATA_SIZE1);
    std::vector<int, aligned_allocator<int>> embedding2(TABLE_SIZE2 * DATA_SIZE2);
    std::vector<int, aligned_allocator<int>> embedding3(TABLE_SIZE3 * DATA_SIZE3);
    std::vector<int, aligned_allocator<int>> embedding4(TABLE_SIZE4 * DATA_SIZE4);
    std::vector<int, aligned_allocator<int>> embedding5(TABLE_SIZE5 * DATA_SIZE5);
    std::vector<int, aligned_allocator<int>> embedding6(TABLE_SIZE6 * DATA_SIZE6);
    std::vector<int, aligned_allocator<int>> embedding7(TABLE_SIZE7 * DATA_SIZE7);
    std::vector<int, aligned_allocator<int>> embedding8(TABLE_SIZE8 * DATA_SIZE8);
    std::vector<int, aligned_allocator<int>> embedding9(TABLE_SIZE9 * DATA_SIZE9);
    std::vector<int, aligned_allocator<int>> embedding10(TABLE_SIZE10 * DATA_SIZE10);
    std::vector<int, aligned_allocator<int>> embedding11(TABLE_SIZE11 * DATA_SIZE11);
    std::vector<int, aligned_allocator<int>> embedding12(TABLE_SIZE12 * DATA_SIZE12);
    std::vector<int, aligned_allocator<int>> embedding13(TABLE_SIZE13 * DATA_SIZE13);
    std::vector<int, aligned_allocator<int>> embedding14(TABLE_SIZE14 * DATA_SIZE14);
    std::vector<int, aligned_allocator<int>> embedding15(TABLE_SIZE15 * DATA_SIZE15);
    std::vector<int, aligned_allocator<int>> embedding16(TABLE_SIZE16 * DATA_SIZE16);
    std::vector<int, aligned_allocator<int>> embedding17(TABLE_SIZE17 * DATA_SIZE17);
    std::vector<int, aligned_allocator<int>> embedding18(TABLE_SIZE18 * DATA_SIZE18);
    std::vector<int, aligned_allocator<int>> embedding19(TABLE_SIZE19 * DATA_SIZE19);
    std::vector<int, aligned_allocator<int>> embedding20(TABLE_SIZE20 * DATA_SIZE20);
    std::vector<int, aligned_allocator<int>> embedding21(TABLE_SIZE21 * DATA_SIZE21);
    std::vector<int, aligned_allocator<int>> embedding22(TABLE_SIZE22 * DATA_SIZE22);
    std::vector<int, aligned_allocator<int>> embedding23(TABLE_SIZE23 * DATA_SIZE23);
    std::vector<int, aligned_allocator<int>> embedding24(TABLE_SIZE24 * DATA_SIZE24);
    std::vector<int, aligned_allocator<int>> embedding25(TABLE_SIZE25 * DATA_SIZE25);
    std::vector<int, aligned_allocator<int>> embedding26(TABLE_SIZE26 * DATA_SIZE26);
    std::vector<int, aligned_allocator<int>> embedding27(TABLE_SIZE27 * DATA_SIZE27);
    std::vector<int, aligned_allocator<int>> embedding28(TABLE_SIZE28 * DATA_SIZE28);
    std::vector<int, aligned_allocator<int>> embedding29(TABLE_SIZE29 * DATA_SIZE29);
    std::vector<int, aligned_allocator<int>> embedding30(TABLE_SIZE30 * DATA_SIZE30);
    std::vector<int, aligned_allocator<int>> embedding31(TABLE_SIZE31 * DATA_SIZE31);
    std::vector<int, aligned_allocator<int>> embedding32(TABLE_SIZE32 * DATA_SIZE32);
    std::vector<int, aligned_allocator<int>> embedding33(TABLE_SIZE33 * DATA_SIZE33);
    std::vector<int, aligned_allocator<int>> embedding34(TABLE_SIZE34 * DATA_SIZE34);
    std::vector<int, aligned_allocator<int>> embedding35(TABLE_SIZE35 * DATA_SIZE35);
    std::vector<int, aligned_allocator<int>> embedding36(TABLE_SIZE36 * DATA_SIZE36);
    std::vector<int, aligned_allocator<int>> embedding37(TABLE_SIZE37 * DATA_SIZE37);
    std::vector<int, aligned_allocator<int>> embedding38(TABLE_SIZE38 * DATA_SIZE38);
    std::vector<int, aligned_allocator<int>> embedding39(TABLE_SIZE39 * DATA_SIZE39);
    std::vector<int, aligned_allocator<int>> embedding40(TABLE_SIZE40 * DATA_SIZE40);
    std::vector<int, aligned_allocator<int>> embedding41(TABLE_SIZE41 * DATA_SIZE41);
    std::vector<int, aligned_allocator<int>> embedding42(TABLE_SIZE42 * DATA_SIZE42);
    std::vector<int, aligned_allocator<int>> embedding43(TABLE_SIZE43 * DATA_SIZE43);
    std::vector<int, aligned_allocator<int>> embedding44(TABLE_SIZE44 * DATA_SIZE44);
    std::vector<int, aligned_allocator<int>> embedding45(TABLE_SIZE45 * DATA_SIZE45);
    std::vector<int, aligned_allocator<int>> embedding46(TABLE_SIZE46 * DATA_SIZE46);
    std::vector<int, aligned_allocator<int>> embedding47(TABLE_SIZE47 * DATA_SIZE47);
    std::vector<int, aligned_allocator<int>> embedding48(TABLE_SIZE48 * DATA_SIZE48);
    std::vector<int, aligned_allocator<int>> embedding49(TABLE_SIZE49 * DATA_SIZE49);
    std::vector<int, aligned_allocator<int>> embedding50(TABLE_SIZE50 * DATA_SIZE50);
    std::vector<int, aligned_allocator<int>> embedding51(TABLE_SIZE51 * DATA_SIZE51);
    std::vector<int, aligned_allocator<int>> embedding52(TABLE_SIZE52 * DATA_SIZE52);
    std::vector<int, aligned_allocator<int>> embedding53(TABLE_SIZE53 * DATA_SIZE53);
    std::vector<int, aligned_allocator<int>> embedding54(TABLE_SIZE54 * DATA_SIZE54);
    std::vector<int, aligned_allocator<int>> embedding55(TABLE_SIZE55 * DATA_SIZE55);
    std::vector<int, aligned_allocator<int>> embedding56(TABLE_SIZE56 * DATA_SIZE56);
    std::vector<int, aligned_allocator<int>> embedding57(TABLE_SIZE57 * DATA_SIZE57);
    std::vector<int, aligned_allocator<int>> embedding58(TABLE_SIZE58 * DATA_SIZE58);
    std::vector<int, aligned_allocator<int>> embedding59(TABLE_SIZE59 * DATA_SIZE59);
    std::vector<int, aligned_allocator<int>> embedding60(TABLE_SIZE60 * DATA_SIZE60);
    std::vector<int, aligned_allocator<int>> embedding61(TABLE_SIZE61 * DATA_SIZE61);
    std::vector<int, aligned_allocator<int>> embedding62(TABLE_SIZE62 * DATA_SIZE62);
    std::vector<int, aligned_allocator<int>> embedding63(TABLE_SIZE63 * DATA_SIZE63);
    std::vector<int, aligned_allocator<int>> embedding64(TABLE_SIZE64 * DATA_SIZE64);
    std::vector<int, aligned_allocator<int>> embedding65(TABLE_SIZE65 * DATA_SIZE65);
    std::vector<int, aligned_allocator<int>> embedding66(TABLE_SIZE66 * DATA_SIZE66);
    std::vector<int, aligned_allocator<int>> embedding67(TABLE_SIZE67 * DATA_SIZE67);
    std::vector<int, aligned_allocator<int>> embedding68(TABLE_SIZE68 * DATA_SIZE68);
    std::vector<int, aligned_allocator<int>> embedding69(TABLE_SIZE69 * DATA_SIZE69);
    std::vector<int, aligned_allocator<int>> embedding70(TABLE_SIZE70 * DATA_SIZE70);
    std::vector<int, aligned_allocator<int>> embedding71(TABLE_SIZE71 * DATA_SIZE71);
    std::vector<int, aligned_allocator<int>> embedding72(TABLE_SIZE72 * DATA_SIZE72);
    std::vector<int, aligned_allocator<int>> embedding73(TABLE_SIZE73 * DATA_SIZE73);
    std::vector<int, aligned_allocator<int>> embedding74(TABLE_SIZE74 * DATA_SIZE74);
    std::vector<int, aligned_allocator<int>> embedding75(TABLE_SIZE75 * DATA_SIZE75);
    std::vector<int, aligned_allocator<int>> embedding76(TABLE_SIZE76 * DATA_SIZE76);
    std::vector<int, aligned_allocator<int>> embedding77(TABLE_SIZE77 * DATA_SIZE77);
    std::vector<int, aligned_allocator<int>> embedding78(TABLE_SIZE78 * DATA_SIZE78);
    std::vector<int, aligned_allocator<int>> embedding79(TABLE_SIZE79 * DATA_SIZE79);
    std::vector<int, aligned_allocator<int>> embedding80(TABLE_SIZE80 * DATA_SIZE80);
    std::vector<int, aligned_allocator<int>> embedding81(TABLE_SIZE81 * DATA_SIZE81);
    std::vector<int, aligned_allocator<int>> embedding82(TABLE_SIZE82 * DATA_SIZE82);
    std::vector<int, aligned_allocator<int>> embedding83(TABLE_SIZE83 * DATA_SIZE83);
    std::vector<int, aligned_allocator<int>> embedding84(TABLE_SIZE84 * DATA_SIZE84);
    std::vector<int, aligned_allocator<int>> embedding85(TABLE_SIZE85 * DATA_SIZE85);
    std::vector<int, aligned_allocator<int>> embedding86(TABLE_SIZE86 * DATA_SIZE86);
    std::vector<int, aligned_allocator<int>> embedding87(TABLE_SIZE87 * DATA_SIZE87);
    std::vector<int, aligned_allocator<int>> embedding88(TABLE_SIZE88 * DATA_SIZE88);
    std::vector<int, aligned_allocator<int>> embedding89(TABLE_SIZE89 * DATA_SIZE89);
    std::vector<int, aligned_allocator<int>> embedding90(TABLE_SIZE90 * DATA_SIZE90);
    std::vector<int, aligned_allocator<int>> embedding91(TABLE_SIZE91 * DATA_SIZE91);
    std::vector<int, aligned_allocator<int>> embedding92(TABLE_SIZE92 * DATA_SIZE92);
    std::vector<int, aligned_allocator<int>> embedding93(TABLE_SIZE93 * DATA_SIZE93);
    std::vector<int, aligned_allocator<int>> embedding94(TABLE_SIZE94 * DATA_SIZE94);
    std::vector<int, aligned_allocator<int>> embedding95(TABLE_SIZE95 * DATA_SIZE95);
    std::vector<int, aligned_allocator<int>> embedding96(TABLE_SIZE96 * DATA_SIZE96);
    std::vector<int, aligned_allocator<int>> embedding97(TABLE_SIZE97 * DATA_SIZE97);
    std::vector<int, aligned_allocator<int>> embedding98(TABLE_SIZE98 * DATA_SIZE98);
    std::vector<int, aligned_allocator<int>> embedding99(TABLE_SIZE99 * DATA_SIZE99);
    std::vector<int, aligned_allocator<int>> embedding100(TABLE_SIZE100 * DATA_SIZE100);
    std::vector<int, aligned_allocator<int>> embedding101(TABLE_SIZE101 * DATA_SIZE101);
    std::vector<int, aligned_allocator<int>> embedding102(TABLE_SIZE102 * DATA_SIZE102);
    std::vector<int, aligned_allocator<int>> embedding103(TABLE_SIZE103 * DATA_SIZE103);
    std::vector<int, aligned_allocator<int>> embedding104(TABLE_SIZE104 * DATA_SIZE104);
    std::vector<int, aligned_allocator<int>> embedding105(TABLE_SIZE105 * DATA_SIZE105);
    std::vector<int, aligned_allocator<int>> embedding106(TABLE_SIZE106 * DATA_SIZE106);
    std::vector<int, aligned_allocator<int>> embedding107(TABLE_SIZE107 * DATA_SIZE107);
    std::vector<int, aligned_allocator<int>> embedding108(TABLE_SIZE108 * DATA_SIZE108);
    std::vector<int, aligned_allocator<int>> embedding109(TABLE_SIZE109 * DATA_SIZE109);
    std::vector<int, aligned_allocator<int>> embedding110(TABLE_SIZE110 * DATA_SIZE110);
    std::vector<int, aligned_allocator<int>> embedding111(TABLE_SIZE111 * DATA_SIZE111);
    std::vector<int, aligned_allocator<int>> embedding112(TABLE_SIZE112 * DATA_SIZE112);
    std::vector<int, aligned_allocator<int>> embedding113(TABLE_SIZE113 * DATA_SIZE113);
    std::vector<int, aligned_allocator<int>> embedding114(TABLE_SIZE114 * DATA_SIZE114);
    std::vector<int, aligned_allocator<int>> embedding115(TABLE_SIZE115 * DATA_SIZE115);
    std::vector<int, aligned_allocator<int>> embedding116(TABLE_SIZE116 * DATA_SIZE116);
    std::vector<int, aligned_allocator<int>> embedding117(TABLE_SIZE117 * DATA_SIZE117);
    std::vector<int, aligned_allocator<int>> embedding118(TABLE_SIZE118 * DATA_SIZE118);
    std::vector<int, aligned_allocator<int>> embedding119(TABLE_SIZE119 * DATA_SIZE119);
    std::vector<int, aligned_allocator<int>> embedding120(TABLE_SIZE120 * DATA_SIZE120);
    std::vector<int, aligned_allocator<int>> embedding121(TABLE_SIZE121 * DATA_SIZE121);
    std::vector<int, aligned_allocator<int>> embedding122(TABLE_SIZE122 * DATA_SIZE122);
    std::vector<int, aligned_allocator<int>> embedding123(TABLE_SIZE123 * DATA_SIZE123);
    std::vector<int, aligned_allocator<int>> embedding124(TABLE_SIZE124 * DATA_SIZE124);
    std::vector<int, aligned_allocator<int>> embedding125(TABLE_SIZE125 * DATA_SIZE125);
    std::vector<int, aligned_allocator<int>> embedding126(TABLE_SIZE126 * DATA_SIZE126);
    std::vector<int, aligned_allocator<int>> embedding127(TABLE_SIZE127 * DATA_SIZE127);
//////////////////////////////   TEMPLATE END  //////////////////////////////
    std::vector<int, aligned_allocator<int>> access_idx(BATCH_NUM * BATCH_SIZE * TABLE_NUM);
    std::vector<int, aligned_allocator<int>> source_hw_results(BATCH_NUM * BATCH_SIZE, 0);
    std::vector<int, aligned_allocator<int>> source_sw_results(BATCH_NUM * BATCH_SIZE, 0);
    
    // generate embedding table
//////////////////////////////   TEMPLATE START  //////////////////////////////
    for (int i = 0 ; i < TABLE_SIZE0 ; i++) {
        for (int j = 0; j < DATA_SIZE0; j++) {
            embedding0[i * DATA_SIZE0 + j] = i * TABLE_NUM + 0;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE1 ; i++) {
        for (int j = 0; j < DATA_SIZE1; j++) {
            embedding1[i * DATA_SIZE1 + j] = i * TABLE_NUM + 1;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE2 ; i++) {
        for (int j = 0; j < DATA_SIZE2; j++) {
            embedding2[i * DATA_SIZE2 + j] = i * TABLE_NUM + 2;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE3 ; i++) {
        for (int j = 0; j < DATA_SIZE3; j++) {
            embedding3[i * DATA_SIZE3 + j] = i * TABLE_NUM + 3;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE4 ; i++) {
        for (int j = 0; j < DATA_SIZE4; j++) {
            embedding4[i * DATA_SIZE4 + j] = i * TABLE_NUM + 4;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE5 ; i++) {
        for (int j = 0; j < DATA_SIZE5; j++) {
            embedding5[i * DATA_SIZE5 + j] = i * TABLE_NUM + 5;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE6 ; i++) {
        for (int j = 0; j < DATA_SIZE6; j++) {
            embedding6[i * DATA_SIZE6 + j] = i * TABLE_NUM + 6;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE7 ; i++) {
        for (int j = 0; j < DATA_SIZE7; j++) {
            embedding7[i * DATA_SIZE7 + j] = i * TABLE_NUM + 7;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE8 ; i++) {
        for (int j = 0; j < DATA_SIZE8; j++) {
            embedding8[i * DATA_SIZE8 + j] = i * TABLE_NUM + 8;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE9 ; i++) {
        for (int j = 0; j < DATA_SIZE9; j++) {
            embedding9[i * DATA_SIZE9 + j] = i * TABLE_NUM + 9;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE10 ; i++) {
        for (int j = 0; j < DATA_SIZE10; j++) {
            embedding10[i * DATA_SIZE10 + j] = i * TABLE_NUM + 10;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE11 ; i++) {
        for (int j = 0; j < DATA_SIZE11; j++) {
            embedding11[i * DATA_SIZE11 + j] = i * TABLE_NUM + 11;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE12 ; i++) {
        for (int j = 0; j < DATA_SIZE12; j++) {
            embedding12[i * DATA_SIZE12 + j] = i * TABLE_NUM + 12;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE13 ; i++) {
        for (int j = 0; j < DATA_SIZE13; j++) {
            embedding13[i * DATA_SIZE13 + j] = i * TABLE_NUM + 13;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE14 ; i++) {
        for (int j = 0; j < DATA_SIZE14; j++) {
            embedding14[i * DATA_SIZE14 + j] = i * TABLE_NUM + 14;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE15 ; i++) {
        for (int j = 0; j < DATA_SIZE15; j++) {
            embedding15[i * DATA_SIZE15 + j] = i * TABLE_NUM + 15;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE16 ; i++) {
        for (int j = 0; j < DATA_SIZE16; j++) {
            embedding16[i * DATA_SIZE16 + j] = i * TABLE_NUM + 16;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE17 ; i++) {
        for (int j = 0; j < DATA_SIZE17; j++) {
            embedding17[i * DATA_SIZE17 + j] = i * TABLE_NUM + 17;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE18 ; i++) {
        for (int j = 0; j < DATA_SIZE18; j++) {
            embedding18[i * DATA_SIZE18 + j] = i * TABLE_NUM + 18;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE19 ; i++) {
        for (int j = 0; j < DATA_SIZE19; j++) {
            embedding19[i * DATA_SIZE19 + j] = i * TABLE_NUM + 19;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE20 ; i++) {
        for (int j = 0; j < DATA_SIZE20; j++) {
            embedding20[i * DATA_SIZE20 + j] = i * TABLE_NUM + 20;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE21 ; i++) {
        for (int j = 0; j < DATA_SIZE21; j++) {
            embedding21[i * DATA_SIZE21 + j] = i * TABLE_NUM + 21;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE22 ; i++) {
        for (int j = 0; j < DATA_SIZE22; j++) {
            embedding22[i * DATA_SIZE22 + j] = i * TABLE_NUM + 22;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE23 ; i++) {
        for (int j = 0; j < DATA_SIZE23; j++) {
            embedding23[i * DATA_SIZE23 + j] = i * TABLE_NUM + 23;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE24 ; i++) {
        for (int j = 0; j < DATA_SIZE24; j++) {
            embedding24[i * DATA_SIZE24 + j] = i * TABLE_NUM + 24;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE25 ; i++) {
        for (int j = 0; j < DATA_SIZE25; j++) {
            embedding25[i * DATA_SIZE25 + j] = i * TABLE_NUM + 25;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE26 ; i++) {
        for (int j = 0; j < DATA_SIZE26; j++) {
            embedding26[i * DATA_SIZE26 + j] = i * TABLE_NUM + 26;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE27 ; i++) {
        for (int j = 0; j < DATA_SIZE27; j++) {
            embedding27[i * DATA_SIZE27 + j] = i * TABLE_NUM + 27;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE28 ; i++) {
        for (int j = 0; j < DATA_SIZE28; j++) {
            embedding28[i * DATA_SIZE28 + j] = i * TABLE_NUM + 28;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE29 ; i++) {
        for (int j = 0; j < DATA_SIZE29; j++) {
            embedding29[i * DATA_SIZE29 + j] = i * TABLE_NUM + 29;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE30 ; i++) {
        for (int j = 0; j < DATA_SIZE30; j++) {
            embedding30[i * DATA_SIZE30 + j] = i * TABLE_NUM + 30;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE31 ; i++) {
        for (int j = 0; j < DATA_SIZE31; j++) {
            embedding31[i * DATA_SIZE31 + j] = i * TABLE_NUM + 31;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE32 ; i++) {
        for (int j = 0; j < DATA_SIZE32; j++) {
            embedding32[i * DATA_SIZE32 + j] = i * TABLE_NUM + 32;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE33 ; i++) {
        for (int j = 0; j < DATA_SIZE33; j++) {
            embedding33[i * DATA_SIZE33 + j] = i * TABLE_NUM + 33;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE34 ; i++) {
        for (int j = 0; j < DATA_SIZE34; j++) {
            embedding34[i * DATA_SIZE34 + j] = i * TABLE_NUM + 34;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE35 ; i++) {
        for (int j = 0; j < DATA_SIZE35; j++) {
            embedding35[i * DATA_SIZE35 + j] = i * TABLE_NUM + 35;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE36 ; i++) {
        for (int j = 0; j < DATA_SIZE36; j++) {
            embedding36[i * DATA_SIZE36 + j] = i * TABLE_NUM + 36;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE37 ; i++) {
        for (int j = 0; j < DATA_SIZE37; j++) {
            embedding37[i * DATA_SIZE37 + j] = i * TABLE_NUM + 37;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE38 ; i++) {
        for (int j = 0; j < DATA_SIZE38; j++) {
            embedding38[i * DATA_SIZE38 + j] = i * TABLE_NUM + 38;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE39 ; i++) {
        for (int j = 0; j < DATA_SIZE39; j++) {
            embedding39[i * DATA_SIZE39 + j] = i * TABLE_NUM + 39;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE40 ; i++) {
        for (int j = 0; j < DATA_SIZE40; j++) {
            embedding40[i * DATA_SIZE40 + j] = i * TABLE_NUM + 40;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE41 ; i++) {
        for (int j = 0; j < DATA_SIZE41; j++) {
            embedding41[i * DATA_SIZE41 + j] = i * TABLE_NUM + 41;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE42 ; i++) {
        for (int j = 0; j < DATA_SIZE42; j++) {
            embedding42[i * DATA_SIZE42 + j] = i * TABLE_NUM + 42;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE43 ; i++) {
        for (int j = 0; j < DATA_SIZE43; j++) {
            embedding43[i * DATA_SIZE43 + j] = i * TABLE_NUM + 43;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE44 ; i++) {
        for (int j = 0; j < DATA_SIZE44; j++) {
            embedding44[i * DATA_SIZE44 + j] = i * TABLE_NUM + 44;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE45 ; i++) {
        for (int j = 0; j < DATA_SIZE45; j++) {
            embedding45[i * DATA_SIZE45 + j] = i * TABLE_NUM + 45;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE46 ; i++) {
        for (int j = 0; j < DATA_SIZE46; j++) {
            embedding46[i * DATA_SIZE46 + j] = i * TABLE_NUM + 46;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE47 ; i++) {
        for (int j = 0; j < DATA_SIZE47; j++) {
            embedding47[i * DATA_SIZE47 + j] = i * TABLE_NUM + 47;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE48 ; i++) {
        for (int j = 0; j < DATA_SIZE48; j++) {
            embedding48[i * DATA_SIZE48 + j] = i * TABLE_NUM + 48;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE49 ; i++) {
        for (int j = 0; j < DATA_SIZE49; j++) {
            embedding49[i * DATA_SIZE49 + j] = i * TABLE_NUM + 49;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE50 ; i++) {
        for (int j = 0; j < DATA_SIZE50; j++) {
            embedding50[i * DATA_SIZE50 + j] = i * TABLE_NUM + 50;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE51 ; i++) {
        for (int j = 0; j < DATA_SIZE51; j++) {
            embedding51[i * DATA_SIZE51 + j] = i * TABLE_NUM + 51;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE52 ; i++) {
        for (int j = 0; j < DATA_SIZE52; j++) {
            embedding52[i * DATA_SIZE52 + j] = i * TABLE_NUM + 52;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE53 ; i++) {
        for (int j = 0; j < DATA_SIZE53; j++) {
            embedding53[i * DATA_SIZE53 + j] = i * TABLE_NUM + 53;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE54 ; i++) {
        for (int j = 0; j < DATA_SIZE54; j++) {
            embedding54[i * DATA_SIZE54 + j] = i * TABLE_NUM + 54;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE55 ; i++) {
        for (int j = 0; j < DATA_SIZE55; j++) {
            embedding55[i * DATA_SIZE55 + j] = i * TABLE_NUM + 55;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE56 ; i++) {
        for (int j = 0; j < DATA_SIZE56; j++) {
            embedding56[i * DATA_SIZE56 + j] = i * TABLE_NUM + 56;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE57 ; i++) {
        for (int j = 0; j < DATA_SIZE57; j++) {
            embedding57[i * DATA_SIZE57 + j] = i * TABLE_NUM + 57;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE58 ; i++) {
        for (int j = 0; j < DATA_SIZE58; j++) {
            embedding58[i * DATA_SIZE58 + j] = i * TABLE_NUM + 58;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE59 ; i++) {
        for (int j = 0; j < DATA_SIZE59; j++) {
            embedding59[i * DATA_SIZE59 + j] = i * TABLE_NUM + 59;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE60 ; i++) {
        for (int j = 0; j < DATA_SIZE60; j++) {
            embedding60[i * DATA_SIZE60 + j] = i * TABLE_NUM + 60;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE61 ; i++) {
        for (int j = 0; j < DATA_SIZE61; j++) {
            embedding61[i * DATA_SIZE61 + j] = i * TABLE_NUM + 61;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE62 ; i++) {
        for (int j = 0; j < DATA_SIZE62; j++) {
            embedding62[i * DATA_SIZE62 + j] = i * TABLE_NUM + 62;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE63 ; i++) {
        for (int j = 0; j < DATA_SIZE63; j++) {
            embedding63[i * DATA_SIZE63 + j] = i * TABLE_NUM + 63;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE64 ; i++) {
        for (int j = 0; j < DATA_SIZE64; j++) {
            embedding64[i * DATA_SIZE64 + j] = i * TABLE_NUM + 64;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE65 ; i++) {
        for (int j = 0; j < DATA_SIZE65; j++) {
            embedding65[i * DATA_SIZE65 + j] = i * TABLE_NUM + 65;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE66 ; i++) {
        for (int j = 0; j < DATA_SIZE66; j++) {
            embedding66[i * DATA_SIZE66 + j] = i * TABLE_NUM + 66;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE67 ; i++) {
        for (int j = 0; j < DATA_SIZE67; j++) {
            embedding67[i * DATA_SIZE67 + j] = i * TABLE_NUM + 67;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE68 ; i++) {
        for (int j = 0; j < DATA_SIZE68; j++) {
            embedding68[i * DATA_SIZE68 + j] = i * TABLE_NUM + 68;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE69 ; i++) {
        for (int j = 0; j < DATA_SIZE69; j++) {
            embedding69[i * DATA_SIZE69 + j] = i * TABLE_NUM + 69;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE70 ; i++) {
        for (int j = 0; j < DATA_SIZE70; j++) {
            embedding70[i * DATA_SIZE70 + j] = i * TABLE_NUM + 70;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE71 ; i++) {
        for (int j = 0; j < DATA_SIZE71; j++) {
            embedding71[i * DATA_SIZE71 + j] = i * TABLE_NUM + 71;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE72 ; i++) {
        for (int j = 0; j < DATA_SIZE72; j++) {
            embedding72[i * DATA_SIZE72 + j] = i * TABLE_NUM + 72;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE73 ; i++) {
        for (int j = 0; j < DATA_SIZE73; j++) {
            embedding73[i * DATA_SIZE73 + j] = i * TABLE_NUM + 73;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE74 ; i++) {
        for (int j = 0; j < DATA_SIZE74; j++) {
            embedding74[i * DATA_SIZE74 + j] = i * TABLE_NUM + 74;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE75 ; i++) {
        for (int j = 0; j < DATA_SIZE75; j++) {
            embedding75[i * DATA_SIZE75 + j] = i * TABLE_NUM + 75;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE76 ; i++) {
        for (int j = 0; j < DATA_SIZE76; j++) {
            embedding76[i * DATA_SIZE76 + j] = i * TABLE_NUM + 76;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE77 ; i++) {
        for (int j = 0; j < DATA_SIZE77; j++) {
            embedding77[i * DATA_SIZE77 + j] = i * TABLE_NUM + 77;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE78 ; i++) {
        for (int j = 0; j < DATA_SIZE78; j++) {
            embedding78[i * DATA_SIZE78 + j] = i * TABLE_NUM + 78;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE79 ; i++) {
        for (int j = 0; j < DATA_SIZE79; j++) {
            embedding79[i * DATA_SIZE79 + j] = i * TABLE_NUM + 79;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE80 ; i++) {
        for (int j = 0; j < DATA_SIZE80; j++) {
            embedding80[i * DATA_SIZE80 + j] = i * TABLE_NUM + 80;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE81 ; i++) {
        for (int j = 0; j < DATA_SIZE81; j++) {
            embedding81[i * DATA_SIZE81 + j] = i * TABLE_NUM + 81;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE82 ; i++) {
        for (int j = 0; j < DATA_SIZE82; j++) {
            embedding82[i * DATA_SIZE82 + j] = i * TABLE_NUM + 82;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE83 ; i++) {
        for (int j = 0; j < DATA_SIZE83; j++) {
            embedding83[i * DATA_SIZE83 + j] = i * TABLE_NUM + 83;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE84 ; i++) {
        for (int j = 0; j < DATA_SIZE84; j++) {
            embedding84[i * DATA_SIZE84 + j] = i * TABLE_NUM + 84;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE85 ; i++) {
        for (int j = 0; j < DATA_SIZE85; j++) {
            embedding85[i * DATA_SIZE85 + j] = i * TABLE_NUM + 85;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE86 ; i++) {
        for (int j = 0; j < DATA_SIZE86; j++) {
            embedding86[i * DATA_SIZE86 + j] = i * TABLE_NUM + 86;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE87 ; i++) {
        for (int j = 0; j < DATA_SIZE87; j++) {
            embedding87[i * DATA_SIZE87 + j] = i * TABLE_NUM + 87;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE88 ; i++) {
        for (int j = 0; j < DATA_SIZE88; j++) {
            embedding88[i * DATA_SIZE88 + j] = i * TABLE_NUM + 88;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE89 ; i++) {
        for (int j = 0; j < DATA_SIZE89; j++) {
            embedding89[i * DATA_SIZE89 + j] = i * TABLE_NUM + 89;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE90 ; i++) {
        for (int j = 0; j < DATA_SIZE90; j++) {
            embedding90[i * DATA_SIZE90 + j] = i * TABLE_NUM + 90;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE91 ; i++) {
        for (int j = 0; j < DATA_SIZE91; j++) {
            embedding91[i * DATA_SIZE91 + j] = i * TABLE_NUM + 91;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE92 ; i++) {
        for (int j = 0; j < DATA_SIZE92; j++) {
            embedding92[i * DATA_SIZE92 + j] = i * TABLE_NUM + 92;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE93 ; i++) {
        for (int j = 0; j < DATA_SIZE93; j++) {
            embedding93[i * DATA_SIZE93 + j] = i * TABLE_NUM + 93;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE94 ; i++) {
        for (int j = 0; j < DATA_SIZE94; j++) {
            embedding94[i * DATA_SIZE94 + j] = i * TABLE_NUM + 94;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE95 ; i++) {
        for (int j = 0; j < DATA_SIZE95; j++) {
            embedding95[i * DATA_SIZE95 + j] = i * TABLE_NUM + 95;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE96 ; i++) {
        for (int j = 0; j < DATA_SIZE96; j++) {
            embedding96[i * DATA_SIZE96 + j] = i * TABLE_NUM + 96;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE97 ; i++) {
        for (int j = 0; j < DATA_SIZE97; j++) {
            embedding97[i * DATA_SIZE97 + j] = i * TABLE_NUM + 97;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE98 ; i++) {
        for (int j = 0; j < DATA_SIZE98; j++) {
            embedding98[i * DATA_SIZE98 + j] = i * TABLE_NUM + 98;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE99 ; i++) {
        for (int j = 0; j < DATA_SIZE99; j++) {
            embedding99[i * DATA_SIZE99 + j] = i * TABLE_NUM + 99;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE100 ; i++) {
        for (int j = 0; j < DATA_SIZE100; j++) {
            embedding100[i * DATA_SIZE100 + j] = i * TABLE_NUM + 100;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE101 ; i++) {
        for (int j = 0; j < DATA_SIZE101; j++) {
            embedding101[i * DATA_SIZE101 + j] = i * TABLE_NUM + 101;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE102 ; i++) {
        for (int j = 0; j < DATA_SIZE102; j++) {
            embedding102[i * DATA_SIZE102 + j] = i * TABLE_NUM + 102;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE103 ; i++) {
        for (int j = 0; j < DATA_SIZE103; j++) {
            embedding103[i * DATA_SIZE103 + j] = i * TABLE_NUM + 103;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE104 ; i++) {
        for (int j = 0; j < DATA_SIZE104; j++) {
            embedding104[i * DATA_SIZE104 + j] = i * TABLE_NUM + 104;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE105 ; i++) {
        for (int j = 0; j < DATA_SIZE105; j++) {
            embedding105[i * DATA_SIZE105 + j] = i * TABLE_NUM + 105;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE106 ; i++) {
        for (int j = 0; j < DATA_SIZE106; j++) {
            embedding106[i * DATA_SIZE106 + j] = i * TABLE_NUM + 106;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE107 ; i++) {
        for (int j = 0; j < DATA_SIZE107; j++) {
            embedding107[i * DATA_SIZE107 + j] = i * TABLE_NUM + 107;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE108 ; i++) {
        for (int j = 0; j < DATA_SIZE108; j++) {
            embedding108[i * DATA_SIZE108 + j] = i * TABLE_NUM + 108;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE109 ; i++) {
        for (int j = 0; j < DATA_SIZE109; j++) {
            embedding109[i * DATA_SIZE109 + j] = i * TABLE_NUM + 109;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE110 ; i++) {
        for (int j = 0; j < DATA_SIZE110; j++) {
            embedding110[i * DATA_SIZE110 + j] = i * TABLE_NUM + 110;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE111 ; i++) {
        for (int j = 0; j < DATA_SIZE111; j++) {
            embedding111[i * DATA_SIZE111 + j] = i * TABLE_NUM + 111;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE112 ; i++) {
        for (int j = 0; j < DATA_SIZE112; j++) {
            embedding112[i * DATA_SIZE112 + j] = i * TABLE_NUM + 112;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE113 ; i++) {
        for (int j = 0; j < DATA_SIZE113; j++) {
            embedding113[i * DATA_SIZE113 + j] = i * TABLE_NUM + 113;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE114 ; i++) {
        for (int j = 0; j < DATA_SIZE114; j++) {
            embedding114[i * DATA_SIZE114 + j] = i * TABLE_NUM + 114;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE115 ; i++) {
        for (int j = 0; j < DATA_SIZE115; j++) {
            embedding115[i * DATA_SIZE115 + j] = i * TABLE_NUM + 115;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE116 ; i++) {
        for (int j = 0; j < DATA_SIZE116; j++) {
            embedding116[i * DATA_SIZE116 + j] = i * TABLE_NUM + 116;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE117 ; i++) {
        for (int j = 0; j < DATA_SIZE117; j++) {
            embedding117[i * DATA_SIZE117 + j] = i * TABLE_NUM + 117;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE118 ; i++) {
        for (int j = 0; j < DATA_SIZE118; j++) {
            embedding118[i * DATA_SIZE118 + j] = i * TABLE_NUM + 118;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE119 ; i++) {
        for (int j = 0; j < DATA_SIZE119; j++) {
            embedding119[i * DATA_SIZE119 + j] = i * TABLE_NUM + 119;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE120 ; i++) {
        for (int j = 0; j < DATA_SIZE120; j++) {
            embedding120[i * DATA_SIZE120 + j] = i * TABLE_NUM + 120;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE121 ; i++) {
        for (int j = 0; j < DATA_SIZE121; j++) {
            embedding121[i * DATA_SIZE121 + j] = i * TABLE_NUM + 121;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE122 ; i++) {
        for (int j = 0; j < DATA_SIZE122; j++) {
            embedding122[i * DATA_SIZE122 + j] = i * TABLE_NUM + 122;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE123 ; i++) {
        for (int j = 0; j < DATA_SIZE123; j++) {
            embedding123[i * DATA_SIZE123 + j] = i * TABLE_NUM + 123;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE124 ; i++) {
        for (int j = 0; j < DATA_SIZE124; j++) {
            embedding124[i * DATA_SIZE124 + j] = i * TABLE_NUM + 124;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE125 ; i++) {
        for (int j = 0; j < DATA_SIZE125; j++) {
            embedding125[i * DATA_SIZE125 + j] = i * TABLE_NUM + 125;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE126 ; i++) {
        for (int j = 0; j < DATA_SIZE126; j++) {
            embedding126[i * DATA_SIZE126 + j] = i * TABLE_NUM + 126;
        }
    }
    for (int i = 0 ; i < TABLE_SIZE127 ; i++) {
        for (int j = 0; j < DATA_SIZE127; j++) {
            embedding127[i * DATA_SIZE127 + j] = i * TABLE_NUM + 127;
        }
    }
//////////////////////////////   TEMPLATE END  //////////////////////////////
    // software result
    for (int i = 0 ; i < BATCH_NUM; i++) {
        
        for (int j = 0; j < BATCH_SIZE; j++) {

            int result_addr = i * BATCH_SIZE + j;
            int idx_base_addr = result_addr * TABLE_NUM;

//////////////////////////////   TEMPLATE START  //////////////////////////////
            access_idx[idx_base_addr + 0] = j;
            for (int k = 0; k < DATA_SIZE0; k++) {
                source_sw_results[result_addr] += embedding0[access_idx[idx_base_addr + 0] * DATA_SIZE0 + k];
            }
            access_idx[idx_base_addr + 1] = j;
            for (int k = 0; k < DATA_SIZE1; k++) {
                source_sw_results[result_addr] += embedding1[access_idx[idx_base_addr + 1] * DATA_SIZE1 + k];
            }
            access_idx[idx_base_addr + 2] = j;
            for (int k = 0; k < DATA_SIZE2; k++) {
                source_sw_results[result_addr] += embedding2[access_idx[idx_base_addr + 2] * DATA_SIZE2 + k];
            }
            access_idx[idx_base_addr + 3] = j;
            for (int k = 0; k < DATA_SIZE3; k++) {
                source_sw_results[result_addr] += embedding3[access_idx[idx_base_addr + 3] * DATA_SIZE3 + k];
            }
            access_idx[idx_base_addr + 4] = j;
            for (int k = 0; k < DATA_SIZE4; k++) {
                source_sw_results[result_addr] += embedding4[access_idx[idx_base_addr + 4] * DATA_SIZE4 + k];
            }
            access_idx[idx_base_addr + 5] = j;
            for (int k = 0; k < DATA_SIZE5; k++) {
                source_sw_results[result_addr] += embedding5[access_idx[idx_base_addr + 5] * DATA_SIZE5 + k];
            }
            access_idx[idx_base_addr + 6] = j;
            for (int k = 0; k < DATA_SIZE6; k++) {
                source_sw_results[result_addr] += embedding6[access_idx[idx_base_addr + 6] * DATA_SIZE6 + k];
            }
            access_idx[idx_base_addr + 7] = j;
            for (int k = 0; k < DATA_SIZE7; k++) {
                source_sw_results[result_addr] += embedding7[access_idx[idx_base_addr + 7] * DATA_SIZE7 + k];
            }
            access_idx[idx_base_addr + 8] = j;
            for (int k = 0; k < DATA_SIZE8; k++) {
                source_sw_results[result_addr] += embedding8[access_idx[idx_base_addr + 8] * DATA_SIZE8 + k];
            }
            access_idx[idx_base_addr + 9] = j;
            for (int k = 0; k < DATA_SIZE9; k++) {
                source_sw_results[result_addr] += embedding9[access_idx[idx_base_addr + 9] * DATA_SIZE9 + k];
            }
            access_idx[idx_base_addr + 10] = j;
            for (int k = 0; k < DATA_SIZE10; k++) {
                source_sw_results[result_addr] += embedding10[access_idx[idx_base_addr + 10] * DATA_SIZE10 + k];
            }
            access_idx[idx_base_addr + 11] = j;
            for (int k = 0; k < DATA_SIZE11; k++) {
                source_sw_results[result_addr] += embedding11[access_idx[idx_base_addr + 11] * DATA_SIZE11 + k];
            }
            access_idx[idx_base_addr + 12] = j;
            for (int k = 0; k < DATA_SIZE12; k++) {
                source_sw_results[result_addr] += embedding12[access_idx[idx_base_addr + 12] * DATA_SIZE12 + k];
            }
            access_idx[idx_base_addr + 13] = j;
            for (int k = 0; k < DATA_SIZE13; k++) {
                source_sw_results[result_addr] += embedding13[access_idx[idx_base_addr + 13] * DATA_SIZE13 + k];
            }
            access_idx[idx_base_addr + 14] = j;
            for (int k = 0; k < DATA_SIZE14; k++) {
                source_sw_results[result_addr] += embedding14[access_idx[idx_base_addr + 14] * DATA_SIZE14 + k];
            }
            access_idx[idx_base_addr + 15] = j;
            for (int k = 0; k < DATA_SIZE15; k++) {
                source_sw_results[result_addr] += embedding15[access_idx[idx_base_addr + 15] * DATA_SIZE15 + k];
            }
            access_idx[idx_base_addr + 16] = j;
            for (int k = 0; k < DATA_SIZE16; k++) {
                source_sw_results[result_addr] += embedding16[access_idx[idx_base_addr + 16] * DATA_SIZE16 + k];
            }
            access_idx[idx_base_addr + 17] = j;
            for (int k = 0; k < DATA_SIZE17; k++) {
                source_sw_results[result_addr] += embedding17[access_idx[idx_base_addr + 17] * DATA_SIZE17 + k];
            }
            access_idx[idx_base_addr + 18] = j;
            for (int k = 0; k < DATA_SIZE18; k++) {
                source_sw_results[result_addr] += embedding18[access_idx[idx_base_addr + 18] * DATA_SIZE18 + k];
            }
            access_idx[idx_base_addr + 19] = j;
            for (int k = 0; k < DATA_SIZE19; k++) {
                source_sw_results[result_addr] += embedding19[access_idx[idx_base_addr + 19] * DATA_SIZE19 + k];
            }
            access_idx[idx_base_addr + 20] = j;
            for (int k = 0; k < DATA_SIZE20; k++) {
                source_sw_results[result_addr] += embedding20[access_idx[idx_base_addr + 20] * DATA_SIZE20 + k];
            }
            access_idx[idx_base_addr + 21] = j;
            for (int k = 0; k < DATA_SIZE21; k++) {
                source_sw_results[result_addr] += embedding21[access_idx[idx_base_addr + 21] * DATA_SIZE21 + k];
            }
            access_idx[idx_base_addr + 22] = j;
            for (int k = 0; k < DATA_SIZE22; k++) {
                source_sw_results[result_addr] += embedding22[access_idx[idx_base_addr + 22] * DATA_SIZE22 + k];
            }
            access_idx[idx_base_addr + 23] = j;
            for (int k = 0; k < DATA_SIZE23; k++) {
                source_sw_results[result_addr] += embedding23[access_idx[idx_base_addr + 23] * DATA_SIZE23 + k];
            }
            access_idx[idx_base_addr + 24] = j;
            for (int k = 0; k < DATA_SIZE24; k++) {
                source_sw_results[result_addr] += embedding24[access_idx[idx_base_addr + 24] * DATA_SIZE24 + k];
            }
            access_idx[idx_base_addr + 25] = j;
            for (int k = 0; k < DATA_SIZE25; k++) {
                source_sw_results[result_addr] += embedding25[access_idx[idx_base_addr + 25] * DATA_SIZE25 + k];
            }
            access_idx[idx_base_addr + 26] = j;
            for (int k = 0; k < DATA_SIZE26; k++) {
                source_sw_results[result_addr] += embedding26[access_idx[idx_base_addr + 26] * DATA_SIZE26 + k];
            }
            access_idx[idx_base_addr + 27] = j;
            for (int k = 0; k < DATA_SIZE27; k++) {
                source_sw_results[result_addr] += embedding27[access_idx[idx_base_addr + 27] * DATA_SIZE27 + k];
            }
            access_idx[idx_base_addr + 28] = j;
            for (int k = 0; k < DATA_SIZE28; k++) {
                source_sw_results[result_addr] += embedding28[access_idx[idx_base_addr + 28] * DATA_SIZE28 + k];
            }
            access_idx[idx_base_addr + 29] = j;
            for (int k = 0; k < DATA_SIZE29; k++) {
                source_sw_results[result_addr] += embedding29[access_idx[idx_base_addr + 29] * DATA_SIZE29 + k];
            }
            access_idx[idx_base_addr + 30] = j;
            for (int k = 0; k < DATA_SIZE30; k++) {
                source_sw_results[result_addr] += embedding30[access_idx[idx_base_addr + 30] * DATA_SIZE30 + k];
            }
            access_idx[idx_base_addr + 31] = j;
            for (int k = 0; k < DATA_SIZE31; k++) {
                source_sw_results[result_addr] += embedding31[access_idx[idx_base_addr + 31] * DATA_SIZE31 + k];
            }
            access_idx[idx_base_addr + 32] = j;
            for (int k = 0; k < DATA_SIZE32; k++) {
                source_sw_results[result_addr] += embedding32[access_idx[idx_base_addr + 32] * DATA_SIZE32 + k];
            }
            access_idx[idx_base_addr + 33] = j;
            for (int k = 0; k < DATA_SIZE33; k++) {
                source_sw_results[result_addr] += embedding33[access_idx[idx_base_addr + 33] * DATA_SIZE33 + k];
            }
            access_idx[idx_base_addr + 34] = j;
            for (int k = 0; k < DATA_SIZE34; k++) {
                source_sw_results[result_addr] += embedding34[access_idx[idx_base_addr + 34] * DATA_SIZE34 + k];
            }
            access_idx[idx_base_addr + 35] = j;
            for (int k = 0; k < DATA_SIZE35; k++) {
                source_sw_results[result_addr] += embedding35[access_idx[idx_base_addr + 35] * DATA_SIZE35 + k];
            }
            access_idx[idx_base_addr + 36] = j;
            for (int k = 0; k < DATA_SIZE36; k++) {
                source_sw_results[result_addr] += embedding36[access_idx[idx_base_addr + 36] * DATA_SIZE36 + k];
            }
            access_idx[idx_base_addr + 37] = j;
            for (int k = 0; k < DATA_SIZE37; k++) {
                source_sw_results[result_addr] += embedding37[access_idx[idx_base_addr + 37] * DATA_SIZE37 + k];
            }
            access_idx[idx_base_addr + 38] = j;
            for (int k = 0; k < DATA_SIZE38; k++) {
                source_sw_results[result_addr] += embedding38[access_idx[idx_base_addr + 38] * DATA_SIZE38 + k];
            }
            access_idx[idx_base_addr + 39] = j;
            for (int k = 0; k < DATA_SIZE39; k++) {
                source_sw_results[result_addr] += embedding39[access_idx[idx_base_addr + 39] * DATA_SIZE39 + k];
            }
            access_idx[idx_base_addr + 40] = j;
            for (int k = 0; k < DATA_SIZE40; k++) {
                source_sw_results[result_addr] += embedding40[access_idx[idx_base_addr + 40] * DATA_SIZE40 + k];
            }
            access_idx[idx_base_addr + 41] = j;
            for (int k = 0; k < DATA_SIZE41; k++) {
                source_sw_results[result_addr] += embedding41[access_idx[idx_base_addr + 41] * DATA_SIZE41 + k];
            }
            access_idx[idx_base_addr + 42] = j;
            for (int k = 0; k < DATA_SIZE42; k++) {
                source_sw_results[result_addr] += embedding42[access_idx[idx_base_addr + 42] * DATA_SIZE42 + k];
            }
            access_idx[idx_base_addr + 43] = j;
            for (int k = 0; k < DATA_SIZE43; k++) {
                source_sw_results[result_addr] += embedding43[access_idx[idx_base_addr + 43] * DATA_SIZE43 + k];
            }
            access_idx[idx_base_addr + 44] = j;
            for (int k = 0; k < DATA_SIZE44; k++) {
                source_sw_results[result_addr] += embedding44[access_idx[idx_base_addr + 44] * DATA_SIZE44 + k];
            }
            access_idx[idx_base_addr + 45] = j;
            for (int k = 0; k < DATA_SIZE45; k++) {
                source_sw_results[result_addr] += embedding45[access_idx[idx_base_addr + 45] * DATA_SIZE45 + k];
            }
            access_idx[idx_base_addr + 46] = j;
            for (int k = 0; k < DATA_SIZE46; k++) {
                source_sw_results[result_addr] += embedding46[access_idx[idx_base_addr + 46] * DATA_SIZE46 + k];
            }
            access_idx[idx_base_addr + 47] = j;
            for (int k = 0; k < DATA_SIZE47; k++) {
                source_sw_results[result_addr] += embedding47[access_idx[idx_base_addr + 47] * DATA_SIZE47 + k];
            }
            access_idx[idx_base_addr + 48] = j;
            for (int k = 0; k < DATA_SIZE48; k++) {
                source_sw_results[result_addr] += embedding48[access_idx[idx_base_addr + 48] * DATA_SIZE48 + k];
            }
            access_idx[idx_base_addr + 49] = j;
            for (int k = 0; k < DATA_SIZE49; k++) {
                source_sw_results[result_addr] += embedding49[access_idx[idx_base_addr + 49] * DATA_SIZE49 + k];
            }
            access_idx[idx_base_addr + 50] = j;
            for (int k = 0; k < DATA_SIZE50; k++) {
                source_sw_results[result_addr] += embedding50[access_idx[idx_base_addr + 50] * DATA_SIZE50 + k];
            }
            access_idx[idx_base_addr + 51] = j;
            for (int k = 0; k < DATA_SIZE51; k++) {
                source_sw_results[result_addr] += embedding51[access_idx[idx_base_addr + 51] * DATA_SIZE51 + k];
            }
            access_idx[idx_base_addr + 52] = j;
            for (int k = 0; k < DATA_SIZE52; k++) {
                source_sw_results[result_addr] += embedding52[access_idx[idx_base_addr + 52] * DATA_SIZE52 + k];
            }
            access_idx[idx_base_addr + 53] = j;
            for (int k = 0; k < DATA_SIZE53; k++) {
                source_sw_results[result_addr] += embedding53[access_idx[idx_base_addr + 53] * DATA_SIZE53 + k];
            }
            access_idx[idx_base_addr + 54] = j;
            for (int k = 0; k < DATA_SIZE54; k++) {
                source_sw_results[result_addr] += embedding54[access_idx[idx_base_addr + 54] * DATA_SIZE54 + k];
            }
            access_idx[idx_base_addr + 55] = j;
            for (int k = 0; k < DATA_SIZE55; k++) {
                source_sw_results[result_addr] += embedding55[access_idx[idx_base_addr + 55] * DATA_SIZE55 + k];
            }
            access_idx[idx_base_addr + 56] = j;
            for (int k = 0; k < DATA_SIZE56; k++) {
                source_sw_results[result_addr] += embedding56[access_idx[idx_base_addr + 56] * DATA_SIZE56 + k];
            }
            access_idx[idx_base_addr + 57] = j;
            for (int k = 0; k < DATA_SIZE57; k++) {
                source_sw_results[result_addr] += embedding57[access_idx[idx_base_addr + 57] * DATA_SIZE57 + k];
            }
            access_idx[idx_base_addr + 58] = j;
            for (int k = 0; k < DATA_SIZE58; k++) {
                source_sw_results[result_addr] += embedding58[access_idx[idx_base_addr + 58] * DATA_SIZE58 + k];
            }
            access_idx[idx_base_addr + 59] = j;
            for (int k = 0; k < DATA_SIZE59; k++) {
                source_sw_results[result_addr] += embedding59[access_idx[idx_base_addr + 59] * DATA_SIZE59 + k];
            }
            access_idx[idx_base_addr + 60] = j;
            for (int k = 0; k < DATA_SIZE60; k++) {
                source_sw_results[result_addr] += embedding60[access_idx[idx_base_addr + 60] * DATA_SIZE60 + k];
            }
            access_idx[idx_base_addr + 61] = j;
            for (int k = 0; k < DATA_SIZE61; k++) {
                source_sw_results[result_addr] += embedding61[access_idx[idx_base_addr + 61] * DATA_SIZE61 + k];
            }
            access_idx[idx_base_addr + 62] = j;
            for (int k = 0; k < DATA_SIZE62; k++) {
                source_sw_results[result_addr] += embedding62[access_idx[idx_base_addr + 62] * DATA_SIZE62 + k];
            }
            access_idx[idx_base_addr + 63] = j;
            for (int k = 0; k < DATA_SIZE63; k++) {
                source_sw_results[result_addr] += embedding63[access_idx[idx_base_addr + 63] * DATA_SIZE63 + k];
            }
            access_idx[idx_base_addr + 64] = j;
            for (int k = 0; k < DATA_SIZE64; k++) {
                source_sw_results[result_addr] += embedding64[access_idx[idx_base_addr + 64] * DATA_SIZE64 + k];
            }
            access_idx[idx_base_addr + 65] = j;
            for (int k = 0; k < DATA_SIZE65; k++) {
                source_sw_results[result_addr] += embedding65[access_idx[idx_base_addr + 65] * DATA_SIZE65 + k];
            }
            access_idx[idx_base_addr + 66] = j;
            for (int k = 0; k < DATA_SIZE66; k++) {
                source_sw_results[result_addr] += embedding66[access_idx[idx_base_addr + 66] * DATA_SIZE66 + k];
            }
            access_idx[idx_base_addr + 67] = j;
            for (int k = 0; k < DATA_SIZE67; k++) {
                source_sw_results[result_addr] += embedding67[access_idx[idx_base_addr + 67] * DATA_SIZE67 + k];
            }
            access_idx[idx_base_addr + 68] = j;
            for (int k = 0; k < DATA_SIZE68; k++) {
                source_sw_results[result_addr] += embedding68[access_idx[idx_base_addr + 68] * DATA_SIZE68 + k];
            }
            access_idx[idx_base_addr + 69] = j;
            for (int k = 0; k < DATA_SIZE69; k++) {
                source_sw_results[result_addr] += embedding69[access_idx[idx_base_addr + 69] * DATA_SIZE69 + k];
            }
            access_idx[idx_base_addr + 70] = j;
            for (int k = 0; k < DATA_SIZE70; k++) {
                source_sw_results[result_addr] += embedding70[access_idx[idx_base_addr + 70] * DATA_SIZE70 + k];
            }
            access_idx[idx_base_addr + 71] = j;
            for (int k = 0; k < DATA_SIZE71; k++) {
                source_sw_results[result_addr] += embedding71[access_idx[idx_base_addr + 71] * DATA_SIZE71 + k];
            }
            access_idx[idx_base_addr + 72] = j;
            for (int k = 0; k < DATA_SIZE72; k++) {
                source_sw_results[result_addr] += embedding72[access_idx[idx_base_addr + 72] * DATA_SIZE72 + k];
            }
            access_idx[idx_base_addr + 73] = j;
            for (int k = 0; k < DATA_SIZE73; k++) {
                source_sw_results[result_addr] += embedding73[access_idx[idx_base_addr + 73] * DATA_SIZE73 + k];
            }
            access_idx[idx_base_addr + 74] = j;
            for (int k = 0; k < DATA_SIZE74; k++) {
                source_sw_results[result_addr] += embedding74[access_idx[idx_base_addr + 74] * DATA_SIZE74 + k];
            }
            access_idx[idx_base_addr + 75] = j;
            for (int k = 0; k < DATA_SIZE75; k++) {
                source_sw_results[result_addr] += embedding75[access_idx[idx_base_addr + 75] * DATA_SIZE75 + k];
            }
            access_idx[idx_base_addr + 76] = j;
            for (int k = 0; k < DATA_SIZE76; k++) {
                source_sw_results[result_addr] += embedding76[access_idx[idx_base_addr + 76] * DATA_SIZE76 + k];
            }
            access_idx[idx_base_addr + 77] = j;
            for (int k = 0; k < DATA_SIZE77; k++) {
                source_sw_results[result_addr] += embedding77[access_idx[idx_base_addr + 77] * DATA_SIZE77 + k];
            }
            access_idx[idx_base_addr + 78] = j;
            for (int k = 0; k < DATA_SIZE78; k++) {
                source_sw_results[result_addr] += embedding78[access_idx[idx_base_addr + 78] * DATA_SIZE78 + k];
            }
            access_idx[idx_base_addr + 79] = j;
            for (int k = 0; k < DATA_SIZE79; k++) {
                source_sw_results[result_addr] += embedding79[access_idx[idx_base_addr + 79] * DATA_SIZE79 + k];
            }
            access_idx[idx_base_addr + 80] = j;
            for (int k = 0; k < DATA_SIZE80; k++) {
                source_sw_results[result_addr] += embedding80[access_idx[idx_base_addr + 80] * DATA_SIZE80 + k];
            }
            access_idx[idx_base_addr + 81] = j;
            for (int k = 0; k < DATA_SIZE81; k++) {
                source_sw_results[result_addr] += embedding81[access_idx[idx_base_addr + 81] * DATA_SIZE81 + k];
            }
            access_idx[idx_base_addr + 82] = j;
            for (int k = 0; k < DATA_SIZE82; k++) {
                source_sw_results[result_addr] += embedding82[access_idx[idx_base_addr + 82] * DATA_SIZE82 + k];
            }
            access_idx[idx_base_addr + 83] = j;
            for (int k = 0; k < DATA_SIZE83; k++) {
                source_sw_results[result_addr] += embedding83[access_idx[idx_base_addr + 83] * DATA_SIZE83 + k];
            }
            access_idx[idx_base_addr + 84] = j;
            for (int k = 0; k < DATA_SIZE84; k++) {
                source_sw_results[result_addr] += embedding84[access_idx[idx_base_addr + 84] * DATA_SIZE84 + k];
            }
            access_idx[idx_base_addr + 85] = j;
            for (int k = 0; k < DATA_SIZE85; k++) {
                source_sw_results[result_addr] += embedding85[access_idx[idx_base_addr + 85] * DATA_SIZE85 + k];
            }
            access_idx[idx_base_addr + 86] = j;
            for (int k = 0; k < DATA_SIZE86; k++) {
                source_sw_results[result_addr] += embedding86[access_idx[idx_base_addr + 86] * DATA_SIZE86 + k];
            }
            access_idx[idx_base_addr + 87] = j;
            for (int k = 0; k < DATA_SIZE87; k++) {
                source_sw_results[result_addr] += embedding87[access_idx[idx_base_addr + 87] * DATA_SIZE87 + k];
            }
            access_idx[idx_base_addr + 88] = j;
            for (int k = 0; k < DATA_SIZE88; k++) {
                source_sw_results[result_addr] += embedding88[access_idx[idx_base_addr + 88] * DATA_SIZE88 + k];
            }
            access_idx[idx_base_addr + 89] = j;
            for (int k = 0; k < DATA_SIZE89; k++) {
                source_sw_results[result_addr] += embedding89[access_idx[idx_base_addr + 89] * DATA_SIZE89 + k];
            }
            access_idx[idx_base_addr + 90] = j;
            for (int k = 0; k < DATA_SIZE90; k++) {
                source_sw_results[result_addr] += embedding90[access_idx[idx_base_addr + 90] * DATA_SIZE90 + k];
            }
            access_idx[idx_base_addr + 91] = j;
            for (int k = 0; k < DATA_SIZE91; k++) {
                source_sw_results[result_addr] += embedding91[access_idx[idx_base_addr + 91] * DATA_SIZE91 + k];
            }
            access_idx[idx_base_addr + 92] = j;
            for (int k = 0; k < DATA_SIZE92; k++) {
                source_sw_results[result_addr] += embedding92[access_idx[idx_base_addr + 92] * DATA_SIZE92 + k];
            }
            access_idx[idx_base_addr + 93] = j;
            for (int k = 0; k < DATA_SIZE93; k++) {
                source_sw_results[result_addr] += embedding93[access_idx[idx_base_addr + 93] * DATA_SIZE93 + k];
            }
            access_idx[idx_base_addr + 94] = j;
            for (int k = 0; k < DATA_SIZE94; k++) {
                source_sw_results[result_addr] += embedding94[access_idx[idx_base_addr + 94] * DATA_SIZE94 + k];
            }
            access_idx[idx_base_addr + 95] = j;
            for (int k = 0; k < DATA_SIZE95; k++) {
                source_sw_results[result_addr] += embedding95[access_idx[idx_base_addr + 95] * DATA_SIZE95 + k];
            }
            access_idx[idx_base_addr + 96] = j;
            for (int k = 0; k < DATA_SIZE96; k++) {
                source_sw_results[result_addr] += embedding96[access_idx[idx_base_addr + 96] * DATA_SIZE96 + k];
            }
            access_idx[idx_base_addr + 97] = j;
            for (int k = 0; k < DATA_SIZE97; k++) {
                source_sw_results[result_addr] += embedding97[access_idx[idx_base_addr + 97] * DATA_SIZE97 + k];
            }
            access_idx[idx_base_addr + 98] = j;
            for (int k = 0; k < DATA_SIZE98; k++) {
                source_sw_results[result_addr] += embedding98[access_idx[idx_base_addr + 98] * DATA_SIZE98 + k];
            }
            access_idx[idx_base_addr + 99] = j;
            for (int k = 0; k < DATA_SIZE99; k++) {
                source_sw_results[result_addr] += embedding99[access_idx[idx_base_addr + 99] * DATA_SIZE99 + k];
            }
            access_idx[idx_base_addr + 100] = j;
            for (int k = 0; k < DATA_SIZE100; k++) {
                source_sw_results[result_addr] += embedding100[access_idx[idx_base_addr + 100] * DATA_SIZE100 + k];
            }
            access_idx[idx_base_addr + 101] = j;
            for (int k = 0; k < DATA_SIZE101; k++) {
                source_sw_results[result_addr] += embedding101[access_idx[idx_base_addr + 101] * DATA_SIZE101 + k];
            }
            access_idx[idx_base_addr + 102] = j;
            for (int k = 0; k < DATA_SIZE102; k++) {
                source_sw_results[result_addr] += embedding102[access_idx[idx_base_addr + 102] * DATA_SIZE102 + k];
            }
            access_idx[idx_base_addr + 103] = j;
            for (int k = 0; k < DATA_SIZE103; k++) {
                source_sw_results[result_addr] += embedding103[access_idx[idx_base_addr + 103] * DATA_SIZE103 + k];
            }
            access_idx[idx_base_addr + 104] = j;
            for (int k = 0; k < DATA_SIZE104; k++) {
                source_sw_results[result_addr] += embedding104[access_idx[idx_base_addr + 104] * DATA_SIZE104 + k];
            }
            access_idx[idx_base_addr + 105] = j;
            for (int k = 0; k < DATA_SIZE105; k++) {
                source_sw_results[result_addr] += embedding105[access_idx[idx_base_addr + 105] * DATA_SIZE105 + k];
            }
            access_idx[idx_base_addr + 106] = j;
            for (int k = 0; k < DATA_SIZE106; k++) {
                source_sw_results[result_addr] += embedding106[access_idx[idx_base_addr + 106] * DATA_SIZE106 + k];
            }
            access_idx[idx_base_addr + 107] = j;
            for (int k = 0; k < DATA_SIZE107; k++) {
                source_sw_results[result_addr] += embedding107[access_idx[idx_base_addr + 107] * DATA_SIZE107 + k];
            }
            access_idx[idx_base_addr + 108] = j;
            for (int k = 0; k < DATA_SIZE108; k++) {
                source_sw_results[result_addr] += embedding108[access_idx[idx_base_addr + 108] * DATA_SIZE108 + k];
            }
            access_idx[idx_base_addr + 109] = j;
            for (int k = 0; k < DATA_SIZE109; k++) {
                source_sw_results[result_addr] += embedding109[access_idx[idx_base_addr + 109] * DATA_SIZE109 + k];
            }
            access_idx[idx_base_addr + 110] = j;
            for (int k = 0; k < DATA_SIZE110; k++) {
                source_sw_results[result_addr] += embedding110[access_idx[idx_base_addr + 110] * DATA_SIZE110 + k];
            }
            access_idx[idx_base_addr + 111] = j;
            for (int k = 0; k < DATA_SIZE111; k++) {
                source_sw_results[result_addr] += embedding111[access_idx[idx_base_addr + 111] * DATA_SIZE111 + k];
            }
            access_idx[idx_base_addr + 112] = j;
            for (int k = 0; k < DATA_SIZE112; k++) {
                source_sw_results[result_addr] += embedding112[access_idx[idx_base_addr + 112] * DATA_SIZE112 + k];
            }
            access_idx[idx_base_addr + 113] = j;
            for (int k = 0; k < DATA_SIZE113; k++) {
                source_sw_results[result_addr] += embedding113[access_idx[idx_base_addr + 113] * DATA_SIZE113 + k];
            }
            access_idx[idx_base_addr + 114] = j;
            for (int k = 0; k < DATA_SIZE114; k++) {
                source_sw_results[result_addr] += embedding114[access_idx[idx_base_addr + 114] * DATA_SIZE114 + k];
            }
            access_idx[idx_base_addr + 115] = j;
            for (int k = 0; k < DATA_SIZE115; k++) {
                source_sw_results[result_addr] += embedding115[access_idx[idx_base_addr + 115] * DATA_SIZE115 + k];
            }
            access_idx[idx_base_addr + 116] = j;
            for (int k = 0; k < DATA_SIZE116; k++) {
                source_sw_results[result_addr] += embedding116[access_idx[idx_base_addr + 116] * DATA_SIZE116 + k];
            }
            access_idx[idx_base_addr + 117] = j;
            for (int k = 0; k < DATA_SIZE117; k++) {
                source_sw_results[result_addr] += embedding117[access_idx[idx_base_addr + 117] * DATA_SIZE117 + k];
            }
            access_idx[idx_base_addr + 118] = j;
            for (int k = 0; k < DATA_SIZE118; k++) {
                source_sw_results[result_addr] += embedding118[access_idx[idx_base_addr + 118] * DATA_SIZE118 + k];
            }
            access_idx[idx_base_addr + 119] = j;
            for (int k = 0; k < DATA_SIZE119; k++) {
                source_sw_results[result_addr] += embedding119[access_idx[idx_base_addr + 119] * DATA_SIZE119 + k];
            }
            access_idx[idx_base_addr + 120] = j;
            for (int k = 0; k < DATA_SIZE120; k++) {
                source_sw_results[result_addr] += embedding120[access_idx[idx_base_addr + 120] * DATA_SIZE120 + k];
            }
            access_idx[idx_base_addr + 121] = j;
            for (int k = 0; k < DATA_SIZE121; k++) {
                source_sw_results[result_addr] += embedding121[access_idx[idx_base_addr + 121] * DATA_SIZE121 + k];
            }
            access_idx[idx_base_addr + 122] = j;
            for (int k = 0; k < DATA_SIZE122; k++) {
                source_sw_results[result_addr] += embedding122[access_idx[idx_base_addr + 122] * DATA_SIZE122 + k];
            }
            access_idx[idx_base_addr + 123] = j;
            for (int k = 0; k < DATA_SIZE123; k++) {
                source_sw_results[result_addr] += embedding123[access_idx[idx_base_addr + 123] * DATA_SIZE123 + k];
            }
            access_idx[idx_base_addr + 124] = j;
            for (int k = 0; k < DATA_SIZE124; k++) {
                source_sw_results[result_addr] += embedding124[access_idx[idx_base_addr + 124] * DATA_SIZE124 + k];
            }
            access_idx[idx_base_addr + 125] = j;
            for (int k = 0; k < DATA_SIZE125; k++) {
                source_sw_results[result_addr] += embedding125[access_idx[idx_base_addr + 125] * DATA_SIZE125 + k];
            }
            access_idx[idx_base_addr + 126] = j;
            for (int k = 0; k < DATA_SIZE126; k++) {
                source_sw_results[result_addr] += embedding126[access_idx[idx_base_addr + 126] * DATA_SIZE126 + k];
            }
            access_idx[idx_base_addr + 127] = j;
            for (int k = 0; k < DATA_SIZE127; k++) {
                source_sw_results[result_addr] += embedding127[access_idx[idx_base_addr + 127] * DATA_SIZE127 + k];
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
    cl_mem_ext_ptr_t embedding0Ext, embedding1Ext, embedding2Ext, embedding3Ext, 
        embedding4Ext, embedding5Ext, embedding6Ext, embedding7Ext, 
        embedding8Ext, embedding9Ext, embedding10Ext, embedding11Ext, 
        embedding12Ext, embedding13Ext, embedding14Ext, embedding15Ext, 
        embedding16Ext, embedding17Ext, embedding18Ext, embedding19Ext, 
        embedding20Ext, embedding21Ext, embedding22Ext, embedding23Ext, 
        embedding24Ext, embedding25Ext, embedding26Ext, embedding27Ext, 
        embedding28Ext, embedding29Ext, embedding30Ext, embedding31Ext, 
        embedding32Ext, embedding33Ext, embedding34Ext, embedding35Ext, 
        embedding36Ext, embedding37Ext, embedding38Ext, embedding39Ext, 
        embedding40Ext, embedding41Ext, embedding42Ext, embedding43Ext, 
        embedding44Ext, embedding45Ext, embedding46Ext, embedding47Ext, 
        embedding48Ext, embedding49Ext, embedding50Ext, embedding51Ext, 
        embedding52Ext, embedding53Ext, embedding54Ext, embedding55Ext, 
        embedding56Ext, embedding57Ext, embedding58Ext, embedding59Ext, 
        embedding60Ext, embedding61Ext, embedding62Ext, embedding63Ext, 
        embedding64Ext, embedding65Ext, embedding66Ext, embedding67Ext, 
        embedding68Ext, embedding69Ext, embedding70Ext, embedding71Ext, 
        embedding72Ext, embedding73Ext, embedding74Ext, embedding75Ext, 
        embedding76Ext, embedding77Ext, embedding78Ext, embedding79Ext, 
        embedding80Ext, embedding81Ext, embedding82Ext, embedding83Ext, 
        embedding84Ext, embedding85Ext, embedding86Ext, embedding87Ext, 
        embedding88Ext, embedding89Ext, embedding90Ext, embedding91Ext, 
        embedding92Ext, embedding93Ext, embedding94Ext, embedding95Ext, 
        embedding96Ext, embedding97Ext, embedding98Ext, embedding99Ext, 
        embedding100Ext, embedding101Ext, embedding102Ext, embedding103Ext, 
        embedding104Ext, embedding105Ext, embedding106Ext, embedding107Ext, 
        embedding108Ext, embedding109Ext, embedding110Ext, embedding111Ext, 
        embedding112Ext, embedding113Ext, embedding114Ext, embedding115Ext, 
        embedding116Ext, embedding117Ext, embedding118Ext, embedding119Ext, 
        embedding120Ext, embedding121Ext, embedding122Ext, embedding123Ext, 
        embedding124Ext, embedding125Ext, embedding126Ext, embedding127Ext, 
        access_idxExt, sourcce_hw_resultsExt;
//////////////////////////////   TEMPLATE END  //////////////////////////////

//////////////////////////////   TEMPLATE START  //////////////////////////////
    embedding0Ext.obj = embedding0.data();
    embedding0Ext.param = 0;
    embedding0Ext.flags = bank[34];
    embedding1Ext.obj = embedding1.data();
    embedding1Ext.param = 0;
    embedding1Ext.flags = bank[35];
    embedding2Ext.obj = embedding2.data();
    embedding2Ext.param = 0;
    embedding2Ext.flags = bank[36];
    embedding3Ext.obj = embedding3.data();
    embedding3Ext.param = 0;
    embedding3Ext.flags = bank[37];
    embedding4Ext.obj = embedding4.data();
    embedding4Ext.param = 0;
    embedding4Ext.flags = bank[38];
    embedding5Ext.obj = embedding5.data();
    embedding5Ext.param = 0;
    embedding5Ext.flags = bank[39];
    embedding6Ext.obj = embedding6.data();
    embedding6Ext.param = 0;
    embedding6Ext.flags = bank[0];
    embedding7Ext.obj = embedding7.data();
    embedding7Ext.param = 0;
    embedding7Ext.flags = bank[1];
    embedding8Ext.obj = embedding8.data();
    embedding8Ext.param = 0;
    embedding8Ext.flags = bank[2];
    embedding9Ext.obj = embedding9.data();
    embedding9Ext.param = 0;
    embedding9Ext.flags = bank[3];
    embedding10Ext.obj = embedding10.data();
    embedding10Ext.param = 0;
    embedding10Ext.flags = bank[4];
    embedding11Ext.obj = embedding11.data();
    embedding11Ext.param = 0;
    embedding11Ext.flags = bank[5];
    embedding12Ext.obj = embedding12.data();
    embedding12Ext.param = 0;
    embedding12Ext.flags = bank[6];
    embedding13Ext.obj = embedding13.data();
    embedding13Ext.param = 0;
    embedding13Ext.flags = bank[7];
    embedding14Ext.obj = embedding14.data();
    embedding14Ext.param = 0;
    embedding14Ext.flags = bank[8];
    embedding15Ext.obj = embedding15.data();
    embedding15Ext.param = 0;
    embedding15Ext.flags = bank[9];
    embedding16Ext.obj = embedding16.data();
    embedding16Ext.param = 0;
    embedding16Ext.flags = bank[10];
    embedding17Ext.obj = embedding17.data();
    embedding17Ext.param = 0;
    embedding17Ext.flags = bank[11];
    embedding18Ext.obj = embedding18.data();
    embedding18Ext.param = 0;
    embedding18Ext.flags = bank[12];
    embedding19Ext.obj = embedding19.data();
    embedding19Ext.param = 0;
    embedding19Ext.flags = bank[13];
    embedding20Ext.obj = embedding20.data();
    embedding20Ext.param = 0;
    embedding20Ext.flags = bank[14];
    embedding21Ext.obj = embedding21.data();
    embedding21Ext.param = 0;
    embedding21Ext.flags = bank[15];
    embedding22Ext.obj = embedding22.data();
    embedding22Ext.param = 0;
    embedding22Ext.flags = bank[16];
    embedding23Ext.obj = embedding23.data();
    embedding23Ext.param = 0;
    embedding23Ext.flags = bank[17];
    embedding24Ext.obj = embedding24.data();
    embedding24Ext.param = 0;
    embedding24Ext.flags = bank[18];
    embedding25Ext.obj = embedding25.data();
    embedding25Ext.param = 0;
    embedding25Ext.flags = bank[19];
    embedding26Ext.obj = embedding26.data();
    embedding26Ext.param = 0;
    embedding26Ext.flags = bank[20];
    embedding27Ext.obj = embedding27.data();
    embedding27Ext.param = 0;
    embedding27Ext.flags = bank[21];
    embedding28Ext.obj = embedding28.data();
    embedding28Ext.param = 0;
    embedding28Ext.flags = bank[22];
    embedding29Ext.obj = embedding29.data();
    embedding29Ext.param = 0;
    embedding29Ext.flags = bank[23];
    embedding30Ext.obj = embedding30.data();
    embedding30Ext.param = 0;
    embedding30Ext.flags = bank[24];
    embedding31Ext.obj = embedding31.data();
    embedding31Ext.param = 0;
    embedding31Ext.flags = bank[25];
    embedding32Ext.obj = embedding32.data();
    embedding32Ext.param = 0;
    embedding32Ext.flags = bank[26];
    embedding33Ext.obj = embedding33.data();
    embedding33Ext.param = 0;
    embedding33Ext.flags = bank[27];
    embedding34Ext.obj = embedding34.data();
    embedding34Ext.param = 0;
    embedding34Ext.flags = bank[28];
    embedding35Ext.obj = embedding35.data();
    embedding35Ext.param = 0;
    embedding35Ext.flags = bank[29];
    embedding36Ext.obj = embedding36.data();
    embedding36Ext.param = 0;
    embedding36Ext.flags = bank[30];
    embedding37Ext.obj = embedding37.data();
    embedding37Ext.param = 0;
    embedding37Ext.flags = bank[31];
    embedding38Ext.obj = embedding38.data();
    embedding38Ext.param = 0;
    embedding38Ext.flags = bank[0];
    embedding39Ext.obj = embedding39.data();
    embedding39Ext.param = 0;
    embedding39Ext.flags = bank[1];
    embedding40Ext.obj = embedding40.data();
    embedding40Ext.param = 0;
    embedding40Ext.flags = bank[2];
    embedding41Ext.obj = embedding41.data();
    embedding41Ext.param = 0;
    embedding41Ext.flags = bank[3];
    embedding42Ext.obj = embedding42.data();
    embedding42Ext.param = 0;
    embedding42Ext.flags = bank[4];
    embedding43Ext.obj = embedding43.data();
    embedding43Ext.param = 0;
    embedding43Ext.flags = bank[5];
    embedding44Ext.obj = embedding44.data();
    embedding44Ext.param = 0;
    embedding44Ext.flags = bank[6];
    embedding45Ext.obj = embedding45.data();
    embedding45Ext.param = 0;
    embedding45Ext.flags = bank[7];
    embedding46Ext.obj = embedding46.data();
    embedding46Ext.param = 0;
    embedding46Ext.flags = bank[8];
    embedding47Ext.obj = embedding47.data();
    embedding47Ext.param = 0;
    embedding47Ext.flags = bank[9];
    embedding48Ext.obj = embedding48.data();
    embedding48Ext.param = 0;
    embedding48Ext.flags = bank[10];
    embedding49Ext.obj = embedding49.data();
    embedding49Ext.param = 0;
    embedding49Ext.flags = bank[11];
    embedding50Ext.obj = embedding50.data();
    embedding50Ext.param = 0;
    embedding50Ext.flags = bank[12];
    embedding51Ext.obj = embedding51.data();
    embedding51Ext.param = 0;
    embedding51Ext.flags = bank[13];
    embedding52Ext.obj = embedding52.data();
    embedding52Ext.param = 0;
    embedding52Ext.flags = bank[14];
    embedding53Ext.obj = embedding53.data();
    embedding53Ext.param = 0;
    embedding53Ext.flags = bank[15];
    embedding54Ext.obj = embedding54.data();
    embedding54Ext.param = 0;
    embedding54Ext.flags = bank[16];
    embedding55Ext.obj = embedding55.data();
    embedding55Ext.param = 0;
    embedding55Ext.flags = bank[17];
    embedding56Ext.obj = embedding56.data();
    embedding56Ext.param = 0;
    embedding56Ext.flags = bank[18];
    embedding57Ext.obj = embedding57.data();
    embedding57Ext.param = 0;
    embedding57Ext.flags = bank[19];
    embedding58Ext.obj = embedding58.data();
    embedding58Ext.param = 0;
    embedding58Ext.flags = bank[20];
    embedding59Ext.obj = embedding59.data();
    embedding59Ext.param = 0;
    embedding59Ext.flags = bank[21];
    embedding60Ext.obj = embedding60.data();
    embedding60Ext.param = 0;
    embedding60Ext.flags = bank[22];
    embedding61Ext.obj = embedding61.data();
    embedding61Ext.param = 0;
    embedding61Ext.flags = bank[23];
    embedding62Ext.obj = embedding62.data();
    embedding62Ext.param = 0;
    embedding62Ext.flags = bank[24];
    embedding63Ext.obj = embedding63.data();
    embedding63Ext.param = 0;
    embedding63Ext.flags = bank[25];
    embedding64Ext.obj = embedding64.data();
    embedding64Ext.param = 0;
    embedding64Ext.flags = bank[26];
    embedding65Ext.obj = embedding65.data();
    embedding65Ext.param = 0;
    embedding65Ext.flags = bank[27];
    embedding66Ext.obj = embedding66.data();
    embedding66Ext.param = 0;
    embedding66Ext.flags = bank[28];
    embedding67Ext.obj = embedding67.data();
    embedding67Ext.param = 0;
    embedding67Ext.flags = bank[29];
    embedding68Ext.obj = embedding68.data();
    embedding68Ext.param = 0;
    embedding68Ext.flags = bank[30];
    embedding69Ext.obj = embedding69.data();
    embedding69Ext.param = 0;
    embedding69Ext.flags = bank[31];
    embedding70Ext.obj = embedding70.data();
    embedding70Ext.param = 0;
    embedding70Ext.flags = bank[0];
    embedding71Ext.obj = embedding71.data();
    embedding71Ext.param = 0;
    embedding71Ext.flags = bank[1];
    embedding72Ext.obj = embedding72.data();
    embedding72Ext.param = 0;
    embedding72Ext.flags = bank[2];
    embedding73Ext.obj = embedding73.data();
    embedding73Ext.param = 0;
    embedding73Ext.flags = bank[3];
    embedding74Ext.obj = embedding74.data();
    embedding74Ext.param = 0;
    embedding74Ext.flags = bank[4];
    embedding75Ext.obj = embedding75.data();
    embedding75Ext.param = 0;
    embedding75Ext.flags = bank[5];
    embedding76Ext.obj = embedding76.data();
    embedding76Ext.param = 0;
    embedding76Ext.flags = bank[6];
    embedding77Ext.obj = embedding77.data();
    embedding77Ext.param = 0;
    embedding77Ext.flags = bank[7];
    embedding78Ext.obj = embedding78.data();
    embedding78Ext.param = 0;
    embedding78Ext.flags = bank[8];
    embedding79Ext.obj = embedding79.data();
    embedding79Ext.param = 0;
    embedding79Ext.flags = bank[9];
    embedding80Ext.obj = embedding80.data();
    embedding80Ext.param = 0;
    embedding80Ext.flags = bank[10];
    embedding81Ext.obj = embedding81.data();
    embedding81Ext.param = 0;
    embedding81Ext.flags = bank[11];
    embedding82Ext.obj = embedding82.data();
    embedding82Ext.param = 0;
    embedding82Ext.flags = bank[12];
    embedding83Ext.obj = embedding83.data();
    embedding83Ext.param = 0;
    embedding83Ext.flags = bank[13];
    embedding84Ext.obj = embedding84.data();
    embedding84Ext.param = 0;
    embedding84Ext.flags = bank[14];
    embedding85Ext.obj = embedding85.data();
    embedding85Ext.param = 0;
    embedding85Ext.flags = bank[15];
    embedding86Ext.obj = embedding86.data();
    embedding86Ext.param = 0;
    embedding86Ext.flags = bank[16];
    embedding87Ext.obj = embedding87.data();
    embedding87Ext.param = 0;
    embedding87Ext.flags = bank[17];
    embedding88Ext.obj = embedding88.data();
    embedding88Ext.param = 0;
    embedding88Ext.flags = bank[18];
    embedding89Ext.obj = embedding89.data();
    embedding89Ext.param = 0;
    embedding89Ext.flags = bank[19];
    embedding90Ext.obj = embedding90.data();
    embedding90Ext.param = 0;
    embedding90Ext.flags = bank[20];
    embedding91Ext.obj = embedding91.data();
    embedding91Ext.param = 0;
    embedding91Ext.flags = bank[21];
    embedding92Ext.obj = embedding92.data();
    embedding92Ext.param = 0;
    embedding92Ext.flags = bank[22];
    embedding93Ext.obj = embedding93.data();
    embedding93Ext.param = 0;
    embedding93Ext.flags = bank[23];
    embedding94Ext.obj = embedding94.data();
    embedding94Ext.param = 0;
    embedding94Ext.flags = bank[24];
    embedding95Ext.obj = embedding95.data();
    embedding95Ext.param = 0;
    embedding95Ext.flags = bank[25];
    embedding96Ext.obj = embedding96.data();
    embedding96Ext.param = 0;
    embedding96Ext.flags = bank[26];
    embedding97Ext.obj = embedding97.data();
    embedding97Ext.param = 0;
    embedding97Ext.flags = bank[27];
    embedding98Ext.obj = embedding98.data();
    embedding98Ext.param = 0;
    embedding98Ext.flags = bank[28];
    embedding99Ext.obj = embedding99.data();
    embedding99Ext.param = 0;
    embedding99Ext.flags = bank[29];
    embedding100Ext.obj = embedding100.data();
    embedding100Ext.param = 0;
    embedding100Ext.flags = bank[30];
    embedding101Ext.obj = embedding101.data();
    embedding101Ext.param = 0;
    embedding101Ext.flags = bank[31];
    embedding102Ext.obj = embedding102.data();
    embedding102Ext.param = 0;
    embedding102Ext.flags = bank[0];
    embedding103Ext.obj = embedding103.data();
    embedding103Ext.param = 0;
    embedding103Ext.flags = bank[1];
    embedding104Ext.obj = embedding104.data();
    embedding104Ext.param = 0;
    embedding104Ext.flags = bank[2];
    embedding105Ext.obj = embedding105.data();
    embedding105Ext.param = 0;
    embedding105Ext.flags = bank[3];
    embedding106Ext.obj = embedding106.data();
    embedding106Ext.param = 0;
    embedding106Ext.flags = bank[4];
    embedding107Ext.obj = embedding107.data();
    embedding107Ext.param = 0;
    embedding107Ext.flags = bank[5];
    embedding108Ext.obj = embedding108.data();
    embedding108Ext.param = 0;
    embedding108Ext.flags = bank[6];
    embedding109Ext.obj = embedding109.data();
    embedding109Ext.param = 0;
    embedding109Ext.flags = bank[7];
    embedding110Ext.obj = embedding110.data();
    embedding110Ext.param = 0;
    embedding110Ext.flags = bank[8];
    embedding111Ext.obj = embedding111.data();
    embedding111Ext.param = 0;
    embedding111Ext.flags = bank[9];
    embedding112Ext.obj = embedding112.data();
    embedding112Ext.param = 0;
    embedding112Ext.flags = bank[10];
    embedding113Ext.obj = embedding113.data();
    embedding113Ext.param = 0;
    embedding113Ext.flags = bank[11];
    embedding114Ext.obj = embedding114.data();
    embedding114Ext.param = 0;
    embedding114Ext.flags = bank[12];
    embedding115Ext.obj = embedding115.data();
    embedding115Ext.param = 0;
    embedding115Ext.flags = bank[13];
    embedding116Ext.obj = embedding116.data();
    embedding116Ext.param = 0;
    embedding116Ext.flags = bank[14];
    embedding117Ext.obj = embedding117.data();
    embedding117Ext.param = 0;
    embedding117Ext.flags = bank[15];
    embedding118Ext.obj = embedding118.data();
    embedding118Ext.param = 0;
    embedding118Ext.flags = bank[16];
    embedding119Ext.obj = embedding119.data();
    embedding119Ext.param = 0;
    embedding119Ext.flags = bank[17];
    embedding120Ext.obj = embedding120.data();
    embedding120Ext.param = 0;
    embedding120Ext.flags = bank[32];
    embedding121Ext.obj = embedding121.data();
    embedding121Ext.param = 0;
    embedding121Ext.flags = bank[33];
    embedding122Ext.obj = embedding122.data();
    embedding122Ext.param = 0;
    embedding122Ext.flags = bank[32];
    embedding123Ext.obj = embedding123.data();
    embedding123Ext.param = 0;
    embedding123Ext.flags = bank[33];
    embedding124Ext.obj = embedding124.data();
    embedding124Ext.param = 0;
    embedding124Ext.flags = bank[32];
    embedding125Ext.obj = embedding125.data();
    embedding125Ext.param = 0;
    embedding125Ext.flags = bank[33];
    embedding126Ext.obj = embedding126.data();
    embedding126Ext.param = 0;
    embedding126Ext.flags = bank[32];
    embedding127Ext.obj = embedding127.data();
    embedding127Ext.param = 0;
    embedding127Ext.flags = bank[33];
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
    OCL_CHECK(err, cl::Buffer buffer_embedding1(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding1_size_bytes, &embedding1Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding2_size_bytes, &embedding2Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding3(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding3_size_bytes, &embedding3Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding4(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding4_size_bytes, &embedding4Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding5(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding5_size_bytes, &embedding5Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding6(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding6_size_bytes, &embedding6Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding7(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding7_size_bytes, &embedding7Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding8(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding8_size_bytes, &embedding8Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding9(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding9_size_bytes, &embedding9Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding10(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding10_size_bytes, &embedding10Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding11(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding11_size_bytes, &embedding11Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding12(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding12_size_bytes, &embedding12Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding13(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding13_size_bytes, &embedding13Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding14(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding14_size_bytes, &embedding14Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding15(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding15_size_bytes, &embedding15Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding16(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding16_size_bytes, &embedding16Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding17(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding17_size_bytes, &embedding17Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding18(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding18_size_bytes, &embedding18Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding19(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding19_size_bytes, &embedding19Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding20(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding20_size_bytes, &embedding20Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding21(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding21_size_bytes, &embedding21Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding22(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding22_size_bytes, &embedding22Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding23(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding23_size_bytes, &embedding23Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding24(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding24_size_bytes, &embedding24Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding25(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding25_size_bytes, &embedding25Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding26(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding26_size_bytes, &embedding26Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding27(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding27_size_bytes, &embedding27Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding28(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding28_size_bytes, &embedding28Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding29(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding29_size_bytes, &embedding29Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding30(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding30_size_bytes, &embedding30Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding31(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding31_size_bytes, &embedding31Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding32(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding32_size_bytes, &embedding32Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding33(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding33_size_bytes, &embedding33Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding34(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding34_size_bytes, &embedding34Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding35(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding35_size_bytes, &embedding35Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding36(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding36_size_bytes, &embedding36Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding37(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding37_size_bytes, &embedding37Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding38(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding38_size_bytes, &embedding38Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding39(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding39_size_bytes, &embedding39Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding40(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding40_size_bytes, &embedding40Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding41(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding41_size_bytes, &embedding41Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding42(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding42_size_bytes, &embedding42Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding43(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding43_size_bytes, &embedding43Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding44(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding44_size_bytes, &embedding44Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding45(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding45_size_bytes, &embedding45Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding46(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding46_size_bytes, &embedding46Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding47(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding47_size_bytes, &embedding47Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding48(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding48_size_bytes, &embedding48Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding49(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding49_size_bytes, &embedding49Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding50(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding50_size_bytes, &embedding50Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding51(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding51_size_bytes, &embedding51Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding52(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding52_size_bytes, &embedding52Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding53(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding53_size_bytes, &embedding53Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding54(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding54_size_bytes, &embedding54Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding55(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding55_size_bytes, &embedding55Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding56(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding56_size_bytes, &embedding56Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding57(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding57_size_bytes, &embedding57Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding58(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding58_size_bytes, &embedding58Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding59(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding59_size_bytes, &embedding59Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding60(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding60_size_bytes, &embedding60Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding61(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding61_size_bytes, &embedding61Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding62(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding62_size_bytes, &embedding62Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding63(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding63_size_bytes, &embedding63Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding64(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding64_size_bytes, &embedding64Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding65(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding65_size_bytes, &embedding65Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding66(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding66_size_bytes, &embedding66Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding67(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding67_size_bytes, &embedding67Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding68(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding68_size_bytes, &embedding68Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding69(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding69_size_bytes, &embedding69Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding70(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding70_size_bytes, &embedding70Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding71(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding71_size_bytes, &embedding71Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding72(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding72_size_bytes, &embedding72Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding73(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding73_size_bytes, &embedding73Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding74(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding74_size_bytes, &embedding74Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding75(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding75_size_bytes, &embedding75Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding76(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding76_size_bytes, &embedding76Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding77(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding77_size_bytes, &embedding77Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding78(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding78_size_bytes, &embedding78Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding79(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding79_size_bytes, &embedding79Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding80(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding80_size_bytes, &embedding80Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding81(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding81_size_bytes, &embedding81Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding82(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding82_size_bytes, &embedding82Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding83(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding83_size_bytes, &embedding83Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding84(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding84_size_bytes, &embedding84Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding85(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding85_size_bytes, &embedding85Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding86(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding86_size_bytes, &embedding86Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding87(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding87_size_bytes, &embedding87Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding88(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding88_size_bytes, &embedding88Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding89(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding89_size_bytes, &embedding89Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding90(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding90_size_bytes, &embedding90Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding91(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding91_size_bytes, &embedding91Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding92(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding92_size_bytes, &embedding92Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding93(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding93_size_bytes, &embedding93Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding94(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding94_size_bytes, &embedding94Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding95(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding95_size_bytes, &embedding95Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding96(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding96_size_bytes, &embedding96Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding97(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding97_size_bytes, &embedding97Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding98(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding98_size_bytes, &embedding98Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding99(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding99_size_bytes, &embedding99Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding100(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding100_size_bytes, &embedding100Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding101(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding101_size_bytes, &embedding101Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding102(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding102_size_bytes, &embedding102Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding103(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding103_size_bytes, &embedding103Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding104(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding104_size_bytes, &embedding104Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding105(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding105_size_bytes, &embedding105Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding106(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding106_size_bytes, &embedding106Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding107(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding107_size_bytes, &embedding107Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding108(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding108_size_bytes, &embedding108Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding109(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding109_size_bytes, &embedding109Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding110(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding110_size_bytes, &embedding110Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding111(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding111_size_bytes, &embedding111Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding112(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding112_size_bytes, &embedding112Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding113(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding113_size_bytes, &embedding113Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding114(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding114_size_bytes, &embedding114Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding115(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding115_size_bytes, &embedding115Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding116(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding116_size_bytes, &embedding116Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding117(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding117_size_bytes, &embedding117Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding118(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding118_size_bytes, &embedding118Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding119(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding119_size_bytes, &embedding119Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding120(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding120_size_bytes, &embedding120Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding121(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding121_size_bytes, &embedding121Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding122(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding122_size_bytes, &embedding122Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding123(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding123_size_bytes, &embedding123Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding124(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding124_size_bytes, &embedding124Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding125(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding125_size_bytes, &embedding125Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding126(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding126_size_bytes, &embedding126Ext, &err));
    OCL_CHECK(err, cl::Buffer buffer_embedding127(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY | CL_MEM_EXT_PTR_XILINX, 
            embedding127_size_bytes, &embedding127Ext, &err));
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
    OCL_CHECK(err, err = krnl_vector_add.setArg(1, buffer_embedding1));
    OCL_CHECK(err, err = krnl_vector_add.setArg(2, buffer_embedding2));
    OCL_CHECK(err, err = krnl_vector_add.setArg(3, buffer_embedding3));
    OCL_CHECK(err, err = krnl_vector_add.setArg(4, buffer_embedding4));
    OCL_CHECK(err, err = krnl_vector_add.setArg(5, buffer_embedding5));
    OCL_CHECK(err, err = krnl_vector_add.setArg(6, buffer_embedding6));
    OCL_CHECK(err, err = krnl_vector_add.setArg(7, buffer_embedding7));
    OCL_CHECK(err, err = krnl_vector_add.setArg(8, buffer_embedding8));
    OCL_CHECK(err, err = krnl_vector_add.setArg(9, buffer_embedding9));
    OCL_CHECK(err, err = krnl_vector_add.setArg(10, buffer_embedding10));
    OCL_CHECK(err, err = krnl_vector_add.setArg(11, buffer_embedding11));
    OCL_CHECK(err, err = krnl_vector_add.setArg(12, buffer_embedding12));
    OCL_CHECK(err, err = krnl_vector_add.setArg(13, buffer_embedding13));
    OCL_CHECK(err, err = krnl_vector_add.setArg(14, buffer_embedding14));
    OCL_CHECK(err, err = krnl_vector_add.setArg(15, buffer_embedding15));
    OCL_CHECK(err, err = krnl_vector_add.setArg(16, buffer_embedding16));
    OCL_CHECK(err, err = krnl_vector_add.setArg(17, buffer_embedding17));
    OCL_CHECK(err, err = krnl_vector_add.setArg(18, buffer_embedding18));
    OCL_CHECK(err, err = krnl_vector_add.setArg(19, buffer_embedding19));
    OCL_CHECK(err, err = krnl_vector_add.setArg(20, buffer_embedding20));
    OCL_CHECK(err, err = krnl_vector_add.setArg(21, buffer_embedding21));
    OCL_CHECK(err, err = krnl_vector_add.setArg(22, buffer_embedding22));
    OCL_CHECK(err, err = krnl_vector_add.setArg(23, buffer_embedding23));
    OCL_CHECK(err, err = krnl_vector_add.setArg(24, buffer_embedding24));
    OCL_CHECK(err, err = krnl_vector_add.setArg(25, buffer_embedding25));
    OCL_CHECK(err, err = krnl_vector_add.setArg(26, buffer_embedding26));
    OCL_CHECK(err, err = krnl_vector_add.setArg(27, buffer_embedding27));
    OCL_CHECK(err, err = krnl_vector_add.setArg(28, buffer_embedding28));
    OCL_CHECK(err, err = krnl_vector_add.setArg(29, buffer_embedding29));
    OCL_CHECK(err, err = krnl_vector_add.setArg(30, buffer_embedding30));
    OCL_CHECK(err, err = krnl_vector_add.setArg(31, buffer_embedding31));
    OCL_CHECK(err, err = krnl_vector_add.setArg(32, buffer_embedding32));
    OCL_CHECK(err, err = krnl_vector_add.setArg(33, buffer_embedding33));
    OCL_CHECK(err, err = krnl_vector_add.setArg(34, buffer_embedding34));
    OCL_CHECK(err, err = krnl_vector_add.setArg(35, buffer_embedding35));
    OCL_CHECK(err, err = krnl_vector_add.setArg(36, buffer_embedding36));
    OCL_CHECK(err, err = krnl_vector_add.setArg(37, buffer_embedding37));
    OCL_CHECK(err, err = krnl_vector_add.setArg(38, buffer_embedding38));
    OCL_CHECK(err, err = krnl_vector_add.setArg(39, buffer_embedding39));
    OCL_CHECK(err, err = krnl_vector_add.setArg(40, buffer_embedding40));
    OCL_CHECK(err, err = krnl_vector_add.setArg(41, buffer_embedding41));
    OCL_CHECK(err, err = krnl_vector_add.setArg(42, buffer_embedding42));
    OCL_CHECK(err, err = krnl_vector_add.setArg(43, buffer_embedding43));
    OCL_CHECK(err, err = krnl_vector_add.setArg(44, buffer_embedding44));
    OCL_CHECK(err, err = krnl_vector_add.setArg(45, buffer_embedding45));
    OCL_CHECK(err, err = krnl_vector_add.setArg(46, buffer_embedding46));
    OCL_CHECK(err, err = krnl_vector_add.setArg(47, buffer_embedding47));
    OCL_CHECK(err, err = krnl_vector_add.setArg(48, buffer_embedding48));
    OCL_CHECK(err, err = krnl_vector_add.setArg(49, buffer_embedding49));
    OCL_CHECK(err, err = krnl_vector_add.setArg(50, buffer_embedding50));
    OCL_CHECK(err, err = krnl_vector_add.setArg(51, buffer_embedding51));
    OCL_CHECK(err, err = krnl_vector_add.setArg(52, buffer_embedding52));
    OCL_CHECK(err, err = krnl_vector_add.setArg(53, buffer_embedding53));
    OCL_CHECK(err, err = krnl_vector_add.setArg(54, buffer_embedding54));
    OCL_CHECK(err, err = krnl_vector_add.setArg(55, buffer_embedding55));
    OCL_CHECK(err, err = krnl_vector_add.setArg(56, buffer_embedding56));
    OCL_CHECK(err, err = krnl_vector_add.setArg(57, buffer_embedding57));
    OCL_CHECK(err, err = krnl_vector_add.setArg(58, buffer_embedding58));
    OCL_CHECK(err, err = krnl_vector_add.setArg(59, buffer_embedding59));
    OCL_CHECK(err, err = krnl_vector_add.setArg(60, buffer_embedding60));
    OCL_CHECK(err, err = krnl_vector_add.setArg(61, buffer_embedding61));
    OCL_CHECK(err, err = krnl_vector_add.setArg(62, buffer_embedding62));
    OCL_CHECK(err, err = krnl_vector_add.setArg(63, buffer_embedding63));
    OCL_CHECK(err, err = krnl_vector_add.setArg(64, buffer_embedding64));
    OCL_CHECK(err, err = krnl_vector_add.setArg(65, buffer_embedding65));
    OCL_CHECK(err, err = krnl_vector_add.setArg(66, buffer_embedding66));
    OCL_CHECK(err, err = krnl_vector_add.setArg(67, buffer_embedding67));
    OCL_CHECK(err, err = krnl_vector_add.setArg(68, buffer_embedding68));
    OCL_CHECK(err, err = krnl_vector_add.setArg(69, buffer_embedding69));
    OCL_CHECK(err, err = krnl_vector_add.setArg(70, buffer_embedding70));
    OCL_CHECK(err, err = krnl_vector_add.setArg(71, buffer_embedding71));
    OCL_CHECK(err, err = krnl_vector_add.setArg(72, buffer_embedding72));
    OCL_CHECK(err, err = krnl_vector_add.setArg(73, buffer_embedding73));
    OCL_CHECK(err, err = krnl_vector_add.setArg(74, buffer_embedding74));
    OCL_CHECK(err, err = krnl_vector_add.setArg(75, buffer_embedding75));
    OCL_CHECK(err, err = krnl_vector_add.setArg(76, buffer_embedding76));
    OCL_CHECK(err, err = krnl_vector_add.setArg(77, buffer_embedding77));
    OCL_CHECK(err, err = krnl_vector_add.setArg(78, buffer_embedding78));
    OCL_CHECK(err, err = krnl_vector_add.setArg(79, buffer_embedding79));
    OCL_CHECK(err, err = krnl_vector_add.setArg(80, buffer_embedding80));
    OCL_CHECK(err, err = krnl_vector_add.setArg(81, buffer_embedding81));
    OCL_CHECK(err, err = krnl_vector_add.setArg(82, buffer_embedding82));
    OCL_CHECK(err, err = krnl_vector_add.setArg(83, buffer_embedding83));
    OCL_CHECK(err, err = krnl_vector_add.setArg(84, buffer_embedding84));
    OCL_CHECK(err, err = krnl_vector_add.setArg(85, buffer_embedding85));
    OCL_CHECK(err, err = krnl_vector_add.setArg(86, buffer_embedding86));
    OCL_CHECK(err, err = krnl_vector_add.setArg(87, buffer_embedding87));
    OCL_CHECK(err, err = krnl_vector_add.setArg(88, buffer_embedding88));
    OCL_CHECK(err, err = krnl_vector_add.setArg(89, buffer_embedding89));
    OCL_CHECK(err, err = krnl_vector_add.setArg(90, buffer_embedding90));
    OCL_CHECK(err, err = krnl_vector_add.setArg(91, buffer_embedding91));
    OCL_CHECK(err, err = krnl_vector_add.setArg(92, buffer_embedding92));
    OCL_CHECK(err, err = krnl_vector_add.setArg(93, buffer_embedding93));
    OCL_CHECK(err, err = krnl_vector_add.setArg(94, buffer_embedding94));
    OCL_CHECK(err, err = krnl_vector_add.setArg(95, buffer_embedding95));
    OCL_CHECK(err, err = krnl_vector_add.setArg(96, buffer_embedding96));
    OCL_CHECK(err, err = krnl_vector_add.setArg(97, buffer_embedding97));
    OCL_CHECK(err, err = krnl_vector_add.setArg(98, buffer_embedding98));
    OCL_CHECK(err, err = krnl_vector_add.setArg(99, buffer_embedding99));
    OCL_CHECK(err, err = krnl_vector_add.setArg(100, buffer_embedding100));
    OCL_CHECK(err, err = krnl_vector_add.setArg(101, buffer_embedding101));
    OCL_CHECK(err, err = krnl_vector_add.setArg(102, buffer_embedding102));
    OCL_CHECK(err, err = krnl_vector_add.setArg(103, buffer_embedding103));
    OCL_CHECK(err, err = krnl_vector_add.setArg(104, buffer_embedding104));
    OCL_CHECK(err, err = krnl_vector_add.setArg(105, buffer_embedding105));
    OCL_CHECK(err, err = krnl_vector_add.setArg(106, buffer_embedding106));
    OCL_CHECK(err, err = krnl_vector_add.setArg(107, buffer_embedding107));
    OCL_CHECK(err, err = krnl_vector_add.setArg(108, buffer_embedding108));
    OCL_CHECK(err, err = krnl_vector_add.setArg(109, buffer_embedding109));
    OCL_CHECK(err, err = krnl_vector_add.setArg(110, buffer_embedding110));
    OCL_CHECK(err, err = krnl_vector_add.setArg(111, buffer_embedding111));
    OCL_CHECK(err, err = krnl_vector_add.setArg(112, buffer_embedding112));
    OCL_CHECK(err, err = krnl_vector_add.setArg(113, buffer_embedding113));
    OCL_CHECK(err, err = krnl_vector_add.setArg(114, buffer_embedding114));
    OCL_CHECK(err, err = krnl_vector_add.setArg(115, buffer_embedding115));
    OCL_CHECK(err, err = krnl_vector_add.setArg(116, buffer_embedding116));
    OCL_CHECK(err, err = krnl_vector_add.setArg(117, buffer_embedding117));
    OCL_CHECK(err, err = krnl_vector_add.setArg(118, buffer_embedding118));
    OCL_CHECK(err, err = krnl_vector_add.setArg(119, buffer_embedding119));
    OCL_CHECK(err, err = krnl_vector_add.setArg(120, buffer_embedding120));
    OCL_CHECK(err, err = krnl_vector_add.setArg(121, buffer_embedding121));
    OCL_CHECK(err, err = krnl_vector_add.setArg(122, buffer_embedding122));
    OCL_CHECK(err, err = krnl_vector_add.setArg(123, buffer_embedding123));
    OCL_CHECK(err, err = krnl_vector_add.setArg(124, buffer_embedding124));
    OCL_CHECK(err, err = krnl_vector_add.setArg(125, buffer_embedding125));
    OCL_CHECK(err, err = krnl_vector_add.setArg(126, buffer_embedding126));
    OCL_CHECK(err, err = krnl_vector_add.setArg(127, buffer_embedding127));
//////////////////////////////   TEMPLATE END  //////////////////////////////

    // NOTE! Manually adjust this!
// use replicate_str.py, set totol_num = 1 start=47
//////////////////////////////   TEMPLATE START  //////////////////////////////
    OCL_CHECK(err, err = krnl_vector_add.setArg(128, buffer_idx));
//////////////////////////////   TEMPLATE END  //////////////////////////////
//////////////////////////////   TEMPLATE START  //////////////////////////////
    OCL_CHECK(err, err = krnl_vector_add.setArg(129, buffer_output));
//////////////////////////////   TEMPLATE END  //////////////////////////////
// ------------------------------------------------------
// Step 2: Copy Input data from Host to Global Memory on the device
// ------------------------------------------------------
//////////////////////////////   TEMPLATE START  //////////////////////////////
    OCL_CHECK(
        err, err = q.enqueueMigrateMemObjects({buffer_embedding0, buffer_embedding1, buffer_embedding2, buffer_embedding3, 
        buffer_embedding4, buffer_embedding5, buffer_embedding6, buffer_embedding7, 
        buffer_embedding8, buffer_embedding9, buffer_embedding10, buffer_embedding11, 
        buffer_embedding12, buffer_embedding13, buffer_embedding14, buffer_embedding15, 
        buffer_embedding16, buffer_embedding17, buffer_embedding18, buffer_embedding19, 
        buffer_embedding20, buffer_embedding21, buffer_embedding22, buffer_embedding23, 
        buffer_embedding24, buffer_embedding25, buffer_embedding26, buffer_embedding27, 
        buffer_embedding28, buffer_embedding29, buffer_embedding30, buffer_embedding31, 
        buffer_embedding32, buffer_embedding33, buffer_embedding34, buffer_embedding35, 
        buffer_embedding36, buffer_embedding37, buffer_embedding38, buffer_embedding39, 
        buffer_embedding40, buffer_embedding41, buffer_embedding42, buffer_embedding43, 
        buffer_embedding44, buffer_embedding45, buffer_embedding46, buffer_embedding47, 
        buffer_embedding48, buffer_embedding49, buffer_embedding50, buffer_embedding51, 
        buffer_embedding52, buffer_embedding53, buffer_embedding54, buffer_embedding55, 
        buffer_embedding56, buffer_embedding57, buffer_embedding58, buffer_embedding59, 
        buffer_embedding60, buffer_embedding61, buffer_embedding62, buffer_embedding63, 
        buffer_embedding64, buffer_embedding65, buffer_embedding66, buffer_embedding67, 
        buffer_embedding68, buffer_embedding69, buffer_embedding70, buffer_embedding71, 
        buffer_embedding72, buffer_embedding73, buffer_embedding74, buffer_embedding75, 
        buffer_embedding76, buffer_embedding77, buffer_embedding78, buffer_embedding79, 
        buffer_embedding80, buffer_embedding81, buffer_embedding82, buffer_embedding83, 
        buffer_embedding84, buffer_embedding85, buffer_embedding86, buffer_embedding87, 
        buffer_embedding88, buffer_embedding89, buffer_embedding90, buffer_embedding91, 
        buffer_embedding92, buffer_embedding93, buffer_embedding94, buffer_embedding95, 
        buffer_embedding96, buffer_embedding97, buffer_embedding98, buffer_embedding99, 
        buffer_embedding100, buffer_embedding101, buffer_embedding102, buffer_embedding103, 
        buffer_embedding104, buffer_embedding105, buffer_embedding106, buffer_embedding107, 
        buffer_embedding108, buffer_embedding109, buffer_embedding110, buffer_embedding111, 
        buffer_embedding112, buffer_embedding113, buffer_embedding114, buffer_embedding115, 
        buffer_embedding116, buffer_embedding117, buffer_embedding118, buffer_embedding119, 
        buffer_embedding120, buffer_embedding121, buffer_embedding122, buffer_embedding123, 
        buffer_embedding124, buffer_embedding125, buffer_embedding126, buffer_embedding127, 
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

