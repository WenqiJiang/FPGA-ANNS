// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Jun 20 17:00:26 2021
// Host        : alveo0 running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pfm_dynamic_dpa_hub_0_stub.v
// Design      : pfm_dynamic_dpa_hub_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "trace_integrator,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(mon_clk, mon_resetn, trace_clk, trace_resetn, 
  trace_rst, out_valid, out_ready, out_data, s_axi_awaddr, s_axi_awprot, s_axi_awvalid, 
  s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, s_axi_bvalid, 
  s_axi_bready, s_axi_bresp, s_axi_araddr, s_axi_arprot, s_axi_arvalid, s_axi_arready, 
  s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, trace0_counter, trace0_read, 
  trace0_event, trace0_data, trace0_counter_overflow, trace0_valid, trace1_counter, 
  trace1_read, trace1_event, trace1_data, trace1_counter_overflow, trace1_valid, 
  trace2_counter, trace2_read, trace2_event, trace2_data, trace2_counter_overflow, 
  trace2_valid, trace3_counter, trace3_read, trace3_event, trace3_data, 
  trace3_counter_overflow, trace3_valid, trace4_counter, trace4_read, trace4_event, 
  trace4_data, trace4_counter_overflow, trace4_valid, trace5_counter, trace5_read, 
  trace5_event, trace5_data, trace5_counter_overflow, trace5_valid, trace6_counter, 
  trace6_read, trace6_event, trace6_data, trace6_counter_overflow, trace6_valid, 
  trace7_counter, trace7_read, trace7_event, trace7_data, trace7_counter_overflow, 
  trace7_valid, trace8_counter, trace8_read, trace8_event, trace8_data, 
  trace8_counter_overflow, trace8_valid, trace9_counter, trace9_read, trace9_event, 
  trace9_data, trace9_counter_overflow, trace9_valid, trace10_counter, trace10_read, 
  trace10_event, trace10_data, trace10_counter_overflow, trace10_valid, trace11_counter, 
  trace11_read, trace11_event, trace11_data, trace11_counter_overflow, trace11_valid, 
  trace12_counter, trace12_read, trace12_event, trace12_data, trace12_counter_overflow, 
  trace12_valid)
/* synthesis syn_black_box black_box_pad_pin="mon_clk,mon_resetn,trace_clk,trace_resetn,trace_rst,out_valid,out_ready,out_data[63:0],s_axi_awaddr[3:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bvalid,s_axi_bready,s_axi_bresp[1:0],s_axi_araddr[3:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,trace0_counter[44:0],trace0_read,trace0_event,trace0_data[63:0],trace0_counter_overflow,trace0_valid,trace1_counter[44:0],trace1_read,trace1_event,trace1_data[63:0],trace1_counter_overflow,trace1_valid,trace2_counter[44:0],trace2_read,trace2_event,trace2_data[63:0],trace2_counter_overflow,trace2_valid,trace3_counter[44:0],trace3_read,trace3_event,trace3_data[63:0],trace3_counter_overflow,trace3_valid,trace4_counter[44:0],trace4_read,trace4_event,trace4_data[63:0],trace4_counter_overflow,trace4_valid,trace5_counter[44:0],trace5_read,trace5_event,trace5_data[63:0],trace5_counter_overflow,trace5_valid,trace6_counter[44:0],trace6_read,trace6_event,trace6_data[63:0],trace6_counter_overflow,trace6_valid,trace7_counter[44:0],trace7_read,trace7_event,trace7_data[63:0],trace7_counter_overflow,trace7_valid,trace8_counter[44:0],trace8_read,trace8_event,trace8_data[63:0],trace8_counter_overflow,trace8_valid,trace9_counter[44:0],trace9_read,trace9_event,trace9_data[63:0],trace9_counter_overflow,trace9_valid,trace10_counter[44:0],trace10_read,trace10_event,trace10_data[63:0],trace10_counter_overflow,trace10_valid,trace11_counter[44:0],trace11_read,trace11_event,trace11_data[63:0],trace11_counter_overflow,trace11_valid,trace12_counter[44:0],trace12_read,trace12_event,trace12_data[63:0],trace12_counter_overflow,trace12_valid" */;
  input mon_clk;
  input mon_resetn;
  input trace_clk;
  input trace_resetn;
  output trace_rst;
  output out_valid;
  input out_ready;
  output [63:0]out_data;
  input [3:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output s_axi_bvalid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  input [3:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output [44:0]trace0_counter;
  output trace0_read;
  input trace0_event;
  input [63:0]trace0_data;
  output trace0_counter_overflow;
  input trace0_valid;
  output [44:0]trace1_counter;
  output trace1_read;
  input trace1_event;
  input [63:0]trace1_data;
  output trace1_counter_overflow;
  input trace1_valid;
  output [44:0]trace2_counter;
  output trace2_read;
  input trace2_event;
  input [63:0]trace2_data;
  output trace2_counter_overflow;
  input trace2_valid;
  output [44:0]trace3_counter;
  output trace3_read;
  input trace3_event;
  input [63:0]trace3_data;
  output trace3_counter_overflow;
  input trace3_valid;
  output [44:0]trace4_counter;
  output trace4_read;
  input trace4_event;
  input [63:0]trace4_data;
  output trace4_counter_overflow;
  input trace4_valid;
  output [44:0]trace5_counter;
  output trace5_read;
  input trace5_event;
  input [63:0]trace5_data;
  output trace5_counter_overflow;
  input trace5_valid;
  output [44:0]trace6_counter;
  output trace6_read;
  input trace6_event;
  input [63:0]trace6_data;
  output trace6_counter_overflow;
  input trace6_valid;
  output [44:0]trace7_counter;
  output trace7_read;
  input trace7_event;
  input [63:0]trace7_data;
  output trace7_counter_overflow;
  input trace7_valid;
  output [44:0]trace8_counter;
  output trace8_read;
  input trace8_event;
  input [63:0]trace8_data;
  output trace8_counter_overflow;
  input trace8_valid;
  output [44:0]trace9_counter;
  output trace9_read;
  input trace9_event;
  input [63:0]trace9_data;
  output trace9_counter_overflow;
  input trace9_valid;
  output [44:0]trace10_counter;
  output trace10_read;
  input trace10_event;
  input [63:0]trace10_data;
  output trace10_counter_overflow;
  input trace10_valid;
  output [44:0]trace11_counter;
  output trace11_read;
  input trace11_event;
  input [63:0]trace11_data;
  output trace11_counter_overflow;
  input trace11_valid;
  output [44:0]trace12_counter;
  output trace12_read;
  input trace12_event;
  input [63:0]trace12_data;
  output trace12_counter_overflow;
  input trace12_valid;
endmodule
