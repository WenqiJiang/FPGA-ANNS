// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Jun 20 17:03:23 2021
// Host        : alveo0 running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_ebbe_lut_buffer_0_sim_netlist.v
// Design      : bd_ebbe_lut_buffer_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_ebbe_lut_buffer_0,lut_buffer_v2_0_0_lut_buffer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "lut_buffer_v2_0_0_lut_buffer,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (tdi_i,
    tms_i,
    tck_i,
    drck_i,
    sel_i,
    shift_i,
    update_i,
    capture_i,
    runtest_i,
    reset_i,
    bscanid_en_i,
    tdo_o,
    tdi_o,
    tms_o,
    tck_o,
    drck_o,
    sel_o,
    shift_o,
    update_o,
    capture_o,
    runtest_o,
    reset_o,
    bscanid_en_o,
    tdo_i);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDI" *) input tdi_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TMS" *) input tms_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TCK" *) input tck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan DRCK" *) input drck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SEL" *) input sel_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SHIFT" *) input shift_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan UPDATE" *) input update_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan CAPTURE" *) input capture_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RUNTEST" *) input runtest_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RESET" *) input reset_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan BSCANID_EN" *) input bscanid_en_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDO" *) output tdo_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDI" *) output tdi_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TMS" *) output tms_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TCK" *) output tck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan DRCK" *) output drck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SEL" *) output sel_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SHIFT" *) output shift_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan UPDATE" *) output update_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan CAPTURE" *) output capture_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RUNTEST" *) output runtest_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RESET" *) output reset_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan BSCANID_EN" *) output bscanid_en_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDO" *) input tdo_i;

  wire bscanid_en_i;
  wire bscanid_en_o;
  wire capture_i;
  wire capture_o;
  wire drck_i;
  wire drck_o;
  wire reset_i;
  wire reset_o;
  wire runtest_i;
  wire runtest_o;
  wire sel_i;
  wire sel_o;
  wire shift_i;
  wire shift_o;
  wire tck_i;
  wire tck_o;
  wire tdi_i;
  wire tdi_o;
  wire tdo_i;
  wire tdo_o;
  wire tms_i;
  wire tms_o;
  wire update_i;
  wire update_o;
  wire [31:0]NLW_inst_bscanid_o_UNCONNECTED;

  (* C_EN_BSCANID_VEC = "0" *) 
  (* DONT_TOUCH *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lut_buffer_v2_0_0_lut_buffer inst
       (.bscanid_en_i(bscanid_en_i),
        .bscanid_en_o(bscanid_en_o),
        .bscanid_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bscanid_o(NLW_inst_bscanid_o_UNCONNECTED[31:0]),
        .capture_i(capture_i),
        .capture_o(capture_o),
        .drck_i(drck_i),
        .drck_o(drck_o),
        .reset_i(reset_i),
        .reset_o(reset_o),
        .runtest_i(runtest_i),
        .runtest_o(runtest_o),
        .sel_i(sel_i),
        .sel_o(sel_o),
        .shift_i(shift_i),
        .shift_o(shift_o),
        .tck_i(tck_i),
        .tck_o(tck_o),
        .tdi_i(tdi_i),
        .tdi_o(tdi_o),
        .tdo_i(tdo_i),
        .tdo_o(tdo_o),
        .tms_i(tms_i),
        .tms_o(tms_o),
        .update_i(update_i),
        .update_o(update_o));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
geSCzw9gYjFCv0Dn0YxOXxhH+GZFMePCQPK3AjT+zbjt1urPphGbRmSIP212qcXhU3u6qBayOOuP
zGTUOznyYQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
OnCSRn8bnLy+eSxgkIEXKk5zY3JDppSX+6N3lQVX9PeSypgnQ/2z4GTpmoL+rdMoco6U9R4G1u4m
E0xhKuM4ba9nEk7cLfAxOQqKqsWQrZaIEmzIr1ET+cp4jOMvYA/MsN4jh93kbuKcSDuJ8zN13DFX
RemIkmekhFjPkyUS5qM=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MSBAO7tnsBVh2XpVImbQvPkv1Ik+6Bw1D0e9n6H/Bw1mXnRXzm0RzPaEYAIFuluPbWglTrw4pQSr
JI/DSdCg6087Xmb+Q5zKawFvuZahx4HgmrKxTL15lZwamiIpmu3LGyxaEH/VbYGM9Ky0jp5PyDKU
Jeskyx64XVUPlRklhMjIKCtYITsgROzqjs+d1jIc494zqnDADEz0msJP38WdzHgwLDQ0NamfpodX
BUqMR71hgPx1Rvdt7HagUbkfyaG3/12LxFvpAblT7W0W6RKBFEFgFrxWRFaDw+jzj4jgl9g+sjY0
cveJYAA4UpZJwPSDIWehjmS+mOinzlnl8UP7jw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UtIiSU3lZ1iUKAuaJuT083jLC5QokBuxbJC/zVsWXf8ozOCIDAvtpSufF02lDCCaNNheB40dXQFS
I8VBcTtdWzNr2vj/HmW17e10D6T6mqn/8t0HnWx9c3modRuXup0Too1mNTU5gTH+v3utogTO5ztm
HbJZ/+5ov0tPkaeJufJl5L/RZAfLmRnRYybtx5bbc7XiGyWaVk6KunsaWtX5zJtVnMeUOkg0N8oL
RBeyFp3tFqTN7ecNUp7zom6BjZ3fR6euRy36u1XviJsqBjcxzASI1k+bn2lDs3oEdXuMHoRvcuWL
mmMddzjwWr43L7YoB/WBz/Tw7t6iYI5B6imPUA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
AMZ17uwJyVzW4KyzjD/YjCrX2GlLIDwW9HSuEat97pn8ZQ7QpDPhFLNx09klp1fHQ8yb1KlxCqpm
IjAljp4A5oQHWcBw/s+Xhtpin6GMDGjsmd5KmAD2J5DQmzqPazc0M8vNO+pGpCJogvWarX5XrP6U
56l9vH5mfyPmbT/09Kw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oAGTk8IFmmwAT5eT+h5xMK7MsqYCJnsMll3rq17njNu6wbVX2TAoOlVC5DzNg9T5ce7gVnuLuFG/
FgNSnTJx8TlbP73KxlDubmAVofR56G/yHzaJfJ0fwNhrfXm5AFgmFaKFPTKNkrG/qjdNuwUeA8p4
iHoj1zvPx50myVHXSpHLQ8n92DLWgMUX/57aPLbMHmYu/gsD0kHOuQ8Fr2Mi2DxufAvq1gzT0kc+
lxSntoseL+X1HLSvmKpEkR/sjaz6P9omIzqKlmOhvLeTZVEZcUtukVN1HTrlol+4/pTFDztcz0tZ
XqYZKVNB/igvn1iP/Fej8fpkaeJOrk1YgJZ6xw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HM0OWTHTT9qkiqicwldwQlaXCXhAavOkOLtzdsXybVEqcdGTuInS8Xvu2i7fjfGdnZjc+o4ZayFd
adCXUGMQZ+7u79Rm71DMtV7WL4PMhXZmItLJgXQmNzajU211AuWse/CyD7Am9ZDJuQcIK0fcqZQI
XVJU6sMESVWiSWdCuqkcQLSuSoBY7TVLmCDoTF9n7MlYfcxCkkK6d+2Xs/gjaWO59GZ3TbWhAQLc
9hHL9YUJUTzZ8yPC8tX+DLS/YrniD3lBpquxXGcl1FxHKFTSpMG/6pTH+7Y5u1s29iqS/KYCCOfR
Pqg3ikxxR4ywBL+umX+Ijv+Hqgol6tBnCkWh/g==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DQuK/YuairmUNmnTZFN/Tbbjjk202ciTMNZWiES7z/c8BYrmlnBses/x7XzAVxFxOTns+S6gcbxv
lho3MoYQI3b1wxR93ymMpbFY2AAKqfTaYrt9nuBi+J66NUkNb4mO5Ysrmk/FyxUuVMw2JeKhCxVf
1Lkw2weXEA2RSHrWxd8764IFSbBqKoKUTMuqLxHovRaQHDy/mOdyefGG7/6ywGbKjVTlE8lXVH8E
8QodSYZ7p8uod81sVFzJL26a9Tqu+u2tOgD/WqMuxrio7zRkYYC5P+/FtxLC4GaIZ6LivaJuTLOF
bkAMneaa5dlfamLnRyzDXUCJu/DFpJtH5s1eLQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DL1JbuaDxIhP8ir0jAdx6nea42/rMQ2VXG8PZEGqMkgF/yLmK8+UcPNvmkEnUbVxq6WNxCUUYBOO
eroUXvKd3hB7aza+lE1PkczDRQpe4dZWQ8yHCUSbqj/KnUKU7sMHOSk5MiYcbBazdC+B/zdSxJsr
sUmnOLgp/SqygmZW7/oDYMIYyOExEOrIPD4CH/xXZGlvuNs4OjdmaSus7kQp/iaUxQz03NGaMv3/
EuIfORb3j+mQPwXwEBQhecy81p8ky3bmOS0LK+CPuz0LF3VVvrDnnXUSBCWa2WW6t7burmoHvgPV
oB2jrvwkS6dNjRJ7CoyGvV0N6d60kiD0LjZg6Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2960)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
