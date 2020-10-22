#include "vadd.hpp"

extern "C" {
//////////////////////////////   TEMPLATE START  //////////////////////////////
void vadd(  
    const int *table0, const int *table1, const int *table2, 
    const int *table3, const int *table4, const int *table5, 
    const int *table6, const int *table7, const int *table8, 
    const int *table9, const int *table10, const int *table11, 
    const int *table12, const int *table13, const int *table14, 
    const int *table15, const int *table16, const int *table17, 
    const int *table18, const int *table19, const int *table20, 
    const int *table21, const int *table22, const int *table23, 
    const int *table24, const int *table25, const int *table26, 
    const int *table27, const int *table28, const int *table29, 
    const int *table30, const int *table31, const int *table32, 
    const int *table33, const int *table34, const int *table35, 
    const int *table36, const int *table37, const int *table38, 
    const int *table39, const int *table40, const int *table41, 
    const int *table42, const int *table43, const int *table44, 
    const int *table45, const int *table46, const int *table47, 
    const int *table48, const int *table49, const int *table50, 
    const int *table51, const int *table52, const int *table53, 
    const int *table54, const int *table55, const int *table56, 
    const int *table57, const int *table58, const int *table59, 
    const int *table60, const int *table61, const int *table62, 
    const int *table63, const int *table64, const int *table65, 
    const int *table66, const int *table67, const int *table68, 
    const int *table69, const int *table70, const int *table71, 
    const int *table72, const int *table73, const int *table74, 
    const int *table75, const int *table76, const int *table77, 
    const int *table78, const int *table79, const int *table80, 
    const int *table81, const int *table82, const int *table83, 
    const int *table84, const int *table85, const int *table86, 
    const int *table87, const int *table88, const int *table89, 
    const int *table90, const int *table91, const int *table92, 
    const int *table93, const int *table94, const int *table95, 
    const int *table96, const int *table97, const int *table98, 
    const int *table99, const int *table100, const int *table101, 
    const int *table102, const int *table103, const int *table104, 
    const int *table105, const int *table106, const int *table107, 
    const int *table108, const int *table109, const int *table110, 
    const int *table111, const int *table112, const int *table113, 
    const int *table114, const int *table115, const int *table116, 
    const int *table117, const int *table118, const int *table119, 
    const int *table120, const int *table121, const int *table122, 
    const int *table123, const int *table124, const int *table125, 
    const int *table126, const int *table127,
    const int *access_idx,   
    int *out
    )
//////////////////////////////   TEMPLATE END  //////////////////////////////
{
//////////////////////////////   TEMPLATE START  //////////////////////////////
#pragma HLS INTERFACE m_axi port=table0 offset=slave bundle=gmem34
#pragma HLS INTERFACE m_axi port=table1 offset=slave bundle=gmem35
#pragma HLS INTERFACE m_axi port=table2 offset=slave bundle=gmem36
#pragma HLS INTERFACE m_axi port=table3 offset=slave bundle=gmem37
#pragma HLS INTERFACE m_axi port=table4 offset=slave bundle=gmem38
#pragma HLS INTERFACE m_axi port=table5 offset=slave bundle=gmem39
#pragma HLS INTERFACE m_axi port=table6 offset=slave bundle=gmem0
#pragma HLS INTERFACE m_axi port=table7 offset=slave bundle=gmem1
#pragma HLS INTERFACE m_axi port=table8 offset=slave bundle=gmem2
#pragma HLS INTERFACE m_axi port=table9 offset=slave bundle=gmem3
#pragma HLS INTERFACE m_axi port=table10 offset=slave bundle=gmem4
#pragma HLS INTERFACE m_axi port=table11 offset=slave bundle=gmem5
#pragma HLS INTERFACE m_axi port=table12 offset=slave bundle=gmem6
#pragma HLS INTERFACE m_axi port=table13 offset=slave bundle=gmem7
#pragma HLS INTERFACE m_axi port=table14 offset=slave bundle=gmem8
#pragma HLS INTERFACE m_axi port=table15 offset=slave bundle=gmem9
#pragma HLS INTERFACE m_axi port=table16 offset=slave bundle=gmem10
#pragma HLS INTERFACE m_axi port=table17 offset=slave bundle=gmem11
#pragma HLS INTERFACE m_axi port=table18 offset=slave bundle=gmem12
#pragma HLS INTERFACE m_axi port=table19 offset=slave bundle=gmem13
#pragma HLS INTERFACE m_axi port=table20 offset=slave bundle=gmem14
#pragma HLS INTERFACE m_axi port=table21 offset=slave bundle=gmem15
#pragma HLS INTERFACE m_axi port=table22 offset=slave bundle=gmem16
#pragma HLS INTERFACE m_axi port=table23 offset=slave bundle=gmem17
#pragma HLS INTERFACE m_axi port=table24 offset=slave bundle=gmem18
#pragma HLS INTERFACE m_axi port=table25 offset=slave bundle=gmem19
#pragma HLS INTERFACE m_axi port=table26 offset=slave bundle=gmem20
#pragma HLS INTERFACE m_axi port=table27 offset=slave bundle=gmem21
#pragma HLS INTERFACE m_axi port=table28 offset=slave bundle=gmem22
#pragma HLS INTERFACE m_axi port=table29 offset=slave bundle=gmem23
#pragma HLS INTERFACE m_axi port=table30 offset=slave bundle=gmem24
#pragma HLS INTERFACE m_axi port=table31 offset=slave bundle=gmem25
#pragma HLS INTERFACE m_axi port=table32 offset=slave bundle=gmem26
#pragma HLS INTERFACE m_axi port=table33 offset=slave bundle=gmem27
#pragma HLS INTERFACE m_axi port=table34 offset=slave bundle=gmem28
#pragma HLS INTERFACE m_axi port=table35 offset=slave bundle=gmem29
#pragma HLS INTERFACE m_axi port=table36 offset=slave bundle=gmem30
#pragma HLS INTERFACE m_axi port=table37 offset=slave bundle=gmem31
#pragma HLS INTERFACE m_axi port=table38 offset=slave bundle=gmem0
#pragma HLS INTERFACE m_axi port=table39 offset=slave bundle=gmem1
#pragma HLS INTERFACE m_axi port=table40 offset=slave bundle=gmem2
#pragma HLS INTERFACE m_axi port=table41 offset=slave bundle=gmem3
#pragma HLS INTERFACE m_axi port=table42 offset=slave bundle=gmem4
#pragma HLS INTERFACE m_axi port=table43 offset=slave bundle=gmem5
#pragma HLS INTERFACE m_axi port=table44 offset=slave bundle=gmem6
#pragma HLS INTERFACE m_axi port=table45 offset=slave bundle=gmem7
#pragma HLS INTERFACE m_axi port=table46 offset=slave bundle=gmem8
#pragma HLS INTERFACE m_axi port=table47 offset=slave bundle=gmem9
#pragma HLS INTERFACE m_axi port=table48 offset=slave bundle=gmem10
#pragma HLS INTERFACE m_axi port=table49 offset=slave bundle=gmem11
#pragma HLS INTERFACE m_axi port=table50 offset=slave bundle=gmem12
#pragma HLS INTERFACE m_axi port=table51 offset=slave bundle=gmem13
#pragma HLS INTERFACE m_axi port=table52 offset=slave bundle=gmem14
#pragma HLS INTERFACE m_axi port=table53 offset=slave bundle=gmem15
#pragma HLS INTERFACE m_axi port=table54 offset=slave bundle=gmem16
#pragma HLS INTERFACE m_axi port=table55 offset=slave bundle=gmem17
#pragma HLS INTERFACE m_axi port=table56 offset=slave bundle=gmem18
#pragma HLS INTERFACE m_axi port=table57 offset=slave bundle=gmem19
#pragma HLS INTERFACE m_axi port=table58 offset=slave bundle=gmem20
#pragma HLS INTERFACE m_axi port=table59 offset=slave bundle=gmem21
#pragma HLS INTERFACE m_axi port=table60 offset=slave bundle=gmem22
#pragma HLS INTERFACE m_axi port=table61 offset=slave bundle=gmem23
#pragma HLS INTERFACE m_axi port=table62 offset=slave bundle=gmem24
#pragma HLS INTERFACE m_axi port=table63 offset=slave bundle=gmem25
#pragma HLS INTERFACE m_axi port=table64 offset=slave bundle=gmem26
#pragma HLS INTERFACE m_axi port=table65 offset=slave bundle=gmem27
#pragma HLS INTERFACE m_axi port=table66 offset=slave bundle=gmem28
#pragma HLS INTERFACE m_axi port=table67 offset=slave bundle=gmem29
#pragma HLS INTERFACE m_axi port=table68 offset=slave bundle=gmem30
#pragma HLS INTERFACE m_axi port=table69 offset=slave bundle=gmem31
#pragma HLS INTERFACE m_axi port=table70 offset=slave bundle=gmem0
#pragma HLS INTERFACE m_axi port=table71 offset=slave bundle=gmem1
#pragma HLS INTERFACE m_axi port=table72 offset=slave bundle=gmem2
#pragma HLS INTERFACE m_axi port=table73 offset=slave bundle=gmem3
#pragma HLS INTERFACE m_axi port=table74 offset=slave bundle=gmem4
#pragma HLS INTERFACE m_axi port=table75 offset=slave bundle=gmem5
#pragma HLS INTERFACE m_axi port=table76 offset=slave bundle=gmem6
#pragma HLS INTERFACE m_axi port=table77 offset=slave bundle=gmem7
#pragma HLS INTERFACE m_axi port=table78 offset=slave bundle=gmem8
#pragma HLS INTERFACE m_axi port=table79 offset=slave bundle=gmem9
#pragma HLS INTERFACE m_axi port=table80 offset=slave bundle=gmem10
#pragma HLS INTERFACE m_axi port=table81 offset=slave bundle=gmem11
#pragma HLS INTERFACE m_axi port=table82 offset=slave bundle=gmem12
#pragma HLS INTERFACE m_axi port=table83 offset=slave bundle=gmem13
#pragma HLS INTERFACE m_axi port=table84 offset=slave bundle=gmem14
#pragma HLS INTERFACE m_axi port=table85 offset=slave bundle=gmem15
#pragma HLS INTERFACE m_axi port=table86 offset=slave bundle=gmem16
#pragma HLS INTERFACE m_axi port=table87 offset=slave bundle=gmem17
#pragma HLS INTERFACE m_axi port=table88 offset=slave bundle=gmem18
#pragma HLS INTERFACE m_axi port=table89 offset=slave bundle=gmem19
#pragma HLS INTERFACE m_axi port=table90 offset=slave bundle=gmem20
#pragma HLS INTERFACE m_axi port=table91 offset=slave bundle=gmem21
#pragma HLS INTERFACE m_axi port=table92 offset=slave bundle=gmem22
#pragma HLS INTERFACE m_axi port=table93 offset=slave bundle=gmem23
#pragma HLS INTERFACE m_axi port=table94 offset=slave bundle=gmem24
#pragma HLS INTERFACE m_axi port=table95 offset=slave bundle=gmem25
#pragma HLS INTERFACE m_axi port=table96 offset=slave bundle=gmem26
#pragma HLS INTERFACE m_axi port=table97 offset=slave bundle=gmem27
#pragma HLS INTERFACE m_axi port=table98 offset=slave bundle=gmem28
#pragma HLS INTERFACE m_axi port=table99 offset=slave bundle=gmem29
#pragma HLS INTERFACE m_axi port=table100 offset=slave bundle=gmem30
#pragma HLS INTERFACE m_axi port=table101 offset=slave bundle=gmem31
#pragma HLS INTERFACE m_axi port=table102 offset=slave bundle=gmem0
#pragma HLS INTERFACE m_axi port=table103 offset=slave bundle=gmem1
#pragma HLS INTERFACE m_axi port=table104 offset=slave bundle=gmem2
#pragma HLS INTERFACE m_axi port=table105 offset=slave bundle=gmem3
#pragma HLS INTERFACE m_axi port=table106 offset=slave bundle=gmem4
#pragma HLS INTERFACE m_axi port=table107 offset=slave bundle=gmem5
#pragma HLS INTERFACE m_axi port=table108 offset=slave bundle=gmem6
#pragma HLS INTERFACE m_axi port=table109 offset=slave bundle=gmem7
#pragma HLS INTERFACE m_axi port=table110 offset=slave bundle=gmem8
#pragma HLS INTERFACE m_axi port=table111 offset=slave bundle=gmem9
#pragma HLS INTERFACE m_axi port=table112 offset=slave bundle=gmem10
#pragma HLS INTERFACE m_axi port=table113 offset=slave bundle=gmem11
#pragma HLS INTERFACE m_axi port=table114 offset=slave bundle=gmem12
#pragma HLS INTERFACE m_axi port=table115 offset=slave bundle=gmem13
#pragma HLS INTERFACE m_axi port=table116 offset=slave bundle=gmem14
#pragma HLS INTERFACE m_axi port=table117 offset=slave bundle=gmem15
#pragma HLS INTERFACE m_axi port=table118 offset=slave bundle=gmem16
#pragma HLS INTERFACE m_axi port=table119 offset=slave bundle=gmem17
#pragma HLS INTERFACE m_axi port=table120 offset=slave bundle=gmem32
#pragma HLS INTERFACE m_axi port=table121 offset=slave bundle=gmem33
#pragma HLS INTERFACE m_axi port=table122 offset=slave bundle=gmem32
#pragma HLS INTERFACE m_axi port=table123 offset=slave bundle=gmem33
#pragma HLS INTERFACE m_axi port=table124 offset=slave bundle=gmem32
#pragma HLS INTERFACE m_axi port=table125 offset=slave bundle=gmem33
#pragma HLS INTERFACE m_axi port=table126 offset=slave bundle=gmem32
#pragma HLS INTERFACE m_axi port=table127 offset=slave bundle=gmem33
//////////////////////////////   TEMPLATE END  //////////////////////////////
#pragma HLS INTERFACE m_axi port=access_idx offset=slave bundle=gmem32
#pragma HLS INTERFACE m_axi port=out offset=slave bundle=gmem33
// control
//////////////////////////////   TEMPLATE START  //////////////////////////////
#pragma HLS INTERFACE s_axilite port=table0  bundle=control
#pragma HLS INTERFACE s_axilite port=table1  bundle=control
#pragma HLS INTERFACE s_axilite port=table2  bundle=control
#pragma HLS INTERFACE s_axilite port=table3  bundle=control
#pragma HLS INTERFACE s_axilite port=table4  bundle=control
#pragma HLS INTERFACE s_axilite port=table5  bundle=control
#pragma HLS INTERFACE s_axilite port=table6  bundle=control
#pragma HLS INTERFACE s_axilite port=table7  bundle=control
#pragma HLS INTERFACE s_axilite port=table8  bundle=control
#pragma HLS INTERFACE s_axilite port=table9  bundle=control
#pragma HLS INTERFACE s_axilite port=table10  bundle=control
#pragma HLS INTERFACE s_axilite port=table11  bundle=control
#pragma HLS INTERFACE s_axilite port=table12  bundle=control
#pragma HLS INTERFACE s_axilite port=table13  bundle=control
#pragma HLS INTERFACE s_axilite port=table14  bundle=control
#pragma HLS INTERFACE s_axilite port=table15  bundle=control
#pragma HLS INTERFACE s_axilite port=table16  bundle=control
#pragma HLS INTERFACE s_axilite port=table17  bundle=control
#pragma HLS INTERFACE s_axilite port=table18  bundle=control
#pragma HLS INTERFACE s_axilite port=table19  bundle=control
#pragma HLS INTERFACE s_axilite port=table20  bundle=control
#pragma HLS INTERFACE s_axilite port=table21  bundle=control
#pragma HLS INTERFACE s_axilite port=table22  bundle=control
#pragma HLS INTERFACE s_axilite port=table23  bundle=control
#pragma HLS INTERFACE s_axilite port=table24  bundle=control
#pragma HLS INTERFACE s_axilite port=table25  bundle=control
#pragma HLS INTERFACE s_axilite port=table26  bundle=control
#pragma HLS INTERFACE s_axilite port=table27  bundle=control
#pragma HLS INTERFACE s_axilite port=table28  bundle=control
#pragma HLS INTERFACE s_axilite port=table29  bundle=control
#pragma HLS INTERFACE s_axilite port=table30  bundle=control
#pragma HLS INTERFACE s_axilite port=table31  bundle=control
#pragma HLS INTERFACE s_axilite port=table32  bundle=control
#pragma HLS INTERFACE s_axilite port=table33  bundle=control
#pragma HLS INTERFACE s_axilite port=table34  bundle=control
#pragma HLS INTERFACE s_axilite port=table35  bundle=control
#pragma HLS INTERFACE s_axilite port=table36  bundle=control
#pragma HLS INTERFACE s_axilite port=table37  bundle=control
#pragma HLS INTERFACE s_axilite port=table38  bundle=control
#pragma HLS INTERFACE s_axilite port=table39  bundle=control
#pragma HLS INTERFACE s_axilite port=table40  bundle=control
#pragma HLS INTERFACE s_axilite port=table41  bundle=control
#pragma HLS INTERFACE s_axilite port=table42  bundle=control
#pragma HLS INTERFACE s_axilite port=table43  bundle=control
#pragma HLS INTERFACE s_axilite port=table44  bundle=control
#pragma HLS INTERFACE s_axilite port=table45  bundle=control
#pragma HLS INTERFACE s_axilite port=table46  bundle=control
#pragma HLS INTERFACE s_axilite port=table47  bundle=control
#pragma HLS INTERFACE s_axilite port=table48  bundle=control
#pragma HLS INTERFACE s_axilite port=table49  bundle=control
#pragma HLS INTERFACE s_axilite port=table50  bundle=control
#pragma HLS INTERFACE s_axilite port=table51  bundle=control
#pragma HLS INTERFACE s_axilite port=table52  bundle=control
#pragma HLS INTERFACE s_axilite port=table53  bundle=control
#pragma HLS INTERFACE s_axilite port=table54  bundle=control
#pragma HLS INTERFACE s_axilite port=table55  bundle=control
#pragma HLS INTERFACE s_axilite port=table56  bundle=control
#pragma HLS INTERFACE s_axilite port=table57  bundle=control
#pragma HLS INTERFACE s_axilite port=table58  bundle=control
#pragma HLS INTERFACE s_axilite port=table59  bundle=control
#pragma HLS INTERFACE s_axilite port=table60  bundle=control
#pragma HLS INTERFACE s_axilite port=table61  bundle=control
#pragma HLS INTERFACE s_axilite port=table62  bundle=control
#pragma HLS INTERFACE s_axilite port=table63  bundle=control
#pragma HLS INTERFACE s_axilite port=table64  bundle=control
#pragma HLS INTERFACE s_axilite port=table65  bundle=control
#pragma HLS INTERFACE s_axilite port=table66  bundle=control
#pragma HLS INTERFACE s_axilite port=table67  bundle=control
#pragma HLS INTERFACE s_axilite port=table68  bundle=control
#pragma HLS INTERFACE s_axilite port=table69  bundle=control
#pragma HLS INTERFACE s_axilite port=table70  bundle=control
#pragma HLS INTERFACE s_axilite port=table71  bundle=control
#pragma HLS INTERFACE s_axilite port=table72  bundle=control
#pragma HLS INTERFACE s_axilite port=table73  bundle=control
#pragma HLS INTERFACE s_axilite port=table74  bundle=control
#pragma HLS INTERFACE s_axilite port=table75  bundle=control
#pragma HLS INTERFACE s_axilite port=table76  bundle=control
#pragma HLS INTERFACE s_axilite port=table77  bundle=control
#pragma HLS INTERFACE s_axilite port=table78  bundle=control
#pragma HLS INTERFACE s_axilite port=table79  bundle=control
#pragma HLS INTERFACE s_axilite port=table80  bundle=control
#pragma HLS INTERFACE s_axilite port=table81  bundle=control
#pragma HLS INTERFACE s_axilite port=table82  bundle=control
#pragma HLS INTERFACE s_axilite port=table83  bundle=control
#pragma HLS INTERFACE s_axilite port=table84  bundle=control
#pragma HLS INTERFACE s_axilite port=table85  bundle=control
#pragma HLS INTERFACE s_axilite port=table86  bundle=control
#pragma HLS INTERFACE s_axilite port=table87  bundle=control
#pragma HLS INTERFACE s_axilite port=table88  bundle=control
#pragma HLS INTERFACE s_axilite port=table89  bundle=control
#pragma HLS INTERFACE s_axilite port=table90  bundle=control
#pragma HLS INTERFACE s_axilite port=table91  bundle=control
#pragma HLS INTERFACE s_axilite port=table92  bundle=control
#pragma HLS INTERFACE s_axilite port=table93  bundle=control
#pragma HLS INTERFACE s_axilite port=table94  bundle=control
#pragma HLS INTERFACE s_axilite port=table95  bundle=control
#pragma HLS INTERFACE s_axilite port=table96  bundle=control
#pragma HLS INTERFACE s_axilite port=table97  bundle=control
#pragma HLS INTERFACE s_axilite port=table98  bundle=control
#pragma HLS INTERFACE s_axilite port=table99  bundle=control
#pragma HLS INTERFACE s_axilite port=table100  bundle=control
#pragma HLS INTERFACE s_axilite port=table101  bundle=control
#pragma HLS INTERFACE s_axilite port=table102  bundle=control
#pragma HLS INTERFACE s_axilite port=table103  bundle=control
#pragma HLS INTERFACE s_axilite port=table104  bundle=control
#pragma HLS INTERFACE s_axilite port=table105  bundle=control
#pragma HLS INTERFACE s_axilite port=table106  bundle=control
#pragma HLS INTERFACE s_axilite port=table107  bundle=control
#pragma HLS INTERFACE s_axilite port=table108  bundle=control
#pragma HLS INTERFACE s_axilite port=table109  bundle=control
#pragma HLS INTERFACE s_axilite port=table110  bundle=control
#pragma HLS INTERFACE s_axilite port=table111  bundle=control
#pragma HLS INTERFACE s_axilite port=table112  bundle=control
#pragma HLS INTERFACE s_axilite port=table113  bundle=control
#pragma HLS INTERFACE s_axilite port=table114  bundle=control
#pragma HLS INTERFACE s_axilite port=table115  bundle=control
#pragma HLS INTERFACE s_axilite port=table116  bundle=control
#pragma HLS INTERFACE s_axilite port=table117  bundle=control
#pragma HLS INTERFACE s_axilite port=table118  bundle=control
#pragma HLS INTERFACE s_axilite port=table119  bundle=control
#pragma HLS INTERFACE s_axilite port=table120  bundle=control
#pragma HLS INTERFACE s_axilite port=table121  bundle=control
#pragma HLS INTERFACE s_axilite port=table122  bundle=control
#pragma HLS INTERFACE s_axilite port=table123  bundle=control
#pragma HLS INTERFACE s_axilite port=table124  bundle=control
#pragma HLS INTERFACE s_axilite port=table125  bundle=control
#pragma HLS INTERFACE s_axilite port=table126  bundle=control
#pragma HLS INTERFACE s_axilite port=table127  bundle=control
//////////////////////////////   TEMPLATE END  //////////////////////////////
#pragma HLS INTERFACE s_axilite port=access_idx  bundle=control
#pragma HLS INTERFACE s_axilite port=out bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

//////////////////////////////   TEMPLATE START  //////////////////////////////
    int embedding_buffer0[BATCH_SIZE * DATA_SIZE0];
    int embedding_buffer1[BATCH_SIZE * DATA_SIZE1];
    int embedding_buffer2[BATCH_SIZE * DATA_SIZE2];
    int embedding_buffer3[BATCH_SIZE * DATA_SIZE3];
    int embedding_buffer4[BATCH_SIZE * DATA_SIZE4];
    int embedding_buffer5[BATCH_SIZE * DATA_SIZE5];
    int embedding_buffer6[BATCH_SIZE * DATA_SIZE6];
    int embedding_buffer7[BATCH_SIZE * DATA_SIZE7];
    int embedding_buffer8[BATCH_SIZE * DATA_SIZE8];
    int embedding_buffer9[BATCH_SIZE * DATA_SIZE9];
    int embedding_buffer10[BATCH_SIZE * DATA_SIZE10];
    int embedding_buffer11[BATCH_SIZE * DATA_SIZE11];
    int embedding_buffer12[BATCH_SIZE * DATA_SIZE12];
    int embedding_buffer13[BATCH_SIZE * DATA_SIZE13];
    int embedding_buffer14[BATCH_SIZE * DATA_SIZE14];
    int embedding_buffer15[BATCH_SIZE * DATA_SIZE15];
    int embedding_buffer16[BATCH_SIZE * DATA_SIZE16];
    int embedding_buffer17[BATCH_SIZE * DATA_SIZE17];
    int embedding_buffer18[BATCH_SIZE * DATA_SIZE18];
    int embedding_buffer19[BATCH_SIZE * DATA_SIZE19];
    int embedding_buffer20[BATCH_SIZE * DATA_SIZE20];
    int embedding_buffer21[BATCH_SIZE * DATA_SIZE21];
    int embedding_buffer22[BATCH_SIZE * DATA_SIZE22];
    int embedding_buffer23[BATCH_SIZE * DATA_SIZE23];
    int embedding_buffer24[BATCH_SIZE * DATA_SIZE24];
    int embedding_buffer25[BATCH_SIZE * DATA_SIZE25];
    int embedding_buffer26[BATCH_SIZE * DATA_SIZE26];
    int embedding_buffer27[BATCH_SIZE * DATA_SIZE27];
    int embedding_buffer28[BATCH_SIZE * DATA_SIZE28];
    int embedding_buffer29[BATCH_SIZE * DATA_SIZE29];
    int embedding_buffer30[BATCH_SIZE * DATA_SIZE30];
    int embedding_buffer31[BATCH_SIZE * DATA_SIZE31];
    int embedding_buffer32[BATCH_SIZE * DATA_SIZE32];
    int embedding_buffer33[BATCH_SIZE * DATA_SIZE33];
    int embedding_buffer34[BATCH_SIZE * DATA_SIZE34];
    int embedding_buffer35[BATCH_SIZE * DATA_SIZE35];
    int embedding_buffer36[BATCH_SIZE * DATA_SIZE36];
    int embedding_buffer37[BATCH_SIZE * DATA_SIZE37];
    int embedding_buffer38[BATCH_SIZE * DATA_SIZE38];
    int embedding_buffer39[BATCH_SIZE * DATA_SIZE39];
    int embedding_buffer40[BATCH_SIZE * DATA_SIZE40];
    int embedding_buffer41[BATCH_SIZE * DATA_SIZE41];
    int embedding_buffer42[BATCH_SIZE * DATA_SIZE42];
    int embedding_buffer43[BATCH_SIZE * DATA_SIZE43];
    int embedding_buffer44[BATCH_SIZE * DATA_SIZE44];
    int embedding_buffer45[BATCH_SIZE * DATA_SIZE45];
    int embedding_buffer46[BATCH_SIZE * DATA_SIZE46];
    int embedding_buffer47[BATCH_SIZE * DATA_SIZE47];
    int embedding_buffer48[BATCH_SIZE * DATA_SIZE48];
    int embedding_buffer49[BATCH_SIZE * DATA_SIZE49];
    int embedding_buffer50[BATCH_SIZE * DATA_SIZE50];
    int embedding_buffer51[BATCH_SIZE * DATA_SIZE51];
    int embedding_buffer52[BATCH_SIZE * DATA_SIZE52];
    int embedding_buffer53[BATCH_SIZE * DATA_SIZE53];
    int embedding_buffer54[BATCH_SIZE * DATA_SIZE54];
    int embedding_buffer55[BATCH_SIZE * DATA_SIZE55];
    int embedding_buffer56[BATCH_SIZE * DATA_SIZE56];
    int embedding_buffer57[BATCH_SIZE * DATA_SIZE57];
    int embedding_buffer58[BATCH_SIZE * DATA_SIZE58];
    int embedding_buffer59[BATCH_SIZE * DATA_SIZE59];
    int embedding_buffer60[BATCH_SIZE * DATA_SIZE60];
    int embedding_buffer61[BATCH_SIZE * DATA_SIZE61];
    int embedding_buffer62[BATCH_SIZE * DATA_SIZE62];
    int embedding_buffer63[BATCH_SIZE * DATA_SIZE63];
    int embedding_buffer64[BATCH_SIZE * DATA_SIZE64];
    int embedding_buffer65[BATCH_SIZE * DATA_SIZE65];
    int embedding_buffer66[BATCH_SIZE * DATA_SIZE66];
    int embedding_buffer67[BATCH_SIZE * DATA_SIZE67];
    int embedding_buffer68[BATCH_SIZE * DATA_SIZE68];
    int embedding_buffer69[BATCH_SIZE * DATA_SIZE69];
    int embedding_buffer70[BATCH_SIZE * DATA_SIZE70];
    int embedding_buffer71[BATCH_SIZE * DATA_SIZE71];
    int embedding_buffer72[BATCH_SIZE * DATA_SIZE72];
    int embedding_buffer73[BATCH_SIZE * DATA_SIZE73];
    int embedding_buffer74[BATCH_SIZE * DATA_SIZE74];
    int embedding_buffer75[BATCH_SIZE * DATA_SIZE75];
    int embedding_buffer76[BATCH_SIZE * DATA_SIZE76];
    int embedding_buffer77[BATCH_SIZE * DATA_SIZE77];
    int embedding_buffer78[BATCH_SIZE * DATA_SIZE78];
    int embedding_buffer79[BATCH_SIZE * DATA_SIZE79];
    int embedding_buffer80[BATCH_SIZE * DATA_SIZE80];
    int embedding_buffer81[BATCH_SIZE * DATA_SIZE81];
    int embedding_buffer82[BATCH_SIZE * DATA_SIZE82];
    int embedding_buffer83[BATCH_SIZE * DATA_SIZE83];
    int embedding_buffer84[BATCH_SIZE * DATA_SIZE84];
    int embedding_buffer85[BATCH_SIZE * DATA_SIZE85];
    int embedding_buffer86[BATCH_SIZE * DATA_SIZE86];
    int embedding_buffer87[BATCH_SIZE * DATA_SIZE87];
    int embedding_buffer88[BATCH_SIZE * DATA_SIZE88];
    int embedding_buffer89[BATCH_SIZE * DATA_SIZE89];
    int embedding_buffer90[BATCH_SIZE * DATA_SIZE90];
    int embedding_buffer91[BATCH_SIZE * DATA_SIZE91];
    int embedding_buffer92[BATCH_SIZE * DATA_SIZE92];
    int embedding_buffer93[BATCH_SIZE * DATA_SIZE93];
    int embedding_buffer94[BATCH_SIZE * DATA_SIZE94];
    int embedding_buffer95[BATCH_SIZE * DATA_SIZE95];
    int embedding_buffer96[BATCH_SIZE * DATA_SIZE96];
    int embedding_buffer97[BATCH_SIZE * DATA_SIZE97];
    int embedding_buffer98[BATCH_SIZE * DATA_SIZE98];
    int embedding_buffer99[BATCH_SIZE * DATA_SIZE99];
    int embedding_buffer100[BATCH_SIZE * DATA_SIZE100];
    int embedding_buffer101[BATCH_SIZE * DATA_SIZE101];
    int embedding_buffer102[BATCH_SIZE * DATA_SIZE102];
    int embedding_buffer103[BATCH_SIZE * DATA_SIZE103];
    int embedding_buffer104[BATCH_SIZE * DATA_SIZE104];
    int embedding_buffer105[BATCH_SIZE * DATA_SIZE105];
    int embedding_buffer106[BATCH_SIZE * DATA_SIZE106];
    int embedding_buffer107[BATCH_SIZE * DATA_SIZE107];
    int embedding_buffer108[BATCH_SIZE * DATA_SIZE108];
    int embedding_buffer109[BATCH_SIZE * DATA_SIZE109];
    int embedding_buffer110[BATCH_SIZE * DATA_SIZE110];
    int embedding_buffer111[BATCH_SIZE * DATA_SIZE111];
    int embedding_buffer112[BATCH_SIZE * DATA_SIZE112];
    int embedding_buffer113[BATCH_SIZE * DATA_SIZE113];
    int embedding_buffer114[BATCH_SIZE * DATA_SIZE114];
    int embedding_buffer115[BATCH_SIZE * DATA_SIZE115];
    int embedding_buffer116[BATCH_SIZE * DATA_SIZE116];
    int embedding_buffer117[BATCH_SIZE * DATA_SIZE117];
    int embedding_buffer118[BATCH_SIZE * DATA_SIZE118];
    int embedding_buffer119[BATCH_SIZE * DATA_SIZE119];
    int embedding_buffer120[BATCH_SIZE * DATA_SIZE120];
    int embedding_buffer121[BATCH_SIZE * DATA_SIZE121];
    int embedding_buffer122[BATCH_SIZE * DATA_SIZE122];
    int embedding_buffer123[BATCH_SIZE * DATA_SIZE123];
    int embedding_buffer124[BATCH_SIZE * DATA_SIZE124];
    int embedding_buffer125[BATCH_SIZE * DATA_SIZE125];
    int embedding_buffer126[BATCH_SIZE * DATA_SIZE126];
    int embedding_buffer127[BATCH_SIZE * DATA_SIZE127];
//////////////////////////////   TEMPLATE END  //////////////////////////////
    int vout_buffer[BATCH_SIZE];  // Local Memory to store result

    for (int i = 0; i < BATCH_NUM; i++) {
        // #pragma HLS DATAFLOW

        // load data
//////////////////////////////   TEMPLATE START  //////////////////////////////
        load_embeddings(
            table0, table1, table2, table3, 
            table4, table5, table6, table7, 
            table8, table9, table10, table11, 
            table12, table13, table14, table15, 
            table16, table17, table18, table19, 
            table20, table21, table22, table23, 
            table24, table25, table26, table27, 
            table28, table29, table30, table31, 
            table32, table33, table34, table35, 
            table36, table37, table38, table39, 
            table40, table41, table42, table43, 
            table44, table45, table46, table47, 
            table48, table49, table50, table51, 
            table52, table53, table54, table55, 
            table56, table57, table58, table59, 
            table60, table61, table62, table63, 
            table64, table65, table66, table67, 
            table68, table69, table70, table71, 
            table72, table73, table74, table75, 
            table76, table77, table78, table79, 
            table80, table81, table82, table83, 
            table84, table85, table86, table87, 
            table88, table89, table90, table91, 
            table92, table93, table94, table95, 
            table96, table97, table98, table99, 
            table100, table101, table102, table103, 
            table104, table105, table106, table107, 
            table108, table109, table110, table111, 
            table112, table113, table114, table115, 
            table116, table117, table118, table119, 
            table120, table121, table122, table123, 
            table124, table125, table126, table127, 
            access_idx, i * BATCH_SIZE * TABLE_NUM,
            embedding_buffer0, embedding_buffer1, embedding_buffer2, embedding_buffer3, 
            embedding_buffer4, embedding_buffer5, embedding_buffer6, embedding_buffer7, 
            embedding_buffer8, embedding_buffer9, embedding_buffer10, embedding_buffer11, 
            embedding_buffer12, embedding_buffer13, embedding_buffer14, embedding_buffer15, 
            embedding_buffer16, embedding_buffer17, embedding_buffer18, embedding_buffer19, 
            embedding_buffer20, embedding_buffer21, embedding_buffer22, embedding_buffer23, 
            embedding_buffer24, embedding_buffer25, embedding_buffer26, embedding_buffer27, 
            embedding_buffer28, embedding_buffer29, embedding_buffer30, embedding_buffer31, 
            embedding_buffer32, embedding_buffer33, embedding_buffer34, embedding_buffer35, 
            embedding_buffer36, embedding_buffer37, embedding_buffer38, embedding_buffer39, 
            embedding_buffer40, embedding_buffer41, embedding_buffer42, embedding_buffer43, 
            embedding_buffer44, embedding_buffer45, embedding_buffer46, embedding_buffer47, 
            embedding_buffer48, embedding_buffer49, embedding_buffer50, embedding_buffer51, 
            embedding_buffer52, embedding_buffer53, embedding_buffer54, embedding_buffer55, 
            embedding_buffer56, embedding_buffer57, embedding_buffer58, embedding_buffer59, 
            embedding_buffer60, embedding_buffer61, embedding_buffer62, embedding_buffer63, 
            embedding_buffer64, embedding_buffer65, embedding_buffer66, embedding_buffer67, 
            embedding_buffer68, embedding_buffer69, embedding_buffer70, embedding_buffer71, 
            embedding_buffer72, embedding_buffer73, embedding_buffer74, embedding_buffer75, 
            embedding_buffer76, embedding_buffer77, embedding_buffer78, embedding_buffer79, 
            embedding_buffer80, embedding_buffer81, embedding_buffer82, embedding_buffer83, 
            embedding_buffer84, embedding_buffer85, embedding_buffer86, embedding_buffer87, 
            embedding_buffer88, embedding_buffer89, embedding_buffer90, embedding_buffer91, 
            embedding_buffer92, embedding_buffer93, embedding_buffer94, embedding_buffer95, 
            embedding_buffer96, embedding_buffer97, embedding_buffer98, embedding_buffer99, 
            embedding_buffer100, embedding_buffer101, embedding_buffer102, embedding_buffer103, 
            embedding_buffer104, embedding_buffer105, embedding_buffer106, embedding_buffer107, 
            embedding_buffer108, embedding_buffer109, embedding_buffer110, embedding_buffer111, 
            embedding_buffer112, embedding_buffer113, embedding_buffer114, embedding_buffer115, 
            embedding_buffer116, embedding_buffer117, embedding_buffer118, embedding_buffer119, 
            embedding_buffer120, embedding_buffer121, embedding_buffer122, embedding_buffer123, 
            embedding_buffer124, embedding_buffer125, embedding_buffer126, embedding_buffer127
            );
//////////////////////////////   TEMPLATE END  //////////////////////////////

        // compute
//////////////////////////////   TEMPLATE START  //////////////////////////////
        reduction_add_all(
            embedding_buffer0, embedding_buffer1, embedding_buffer2, embedding_buffer3, 
            embedding_buffer4, embedding_buffer5, embedding_buffer6, embedding_buffer7, 
            embedding_buffer8, embedding_buffer9, embedding_buffer10, embedding_buffer11, 
            embedding_buffer12, embedding_buffer13, embedding_buffer14, embedding_buffer15, 
            embedding_buffer16, embedding_buffer17, embedding_buffer18, embedding_buffer19, 
            embedding_buffer20, embedding_buffer21, embedding_buffer22, embedding_buffer23, 
            embedding_buffer24, embedding_buffer25, embedding_buffer26, embedding_buffer27, 
            embedding_buffer28, embedding_buffer29, embedding_buffer30, embedding_buffer31, 
            embedding_buffer32, embedding_buffer33, embedding_buffer34, embedding_buffer35, 
            embedding_buffer36, embedding_buffer37, embedding_buffer38, embedding_buffer39, 
            embedding_buffer40, embedding_buffer41, embedding_buffer42, embedding_buffer43, 
            embedding_buffer44, embedding_buffer45, embedding_buffer46, embedding_buffer47, 
            embedding_buffer48, embedding_buffer49, embedding_buffer50, embedding_buffer51, 
            embedding_buffer52, embedding_buffer53, embedding_buffer54, embedding_buffer55, 
            embedding_buffer56, embedding_buffer57, embedding_buffer58, embedding_buffer59, 
            embedding_buffer60, embedding_buffer61, embedding_buffer62, embedding_buffer63, 
            embedding_buffer64, embedding_buffer65, embedding_buffer66, embedding_buffer67, 
            embedding_buffer68, embedding_buffer69, embedding_buffer70, embedding_buffer71, 
            embedding_buffer72, embedding_buffer73, embedding_buffer74, embedding_buffer75, 
            embedding_buffer76, embedding_buffer77, embedding_buffer78, embedding_buffer79, 
            embedding_buffer80, embedding_buffer81, embedding_buffer82, embedding_buffer83, 
            embedding_buffer84, embedding_buffer85, embedding_buffer86, embedding_buffer87, 
            embedding_buffer88, embedding_buffer89, embedding_buffer90, embedding_buffer91, 
            embedding_buffer92, embedding_buffer93, embedding_buffer94, embedding_buffer95, 
            embedding_buffer96, embedding_buffer97, embedding_buffer98, embedding_buffer99, 
            embedding_buffer100, embedding_buffer101, embedding_buffer102, embedding_buffer103, 
            embedding_buffer104, embedding_buffer105, embedding_buffer106, embedding_buffer107, 
            embedding_buffer108, embedding_buffer109, embedding_buffer110, embedding_buffer111, 
            embedding_buffer112, embedding_buffer113, embedding_buffer114, embedding_buffer115, 
            embedding_buffer116, embedding_buffer117, embedding_buffer118, embedding_buffer119, 
            embedding_buffer120, embedding_buffer121, embedding_buffer122, embedding_buffer123, 
            embedding_buffer124, embedding_buffer125, embedding_buffer126, embedding_buffer127,
            vout_buffer);
//////////////////////////////   TEMPLATE END  //////////////////////////////

        // write output
        write_results(vout_buffer, out, i * BATCH_SIZE); 
    }
}

void load_single_embedding(
    int idx_buffer[BATCH_SIZE], const int* table_DRAM,
    int* embedding_buffer, int data_size) {
#pragma HLS function_instantiate variable=data_size
#pragma HLS INLINE off

    for (int i = 0; i < BATCH_SIZE;  i++) {
        int BRAM_base_addr = i * data_size;
        int DRAM_base_addr = idx_buffer[i] * data_size;
        for (int j = 0; j < data_size; j++) {
            embedding_buffer[BRAM_base_addr + j] = table_DRAM[DRAM_base_addr + j];
        }
    }
}

//////////////////////////////   TEMPLATE START  //////////////////////////////
void load_embeddings(
    const int* table0, const int* table1, const int* table2, const int* table3, 
    const int* table4, const int* table5, const int* table6, const int* table7, 
    const int* table8, const int* table9, const int* table10, const int* table11, 
    const int* table12, const int* table13, const int* table14, const int* table15, 
    const int* table16, const int* table17, const int* table18, const int* table19, 
    const int* table20, const int* table21, const int* table22, const int* table23, 
    const int* table24, const int* table25, const int* table26, const int* table27, 
    const int* table28, const int* table29, const int* table30, const int* table31, 
    const int* table32, const int* table33, const int* table34, const int* table35, 
    const int* table36, const int* table37, const int* table38, const int* table39, 
    const int* table40, const int* table41, const int* table42, const int* table43, 
    const int* table44, const int* table45, const int* table46, const int* table47, 
    const int* table48, const int* table49, const int* table50, const int* table51, 
    const int* table52, const int* table53, const int* table54, const int* table55, 
    const int* table56, const int* table57, const int* table58, const int* table59, 
    const int* table60, const int* table61, const int* table62, const int* table63, 
    const int* table64, const int* table65, const int* table66, const int* table67, 
    const int* table68, const int* table69, const int* table70, const int* table71, 
    const int* table72, const int* table73, const int* table74, const int* table75, 
    const int* table76, const int* table77, const int* table78, const int* table79, 
    const int* table80, const int* table81, const int* table82, const int* table83, 
    const int* table84, const int* table85, const int* table86, const int* table87, 
    const int* table88, const int* table89, const int* table90, const int* table91, 
    const int* table92, const int* table93, const int* table94, const int* table95, 
    const int* table96, const int* table97, const int* table98, const int* table99, 
    const int* table100, const int* table101, const int* table102, const int* table103, 
    const int* table104, const int* table105, const int* table106, const int* table107, 
    const int* table108, const int* table109, const int* table110, const int* table111, 
    const int* table112, const int* table113, const int* table114, const int* table115, 
    const int* table116, const int* table117, const int* table118, const int* table119, 
    const int* table120, const int* table121, const int* table122, const int* table123, 
    const int* table124, const int* table125, const int* table126, const int* table127, 
    const int* access_idx, const int start_idx, 
    int embedding_buffer0[BATCH_SIZE * DATA_SIZE0], int embedding_buffer1[BATCH_SIZE * DATA_SIZE1], int embedding_buffer2[BATCH_SIZE * DATA_SIZE2], int embedding_buffer3[BATCH_SIZE * DATA_SIZE3], 
    int embedding_buffer4[BATCH_SIZE * DATA_SIZE4], int embedding_buffer5[BATCH_SIZE * DATA_SIZE5], int embedding_buffer6[BATCH_SIZE * DATA_SIZE6], int embedding_buffer7[BATCH_SIZE * DATA_SIZE7], 
    int embedding_buffer8[BATCH_SIZE * DATA_SIZE8], int embedding_buffer9[BATCH_SIZE * DATA_SIZE9], int embedding_buffer10[BATCH_SIZE * DATA_SIZE10], int embedding_buffer11[BATCH_SIZE * DATA_SIZE11], 
    int embedding_buffer12[BATCH_SIZE * DATA_SIZE12], int embedding_buffer13[BATCH_SIZE * DATA_SIZE13], int embedding_buffer14[BATCH_SIZE * DATA_SIZE14], int embedding_buffer15[BATCH_SIZE * DATA_SIZE15], 
    int embedding_buffer16[BATCH_SIZE * DATA_SIZE16], int embedding_buffer17[BATCH_SIZE * DATA_SIZE17], int embedding_buffer18[BATCH_SIZE * DATA_SIZE18], int embedding_buffer19[BATCH_SIZE * DATA_SIZE19], 
    int embedding_buffer20[BATCH_SIZE * DATA_SIZE20], int embedding_buffer21[BATCH_SIZE * DATA_SIZE21], int embedding_buffer22[BATCH_SIZE * DATA_SIZE22], int embedding_buffer23[BATCH_SIZE * DATA_SIZE23], 
    int embedding_buffer24[BATCH_SIZE * DATA_SIZE24], int embedding_buffer25[BATCH_SIZE * DATA_SIZE25], int embedding_buffer26[BATCH_SIZE * DATA_SIZE26], int embedding_buffer27[BATCH_SIZE * DATA_SIZE27], 
    int embedding_buffer28[BATCH_SIZE * DATA_SIZE28], int embedding_buffer29[BATCH_SIZE * DATA_SIZE29], int embedding_buffer30[BATCH_SIZE * DATA_SIZE30], int embedding_buffer31[BATCH_SIZE * DATA_SIZE31], 
    int embedding_buffer32[BATCH_SIZE * DATA_SIZE32], int embedding_buffer33[BATCH_SIZE * DATA_SIZE33], int embedding_buffer34[BATCH_SIZE * DATA_SIZE34], int embedding_buffer35[BATCH_SIZE * DATA_SIZE35], 
    int embedding_buffer36[BATCH_SIZE * DATA_SIZE36], int embedding_buffer37[BATCH_SIZE * DATA_SIZE37], int embedding_buffer38[BATCH_SIZE * DATA_SIZE38], int embedding_buffer39[BATCH_SIZE * DATA_SIZE39], 
    int embedding_buffer40[BATCH_SIZE * DATA_SIZE40], int embedding_buffer41[BATCH_SIZE * DATA_SIZE41], int embedding_buffer42[BATCH_SIZE * DATA_SIZE42], int embedding_buffer43[BATCH_SIZE * DATA_SIZE43], 
    int embedding_buffer44[BATCH_SIZE * DATA_SIZE44], int embedding_buffer45[BATCH_SIZE * DATA_SIZE45], int embedding_buffer46[BATCH_SIZE * DATA_SIZE46], int embedding_buffer47[BATCH_SIZE * DATA_SIZE47], 
    int embedding_buffer48[BATCH_SIZE * DATA_SIZE48], int embedding_buffer49[BATCH_SIZE * DATA_SIZE49], int embedding_buffer50[BATCH_SIZE * DATA_SIZE50], int embedding_buffer51[BATCH_SIZE * DATA_SIZE51], 
    int embedding_buffer52[BATCH_SIZE * DATA_SIZE52], int embedding_buffer53[BATCH_SIZE * DATA_SIZE53], int embedding_buffer54[BATCH_SIZE * DATA_SIZE54], int embedding_buffer55[BATCH_SIZE * DATA_SIZE55], 
    int embedding_buffer56[BATCH_SIZE * DATA_SIZE56], int embedding_buffer57[BATCH_SIZE * DATA_SIZE57], int embedding_buffer58[BATCH_SIZE * DATA_SIZE58], int embedding_buffer59[BATCH_SIZE * DATA_SIZE59], 
    int embedding_buffer60[BATCH_SIZE * DATA_SIZE60], int embedding_buffer61[BATCH_SIZE * DATA_SIZE61], int embedding_buffer62[BATCH_SIZE * DATA_SIZE62], int embedding_buffer63[BATCH_SIZE * DATA_SIZE63], 
    int embedding_buffer64[BATCH_SIZE * DATA_SIZE64], int embedding_buffer65[BATCH_SIZE * DATA_SIZE65], int embedding_buffer66[BATCH_SIZE * DATA_SIZE66], int embedding_buffer67[BATCH_SIZE * DATA_SIZE67], 
    int embedding_buffer68[BATCH_SIZE * DATA_SIZE68], int embedding_buffer69[BATCH_SIZE * DATA_SIZE69], int embedding_buffer70[BATCH_SIZE * DATA_SIZE70], int embedding_buffer71[BATCH_SIZE * DATA_SIZE71], 
    int embedding_buffer72[BATCH_SIZE * DATA_SIZE72], int embedding_buffer73[BATCH_SIZE * DATA_SIZE73], int embedding_buffer74[BATCH_SIZE * DATA_SIZE74], int embedding_buffer75[BATCH_SIZE * DATA_SIZE75], 
    int embedding_buffer76[BATCH_SIZE * DATA_SIZE76], int embedding_buffer77[BATCH_SIZE * DATA_SIZE77], int embedding_buffer78[BATCH_SIZE * DATA_SIZE78], int embedding_buffer79[BATCH_SIZE * DATA_SIZE79], 
    int embedding_buffer80[BATCH_SIZE * DATA_SIZE80], int embedding_buffer81[BATCH_SIZE * DATA_SIZE81], int embedding_buffer82[BATCH_SIZE * DATA_SIZE82], int embedding_buffer83[BATCH_SIZE * DATA_SIZE83], 
    int embedding_buffer84[BATCH_SIZE * DATA_SIZE84], int embedding_buffer85[BATCH_SIZE * DATA_SIZE85], int embedding_buffer86[BATCH_SIZE * DATA_SIZE86], int embedding_buffer87[BATCH_SIZE * DATA_SIZE87], 
    int embedding_buffer88[BATCH_SIZE * DATA_SIZE88], int embedding_buffer89[BATCH_SIZE * DATA_SIZE89], int embedding_buffer90[BATCH_SIZE * DATA_SIZE90], int embedding_buffer91[BATCH_SIZE * DATA_SIZE91], 
    int embedding_buffer92[BATCH_SIZE * DATA_SIZE92], int embedding_buffer93[BATCH_SIZE * DATA_SIZE93], int embedding_buffer94[BATCH_SIZE * DATA_SIZE94], int embedding_buffer95[BATCH_SIZE * DATA_SIZE95], 
    int embedding_buffer96[BATCH_SIZE * DATA_SIZE96], int embedding_buffer97[BATCH_SIZE * DATA_SIZE97], int embedding_buffer98[BATCH_SIZE * DATA_SIZE98], int embedding_buffer99[BATCH_SIZE * DATA_SIZE99], 
    int embedding_buffer100[BATCH_SIZE * DATA_SIZE100], int embedding_buffer101[BATCH_SIZE * DATA_SIZE101], int embedding_buffer102[BATCH_SIZE * DATA_SIZE102], int embedding_buffer103[BATCH_SIZE * DATA_SIZE103], 
    int embedding_buffer104[BATCH_SIZE * DATA_SIZE104], int embedding_buffer105[BATCH_SIZE * DATA_SIZE105], int embedding_buffer106[BATCH_SIZE * DATA_SIZE106], int embedding_buffer107[BATCH_SIZE * DATA_SIZE107], 
    int embedding_buffer108[BATCH_SIZE * DATA_SIZE108], int embedding_buffer109[BATCH_SIZE * DATA_SIZE109], int embedding_buffer110[BATCH_SIZE * DATA_SIZE110], int embedding_buffer111[BATCH_SIZE * DATA_SIZE111], 
    int embedding_buffer112[BATCH_SIZE * DATA_SIZE112], int embedding_buffer113[BATCH_SIZE * DATA_SIZE113], int embedding_buffer114[BATCH_SIZE * DATA_SIZE114], int embedding_buffer115[BATCH_SIZE * DATA_SIZE115], 
    int embedding_buffer116[BATCH_SIZE * DATA_SIZE116], int embedding_buffer117[BATCH_SIZE * DATA_SIZE117], int embedding_buffer118[BATCH_SIZE * DATA_SIZE118], int embedding_buffer119[BATCH_SIZE * DATA_SIZE119], 
    int embedding_buffer120[BATCH_SIZE * DATA_SIZE120], int embedding_buffer121[BATCH_SIZE * DATA_SIZE121], int embedding_buffer122[BATCH_SIZE * DATA_SIZE122], int embedding_buffer123[BATCH_SIZE * DATA_SIZE123], 
    int embedding_buffer124[BATCH_SIZE * DATA_SIZE124], int embedding_buffer125[BATCH_SIZE * DATA_SIZE125], int embedding_buffer126[BATCH_SIZE * DATA_SIZE126], int embedding_buffer127[BATCH_SIZE * DATA_SIZE127]
    ) {
//////////////////////////////   TEMPLATE END  //////////////////////////////

//////////////////////////////   TEMPLATE START  //////////////////////////////
    int idx_buffer0[BATCH_SIZE];
    int idx_buffer1[BATCH_SIZE];
    int idx_buffer2[BATCH_SIZE];
    int idx_buffer3[BATCH_SIZE];
    int idx_buffer4[BATCH_SIZE];
    int idx_buffer5[BATCH_SIZE];
    int idx_buffer6[BATCH_SIZE];
    int idx_buffer7[BATCH_SIZE];
    int idx_buffer8[BATCH_SIZE];
    int idx_buffer9[BATCH_SIZE];
    int idx_buffer10[BATCH_SIZE];
    int idx_buffer11[BATCH_SIZE];
    int idx_buffer12[BATCH_SIZE];
    int idx_buffer13[BATCH_SIZE];
    int idx_buffer14[BATCH_SIZE];
    int idx_buffer15[BATCH_SIZE];
    int idx_buffer16[BATCH_SIZE];
    int idx_buffer17[BATCH_SIZE];
    int idx_buffer18[BATCH_SIZE];
    int idx_buffer19[BATCH_SIZE];
    int idx_buffer20[BATCH_SIZE];
    int idx_buffer21[BATCH_SIZE];
    int idx_buffer22[BATCH_SIZE];
    int idx_buffer23[BATCH_SIZE];
    int idx_buffer24[BATCH_SIZE];
    int idx_buffer25[BATCH_SIZE];
    int idx_buffer26[BATCH_SIZE];
    int idx_buffer27[BATCH_SIZE];
    int idx_buffer28[BATCH_SIZE];
    int idx_buffer29[BATCH_SIZE];
    int idx_buffer30[BATCH_SIZE];
    int idx_buffer31[BATCH_SIZE];
    int idx_buffer32[BATCH_SIZE];
    int idx_buffer33[BATCH_SIZE];
    int idx_buffer34[BATCH_SIZE];
    int idx_buffer35[BATCH_SIZE];
    int idx_buffer36[BATCH_SIZE];
    int idx_buffer37[BATCH_SIZE];
    int idx_buffer38[BATCH_SIZE];
    int idx_buffer39[BATCH_SIZE];
    int idx_buffer40[BATCH_SIZE];
    int idx_buffer41[BATCH_SIZE];
    int idx_buffer42[BATCH_SIZE];
    int idx_buffer43[BATCH_SIZE];
    int idx_buffer44[BATCH_SIZE];
    int idx_buffer45[BATCH_SIZE];
    int idx_buffer46[BATCH_SIZE];
    int idx_buffer47[BATCH_SIZE];
    int idx_buffer48[BATCH_SIZE];
    int idx_buffer49[BATCH_SIZE];
    int idx_buffer50[BATCH_SIZE];
    int idx_buffer51[BATCH_SIZE];
    int idx_buffer52[BATCH_SIZE];
    int idx_buffer53[BATCH_SIZE];
    int idx_buffer54[BATCH_SIZE];
    int idx_buffer55[BATCH_SIZE];
    int idx_buffer56[BATCH_SIZE];
    int idx_buffer57[BATCH_SIZE];
    int idx_buffer58[BATCH_SIZE];
    int idx_buffer59[BATCH_SIZE];
    int idx_buffer60[BATCH_SIZE];
    int idx_buffer61[BATCH_SIZE];
    int idx_buffer62[BATCH_SIZE];
    int idx_buffer63[BATCH_SIZE];
    int idx_buffer64[BATCH_SIZE];
    int idx_buffer65[BATCH_SIZE];
    int idx_buffer66[BATCH_SIZE];
    int idx_buffer67[BATCH_SIZE];
    int idx_buffer68[BATCH_SIZE];
    int idx_buffer69[BATCH_SIZE];
    int idx_buffer70[BATCH_SIZE];
    int idx_buffer71[BATCH_SIZE];
    int idx_buffer72[BATCH_SIZE];
    int idx_buffer73[BATCH_SIZE];
    int idx_buffer74[BATCH_SIZE];
    int idx_buffer75[BATCH_SIZE];
    int idx_buffer76[BATCH_SIZE];
    int idx_buffer77[BATCH_SIZE];
    int idx_buffer78[BATCH_SIZE];
    int idx_buffer79[BATCH_SIZE];
    int idx_buffer80[BATCH_SIZE];
    int idx_buffer81[BATCH_SIZE];
    int idx_buffer82[BATCH_SIZE];
    int idx_buffer83[BATCH_SIZE];
    int idx_buffer84[BATCH_SIZE];
    int idx_buffer85[BATCH_SIZE];
    int idx_buffer86[BATCH_SIZE];
    int idx_buffer87[BATCH_SIZE];
    int idx_buffer88[BATCH_SIZE];
    int idx_buffer89[BATCH_SIZE];
    int idx_buffer90[BATCH_SIZE];
    int idx_buffer91[BATCH_SIZE];
    int idx_buffer92[BATCH_SIZE];
    int idx_buffer93[BATCH_SIZE];
    int idx_buffer94[BATCH_SIZE];
    int idx_buffer95[BATCH_SIZE];
    int idx_buffer96[BATCH_SIZE];
    int idx_buffer97[BATCH_SIZE];
    int idx_buffer98[BATCH_SIZE];
    int idx_buffer99[BATCH_SIZE];
    int idx_buffer100[BATCH_SIZE];
    int idx_buffer101[BATCH_SIZE];
    int idx_buffer102[BATCH_SIZE];
    int idx_buffer103[BATCH_SIZE];
    int idx_buffer104[BATCH_SIZE];
    int idx_buffer105[BATCH_SIZE];
    int idx_buffer106[BATCH_SIZE];
    int idx_buffer107[BATCH_SIZE];
    int idx_buffer108[BATCH_SIZE];
    int idx_buffer109[BATCH_SIZE];
    int idx_buffer110[BATCH_SIZE];
    int idx_buffer111[BATCH_SIZE];
    int idx_buffer112[BATCH_SIZE];
    int idx_buffer113[BATCH_SIZE];
    int idx_buffer114[BATCH_SIZE];
    int idx_buffer115[BATCH_SIZE];
    int idx_buffer116[BATCH_SIZE];
    int idx_buffer117[BATCH_SIZE];
    int idx_buffer118[BATCH_SIZE];
    int idx_buffer119[BATCH_SIZE];
    int idx_buffer120[BATCH_SIZE];
    int idx_buffer121[BATCH_SIZE];
    int idx_buffer122[BATCH_SIZE];
    int idx_buffer123[BATCH_SIZE];
    int idx_buffer124[BATCH_SIZE];
    int idx_buffer125[BATCH_SIZE];
    int idx_buffer126[BATCH_SIZE];
    int idx_buffer127[BATCH_SIZE];
//////////////////////////////   TEMPLATE END  //////////////////////////////

    int idx_buffer_all[BATCH_SIZE * TABLE_NUM];

    for (int i = 0; i < BATCH_SIZE * TABLE_NUM; i++) {
        idx_buffer_all[i] = access_idx[start_idx + i];
    }

    for (int i = 0; i < BATCH_SIZE; i++) {
//////////////////////////////   TEMPLATE START  //////////////////////////////
        idx_buffer0[i] = idx_buffer_all[i * TABLE_NUM + 0]; 
        idx_buffer1[i] = idx_buffer_all[i * TABLE_NUM + 1]; 
        idx_buffer2[i] = idx_buffer_all[i * TABLE_NUM + 2]; 
        idx_buffer3[i] = idx_buffer_all[i * TABLE_NUM + 3]; 
        idx_buffer4[i] = idx_buffer_all[i * TABLE_NUM + 4]; 
        idx_buffer5[i] = idx_buffer_all[i * TABLE_NUM + 5]; 
        idx_buffer6[i] = idx_buffer_all[i * TABLE_NUM + 6]; 
        idx_buffer7[i] = idx_buffer_all[i * TABLE_NUM + 7]; 
        idx_buffer8[i] = idx_buffer_all[i * TABLE_NUM + 8]; 
        idx_buffer9[i] = idx_buffer_all[i * TABLE_NUM + 9]; 
        idx_buffer10[i] = idx_buffer_all[i * TABLE_NUM + 10]; 
        idx_buffer11[i] = idx_buffer_all[i * TABLE_NUM + 11]; 
        idx_buffer12[i] = idx_buffer_all[i * TABLE_NUM + 12]; 
        idx_buffer13[i] = idx_buffer_all[i * TABLE_NUM + 13]; 
        idx_buffer14[i] = idx_buffer_all[i * TABLE_NUM + 14]; 
        idx_buffer15[i] = idx_buffer_all[i * TABLE_NUM + 15]; 
        idx_buffer16[i] = idx_buffer_all[i * TABLE_NUM + 16]; 
        idx_buffer17[i] = idx_buffer_all[i * TABLE_NUM + 17]; 
        idx_buffer18[i] = idx_buffer_all[i * TABLE_NUM + 18]; 
        idx_buffer19[i] = idx_buffer_all[i * TABLE_NUM + 19]; 
        idx_buffer20[i] = idx_buffer_all[i * TABLE_NUM + 20]; 
        idx_buffer21[i] = idx_buffer_all[i * TABLE_NUM + 21]; 
        idx_buffer22[i] = idx_buffer_all[i * TABLE_NUM + 22]; 
        idx_buffer23[i] = idx_buffer_all[i * TABLE_NUM + 23]; 
        idx_buffer24[i] = idx_buffer_all[i * TABLE_NUM + 24]; 
        idx_buffer25[i] = idx_buffer_all[i * TABLE_NUM + 25]; 
        idx_buffer26[i] = idx_buffer_all[i * TABLE_NUM + 26]; 
        idx_buffer27[i] = idx_buffer_all[i * TABLE_NUM + 27]; 
        idx_buffer28[i] = idx_buffer_all[i * TABLE_NUM + 28]; 
        idx_buffer29[i] = idx_buffer_all[i * TABLE_NUM + 29]; 
        idx_buffer30[i] = idx_buffer_all[i * TABLE_NUM + 30]; 
        idx_buffer31[i] = idx_buffer_all[i * TABLE_NUM + 31]; 
        idx_buffer32[i] = idx_buffer_all[i * TABLE_NUM + 32]; 
        idx_buffer33[i] = idx_buffer_all[i * TABLE_NUM + 33]; 
        idx_buffer34[i] = idx_buffer_all[i * TABLE_NUM + 34]; 
        idx_buffer35[i] = idx_buffer_all[i * TABLE_NUM + 35]; 
        idx_buffer36[i] = idx_buffer_all[i * TABLE_NUM + 36]; 
        idx_buffer37[i] = idx_buffer_all[i * TABLE_NUM + 37]; 
        idx_buffer38[i] = idx_buffer_all[i * TABLE_NUM + 38]; 
        idx_buffer39[i] = idx_buffer_all[i * TABLE_NUM + 39]; 
        idx_buffer40[i] = idx_buffer_all[i * TABLE_NUM + 40]; 
        idx_buffer41[i] = idx_buffer_all[i * TABLE_NUM + 41]; 
        idx_buffer42[i] = idx_buffer_all[i * TABLE_NUM + 42]; 
        idx_buffer43[i] = idx_buffer_all[i * TABLE_NUM + 43]; 
        idx_buffer44[i] = idx_buffer_all[i * TABLE_NUM + 44]; 
        idx_buffer45[i] = idx_buffer_all[i * TABLE_NUM + 45]; 
        idx_buffer46[i] = idx_buffer_all[i * TABLE_NUM + 46]; 
        idx_buffer47[i] = idx_buffer_all[i * TABLE_NUM + 47]; 
        idx_buffer48[i] = idx_buffer_all[i * TABLE_NUM + 48]; 
        idx_buffer49[i] = idx_buffer_all[i * TABLE_NUM + 49]; 
        idx_buffer50[i] = idx_buffer_all[i * TABLE_NUM + 50]; 
        idx_buffer51[i] = idx_buffer_all[i * TABLE_NUM + 51]; 
        idx_buffer52[i] = idx_buffer_all[i * TABLE_NUM + 52]; 
        idx_buffer53[i] = idx_buffer_all[i * TABLE_NUM + 53]; 
        idx_buffer54[i] = idx_buffer_all[i * TABLE_NUM + 54]; 
        idx_buffer55[i] = idx_buffer_all[i * TABLE_NUM + 55]; 
        idx_buffer56[i] = idx_buffer_all[i * TABLE_NUM + 56]; 
        idx_buffer57[i] = idx_buffer_all[i * TABLE_NUM + 57]; 
        idx_buffer58[i] = idx_buffer_all[i * TABLE_NUM + 58]; 
        idx_buffer59[i] = idx_buffer_all[i * TABLE_NUM + 59]; 
        idx_buffer60[i] = idx_buffer_all[i * TABLE_NUM + 60]; 
        idx_buffer61[i] = idx_buffer_all[i * TABLE_NUM + 61]; 
        idx_buffer62[i] = idx_buffer_all[i * TABLE_NUM + 62]; 
        idx_buffer63[i] = idx_buffer_all[i * TABLE_NUM + 63]; 
        idx_buffer64[i] = idx_buffer_all[i * TABLE_NUM + 64]; 
        idx_buffer65[i] = idx_buffer_all[i * TABLE_NUM + 65]; 
        idx_buffer66[i] = idx_buffer_all[i * TABLE_NUM + 66]; 
        idx_buffer67[i] = idx_buffer_all[i * TABLE_NUM + 67]; 
        idx_buffer68[i] = idx_buffer_all[i * TABLE_NUM + 68]; 
        idx_buffer69[i] = idx_buffer_all[i * TABLE_NUM + 69]; 
        idx_buffer70[i] = idx_buffer_all[i * TABLE_NUM + 70]; 
        idx_buffer71[i] = idx_buffer_all[i * TABLE_NUM + 71]; 
        idx_buffer72[i] = idx_buffer_all[i * TABLE_NUM + 72]; 
        idx_buffer73[i] = idx_buffer_all[i * TABLE_NUM + 73]; 
        idx_buffer74[i] = idx_buffer_all[i * TABLE_NUM + 74]; 
        idx_buffer75[i] = idx_buffer_all[i * TABLE_NUM + 75]; 
        idx_buffer76[i] = idx_buffer_all[i * TABLE_NUM + 76]; 
        idx_buffer77[i] = idx_buffer_all[i * TABLE_NUM + 77]; 
        idx_buffer78[i] = idx_buffer_all[i * TABLE_NUM + 78]; 
        idx_buffer79[i] = idx_buffer_all[i * TABLE_NUM + 79]; 
        idx_buffer80[i] = idx_buffer_all[i * TABLE_NUM + 80]; 
        idx_buffer81[i] = idx_buffer_all[i * TABLE_NUM + 81]; 
        idx_buffer82[i] = idx_buffer_all[i * TABLE_NUM + 82]; 
        idx_buffer83[i] = idx_buffer_all[i * TABLE_NUM + 83]; 
        idx_buffer84[i] = idx_buffer_all[i * TABLE_NUM + 84]; 
        idx_buffer85[i] = idx_buffer_all[i * TABLE_NUM + 85]; 
        idx_buffer86[i] = idx_buffer_all[i * TABLE_NUM + 86]; 
        idx_buffer87[i] = idx_buffer_all[i * TABLE_NUM + 87]; 
        idx_buffer88[i] = idx_buffer_all[i * TABLE_NUM + 88]; 
        idx_buffer89[i] = idx_buffer_all[i * TABLE_NUM + 89]; 
        idx_buffer90[i] = idx_buffer_all[i * TABLE_NUM + 90]; 
        idx_buffer91[i] = idx_buffer_all[i * TABLE_NUM + 91]; 
        idx_buffer92[i] = idx_buffer_all[i * TABLE_NUM + 92]; 
        idx_buffer93[i] = idx_buffer_all[i * TABLE_NUM + 93]; 
        idx_buffer94[i] = idx_buffer_all[i * TABLE_NUM + 94]; 
        idx_buffer95[i] = idx_buffer_all[i * TABLE_NUM + 95]; 
        idx_buffer96[i] = idx_buffer_all[i * TABLE_NUM + 96]; 
        idx_buffer97[i] = idx_buffer_all[i * TABLE_NUM + 97]; 
        idx_buffer98[i] = idx_buffer_all[i * TABLE_NUM + 98]; 
        idx_buffer99[i] = idx_buffer_all[i * TABLE_NUM + 99]; 
        idx_buffer100[i] = idx_buffer_all[i * TABLE_NUM + 100]; 
        idx_buffer101[i] = idx_buffer_all[i * TABLE_NUM + 101]; 
        idx_buffer102[i] = idx_buffer_all[i * TABLE_NUM + 102]; 
        idx_buffer103[i] = idx_buffer_all[i * TABLE_NUM + 103]; 
        idx_buffer104[i] = idx_buffer_all[i * TABLE_NUM + 104]; 
        idx_buffer105[i] = idx_buffer_all[i * TABLE_NUM + 105]; 
        idx_buffer106[i] = idx_buffer_all[i * TABLE_NUM + 106]; 
        idx_buffer107[i] = idx_buffer_all[i * TABLE_NUM + 107]; 
        idx_buffer108[i] = idx_buffer_all[i * TABLE_NUM + 108]; 
        idx_buffer109[i] = idx_buffer_all[i * TABLE_NUM + 109]; 
        idx_buffer110[i] = idx_buffer_all[i * TABLE_NUM + 110]; 
        idx_buffer111[i] = idx_buffer_all[i * TABLE_NUM + 111]; 
        idx_buffer112[i] = idx_buffer_all[i * TABLE_NUM + 112]; 
        idx_buffer113[i] = idx_buffer_all[i * TABLE_NUM + 113]; 
        idx_buffer114[i] = idx_buffer_all[i * TABLE_NUM + 114]; 
        idx_buffer115[i] = idx_buffer_all[i * TABLE_NUM + 115]; 
        idx_buffer116[i] = idx_buffer_all[i * TABLE_NUM + 116]; 
        idx_buffer117[i] = idx_buffer_all[i * TABLE_NUM + 117]; 
        idx_buffer118[i] = idx_buffer_all[i * TABLE_NUM + 118]; 
        idx_buffer119[i] = idx_buffer_all[i * TABLE_NUM + 119]; 
        idx_buffer120[i] = idx_buffer_all[i * TABLE_NUM + 120]; 
        idx_buffer121[i] = idx_buffer_all[i * TABLE_NUM + 121]; 
        idx_buffer122[i] = idx_buffer_all[i * TABLE_NUM + 122]; 
        idx_buffer123[i] = idx_buffer_all[i * TABLE_NUM + 123]; 
        idx_buffer124[i] = idx_buffer_all[i * TABLE_NUM + 124]; 
        idx_buffer125[i] = idx_buffer_all[i * TABLE_NUM + 125]; 
        idx_buffer126[i] = idx_buffer_all[i * TABLE_NUM + 126]; 
        idx_buffer127[i] = idx_buffer_all[i * TABLE_NUM + 127]; 
//////////////////////////////   TEMPLATE END  //////////////////////////////
    }
    
    
//////////////////////////////   TEMPLATE START  //////////////////////////////
    load_single_embedding(idx_buffer0, table0, embedding_buffer0, DATA_SIZE0);
    load_single_embedding(idx_buffer1, table1, embedding_buffer1, DATA_SIZE1);
    load_single_embedding(idx_buffer2, table2, embedding_buffer2, DATA_SIZE2);
    load_single_embedding(idx_buffer3, table3, embedding_buffer3, DATA_SIZE3);
    load_single_embedding(idx_buffer4, table4, embedding_buffer4, DATA_SIZE4);
    load_single_embedding(idx_buffer5, table5, embedding_buffer5, DATA_SIZE5);
    load_single_embedding(idx_buffer6, table6, embedding_buffer6, DATA_SIZE6);
    load_single_embedding(idx_buffer7, table7, embedding_buffer7, DATA_SIZE7);
    load_single_embedding(idx_buffer8, table8, embedding_buffer8, DATA_SIZE8);
    load_single_embedding(idx_buffer9, table9, embedding_buffer9, DATA_SIZE9);
    load_single_embedding(idx_buffer10, table10, embedding_buffer10, DATA_SIZE10);
    load_single_embedding(idx_buffer11, table11, embedding_buffer11, DATA_SIZE11);
    load_single_embedding(idx_buffer12, table12, embedding_buffer12, DATA_SIZE12);
    load_single_embedding(idx_buffer13, table13, embedding_buffer13, DATA_SIZE13);
    load_single_embedding(idx_buffer14, table14, embedding_buffer14, DATA_SIZE14);
    load_single_embedding(idx_buffer15, table15, embedding_buffer15, DATA_SIZE15);
    load_single_embedding(idx_buffer16, table16, embedding_buffer16, DATA_SIZE16);
    load_single_embedding(idx_buffer17, table17, embedding_buffer17, DATA_SIZE17);
    load_single_embedding(idx_buffer18, table18, embedding_buffer18, DATA_SIZE18);
    load_single_embedding(idx_buffer19, table19, embedding_buffer19, DATA_SIZE19);
    load_single_embedding(idx_buffer20, table20, embedding_buffer20, DATA_SIZE20);
    load_single_embedding(idx_buffer21, table21, embedding_buffer21, DATA_SIZE21);
    load_single_embedding(idx_buffer22, table22, embedding_buffer22, DATA_SIZE22);
    load_single_embedding(idx_buffer23, table23, embedding_buffer23, DATA_SIZE23);
    load_single_embedding(idx_buffer24, table24, embedding_buffer24, DATA_SIZE24);
    load_single_embedding(idx_buffer25, table25, embedding_buffer25, DATA_SIZE25);
    load_single_embedding(idx_buffer26, table26, embedding_buffer26, DATA_SIZE26);
    load_single_embedding(idx_buffer27, table27, embedding_buffer27, DATA_SIZE27);
    load_single_embedding(idx_buffer28, table28, embedding_buffer28, DATA_SIZE28);
    load_single_embedding(idx_buffer29, table29, embedding_buffer29, DATA_SIZE29);
    load_single_embedding(idx_buffer30, table30, embedding_buffer30, DATA_SIZE30);
    load_single_embedding(idx_buffer31, table31, embedding_buffer31, DATA_SIZE31);
    load_single_embedding(idx_buffer32, table32, embedding_buffer32, DATA_SIZE32);
    load_single_embedding(idx_buffer33, table33, embedding_buffer33, DATA_SIZE33);
    load_single_embedding(idx_buffer34, table34, embedding_buffer34, DATA_SIZE34);
    load_single_embedding(idx_buffer35, table35, embedding_buffer35, DATA_SIZE35);
    load_single_embedding(idx_buffer36, table36, embedding_buffer36, DATA_SIZE36);
    load_single_embedding(idx_buffer37, table37, embedding_buffer37, DATA_SIZE37);
    load_single_embedding(idx_buffer38, table38, embedding_buffer38, DATA_SIZE38);
    load_single_embedding(idx_buffer39, table39, embedding_buffer39, DATA_SIZE39);
    load_single_embedding(idx_buffer40, table40, embedding_buffer40, DATA_SIZE40);
    load_single_embedding(idx_buffer41, table41, embedding_buffer41, DATA_SIZE41);
    load_single_embedding(idx_buffer42, table42, embedding_buffer42, DATA_SIZE42);
    load_single_embedding(idx_buffer43, table43, embedding_buffer43, DATA_SIZE43);
    load_single_embedding(idx_buffer44, table44, embedding_buffer44, DATA_SIZE44);
    load_single_embedding(idx_buffer45, table45, embedding_buffer45, DATA_SIZE45);
    load_single_embedding(idx_buffer46, table46, embedding_buffer46, DATA_SIZE46);
    load_single_embedding(idx_buffer47, table47, embedding_buffer47, DATA_SIZE47);
    load_single_embedding(idx_buffer48, table48, embedding_buffer48, DATA_SIZE48);
    load_single_embedding(idx_buffer49, table49, embedding_buffer49, DATA_SIZE49);
    load_single_embedding(idx_buffer50, table50, embedding_buffer50, DATA_SIZE50);
    load_single_embedding(idx_buffer51, table51, embedding_buffer51, DATA_SIZE51);
    load_single_embedding(idx_buffer52, table52, embedding_buffer52, DATA_SIZE52);
    load_single_embedding(idx_buffer53, table53, embedding_buffer53, DATA_SIZE53);
    load_single_embedding(idx_buffer54, table54, embedding_buffer54, DATA_SIZE54);
    load_single_embedding(idx_buffer55, table55, embedding_buffer55, DATA_SIZE55);
    load_single_embedding(idx_buffer56, table56, embedding_buffer56, DATA_SIZE56);
    load_single_embedding(idx_buffer57, table57, embedding_buffer57, DATA_SIZE57);
    load_single_embedding(idx_buffer58, table58, embedding_buffer58, DATA_SIZE58);
    load_single_embedding(idx_buffer59, table59, embedding_buffer59, DATA_SIZE59);
    load_single_embedding(idx_buffer60, table60, embedding_buffer60, DATA_SIZE60);
    load_single_embedding(idx_buffer61, table61, embedding_buffer61, DATA_SIZE61);
    load_single_embedding(idx_buffer62, table62, embedding_buffer62, DATA_SIZE62);
    load_single_embedding(idx_buffer63, table63, embedding_buffer63, DATA_SIZE63);
    load_single_embedding(idx_buffer64, table64, embedding_buffer64, DATA_SIZE64);
    load_single_embedding(idx_buffer65, table65, embedding_buffer65, DATA_SIZE65);
    load_single_embedding(idx_buffer66, table66, embedding_buffer66, DATA_SIZE66);
    load_single_embedding(idx_buffer67, table67, embedding_buffer67, DATA_SIZE67);
    load_single_embedding(idx_buffer68, table68, embedding_buffer68, DATA_SIZE68);
    load_single_embedding(idx_buffer69, table69, embedding_buffer69, DATA_SIZE69);
    load_single_embedding(idx_buffer70, table70, embedding_buffer70, DATA_SIZE70);
    load_single_embedding(idx_buffer71, table71, embedding_buffer71, DATA_SIZE71);
    load_single_embedding(idx_buffer72, table72, embedding_buffer72, DATA_SIZE72);
    load_single_embedding(idx_buffer73, table73, embedding_buffer73, DATA_SIZE73);
    load_single_embedding(idx_buffer74, table74, embedding_buffer74, DATA_SIZE74);
    load_single_embedding(idx_buffer75, table75, embedding_buffer75, DATA_SIZE75);
    load_single_embedding(idx_buffer76, table76, embedding_buffer76, DATA_SIZE76);
    load_single_embedding(idx_buffer77, table77, embedding_buffer77, DATA_SIZE77);
    load_single_embedding(idx_buffer78, table78, embedding_buffer78, DATA_SIZE78);
    load_single_embedding(idx_buffer79, table79, embedding_buffer79, DATA_SIZE79);
    load_single_embedding(idx_buffer80, table80, embedding_buffer80, DATA_SIZE80);
    load_single_embedding(idx_buffer81, table81, embedding_buffer81, DATA_SIZE81);
    load_single_embedding(idx_buffer82, table82, embedding_buffer82, DATA_SIZE82);
    load_single_embedding(idx_buffer83, table83, embedding_buffer83, DATA_SIZE83);
    load_single_embedding(idx_buffer84, table84, embedding_buffer84, DATA_SIZE84);
    load_single_embedding(idx_buffer85, table85, embedding_buffer85, DATA_SIZE85);
    load_single_embedding(idx_buffer86, table86, embedding_buffer86, DATA_SIZE86);
    load_single_embedding(idx_buffer87, table87, embedding_buffer87, DATA_SIZE87);
    load_single_embedding(idx_buffer88, table88, embedding_buffer88, DATA_SIZE88);
    load_single_embedding(idx_buffer89, table89, embedding_buffer89, DATA_SIZE89);
    load_single_embedding(idx_buffer90, table90, embedding_buffer90, DATA_SIZE90);
    load_single_embedding(idx_buffer91, table91, embedding_buffer91, DATA_SIZE91);
    load_single_embedding(idx_buffer92, table92, embedding_buffer92, DATA_SIZE92);
    load_single_embedding(idx_buffer93, table93, embedding_buffer93, DATA_SIZE93);
    load_single_embedding(idx_buffer94, table94, embedding_buffer94, DATA_SIZE94);
    load_single_embedding(idx_buffer95, table95, embedding_buffer95, DATA_SIZE95);
    load_single_embedding(idx_buffer96, table96, embedding_buffer96, DATA_SIZE96);
    load_single_embedding(idx_buffer97, table97, embedding_buffer97, DATA_SIZE97);
    load_single_embedding(idx_buffer98, table98, embedding_buffer98, DATA_SIZE98);
    load_single_embedding(idx_buffer99, table99, embedding_buffer99, DATA_SIZE99);
    load_single_embedding(idx_buffer100, table100, embedding_buffer100, DATA_SIZE100);
    load_single_embedding(idx_buffer101, table101, embedding_buffer101, DATA_SIZE101);
    load_single_embedding(idx_buffer102, table102, embedding_buffer102, DATA_SIZE102);
    load_single_embedding(idx_buffer103, table103, embedding_buffer103, DATA_SIZE103);
    load_single_embedding(idx_buffer104, table104, embedding_buffer104, DATA_SIZE104);
    load_single_embedding(idx_buffer105, table105, embedding_buffer105, DATA_SIZE105);
    load_single_embedding(idx_buffer106, table106, embedding_buffer106, DATA_SIZE106);
    load_single_embedding(idx_buffer107, table107, embedding_buffer107, DATA_SIZE107);
    load_single_embedding(idx_buffer108, table108, embedding_buffer108, DATA_SIZE108);
    load_single_embedding(idx_buffer109, table109, embedding_buffer109, DATA_SIZE109);
    load_single_embedding(idx_buffer110, table110, embedding_buffer110, DATA_SIZE110);
    load_single_embedding(idx_buffer111, table111, embedding_buffer111, DATA_SIZE111);
    load_single_embedding(idx_buffer112, table112, embedding_buffer112, DATA_SIZE112);
    load_single_embedding(idx_buffer113, table113, embedding_buffer113, DATA_SIZE113);
    load_single_embedding(idx_buffer114, table114, embedding_buffer114, DATA_SIZE114);
    load_single_embedding(idx_buffer115, table115, embedding_buffer115, DATA_SIZE115);
    load_single_embedding(idx_buffer116, table116, embedding_buffer116, DATA_SIZE116);
    load_single_embedding(idx_buffer117, table117, embedding_buffer117, DATA_SIZE117);
    load_single_embedding(idx_buffer118, table118, embedding_buffer118, DATA_SIZE118);
    load_single_embedding(idx_buffer119, table119, embedding_buffer119, DATA_SIZE119);
    load_single_embedding(idx_buffer120, table120, embedding_buffer120, DATA_SIZE120);
    load_single_embedding(idx_buffer121, table121, embedding_buffer121, DATA_SIZE121);
    load_single_embedding(idx_buffer122, table122, embedding_buffer122, DATA_SIZE122);
    load_single_embedding(idx_buffer123, table123, embedding_buffer123, DATA_SIZE123);
    load_single_embedding(idx_buffer124, table124, embedding_buffer124, DATA_SIZE124);
    load_single_embedding(idx_buffer125, table125, embedding_buffer125, DATA_SIZE125);
    load_single_embedding(idx_buffer126, table126, embedding_buffer126, DATA_SIZE126);
    load_single_embedding(idx_buffer127, table127, embedding_buffer127, DATA_SIZE127);
//////////////////////////////   TEMPLATE END  //////////////////////////////
}

void reduction_add_single(
    int* embedding_buffer, int data_size, int result_buffer[BATCH_SIZE])  {
#pragma HLS function_instantiate variable=data_size

    for (int i = 0; i < BATCH_SIZE; i++) {
    // NOTE: UNROLL FACTOR === BATCH_SIZE!
    #pragma HLS UNROLL factor=32 
    
        int result = 0;

        for (int j = 0; j < data_size; j++) {
#pragma HLS resource variable=result core=AddSub_DSP
            result += embedding_buffer[i * data_size + j];
        }

        result_buffer[i] = result;
    }
}

//////////////////////////////   TEMPLATE START  //////////////////////////////
void reduction_add_all(
    int embedding_buffer0[BATCH_SIZE * DATA_SIZE0], int embedding_buffer1[BATCH_SIZE * DATA_SIZE1], int embedding_buffer2[BATCH_SIZE * DATA_SIZE2], int embedding_buffer3[BATCH_SIZE * DATA_SIZE3], 
    int embedding_buffer4[BATCH_SIZE * DATA_SIZE4], int embedding_buffer5[BATCH_SIZE * DATA_SIZE5], int embedding_buffer6[BATCH_SIZE * DATA_SIZE6], int embedding_buffer7[BATCH_SIZE * DATA_SIZE7], 
    int embedding_buffer8[BATCH_SIZE * DATA_SIZE8], int embedding_buffer9[BATCH_SIZE * DATA_SIZE9], int embedding_buffer10[BATCH_SIZE * DATA_SIZE10], int embedding_buffer11[BATCH_SIZE * DATA_SIZE11], 
    int embedding_buffer12[BATCH_SIZE * DATA_SIZE12], int embedding_buffer13[BATCH_SIZE * DATA_SIZE13], int embedding_buffer14[BATCH_SIZE * DATA_SIZE14], int embedding_buffer15[BATCH_SIZE * DATA_SIZE15], 
    int embedding_buffer16[BATCH_SIZE * DATA_SIZE16], int embedding_buffer17[BATCH_SIZE * DATA_SIZE17], int embedding_buffer18[BATCH_SIZE * DATA_SIZE18], int embedding_buffer19[BATCH_SIZE * DATA_SIZE19], 
    int embedding_buffer20[BATCH_SIZE * DATA_SIZE20], int embedding_buffer21[BATCH_SIZE * DATA_SIZE21], int embedding_buffer22[BATCH_SIZE * DATA_SIZE22], int embedding_buffer23[BATCH_SIZE * DATA_SIZE23], 
    int embedding_buffer24[BATCH_SIZE * DATA_SIZE24], int embedding_buffer25[BATCH_SIZE * DATA_SIZE25], int embedding_buffer26[BATCH_SIZE * DATA_SIZE26], int embedding_buffer27[BATCH_SIZE * DATA_SIZE27], 
    int embedding_buffer28[BATCH_SIZE * DATA_SIZE28], int embedding_buffer29[BATCH_SIZE * DATA_SIZE29], int embedding_buffer30[BATCH_SIZE * DATA_SIZE30], int embedding_buffer31[BATCH_SIZE * DATA_SIZE31], 
    int embedding_buffer32[BATCH_SIZE * DATA_SIZE32], int embedding_buffer33[BATCH_SIZE * DATA_SIZE33], int embedding_buffer34[BATCH_SIZE * DATA_SIZE34], int embedding_buffer35[BATCH_SIZE * DATA_SIZE35], 
    int embedding_buffer36[BATCH_SIZE * DATA_SIZE36], int embedding_buffer37[BATCH_SIZE * DATA_SIZE37], int embedding_buffer38[BATCH_SIZE * DATA_SIZE38], int embedding_buffer39[BATCH_SIZE * DATA_SIZE39], 
    int embedding_buffer40[BATCH_SIZE * DATA_SIZE40], int embedding_buffer41[BATCH_SIZE * DATA_SIZE41], int embedding_buffer42[BATCH_SIZE * DATA_SIZE42], int embedding_buffer43[BATCH_SIZE * DATA_SIZE43], 
    int embedding_buffer44[BATCH_SIZE * DATA_SIZE44], int embedding_buffer45[BATCH_SIZE * DATA_SIZE45], int embedding_buffer46[BATCH_SIZE * DATA_SIZE46], int embedding_buffer47[BATCH_SIZE * DATA_SIZE47], 
    int embedding_buffer48[BATCH_SIZE * DATA_SIZE48], int embedding_buffer49[BATCH_SIZE * DATA_SIZE49], int embedding_buffer50[BATCH_SIZE * DATA_SIZE50], int embedding_buffer51[BATCH_SIZE * DATA_SIZE51], 
    int embedding_buffer52[BATCH_SIZE * DATA_SIZE52], int embedding_buffer53[BATCH_SIZE * DATA_SIZE53], int embedding_buffer54[BATCH_SIZE * DATA_SIZE54], int embedding_buffer55[BATCH_SIZE * DATA_SIZE55], 
    int embedding_buffer56[BATCH_SIZE * DATA_SIZE56], int embedding_buffer57[BATCH_SIZE * DATA_SIZE57], int embedding_buffer58[BATCH_SIZE * DATA_SIZE58], int embedding_buffer59[BATCH_SIZE * DATA_SIZE59], 
    int embedding_buffer60[BATCH_SIZE * DATA_SIZE60], int embedding_buffer61[BATCH_SIZE * DATA_SIZE61], int embedding_buffer62[BATCH_SIZE * DATA_SIZE62], int embedding_buffer63[BATCH_SIZE * DATA_SIZE63], 
    int embedding_buffer64[BATCH_SIZE * DATA_SIZE64], int embedding_buffer65[BATCH_SIZE * DATA_SIZE65], int embedding_buffer66[BATCH_SIZE * DATA_SIZE66], int embedding_buffer67[BATCH_SIZE * DATA_SIZE67], 
    int embedding_buffer68[BATCH_SIZE * DATA_SIZE68], int embedding_buffer69[BATCH_SIZE * DATA_SIZE69], int embedding_buffer70[BATCH_SIZE * DATA_SIZE70], int embedding_buffer71[BATCH_SIZE * DATA_SIZE71], 
    int embedding_buffer72[BATCH_SIZE * DATA_SIZE72], int embedding_buffer73[BATCH_SIZE * DATA_SIZE73], int embedding_buffer74[BATCH_SIZE * DATA_SIZE74], int embedding_buffer75[BATCH_SIZE * DATA_SIZE75], 
    int embedding_buffer76[BATCH_SIZE * DATA_SIZE76], int embedding_buffer77[BATCH_SIZE * DATA_SIZE77], int embedding_buffer78[BATCH_SIZE * DATA_SIZE78], int embedding_buffer79[BATCH_SIZE * DATA_SIZE79], 
    int embedding_buffer80[BATCH_SIZE * DATA_SIZE80], int embedding_buffer81[BATCH_SIZE * DATA_SIZE81], int embedding_buffer82[BATCH_SIZE * DATA_SIZE82], int embedding_buffer83[BATCH_SIZE * DATA_SIZE83], 
    int embedding_buffer84[BATCH_SIZE * DATA_SIZE84], int embedding_buffer85[BATCH_SIZE * DATA_SIZE85], int embedding_buffer86[BATCH_SIZE * DATA_SIZE86], int embedding_buffer87[BATCH_SIZE * DATA_SIZE87], 
    int embedding_buffer88[BATCH_SIZE * DATA_SIZE88], int embedding_buffer89[BATCH_SIZE * DATA_SIZE89], int embedding_buffer90[BATCH_SIZE * DATA_SIZE90], int embedding_buffer91[BATCH_SIZE * DATA_SIZE91], 
    int embedding_buffer92[BATCH_SIZE * DATA_SIZE92], int embedding_buffer93[BATCH_SIZE * DATA_SIZE93], int embedding_buffer94[BATCH_SIZE * DATA_SIZE94], int embedding_buffer95[BATCH_SIZE * DATA_SIZE95], 
    int embedding_buffer96[BATCH_SIZE * DATA_SIZE96], int embedding_buffer97[BATCH_SIZE * DATA_SIZE97], int embedding_buffer98[BATCH_SIZE * DATA_SIZE98], int embedding_buffer99[BATCH_SIZE * DATA_SIZE99], 
    int embedding_buffer100[BATCH_SIZE * DATA_SIZE100], int embedding_buffer101[BATCH_SIZE * DATA_SIZE101], int embedding_buffer102[BATCH_SIZE * DATA_SIZE102], int embedding_buffer103[BATCH_SIZE * DATA_SIZE103], 
    int embedding_buffer104[BATCH_SIZE * DATA_SIZE104], int embedding_buffer105[BATCH_SIZE * DATA_SIZE105], int embedding_buffer106[BATCH_SIZE * DATA_SIZE106], int embedding_buffer107[BATCH_SIZE * DATA_SIZE107], 
    int embedding_buffer108[BATCH_SIZE * DATA_SIZE108], int embedding_buffer109[BATCH_SIZE * DATA_SIZE109], int embedding_buffer110[BATCH_SIZE * DATA_SIZE110], int embedding_buffer111[BATCH_SIZE * DATA_SIZE111], 
    int embedding_buffer112[BATCH_SIZE * DATA_SIZE112], int embedding_buffer113[BATCH_SIZE * DATA_SIZE113], int embedding_buffer114[BATCH_SIZE * DATA_SIZE114], int embedding_buffer115[BATCH_SIZE * DATA_SIZE115], 
    int embedding_buffer116[BATCH_SIZE * DATA_SIZE116], int embedding_buffer117[BATCH_SIZE * DATA_SIZE117], int embedding_buffer118[BATCH_SIZE * DATA_SIZE118], int embedding_buffer119[BATCH_SIZE * DATA_SIZE119], 
    int embedding_buffer120[BATCH_SIZE * DATA_SIZE120], int embedding_buffer121[BATCH_SIZE * DATA_SIZE121], int embedding_buffer122[BATCH_SIZE * DATA_SIZE122], int embedding_buffer123[BATCH_SIZE * DATA_SIZE123], 
    int embedding_buffer124[BATCH_SIZE * DATA_SIZE124], int embedding_buffer125[BATCH_SIZE * DATA_SIZE125], int embedding_buffer126[BATCH_SIZE * DATA_SIZE126], int embedding_buffer127[BATCH_SIZE * DATA_SIZE127], 
    int vout_buffer[BATCH_SIZE]) {
//////////////////////////////   TEMPLATE END  //////////////////////////////

//////////////////////////////   TEMPLATE START  //////////////////////////////
    int result_buffer0[BATCH_SIZE]; 
    int result_buffer1[BATCH_SIZE]; 
    int result_buffer2[BATCH_SIZE]; 
    int result_buffer3[BATCH_SIZE]; 
    int result_buffer4[BATCH_SIZE]; 
    int result_buffer5[BATCH_SIZE]; 
    int result_buffer6[BATCH_SIZE]; 
    int result_buffer7[BATCH_SIZE]; 
    int result_buffer8[BATCH_SIZE]; 
    int result_buffer9[BATCH_SIZE]; 
    int result_buffer10[BATCH_SIZE]; 
    int result_buffer11[BATCH_SIZE]; 
    int result_buffer12[BATCH_SIZE]; 
    int result_buffer13[BATCH_SIZE]; 
    int result_buffer14[BATCH_SIZE]; 
    int result_buffer15[BATCH_SIZE]; 
    int result_buffer16[BATCH_SIZE]; 
    int result_buffer17[BATCH_SIZE]; 
    int result_buffer18[BATCH_SIZE]; 
    int result_buffer19[BATCH_SIZE]; 
    int result_buffer20[BATCH_SIZE]; 
    int result_buffer21[BATCH_SIZE]; 
    int result_buffer22[BATCH_SIZE]; 
    int result_buffer23[BATCH_SIZE]; 
    int result_buffer24[BATCH_SIZE]; 
    int result_buffer25[BATCH_SIZE]; 
    int result_buffer26[BATCH_SIZE]; 
    int result_buffer27[BATCH_SIZE]; 
    int result_buffer28[BATCH_SIZE]; 
    int result_buffer29[BATCH_SIZE]; 
    int result_buffer30[BATCH_SIZE]; 
    int result_buffer31[BATCH_SIZE]; 
    int result_buffer32[BATCH_SIZE]; 
    int result_buffer33[BATCH_SIZE]; 
    int result_buffer34[BATCH_SIZE]; 
    int result_buffer35[BATCH_SIZE]; 
    int result_buffer36[BATCH_SIZE]; 
    int result_buffer37[BATCH_SIZE]; 
    int result_buffer38[BATCH_SIZE]; 
    int result_buffer39[BATCH_SIZE]; 
    int result_buffer40[BATCH_SIZE]; 
    int result_buffer41[BATCH_SIZE]; 
    int result_buffer42[BATCH_SIZE]; 
    int result_buffer43[BATCH_SIZE]; 
    int result_buffer44[BATCH_SIZE]; 
    int result_buffer45[BATCH_SIZE]; 
    int result_buffer46[BATCH_SIZE]; 
    int result_buffer47[BATCH_SIZE]; 
    int result_buffer48[BATCH_SIZE]; 
    int result_buffer49[BATCH_SIZE]; 
    int result_buffer50[BATCH_SIZE]; 
    int result_buffer51[BATCH_SIZE]; 
    int result_buffer52[BATCH_SIZE]; 
    int result_buffer53[BATCH_SIZE]; 
    int result_buffer54[BATCH_SIZE]; 
    int result_buffer55[BATCH_SIZE]; 
    int result_buffer56[BATCH_SIZE]; 
    int result_buffer57[BATCH_SIZE]; 
    int result_buffer58[BATCH_SIZE]; 
    int result_buffer59[BATCH_SIZE]; 
    int result_buffer60[BATCH_SIZE]; 
    int result_buffer61[BATCH_SIZE]; 
    int result_buffer62[BATCH_SIZE]; 
    int result_buffer63[BATCH_SIZE]; 
    int result_buffer64[BATCH_SIZE]; 
    int result_buffer65[BATCH_SIZE]; 
    int result_buffer66[BATCH_SIZE]; 
    int result_buffer67[BATCH_SIZE]; 
    int result_buffer68[BATCH_SIZE]; 
    int result_buffer69[BATCH_SIZE]; 
    int result_buffer70[BATCH_SIZE]; 
    int result_buffer71[BATCH_SIZE]; 
    int result_buffer72[BATCH_SIZE]; 
    int result_buffer73[BATCH_SIZE]; 
    int result_buffer74[BATCH_SIZE]; 
    int result_buffer75[BATCH_SIZE]; 
    int result_buffer76[BATCH_SIZE]; 
    int result_buffer77[BATCH_SIZE]; 
    int result_buffer78[BATCH_SIZE]; 
    int result_buffer79[BATCH_SIZE]; 
    int result_buffer80[BATCH_SIZE]; 
    int result_buffer81[BATCH_SIZE]; 
    int result_buffer82[BATCH_SIZE]; 
    int result_buffer83[BATCH_SIZE]; 
    int result_buffer84[BATCH_SIZE]; 
    int result_buffer85[BATCH_SIZE]; 
    int result_buffer86[BATCH_SIZE]; 
    int result_buffer87[BATCH_SIZE]; 
    int result_buffer88[BATCH_SIZE]; 
    int result_buffer89[BATCH_SIZE]; 
    int result_buffer90[BATCH_SIZE]; 
    int result_buffer91[BATCH_SIZE]; 
    int result_buffer92[BATCH_SIZE]; 
    int result_buffer93[BATCH_SIZE]; 
    int result_buffer94[BATCH_SIZE]; 
    int result_buffer95[BATCH_SIZE]; 
    int result_buffer96[BATCH_SIZE]; 
    int result_buffer97[BATCH_SIZE]; 
    int result_buffer98[BATCH_SIZE]; 
    int result_buffer99[BATCH_SIZE]; 
    int result_buffer100[BATCH_SIZE]; 
    int result_buffer101[BATCH_SIZE]; 
    int result_buffer102[BATCH_SIZE]; 
    int result_buffer103[BATCH_SIZE]; 
    int result_buffer104[BATCH_SIZE]; 
    int result_buffer105[BATCH_SIZE]; 
    int result_buffer106[BATCH_SIZE]; 
    int result_buffer107[BATCH_SIZE]; 
    int result_buffer108[BATCH_SIZE]; 
    int result_buffer109[BATCH_SIZE]; 
    int result_buffer110[BATCH_SIZE]; 
    int result_buffer111[BATCH_SIZE]; 
    int result_buffer112[BATCH_SIZE]; 
    int result_buffer113[BATCH_SIZE]; 
    int result_buffer114[BATCH_SIZE]; 
    int result_buffer115[BATCH_SIZE]; 
    int result_buffer116[BATCH_SIZE]; 
    int result_buffer117[BATCH_SIZE]; 
    int result_buffer118[BATCH_SIZE]; 
    int result_buffer119[BATCH_SIZE]; 
    int result_buffer120[BATCH_SIZE]; 
    int result_buffer121[BATCH_SIZE]; 
    int result_buffer122[BATCH_SIZE]; 
    int result_buffer123[BATCH_SIZE]; 
    int result_buffer124[BATCH_SIZE]; 
    int result_buffer125[BATCH_SIZE]; 
    int result_buffer126[BATCH_SIZE]; 
    int result_buffer127[BATCH_SIZE]; 
//////////////////////////////   TEMPLATE END  //////////////////////////////

//////////////////////////////   TEMPLATE START  //////////////////////////////
    reduction_add_single(embedding_buffer0, DATA_SIZE0, result_buffer0);
    reduction_add_single(embedding_buffer1, DATA_SIZE1, result_buffer1);
    reduction_add_single(embedding_buffer2, DATA_SIZE2, result_buffer2);
    reduction_add_single(embedding_buffer3, DATA_SIZE3, result_buffer3);
    reduction_add_single(embedding_buffer4, DATA_SIZE4, result_buffer4);
    reduction_add_single(embedding_buffer5, DATA_SIZE5, result_buffer5);
    reduction_add_single(embedding_buffer6, DATA_SIZE6, result_buffer6);
    reduction_add_single(embedding_buffer7, DATA_SIZE7, result_buffer7);
    reduction_add_single(embedding_buffer8, DATA_SIZE8, result_buffer8);
    reduction_add_single(embedding_buffer9, DATA_SIZE9, result_buffer9);
    reduction_add_single(embedding_buffer10, DATA_SIZE10, result_buffer10);
    reduction_add_single(embedding_buffer11, DATA_SIZE11, result_buffer11);
    reduction_add_single(embedding_buffer12, DATA_SIZE12, result_buffer12);
    reduction_add_single(embedding_buffer13, DATA_SIZE13, result_buffer13);
    reduction_add_single(embedding_buffer14, DATA_SIZE14, result_buffer14);
    reduction_add_single(embedding_buffer15, DATA_SIZE15, result_buffer15);
    reduction_add_single(embedding_buffer16, DATA_SIZE16, result_buffer16);
    reduction_add_single(embedding_buffer17, DATA_SIZE17, result_buffer17);
    reduction_add_single(embedding_buffer18, DATA_SIZE18, result_buffer18);
    reduction_add_single(embedding_buffer19, DATA_SIZE19, result_buffer19);
    reduction_add_single(embedding_buffer20, DATA_SIZE20, result_buffer20);
    reduction_add_single(embedding_buffer21, DATA_SIZE21, result_buffer21);
    reduction_add_single(embedding_buffer22, DATA_SIZE22, result_buffer22);
    reduction_add_single(embedding_buffer23, DATA_SIZE23, result_buffer23);
    reduction_add_single(embedding_buffer24, DATA_SIZE24, result_buffer24);
    reduction_add_single(embedding_buffer25, DATA_SIZE25, result_buffer25);
    reduction_add_single(embedding_buffer26, DATA_SIZE26, result_buffer26);
    reduction_add_single(embedding_buffer27, DATA_SIZE27, result_buffer27);
    reduction_add_single(embedding_buffer28, DATA_SIZE28, result_buffer28);
    reduction_add_single(embedding_buffer29, DATA_SIZE29, result_buffer29);
    reduction_add_single(embedding_buffer30, DATA_SIZE30, result_buffer30);
    reduction_add_single(embedding_buffer31, DATA_SIZE31, result_buffer31);
    reduction_add_single(embedding_buffer32, DATA_SIZE32, result_buffer32);
    reduction_add_single(embedding_buffer33, DATA_SIZE33, result_buffer33);
    reduction_add_single(embedding_buffer34, DATA_SIZE34, result_buffer34);
    reduction_add_single(embedding_buffer35, DATA_SIZE35, result_buffer35);
    reduction_add_single(embedding_buffer36, DATA_SIZE36, result_buffer36);
    reduction_add_single(embedding_buffer37, DATA_SIZE37, result_buffer37);
    reduction_add_single(embedding_buffer38, DATA_SIZE38, result_buffer38);
    reduction_add_single(embedding_buffer39, DATA_SIZE39, result_buffer39);
    reduction_add_single(embedding_buffer40, DATA_SIZE40, result_buffer40);
    reduction_add_single(embedding_buffer41, DATA_SIZE41, result_buffer41);
    reduction_add_single(embedding_buffer42, DATA_SIZE42, result_buffer42);
    reduction_add_single(embedding_buffer43, DATA_SIZE43, result_buffer43);
    reduction_add_single(embedding_buffer44, DATA_SIZE44, result_buffer44);
    reduction_add_single(embedding_buffer45, DATA_SIZE45, result_buffer45);
    reduction_add_single(embedding_buffer46, DATA_SIZE46, result_buffer46);
    reduction_add_single(embedding_buffer47, DATA_SIZE47, result_buffer47);
    reduction_add_single(embedding_buffer48, DATA_SIZE48, result_buffer48);
    reduction_add_single(embedding_buffer49, DATA_SIZE49, result_buffer49);
    reduction_add_single(embedding_buffer50, DATA_SIZE50, result_buffer50);
    reduction_add_single(embedding_buffer51, DATA_SIZE51, result_buffer51);
    reduction_add_single(embedding_buffer52, DATA_SIZE52, result_buffer52);
    reduction_add_single(embedding_buffer53, DATA_SIZE53, result_buffer53);
    reduction_add_single(embedding_buffer54, DATA_SIZE54, result_buffer54);
    reduction_add_single(embedding_buffer55, DATA_SIZE55, result_buffer55);
    reduction_add_single(embedding_buffer56, DATA_SIZE56, result_buffer56);
    reduction_add_single(embedding_buffer57, DATA_SIZE57, result_buffer57);
    reduction_add_single(embedding_buffer58, DATA_SIZE58, result_buffer58);
    reduction_add_single(embedding_buffer59, DATA_SIZE59, result_buffer59);
    reduction_add_single(embedding_buffer60, DATA_SIZE60, result_buffer60);
    reduction_add_single(embedding_buffer61, DATA_SIZE61, result_buffer61);
    reduction_add_single(embedding_buffer62, DATA_SIZE62, result_buffer62);
    reduction_add_single(embedding_buffer63, DATA_SIZE63, result_buffer63);
    reduction_add_single(embedding_buffer64, DATA_SIZE64, result_buffer64);
    reduction_add_single(embedding_buffer65, DATA_SIZE65, result_buffer65);
    reduction_add_single(embedding_buffer66, DATA_SIZE66, result_buffer66);
    reduction_add_single(embedding_buffer67, DATA_SIZE67, result_buffer67);
    reduction_add_single(embedding_buffer68, DATA_SIZE68, result_buffer68);
    reduction_add_single(embedding_buffer69, DATA_SIZE69, result_buffer69);
    reduction_add_single(embedding_buffer70, DATA_SIZE70, result_buffer70);
    reduction_add_single(embedding_buffer71, DATA_SIZE71, result_buffer71);
    reduction_add_single(embedding_buffer72, DATA_SIZE72, result_buffer72);
    reduction_add_single(embedding_buffer73, DATA_SIZE73, result_buffer73);
    reduction_add_single(embedding_buffer74, DATA_SIZE74, result_buffer74);
    reduction_add_single(embedding_buffer75, DATA_SIZE75, result_buffer75);
    reduction_add_single(embedding_buffer76, DATA_SIZE76, result_buffer76);
    reduction_add_single(embedding_buffer77, DATA_SIZE77, result_buffer77);
    reduction_add_single(embedding_buffer78, DATA_SIZE78, result_buffer78);
    reduction_add_single(embedding_buffer79, DATA_SIZE79, result_buffer79);
    reduction_add_single(embedding_buffer80, DATA_SIZE80, result_buffer80);
    reduction_add_single(embedding_buffer81, DATA_SIZE81, result_buffer81);
    reduction_add_single(embedding_buffer82, DATA_SIZE82, result_buffer82);
    reduction_add_single(embedding_buffer83, DATA_SIZE83, result_buffer83);
    reduction_add_single(embedding_buffer84, DATA_SIZE84, result_buffer84);
    reduction_add_single(embedding_buffer85, DATA_SIZE85, result_buffer85);
    reduction_add_single(embedding_buffer86, DATA_SIZE86, result_buffer86);
    reduction_add_single(embedding_buffer87, DATA_SIZE87, result_buffer87);
    reduction_add_single(embedding_buffer88, DATA_SIZE88, result_buffer88);
    reduction_add_single(embedding_buffer89, DATA_SIZE89, result_buffer89);
    reduction_add_single(embedding_buffer90, DATA_SIZE90, result_buffer90);
    reduction_add_single(embedding_buffer91, DATA_SIZE91, result_buffer91);
    reduction_add_single(embedding_buffer92, DATA_SIZE92, result_buffer92);
    reduction_add_single(embedding_buffer93, DATA_SIZE93, result_buffer93);
    reduction_add_single(embedding_buffer94, DATA_SIZE94, result_buffer94);
    reduction_add_single(embedding_buffer95, DATA_SIZE95, result_buffer95);
    reduction_add_single(embedding_buffer96, DATA_SIZE96, result_buffer96);
    reduction_add_single(embedding_buffer97, DATA_SIZE97, result_buffer97);
    reduction_add_single(embedding_buffer98, DATA_SIZE98, result_buffer98);
    reduction_add_single(embedding_buffer99, DATA_SIZE99, result_buffer99);
    reduction_add_single(embedding_buffer100, DATA_SIZE100, result_buffer100);
    reduction_add_single(embedding_buffer101, DATA_SIZE101, result_buffer101);
    reduction_add_single(embedding_buffer102, DATA_SIZE102, result_buffer102);
    reduction_add_single(embedding_buffer103, DATA_SIZE103, result_buffer103);
    reduction_add_single(embedding_buffer104, DATA_SIZE104, result_buffer104);
    reduction_add_single(embedding_buffer105, DATA_SIZE105, result_buffer105);
    reduction_add_single(embedding_buffer106, DATA_SIZE106, result_buffer106);
    reduction_add_single(embedding_buffer107, DATA_SIZE107, result_buffer107);
    reduction_add_single(embedding_buffer108, DATA_SIZE108, result_buffer108);
    reduction_add_single(embedding_buffer109, DATA_SIZE109, result_buffer109);
    reduction_add_single(embedding_buffer110, DATA_SIZE110, result_buffer110);
    reduction_add_single(embedding_buffer111, DATA_SIZE111, result_buffer111);
    reduction_add_single(embedding_buffer112, DATA_SIZE112, result_buffer112);
    reduction_add_single(embedding_buffer113, DATA_SIZE113, result_buffer113);
    reduction_add_single(embedding_buffer114, DATA_SIZE114, result_buffer114);
    reduction_add_single(embedding_buffer115, DATA_SIZE115, result_buffer115);
    reduction_add_single(embedding_buffer116, DATA_SIZE116, result_buffer116);
    reduction_add_single(embedding_buffer117, DATA_SIZE117, result_buffer117);
    reduction_add_single(embedding_buffer118, DATA_SIZE118, result_buffer118);
    reduction_add_single(embedding_buffer119, DATA_SIZE119, result_buffer119);
    reduction_add_single(embedding_buffer120, DATA_SIZE120, result_buffer120);
    reduction_add_single(embedding_buffer121, DATA_SIZE121, result_buffer121);
    reduction_add_single(embedding_buffer122, DATA_SIZE122, result_buffer122);
    reduction_add_single(embedding_buffer123, DATA_SIZE123, result_buffer123);
    reduction_add_single(embedding_buffer124, DATA_SIZE124, result_buffer124);
    reduction_add_single(embedding_buffer125, DATA_SIZE125, result_buffer125);
    reduction_add_single(embedding_buffer126, DATA_SIZE126, result_buffer126);
    reduction_add_single(embedding_buffer127, DATA_SIZE127, result_buffer127);
//////////////////////////////   TEMPLATE END  //////////////////////////////

    for (int i = 0; i < BATCH_SIZE; i++) {
        int result = 0;
#pragma HLS resource variable=result core=AddSub_DSP 
//////////////////////////////   TEMPLATE START  //////////////////////////////
        result += result_buffer0[i];
        result += result_buffer1[i];
        result += result_buffer2[i];
        result += result_buffer3[i];
        result += result_buffer4[i];
        result += result_buffer5[i];
        result += result_buffer6[i];
        result += result_buffer7[i];
        result += result_buffer8[i];
        result += result_buffer9[i];
        result += result_buffer10[i];
        result += result_buffer11[i];
        result += result_buffer12[i];
        result += result_buffer13[i];
        result += result_buffer14[i];
        result += result_buffer15[i];
        result += result_buffer16[i];
        result += result_buffer17[i];
        result += result_buffer18[i];
        result += result_buffer19[i];
        result += result_buffer20[i];
        result += result_buffer21[i];
        result += result_buffer22[i];
        result += result_buffer23[i];
        result += result_buffer24[i];
        result += result_buffer25[i];
        result += result_buffer26[i];
        result += result_buffer27[i];
        result += result_buffer28[i];
        result += result_buffer29[i];
        result += result_buffer30[i];
        result += result_buffer31[i];
        result += result_buffer32[i];
        result += result_buffer33[i];
        result += result_buffer34[i];
        result += result_buffer35[i];
        result += result_buffer36[i];
        result += result_buffer37[i];
        result += result_buffer38[i];
        result += result_buffer39[i];
        result += result_buffer40[i];
        result += result_buffer41[i];
        result += result_buffer42[i];
        result += result_buffer43[i];
        result += result_buffer44[i];
        result += result_buffer45[i];
        result += result_buffer46[i];
        result += result_buffer47[i];
        result += result_buffer48[i];
        result += result_buffer49[i];
        result += result_buffer50[i];
        result += result_buffer51[i];
        result += result_buffer52[i];
        result += result_buffer53[i];
        result += result_buffer54[i];
        result += result_buffer55[i];
        result += result_buffer56[i];
        result += result_buffer57[i];
        result += result_buffer58[i];
        result += result_buffer59[i];
        result += result_buffer60[i];
        result += result_buffer61[i];
        result += result_buffer62[i];
        result += result_buffer63[i];
        result += result_buffer64[i];
        result += result_buffer65[i];
        result += result_buffer66[i];
        result += result_buffer67[i];
        result += result_buffer68[i];
        result += result_buffer69[i];
        result += result_buffer70[i];
        result += result_buffer71[i];
        result += result_buffer72[i];
        result += result_buffer73[i];
        result += result_buffer74[i];
        result += result_buffer75[i];
        result += result_buffer76[i];
        result += result_buffer77[i];
        result += result_buffer78[i];
        result += result_buffer79[i];
        result += result_buffer80[i];
        result += result_buffer81[i];
        result += result_buffer82[i];
        result += result_buffer83[i];
        result += result_buffer84[i];
        result += result_buffer85[i];
        result += result_buffer86[i];
        result += result_buffer87[i];
        result += result_buffer88[i];
        result += result_buffer89[i];
        result += result_buffer90[i];
        result += result_buffer91[i];
        result += result_buffer92[i];
        result += result_buffer93[i];
        result += result_buffer94[i];
        result += result_buffer95[i];
        result += result_buffer96[i];
        result += result_buffer97[i];
        result += result_buffer98[i];
        result += result_buffer99[i];
        result += result_buffer100[i];
        result += result_buffer101[i];
        result += result_buffer102[i];
        result += result_buffer103[i];
        result += result_buffer104[i];
        result += result_buffer105[i];
        result += result_buffer106[i];
        result += result_buffer107[i];
        result += result_buffer108[i];
        result += result_buffer109[i];
        result += result_buffer110[i];
        result += result_buffer111[i];
        result += result_buffer112[i];
        result += result_buffer113[i];
        result += result_buffer114[i];
        result += result_buffer115[i];
        result += result_buffer116[i];
        result += result_buffer117[i];
        result += result_buffer118[i];
        result += result_buffer119[i];
        result += result_buffer120[i];
        result += result_buffer121[i];
        result += result_buffer122[i];
        result += result_buffer123[i];
        result += result_buffer124[i];
        result += result_buffer125[i];
        result += result_buffer126[i];
        result += result_buffer127[i];
//////////////////////////////   TEMPLATE END  //////////////////////////////
        vout_buffer[i] = result;
    }
 }

void write_results(
    int vout_buffer[BATCH_SIZE], 
    int* out, int start_idx) {

    write: for (int i = 0 ; i < BATCH_SIZE ; i++){
        out[i + start_idx] = vout_buffer[i];
    }
}

}
