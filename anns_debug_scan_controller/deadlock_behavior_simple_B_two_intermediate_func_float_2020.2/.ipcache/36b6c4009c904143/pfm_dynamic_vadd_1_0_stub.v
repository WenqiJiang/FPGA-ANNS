// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Jun 20 17:12:52 2021
// Host        : alveo0 running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pfm_dynamic_vadd_1_0_stub.v
// Design      : pfm_dynamic_vadd_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vadd,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(stall_start_ext, stall_done_ext, 
  stall_start_str, stall_done_str, stall_start_int, stall_done_int, s_axi_control_AWADDR, 
  s_axi_control_AWVALID, s_axi_control_AWREADY, s_axi_control_WDATA, s_axi_control_WSTRB, 
  s_axi_control_WVALID, s_axi_control_WREADY, s_axi_control_BRESP, s_axi_control_BVALID, 
  s_axi_control_BREADY, s_axi_control_ARADDR, s_axi_control_ARVALID, 
  s_axi_control_ARREADY, s_axi_control_RDATA, s_axi_control_RRESP, s_axi_control_RVALID, 
  s_axi_control_RREADY, ap_clk, ap_rst_n, event_done, interrupt, event_start, 
  m_axi_gmem21_AWADDR, m_axi_gmem21_AWLEN, m_axi_gmem21_AWSIZE, m_axi_gmem21_AWBURST, 
  m_axi_gmem21_AWLOCK, m_axi_gmem21_AWREGION, m_axi_gmem21_AWCACHE, m_axi_gmem21_AWPROT, 
  m_axi_gmem21_AWQOS, m_axi_gmem21_AWVALID, m_axi_gmem21_AWREADY, m_axi_gmem21_WDATA, 
  m_axi_gmem21_WSTRB, m_axi_gmem21_WLAST, m_axi_gmem21_WVALID, m_axi_gmem21_WREADY, 
  m_axi_gmem21_BRESP, m_axi_gmem21_BVALID, m_axi_gmem21_BREADY, m_axi_gmem21_ARADDR, 
  m_axi_gmem21_ARLEN, m_axi_gmem21_ARSIZE, m_axi_gmem21_ARBURST, m_axi_gmem21_ARLOCK, 
  m_axi_gmem21_ARREGION, m_axi_gmem21_ARCACHE, m_axi_gmem21_ARPROT, m_axi_gmem21_ARQOS, 
  m_axi_gmem21_ARVALID, m_axi_gmem21_ARREADY, m_axi_gmem21_RDATA, m_axi_gmem21_RRESP, 
  m_axi_gmem21_RLAST, m_axi_gmem21_RVALID, m_axi_gmem21_RREADY, m_axi_gmem22_AWADDR, 
  m_axi_gmem22_AWLEN, m_axi_gmem22_AWSIZE, m_axi_gmem22_AWBURST, m_axi_gmem22_AWLOCK, 
  m_axi_gmem22_AWREGION, m_axi_gmem22_AWCACHE, m_axi_gmem22_AWPROT, m_axi_gmem22_AWQOS, 
  m_axi_gmem22_AWVALID, m_axi_gmem22_AWREADY, m_axi_gmem22_WDATA, m_axi_gmem22_WSTRB, 
  m_axi_gmem22_WLAST, m_axi_gmem22_WVALID, m_axi_gmem22_WREADY, m_axi_gmem22_BRESP, 
  m_axi_gmem22_BVALID, m_axi_gmem22_BREADY, m_axi_gmem22_ARADDR, m_axi_gmem22_ARLEN, 
  m_axi_gmem22_ARSIZE, m_axi_gmem22_ARBURST, m_axi_gmem22_ARLOCK, m_axi_gmem22_ARREGION, 
  m_axi_gmem22_ARCACHE, m_axi_gmem22_ARPROT, m_axi_gmem22_ARQOS, m_axi_gmem22_ARVALID, 
  m_axi_gmem22_ARREADY, m_axi_gmem22_RDATA, m_axi_gmem22_RRESP, m_axi_gmem22_RLAST, 
  m_axi_gmem22_RVALID, m_axi_gmem22_RREADY, m_axi_gmem23_AWADDR, m_axi_gmem23_AWLEN, 
  m_axi_gmem23_AWSIZE, m_axi_gmem23_AWBURST, m_axi_gmem23_AWLOCK, m_axi_gmem23_AWREGION, 
  m_axi_gmem23_AWCACHE, m_axi_gmem23_AWPROT, m_axi_gmem23_AWQOS, m_axi_gmem23_AWVALID, 
  m_axi_gmem23_AWREADY, m_axi_gmem23_WDATA, m_axi_gmem23_WSTRB, m_axi_gmem23_WLAST, 
  m_axi_gmem23_WVALID, m_axi_gmem23_WREADY, m_axi_gmem23_BRESP, m_axi_gmem23_BVALID, 
  m_axi_gmem23_BREADY, m_axi_gmem23_ARADDR, m_axi_gmem23_ARLEN, m_axi_gmem23_ARSIZE, 
  m_axi_gmem23_ARBURST, m_axi_gmem23_ARLOCK, m_axi_gmem23_ARREGION, m_axi_gmem23_ARCACHE, 
  m_axi_gmem23_ARPROT, m_axi_gmem23_ARQOS, m_axi_gmem23_ARVALID, m_axi_gmem23_ARREADY, 
  m_axi_gmem23_RDATA, m_axi_gmem23_RRESP, m_axi_gmem23_RLAST, m_axi_gmem23_RVALID, 
  m_axi_gmem23_RREADY, m_axi_gmem24_AWADDR, m_axi_gmem24_AWLEN, m_axi_gmem24_AWSIZE, 
  m_axi_gmem24_AWBURST, m_axi_gmem24_AWLOCK, m_axi_gmem24_AWREGION, m_axi_gmem24_AWCACHE, 
  m_axi_gmem24_AWPROT, m_axi_gmem24_AWQOS, m_axi_gmem24_AWVALID, m_axi_gmem24_AWREADY, 
  m_axi_gmem24_WDATA, m_axi_gmem24_WSTRB, m_axi_gmem24_WLAST, m_axi_gmem24_WVALID, 
  m_axi_gmem24_WREADY, m_axi_gmem24_BRESP, m_axi_gmem24_BVALID, m_axi_gmem24_BREADY, 
  m_axi_gmem24_ARADDR, m_axi_gmem24_ARLEN, m_axi_gmem24_ARSIZE, m_axi_gmem24_ARBURST, 
  m_axi_gmem24_ARLOCK, m_axi_gmem24_ARREGION, m_axi_gmem24_ARCACHE, m_axi_gmem24_ARPROT, 
  m_axi_gmem24_ARQOS, m_axi_gmem24_ARVALID, m_axi_gmem24_ARREADY, m_axi_gmem24_RDATA, 
  m_axi_gmem24_RRESP, m_axi_gmem24_RLAST, m_axi_gmem24_RVALID, m_axi_gmem24_RREADY, 
  m_axi_gmem25_AWADDR, m_axi_gmem25_AWLEN, m_axi_gmem25_AWSIZE, m_axi_gmem25_AWBURST, 
  m_axi_gmem25_AWLOCK, m_axi_gmem25_AWREGION, m_axi_gmem25_AWCACHE, m_axi_gmem25_AWPROT, 
  m_axi_gmem25_AWQOS, m_axi_gmem25_AWVALID, m_axi_gmem25_AWREADY, m_axi_gmem25_WDATA, 
  m_axi_gmem25_WSTRB, m_axi_gmem25_WLAST, m_axi_gmem25_WVALID, m_axi_gmem25_WREADY, 
  m_axi_gmem25_BRESP, m_axi_gmem25_BVALID, m_axi_gmem25_BREADY, m_axi_gmem25_ARADDR, 
  m_axi_gmem25_ARLEN, m_axi_gmem25_ARSIZE, m_axi_gmem25_ARBURST, m_axi_gmem25_ARLOCK, 
  m_axi_gmem25_ARREGION, m_axi_gmem25_ARCACHE, m_axi_gmem25_ARPROT, m_axi_gmem25_ARQOS, 
  m_axi_gmem25_ARVALID, m_axi_gmem25_ARREADY, m_axi_gmem25_RDATA, m_axi_gmem25_RRESP, 
  m_axi_gmem25_RLAST, m_axi_gmem25_RVALID, m_axi_gmem25_RREADY, m_axi_gmem34_AWADDR, 
  m_axi_gmem34_AWLEN, m_axi_gmem34_AWSIZE, m_axi_gmem34_AWBURST, m_axi_gmem34_AWLOCK, 
  m_axi_gmem34_AWREGION, m_axi_gmem34_AWCACHE, m_axi_gmem34_AWPROT, m_axi_gmem34_AWQOS, 
  m_axi_gmem34_AWVALID, m_axi_gmem34_AWREADY, m_axi_gmem34_WDATA, m_axi_gmem34_WSTRB, 
  m_axi_gmem34_WLAST, m_axi_gmem34_WVALID, m_axi_gmem34_WREADY, m_axi_gmem34_BRESP, 
  m_axi_gmem34_BVALID, m_axi_gmem34_BREADY, m_axi_gmem34_ARADDR, m_axi_gmem34_ARLEN, 
  m_axi_gmem34_ARSIZE, m_axi_gmem34_ARBURST, m_axi_gmem34_ARLOCK, m_axi_gmem34_ARREGION, 
  m_axi_gmem34_ARCACHE, m_axi_gmem34_ARPROT, m_axi_gmem34_ARQOS, m_axi_gmem34_ARVALID, 
  m_axi_gmem34_ARREADY, m_axi_gmem34_RDATA, m_axi_gmem34_RRESP, m_axi_gmem34_RLAST, 
  m_axi_gmem34_RVALID, m_axi_gmem34_RREADY)
/* synthesis syn_black_box black_box_pad_pin="stall_start_ext,stall_done_ext,stall_start_str,stall_done_str,stall_start_int,stall_done_int,s_axi_control_AWADDR[6:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[6:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,event_done,interrupt,event_start,m_axi_gmem21_AWADDR[63:0],m_axi_gmem21_AWLEN[7:0],m_axi_gmem21_AWSIZE[2:0],m_axi_gmem21_AWBURST[1:0],m_axi_gmem21_AWLOCK[1:0],m_axi_gmem21_AWREGION[3:0],m_axi_gmem21_AWCACHE[3:0],m_axi_gmem21_AWPROT[2:0],m_axi_gmem21_AWQOS[3:0],m_axi_gmem21_AWVALID,m_axi_gmem21_AWREADY,m_axi_gmem21_WDATA[31:0],m_axi_gmem21_WSTRB[3:0],m_axi_gmem21_WLAST,m_axi_gmem21_WVALID,m_axi_gmem21_WREADY,m_axi_gmem21_BRESP[1:0],m_axi_gmem21_BVALID,m_axi_gmem21_BREADY,m_axi_gmem21_ARADDR[63:0],m_axi_gmem21_ARLEN[7:0],m_axi_gmem21_ARSIZE[2:0],m_axi_gmem21_ARBURST[1:0],m_axi_gmem21_ARLOCK[1:0],m_axi_gmem21_ARREGION[3:0],m_axi_gmem21_ARCACHE[3:0],m_axi_gmem21_ARPROT[2:0],m_axi_gmem21_ARQOS[3:0],m_axi_gmem21_ARVALID,m_axi_gmem21_ARREADY,m_axi_gmem21_RDATA[31:0],m_axi_gmem21_RRESP[1:0],m_axi_gmem21_RLAST,m_axi_gmem21_RVALID,m_axi_gmem21_RREADY,m_axi_gmem22_AWADDR[63:0],m_axi_gmem22_AWLEN[7:0],m_axi_gmem22_AWSIZE[2:0],m_axi_gmem22_AWBURST[1:0],m_axi_gmem22_AWLOCK[1:0],m_axi_gmem22_AWREGION[3:0],m_axi_gmem22_AWCACHE[3:0],m_axi_gmem22_AWPROT[2:0],m_axi_gmem22_AWQOS[3:0],m_axi_gmem22_AWVALID,m_axi_gmem22_AWREADY,m_axi_gmem22_WDATA[511:0],m_axi_gmem22_WSTRB[63:0],m_axi_gmem22_WLAST,m_axi_gmem22_WVALID,m_axi_gmem22_WREADY,m_axi_gmem22_BRESP[1:0],m_axi_gmem22_BVALID,m_axi_gmem22_BREADY,m_axi_gmem22_ARADDR[63:0],m_axi_gmem22_ARLEN[7:0],m_axi_gmem22_ARSIZE[2:0],m_axi_gmem22_ARBURST[1:0],m_axi_gmem22_ARLOCK[1:0],m_axi_gmem22_ARREGION[3:0],m_axi_gmem22_ARCACHE[3:0],m_axi_gmem22_ARPROT[2:0],m_axi_gmem22_ARQOS[3:0],m_axi_gmem22_ARVALID,m_axi_gmem22_ARREADY,m_axi_gmem22_RDATA[511:0],m_axi_gmem22_RRESP[1:0],m_axi_gmem22_RLAST,m_axi_gmem22_RVALID,m_axi_gmem22_RREADY,m_axi_gmem23_AWADDR[63:0],m_axi_gmem23_AWLEN[7:0],m_axi_gmem23_AWSIZE[2:0],m_axi_gmem23_AWBURST[1:0],m_axi_gmem23_AWLOCK[1:0],m_axi_gmem23_AWREGION[3:0],m_axi_gmem23_AWCACHE[3:0],m_axi_gmem23_AWPROT[2:0],m_axi_gmem23_AWQOS[3:0],m_axi_gmem23_AWVALID,m_axi_gmem23_AWREADY,m_axi_gmem23_WDATA[31:0],m_axi_gmem23_WSTRB[3:0],m_axi_gmem23_WLAST,m_axi_gmem23_WVALID,m_axi_gmem23_WREADY,m_axi_gmem23_BRESP[1:0],m_axi_gmem23_BVALID,m_axi_gmem23_BREADY,m_axi_gmem23_ARADDR[63:0],m_axi_gmem23_ARLEN[7:0],m_axi_gmem23_ARSIZE[2:0],m_axi_gmem23_ARBURST[1:0],m_axi_gmem23_ARLOCK[1:0],m_axi_gmem23_ARREGION[3:0],m_axi_gmem23_ARCACHE[3:0],m_axi_gmem23_ARPROT[2:0],m_axi_gmem23_ARQOS[3:0],m_axi_gmem23_ARVALID,m_axi_gmem23_ARREADY,m_axi_gmem23_RDATA[31:0],m_axi_gmem23_RRESP[1:0],m_axi_gmem23_RLAST,m_axi_gmem23_RVALID,m_axi_gmem23_RREADY,m_axi_gmem24_AWADDR[63:0],m_axi_gmem24_AWLEN[7:0],m_axi_gmem24_AWSIZE[2:0],m_axi_gmem24_AWBURST[1:0],m_axi_gmem24_AWLOCK[1:0],m_axi_gmem24_AWREGION[3:0],m_axi_gmem24_AWCACHE[3:0],m_axi_gmem24_AWPROT[2:0],m_axi_gmem24_AWQOS[3:0],m_axi_gmem24_AWVALID,m_axi_gmem24_AWREADY,m_axi_gmem24_WDATA[31:0],m_axi_gmem24_WSTRB[3:0],m_axi_gmem24_WLAST,m_axi_gmem24_WVALID,m_axi_gmem24_WREADY,m_axi_gmem24_BRESP[1:0],m_axi_gmem24_BVALID,m_axi_gmem24_BREADY,m_axi_gmem24_ARADDR[63:0],m_axi_gmem24_ARLEN[7:0],m_axi_gmem24_ARSIZE[2:0],m_axi_gmem24_ARBURST[1:0],m_axi_gmem24_ARLOCK[1:0],m_axi_gmem24_ARREGION[3:0],m_axi_gmem24_ARCACHE[3:0],m_axi_gmem24_ARPROT[2:0],m_axi_gmem24_ARQOS[3:0],m_axi_gmem24_ARVALID,m_axi_gmem24_ARREADY,m_axi_gmem24_RDATA[31:0],m_axi_gmem24_RRESP[1:0],m_axi_gmem24_RLAST,m_axi_gmem24_RVALID,m_axi_gmem24_RREADY,m_axi_gmem25_AWADDR[63:0],m_axi_gmem25_AWLEN[7:0],m_axi_gmem25_AWSIZE[2:0],m_axi_gmem25_AWBURST[1:0],m_axi_gmem25_AWLOCK[1:0],m_axi_gmem25_AWREGION[3:0],m_axi_gmem25_AWCACHE[3:0],m_axi_gmem25_AWPROT[2:0],m_axi_gmem25_AWQOS[3:0],m_axi_gmem25_AWVALID,m_axi_gmem25_AWREADY,m_axi_gmem25_WDATA[31:0],m_axi_gmem25_WSTRB[3:0],m_axi_gmem25_WLAST,m_axi_gmem25_WVALID,m_axi_gmem25_WREADY,m_axi_gmem25_BRESP[1:0],m_axi_gmem25_BVALID,m_axi_gmem25_BREADY,m_axi_gmem25_ARADDR[63:0],m_axi_gmem25_ARLEN[7:0],m_axi_gmem25_ARSIZE[2:0],m_axi_gmem25_ARBURST[1:0],m_axi_gmem25_ARLOCK[1:0],m_axi_gmem25_ARREGION[3:0],m_axi_gmem25_ARCACHE[3:0],m_axi_gmem25_ARPROT[2:0],m_axi_gmem25_ARQOS[3:0],m_axi_gmem25_ARVALID,m_axi_gmem25_ARREADY,m_axi_gmem25_RDATA[31:0],m_axi_gmem25_RRESP[1:0],m_axi_gmem25_RLAST,m_axi_gmem25_RVALID,m_axi_gmem25_RREADY,m_axi_gmem34_AWADDR[63:0],m_axi_gmem34_AWLEN[7:0],m_axi_gmem34_AWSIZE[2:0],m_axi_gmem34_AWBURST[1:0],m_axi_gmem34_AWLOCK[1:0],m_axi_gmem34_AWREGION[3:0],m_axi_gmem34_AWCACHE[3:0],m_axi_gmem34_AWPROT[2:0],m_axi_gmem34_AWQOS[3:0],m_axi_gmem34_AWVALID,m_axi_gmem34_AWREADY,m_axi_gmem34_WDATA[63:0],m_axi_gmem34_WSTRB[7:0],m_axi_gmem34_WLAST,m_axi_gmem34_WVALID,m_axi_gmem34_WREADY,m_axi_gmem34_BRESP[1:0],m_axi_gmem34_BVALID,m_axi_gmem34_BREADY,m_axi_gmem34_ARADDR[63:0],m_axi_gmem34_ARLEN[7:0],m_axi_gmem34_ARSIZE[2:0],m_axi_gmem34_ARBURST[1:0],m_axi_gmem34_ARLOCK[1:0],m_axi_gmem34_ARREGION[3:0],m_axi_gmem34_ARCACHE[3:0],m_axi_gmem34_ARPROT[2:0],m_axi_gmem34_ARQOS[3:0],m_axi_gmem34_ARVALID,m_axi_gmem34_ARREADY,m_axi_gmem34_RDATA[63:0],m_axi_gmem34_RRESP[1:0],m_axi_gmem34_RLAST,m_axi_gmem34_RVALID,m_axi_gmem34_RREADY" */;
  output stall_start_ext;
  output stall_done_ext;
  output stall_start_str;
  output stall_done_str;
  output stall_start_int;
  output stall_done_int;
  input [6:0]s_axi_control_AWADDR;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  input [6:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  input ap_clk;
  input ap_rst_n;
  output event_done;
  output interrupt;
  output event_start;
  output [63:0]m_axi_gmem21_AWADDR;
  output [7:0]m_axi_gmem21_AWLEN;
  output [2:0]m_axi_gmem21_AWSIZE;
  output [1:0]m_axi_gmem21_AWBURST;
  output [1:0]m_axi_gmem21_AWLOCK;
  output [3:0]m_axi_gmem21_AWREGION;
  output [3:0]m_axi_gmem21_AWCACHE;
  output [2:0]m_axi_gmem21_AWPROT;
  output [3:0]m_axi_gmem21_AWQOS;
  output m_axi_gmem21_AWVALID;
  input m_axi_gmem21_AWREADY;
  output [31:0]m_axi_gmem21_WDATA;
  output [3:0]m_axi_gmem21_WSTRB;
  output m_axi_gmem21_WLAST;
  output m_axi_gmem21_WVALID;
  input m_axi_gmem21_WREADY;
  input [1:0]m_axi_gmem21_BRESP;
  input m_axi_gmem21_BVALID;
  output m_axi_gmem21_BREADY;
  output [63:0]m_axi_gmem21_ARADDR;
  output [7:0]m_axi_gmem21_ARLEN;
  output [2:0]m_axi_gmem21_ARSIZE;
  output [1:0]m_axi_gmem21_ARBURST;
  output [1:0]m_axi_gmem21_ARLOCK;
  output [3:0]m_axi_gmem21_ARREGION;
  output [3:0]m_axi_gmem21_ARCACHE;
  output [2:0]m_axi_gmem21_ARPROT;
  output [3:0]m_axi_gmem21_ARQOS;
  output m_axi_gmem21_ARVALID;
  input m_axi_gmem21_ARREADY;
  input [31:0]m_axi_gmem21_RDATA;
  input [1:0]m_axi_gmem21_RRESP;
  input m_axi_gmem21_RLAST;
  input m_axi_gmem21_RVALID;
  output m_axi_gmem21_RREADY;
  output [63:0]m_axi_gmem22_AWADDR;
  output [7:0]m_axi_gmem22_AWLEN;
  output [2:0]m_axi_gmem22_AWSIZE;
  output [1:0]m_axi_gmem22_AWBURST;
  output [1:0]m_axi_gmem22_AWLOCK;
  output [3:0]m_axi_gmem22_AWREGION;
  output [3:0]m_axi_gmem22_AWCACHE;
  output [2:0]m_axi_gmem22_AWPROT;
  output [3:0]m_axi_gmem22_AWQOS;
  output m_axi_gmem22_AWVALID;
  input m_axi_gmem22_AWREADY;
  output [511:0]m_axi_gmem22_WDATA;
  output [63:0]m_axi_gmem22_WSTRB;
  output m_axi_gmem22_WLAST;
  output m_axi_gmem22_WVALID;
  input m_axi_gmem22_WREADY;
  input [1:0]m_axi_gmem22_BRESP;
  input m_axi_gmem22_BVALID;
  output m_axi_gmem22_BREADY;
  output [63:0]m_axi_gmem22_ARADDR;
  output [7:0]m_axi_gmem22_ARLEN;
  output [2:0]m_axi_gmem22_ARSIZE;
  output [1:0]m_axi_gmem22_ARBURST;
  output [1:0]m_axi_gmem22_ARLOCK;
  output [3:0]m_axi_gmem22_ARREGION;
  output [3:0]m_axi_gmem22_ARCACHE;
  output [2:0]m_axi_gmem22_ARPROT;
  output [3:0]m_axi_gmem22_ARQOS;
  output m_axi_gmem22_ARVALID;
  input m_axi_gmem22_ARREADY;
  input [511:0]m_axi_gmem22_RDATA;
  input [1:0]m_axi_gmem22_RRESP;
  input m_axi_gmem22_RLAST;
  input m_axi_gmem22_RVALID;
  output m_axi_gmem22_RREADY;
  output [63:0]m_axi_gmem23_AWADDR;
  output [7:0]m_axi_gmem23_AWLEN;
  output [2:0]m_axi_gmem23_AWSIZE;
  output [1:0]m_axi_gmem23_AWBURST;
  output [1:0]m_axi_gmem23_AWLOCK;
  output [3:0]m_axi_gmem23_AWREGION;
  output [3:0]m_axi_gmem23_AWCACHE;
  output [2:0]m_axi_gmem23_AWPROT;
  output [3:0]m_axi_gmem23_AWQOS;
  output m_axi_gmem23_AWVALID;
  input m_axi_gmem23_AWREADY;
  output [31:0]m_axi_gmem23_WDATA;
  output [3:0]m_axi_gmem23_WSTRB;
  output m_axi_gmem23_WLAST;
  output m_axi_gmem23_WVALID;
  input m_axi_gmem23_WREADY;
  input [1:0]m_axi_gmem23_BRESP;
  input m_axi_gmem23_BVALID;
  output m_axi_gmem23_BREADY;
  output [63:0]m_axi_gmem23_ARADDR;
  output [7:0]m_axi_gmem23_ARLEN;
  output [2:0]m_axi_gmem23_ARSIZE;
  output [1:0]m_axi_gmem23_ARBURST;
  output [1:0]m_axi_gmem23_ARLOCK;
  output [3:0]m_axi_gmem23_ARREGION;
  output [3:0]m_axi_gmem23_ARCACHE;
  output [2:0]m_axi_gmem23_ARPROT;
  output [3:0]m_axi_gmem23_ARQOS;
  output m_axi_gmem23_ARVALID;
  input m_axi_gmem23_ARREADY;
  input [31:0]m_axi_gmem23_RDATA;
  input [1:0]m_axi_gmem23_RRESP;
  input m_axi_gmem23_RLAST;
  input m_axi_gmem23_RVALID;
  output m_axi_gmem23_RREADY;
  output [63:0]m_axi_gmem24_AWADDR;
  output [7:0]m_axi_gmem24_AWLEN;
  output [2:0]m_axi_gmem24_AWSIZE;
  output [1:0]m_axi_gmem24_AWBURST;
  output [1:0]m_axi_gmem24_AWLOCK;
  output [3:0]m_axi_gmem24_AWREGION;
  output [3:0]m_axi_gmem24_AWCACHE;
  output [2:0]m_axi_gmem24_AWPROT;
  output [3:0]m_axi_gmem24_AWQOS;
  output m_axi_gmem24_AWVALID;
  input m_axi_gmem24_AWREADY;
  output [31:0]m_axi_gmem24_WDATA;
  output [3:0]m_axi_gmem24_WSTRB;
  output m_axi_gmem24_WLAST;
  output m_axi_gmem24_WVALID;
  input m_axi_gmem24_WREADY;
  input [1:0]m_axi_gmem24_BRESP;
  input m_axi_gmem24_BVALID;
  output m_axi_gmem24_BREADY;
  output [63:0]m_axi_gmem24_ARADDR;
  output [7:0]m_axi_gmem24_ARLEN;
  output [2:0]m_axi_gmem24_ARSIZE;
  output [1:0]m_axi_gmem24_ARBURST;
  output [1:0]m_axi_gmem24_ARLOCK;
  output [3:0]m_axi_gmem24_ARREGION;
  output [3:0]m_axi_gmem24_ARCACHE;
  output [2:0]m_axi_gmem24_ARPROT;
  output [3:0]m_axi_gmem24_ARQOS;
  output m_axi_gmem24_ARVALID;
  input m_axi_gmem24_ARREADY;
  input [31:0]m_axi_gmem24_RDATA;
  input [1:0]m_axi_gmem24_RRESP;
  input m_axi_gmem24_RLAST;
  input m_axi_gmem24_RVALID;
  output m_axi_gmem24_RREADY;
  output [63:0]m_axi_gmem25_AWADDR;
  output [7:0]m_axi_gmem25_AWLEN;
  output [2:0]m_axi_gmem25_AWSIZE;
  output [1:0]m_axi_gmem25_AWBURST;
  output [1:0]m_axi_gmem25_AWLOCK;
  output [3:0]m_axi_gmem25_AWREGION;
  output [3:0]m_axi_gmem25_AWCACHE;
  output [2:0]m_axi_gmem25_AWPROT;
  output [3:0]m_axi_gmem25_AWQOS;
  output m_axi_gmem25_AWVALID;
  input m_axi_gmem25_AWREADY;
  output [31:0]m_axi_gmem25_WDATA;
  output [3:0]m_axi_gmem25_WSTRB;
  output m_axi_gmem25_WLAST;
  output m_axi_gmem25_WVALID;
  input m_axi_gmem25_WREADY;
  input [1:0]m_axi_gmem25_BRESP;
  input m_axi_gmem25_BVALID;
  output m_axi_gmem25_BREADY;
  output [63:0]m_axi_gmem25_ARADDR;
  output [7:0]m_axi_gmem25_ARLEN;
  output [2:0]m_axi_gmem25_ARSIZE;
  output [1:0]m_axi_gmem25_ARBURST;
  output [1:0]m_axi_gmem25_ARLOCK;
  output [3:0]m_axi_gmem25_ARREGION;
  output [3:0]m_axi_gmem25_ARCACHE;
  output [2:0]m_axi_gmem25_ARPROT;
  output [3:0]m_axi_gmem25_ARQOS;
  output m_axi_gmem25_ARVALID;
  input m_axi_gmem25_ARREADY;
  input [31:0]m_axi_gmem25_RDATA;
  input [1:0]m_axi_gmem25_RRESP;
  input m_axi_gmem25_RLAST;
  input m_axi_gmem25_RVALID;
  output m_axi_gmem25_RREADY;
  output [63:0]m_axi_gmem34_AWADDR;
  output [7:0]m_axi_gmem34_AWLEN;
  output [2:0]m_axi_gmem34_AWSIZE;
  output [1:0]m_axi_gmem34_AWBURST;
  output [1:0]m_axi_gmem34_AWLOCK;
  output [3:0]m_axi_gmem34_AWREGION;
  output [3:0]m_axi_gmem34_AWCACHE;
  output [2:0]m_axi_gmem34_AWPROT;
  output [3:0]m_axi_gmem34_AWQOS;
  output m_axi_gmem34_AWVALID;
  input m_axi_gmem34_AWREADY;
  output [63:0]m_axi_gmem34_WDATA;
  output [7:0]m_axi_gmem34_WSTRB;
  output m_axi_gmem34_WLAST;
  output m_axi_gmem34_WVALID;
  input m_axi_gmem34_WREADY;
  input [1:0]m_axi_gmem34_BRESP;
  input m_axi_gmem34_BVALID;
  output m_axi_gmem34_BREADY;
  output [63:0]m_axi_gmem34_ARADDR;
  output [7:0]m_axi_gmem34_ARLEN;
  output [2:0]m_axi_gmem34_ARSIZE;
  output [1:0]m_axi_gmem34_ARBURST;
  output [1:0]m_axi_gmem34_ARLOCK;
  output [3:0]m_axi_gmem34_ARREGION;
  output [3:0]m_axi_gmem34_ARCACHE;
  output [2:0]m_axi_gmem34_ARPROT;
  output [3:0]m_axi_gmem34_ARQOS;
  output m_axi_gmem34_ARVALID;
  input m_axi_gmem34_ARREADY;
  input [63:0]m_axi_gmem34_RDATA;
  input [1:0]m_axi_gmem34_RRESP;
  input m_axi_gmem34_RLAST;
  input m_axi_gmem34_RVALID;
  output m_axi_gmem34_RREADY;
endmodule
