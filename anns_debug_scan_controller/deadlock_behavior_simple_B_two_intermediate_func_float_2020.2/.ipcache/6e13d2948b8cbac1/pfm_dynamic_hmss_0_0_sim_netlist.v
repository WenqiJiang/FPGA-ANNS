// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Jun 20 17:09:38 2021
// Host        : alveo0 running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pfm_dynamic_hmss_0_0_sim_netlist.v
// Design      : pfm_dynamic_hmss_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* HW_HANDOFF = "pfm_dynamic_hmss_0_0.hwdef" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca
   (DRAM_0_STAT_TEMP,
    DRAM_1_STAT_TEMP,
    DRAM_STAT_CATTRIP,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arlen,
    S02_AXI_arlock,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arready,
    S02_AXI_arsize,
    S02_AXI_arvalid,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awlen,
    S02_AXI_awlock,
    S02_AXI_awprot,
    S02_AXI_awqos,
    S02_AXI_awready,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_rdata,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid,
    S03_AXI_araddr,
    S03_AXI_arburst,
    S03_AXI_arcache,
    S03_AXI_arlen,
    S03_AXI_arlock,
    S03_AXI_arprot,
    S03_AXI_arqos,
    S03_AXI_arready,
    S03_AXI_arsize,
    S03_AXI_arvalid,
    S03_AXI_awaddr,
    S03_AXI_awburst,
    S03_AXI_awcache,
    S03_AXI_awlen,
    S03_AXI_awlock,
    S03_AXI_awprot,
    S03_AXI_awqos,
    S03_AXI_awready,
    S03_AXI_awsize,
    S03_AXI_awvalid,
    S03_AXI_bready,
    S03_AXI_bresp,
    S03_AXI_bvalid,
    S03_AXI_rdata,
    S03_AXI_rlast,
    S03_AXI_rready,
    S03_AXI_rresp,
    S03_AXI_rvalid,
    S03_AXI_wdata,
    S03_AXI_wlast,
    S03_AXI_wready,
    S03_AXI_wstrb,
    S03_AXI_wvalid,
    S04_AXI_araddr,
    S04_AXI_arburst,
    S04_AXI_arcache,
    S04_AXI_arlen,
    S04_AXI_arlock,
    S04_AXI_arprot,
    S04_AXI_arqos,
    S04_AXI_arready,
    S04_AXI_arsize,
    S04_AXI_arvalid,
    S04_AXI_awaddr,
    S04_AXI_awburst,
    S04_AXI_awcache,
    S04_AXI_awlen,
    S04_AXI_awlock,
    S04_AXI_awprot,
    S04_AXI_awqos,
    S04_AXI_awready,
    S04_AXI_awsize,
    S04_AXI_awvalid,
    S04_AXI_bready,
    S04_AXI_bresp,
    S04_AXI_bvalid,
    S04_AXI_rdata,
    S04_AXI_rlast,
    S04_AXI_rready,
    S04_AXI_rresp,
    S04_AXI_rvalid,
    S04_AXI_wdata,
    S04_AXI_wlast,
    S04_AXI_wready,
    S04_AXI_wstrb,
    S04_AXI_wvalid,
    S05_AXI_araddr,
    S05_AXI_arburst,
    S05_AXI_arcache,
    S05_AXI_arlen,
    S05_AXI_arlock,
    S05_AXI_arprot,
    S05_AXI_arqos,
    S05_AXI_arready,
    S05_AXI_arsize,
    S05_AXI_arvalid,
    S05_AXI_awaddr,
    S05_AXI_awburst,
    S05_AXI_awcache,
    S05_AXI_awlen,
    S05_AXI_awlock,
    S05_AXI_awprot,
    S05_AXI_awqos,
    S05_AXI_awready,
    S05_AXI_awsize,
    S05_AXI_awvalid,
    S05_AXI_bready,
    S05_AXI_bresp,
    S05_AXI_bvalid,
    S05_AXI_rdata,
    S05_AXI_rlast,
    S05_AXI_rready,
    S05_AXI_rresp,
    S05_AXI_rvalid,
    S05_AXI_wdata,
    S05_AXI_wlast,
    S05_AXI_wready,
    S05_AXI_wstrb,
    S05_AXI_wvalid,
    S06_AXI_araddr,
    S06_AXI_arburst,
    S06_AXI_arcache,
    S06_AXI_arlen,
    S06_AXI_arlock,
    S06_AXI_arprot,
    S06_AXI_arqos,
    S06_AXI_arready,
    S06_AXI_arsize,
    S06_AXI_arvalid,
    S06_AXI_awaddr,
    S06_AXI_awburst,
    S06_AXI_awcache,
    S06_AXI_awlen,
    S06_AXI_awlock,
    S06_AXI_awprot,
    S06_AXI_awqos,
    S06_AXI_awready,
    S06_AXI_awsize,
    S06_AXI_awvalid,
    S06_AXI_bready,
    S06_AXI_bresp,
    S06_AXI_bvalid,
    S06_AXI_rdata,
    S06_AXI_rlast,
    S06_AXI_rready,
    S06_AXI_rresp,
    S06_AXI_rvalid,
    S06_AXI_wdata,
    S06_AXI_wlast,
    S06_AXI_wready,
    S06_AXI_wstrb,
    S06_AXI_wvalid,
    S_AXI_CTRL_araddr,
    S_AXI_CTRL_arready,
    S_AXI_CTRL_arvalid,
    S_AXI_CTRL_awaddr,
    S_AXI_CTRL_awready,
    S_AXI_CTRL_awvalid,
    S_AXI_CTRL_bready,
    S_AXI_CTRL_bresp,
    S_AXI_CTRL_bvalid,
    S_AXI_CTRL_rdata,
    S_AXI_CTRL_rready,
    S_AXI_CTRL_rresp,
    S_AXI_CTRL_rvalid,
    S_AXI_CTRL_wdata,
    S_AXI_CTRL_wready,
    S_AXI_CTRL_wvalid,
    aclk,
    aclk1,
    aresetn,
    aresetn1,
    ctrl_aclk,
    ctrl_aresetn,
    hbm_aclk,
    hbm_aresetn,
    hbm_mc_init_seq_complete,
    hbm_ref_clk);
  output [6:0]DRAM_0_STAT_TEMP;
  output [6:0]DRAM_1_STAT_TEMP;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.DRAM_STAT_CATTRIP INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.DRAM_STAT_CATTRIP, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output [0:0]DRAM_STAT_CATTRIP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, ADDR_WIDTH 33, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_dma_pcie_axi_aclk, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [32:0]S00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST" *) input [1:0]S00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE" *) input [3:0]S00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN" *) input [7:0]S00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK" *) input [0:0]S00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]S00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS" *) input [3:0]S00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output [0:0]S00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE" *) input [2:0]S00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input [0:0]S00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [32:0]S00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST" *) input [1:0]S00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE" *) input [3:0]S00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN" *) input [7:0]S00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK" *) input [0:0]S00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]S00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS" *) input [3:0]S00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output [0:0]S00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE" *) input [2:0]S00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input [0:0]S00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input [0:0]S00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]S00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output [0:0]S00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [511:0]S00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *) output [0:0]S00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input [0:0]S00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]S00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output [0:0]S00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [511:0]S00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST" *) input [0:0]S00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output [0:0]S00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [63:0]S00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input [0:0]S00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S01_AXI, ADDR_WIDTH 33, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, DATA_WIDTH 32, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]S01_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARBURST" *) input [1:0]S01_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE" *) input [3:0]S01_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARLEN" *) input [7:0]S01_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK" *) input [0:0]S01_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARPROT" *) input [2:0]S01_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARQOS" *) input [3:0]S01_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARREADY" *) output [0:0]S01_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARSIZE" *) input [2:0]S01_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARVALID" *) input [0:0]S01_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWADDR" *) input [63:0]S01_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWBURST" *) input [1:0]S01_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE" *) input [3:0]S01_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWLEN" *) input [7:0]S01_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK" *) input [0:0]S01_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWPROT" *) input [2:0]S01_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWQOS" *) input [3:0]S01_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWREADY" *) output [0:0]S01_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWSIZE" *) input [2:0]S01_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWVALID" *) input [0:0]S01_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BREADY" *) input [0:0]S01_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BRESP" *) output [1:0]S01_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BVALID" *) output [0:0]S01_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RDATA" *) output [31:0]S01_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RLAST" *) output [0:0]S01_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RREADY" *) input [0:0]S01_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RRESP" *) output [1:0]S01_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RVALID" *) output [0:0]S01_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WDATA" *) input [31:0]S01_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WLAST" *) input [0:0]S01_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WREADY" *) output [0:0]S01_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WSTRB" *) input [3:0]S01_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WVALID" *) input [0:0]S01_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S02_AXI, ADDR_WIDTH 33, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, DATA_WIDTH 512, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]S02_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARBURST" *) input [1:0]S02_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARCACHE" *) input [3:0]S02_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARLEN" *) input [7:0]S02_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARLOCK" *) input [0:0]S02_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARPROT" *) input [2:0]S02_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARQOS" *) input [3:0]S02_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARREADY" *) output [0:0]S02_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARSIZE" *) input [2:0]S02_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARVALID" *) input [0:0]S02_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWADDR" *) input [63:0]S02_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWBURST" *) input [1:0]S02_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWCACHE" *) input [3:0]S02_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWLEN" *) input [7:0]S02_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWLOCK" *) input [0:0]S02_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWPROT" *) input [2:0]S02_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWQOS" *) input [3:0]S02_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWREADY" *) output [0:0]S02_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWSIZE" *) input [2:0]S02_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWVALID" *) input [0:0]S02_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BREADY" *) input [0:0]S02_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BRESP" *) output [1:0]S02_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BVALID" *) output [0:0]S02_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RDATA" *) output [511:0]S02_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RLAST" *) output [0:0]S02_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RREADY" *) input [0:0]S02_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RRESP" *) output [1:0]S02_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RVALID" *) output [0:0]S02_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WDATA" *) input [511:0]S02_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WLAST" *) input [0:0]S02_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WREADY" *) output [0:0]S02_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WSTRB" *) input [63:0]S02_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WVALID" *) input [0:0]S02_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S03_AXI, ADDR_WIDTH 33, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, DATA_WIDTH 32, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]S03_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARBURST" *) input [1:0]S03_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARCACHE" *) input [3:0]S03_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARLEN" *) input [7:0]S03_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARLOCK" *) input [0:0]S03_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARPROT" *) input [2:0]S03_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARQOS" *) input [3:0]S03_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARREADY" *) output [0:0]S03_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARSIZE" *) input [2:0]S03_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARVALID" *) input [0:0]S03_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWADDR" *) input [63:0]S03_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWBURST" *) input [1:0]S03_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWCACHE" *) input [3:0]S03_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWLEN" *) input [7:0]S03_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWLOCK" *) input [0:0]S03_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWPROT" *) input [2:0]S03_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWQOS" *) input [3:0]S03_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWREADY" *) output [0:0]S03_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWSIZE" *) input [2:0]S03_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWVALID" *) input [0:0]S03_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BREADY" *) input [0:0]S03_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BRESP" *) output [1:0]S03_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BVALID" *) output [0:0]S03_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RDATA" *) output [31:0]S03_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RLAST" *) output [0:0]S03_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RREADY" *) input [0:0]S03_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RRESP" *) output [1:0]S03_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RVALID" *) output [0:0]S03_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WDATA" *) input [31:0]S03_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WLAST" *) input [0:0]S03_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WREADY" *) output [0:0]S03_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WSTRB" *) input [3:0]S03_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WVALID" *) input [0:0]S03_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S04_AXI, ADDR_WIDTH 33, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, DATA_WIDTH 32, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]S04_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARBURST" *) input [1:0]S04_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARCACHE" *) input [3:0]S04_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARLEN" *) input [7:0]S04_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARLOCK" *) input [0:0]S04_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARPROT" *) input [2:0]S04_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARQOS" *) input [3:0]S04_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARREADY" *) output [0:0]S04_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARSIZE" *) input [2:0]S04_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARVALID" *) input [0:0]S04_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWADDR" *) input [63:0]S04_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWBURST" *) input [1:0]S04_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWCACHE" *) input [3:0]S04_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWLEN" *) input [7:0]S04_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWLOCK" *) input [0:0]S04_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWPROT" *) input [2:0]S04_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWQOS" *) input [3:0]S04_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWREADY" *) output [0:0]S04_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWSIZE" *) input [2:0]S04_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWVALID" *) input [0:0]S04_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI BREADY" *) input [0:0]S04_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI BRESP" *) output [1:0]S04_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI BVALID" *) output [0:0]S04_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RDATA" *) output [31:0]S04_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RLAST" *) output [0:0]S04_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RREADY" *) input [0:0]S04_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RRESP" *) output [1:0]S04_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RVALID" *) output [0:0]S04_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WDATA" *) input [31:0]S04_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WLAST" *) input [0:0]S04_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WREADY" *) output [0:0]S04_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WSTRB" *) input [3:0]S04_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WVALID" *) input [0:0]S04_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S05_AXI, ADDR_WIDTH 33, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, DATA_WIDTH 32, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]S05_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARBURST" *) input [1:0]S05_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARCACHE" *) input [3:0]S05_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARLEN" *) input [7:0]S05_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARLOCK" *) input [0:0]S05_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARPROT" *) input [2:0]S05_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARQOS" *) input [3:0]S05_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARREADY" *) output [0:0]S05_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARSIZE" *) input [2:0]S05_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARVALID" *) input [0:0]S05_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWADDR" *) input [63:0]S05_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWBURST" *) input [1:0]S05_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWCACHE" *) input [3:0]S05_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWLEN" *) input [7:0]S05_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWLOCK" *) input [0:0]S05_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWPROT" *) input [2:0]S05_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWQOS" *) input [3:0]S05_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWREADY" *) output [0:0]S05_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWSIZE" *) input [2:0]S05_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWVALID" *) input [0:0]S05_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI BREADY" *) input [0:0]S05_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI BRESP" *) output [1:0]S05_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI BVALID" *) output [0:0]S05_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RDATA" *) output [31:0]S05_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RLAST" *) output [0:0]S05_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RREADY" *) input [0:0]S05_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RRESP" *) output [1:0]S05_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RVALID" *) output [0:0]S05_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WDATA" *) input [31:0]S05_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WLAST" *) input [0:0]S05_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WREADY" *) output [0:0]S05_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WSTRB" *) input [3:0]S05_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WVALID" *) input [0:0]S05_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S06_AXI, ADDR_WIDTH 33, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, DATA_WIDTH 64, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]S06_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARBURST" *) input [1:0]S06_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARCACHE" *) input [3:0]S06_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARLEN" *) input [7:0]S06_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARLOCK" *) input [0:0]S06_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARPROT" *) input [2:0]S06_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARQOS" *) input [3:0]S06_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARREADY" *) output [0:0]S06_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARSIZE" *) input [2:0]S06_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARVALID" *) input [0:0]S06_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWADDR" *) input [63:0]S06_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWBURST" *) input [1:0]S06_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWCACHE" *) input [3:0]S06_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWLEN" *) input [7:0]S06_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWLOCK" *) input [0:0]S06_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWPROT" *) input [2:0]S06_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWQOS" *) input [3:0]S06_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWREADY" *) output [0:0]S06_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWSIZE" *) input [2:0]S06_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWVALID" *) input [0:0]S06_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI BREADY" *) input [0:0]S06_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI BRESP" *) output [1:0]S06_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI BVALID" *) output [0:0]S06_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RDATA" *) output [63:0]S06_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RLAST" *) output [0:0]S06_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RREADY" *) input [0:0]S06_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RRESP" *) output [1:0]S06_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RVALID" *) output [0:0]S06_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WDATA" *) input [63:0]S06_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WLAST" *) input [0:0]S06_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WREADY" *) output [0:0]S06_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WSTRB" *) input [7:0]S06_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WVALID" *) input [0:0]S06_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CTRL, ADDR_WIDTH 23, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_s_axi_aclk, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 0, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [22:0]S_AXI_CTRL_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARREADY" *) output [0:0]S_AXI_CTRL_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARVALID" *) input [0:0]S_AXI_CTRL_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWADDR" *) input [22:0]S_AXI_CTRL_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWREADY" *) output [0:0]S_AXI_CTRL_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWVALID" *) input [0:0]S_AXI_CTRL_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BREADY" *) input [0:0]S_AXI_CTRL_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BRESP" *) output [1:0]S_AXI_CTRL_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BVALID" *) output [0:0]S_AXI_CTRL_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RDATA" *) output [31:0]S_AXI_CTRL_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RREADY" *) input [0:0]S_AXI_CTRL_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RRESP" *) output [1:0]S_AXI_CTRL_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RVALID" *) output [0:0]S_AXI_CTRL_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WDATA" *) input [31:0]S_AXI_CTRL_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WREADY" *) output [0:0]S_AXI_CTRL_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WVALID" *) input [0:0]S_AXI_CTRL_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_CLKEN m_sc_aclken, CLK_DOMAIN pfm_dynamic_dma_pcie_axi_aclk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK1, ASSOCIATED_BUSIF S01_AXI:S02_AXI:S03_AXI:S04_AXI:S05_AXI:S06_AXI, ASSOCIATED_CLKEN m_sc_aclken, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input aclk1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN1, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CTRL_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CTRL_ACLK, ASSOCIATED_BUSIF S_AXI_CTRL, ASSOCIATED_RESET ctrl_aresetn, CLK_DOMAIN pfm_dynamic_s_axi_aclk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input ctrl_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CTRL_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CTRL_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ctrl_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HBM_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HBM_ACLK, ASSOCIATED_CLKEN s_sc_aclken, CLK_DOMAIN pfm_dynamic_clk_out1_pfm_top_clkwiz_hbm_aclk_0, FREQ_HZ 450000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input hbm_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.HBM_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.HBM_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input hbm_aresetn;
  output hbm_mc_init_seq_complete;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HBM_REF_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HBM_REF_CLK, CLK_DOMAIN pfm_dynamic_hbm_ref_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input hbm_ref_clk;

  wire [6:0]DRAM_0_STAT_TEMP;
  wire [6:0]DRAM_1_STAT_TEMP;
  wire [0:0]DRAM_STAT_CATTRIP;
  wire [32:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [7:0]S00_AXI_arlen;
  wire [0:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire [0:0]S00_AXI_arready;
  wire [2:0]S00_AXI_arsize;
  wire [0:0]S00_AXI_arvalid;
  wire [32:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [7:0]S00_AXI_awlen;
  wire [0:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire [0:0]S00_AXI_awready;
  wire [2:0]S00_AXI_awsize;
  wire [0:0]S00_AXI_awvalid;
  wire [0:0]S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire [0:0]S00_AXI_bvalid;
  wire [511:0]S00_AXI_rdata;
  wire [0:0]S00_AXI_rlast;
  wire [0:0]S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire [0:0]S00_AXI_rvalid;
  wire [511:0]S00_AXI_wdata;
  wire [0:0]S00_AXI_wlast;
  wire [0:0]S00_AXI_wready;
  wire [63:0]S00_AXI_wstrb;
  wire [0:0]S00_AXI_wvalid;
  wire [63:0]S01_AXI_araddr;
  wire [1:0]S01_AXI_arburst;
  wire [3:0]S01_AXI_arcache;
  wire [7:0]S01_AXI_arlen;
  wire [0:0]S01_AXI_arlock;
  wire [2:0]S01_AXI_arprot;
  wire [3:0]S01_AXI_arqos;
  wire [0:0]S01_AXI_arready;
  wire [2:0]S01_AXI_arsize;
  wire [0:0]S01_AXI_arvalid;
  wire [63:0]S01_AXI_awaddr;
  wire [1:0]S01_AXI_awburst;
  wire [3:0]S01_AXI_awcache;
  wire [7:0]S01_AXI_awlen;
  wire [0:0]S01_AXI_awlock;
  wire [2:0]S01_AXI_awprot;
  wire [3:0]S01_AXI_awqos;
  wire [0:0]S01_AXI_awready;
  wire [2:0]S01_AXI_awsize;
  wire [0:0]S01_AXI_awvalid;
  wire [0:0]S01_AXI_bready;
  wire [1:0]S01_AXI_bresp;
  wire [0:0]S01_AXI_bvalid;
  wire [31:0]S01_AXI_rdata;
  wire [0:0]S01_AXI_rlast;
  wire [0:0]S01_AXI_rready;
  wire [1:0]S01_AXI_rresp;
  wire [0:0]S01_AXI_rvalid;
  wire [31:0]S01_AXI_wdata;
  wire [0:0]S01_AXI_wlast;
  wire [0:0]S01_AXI_wready;
  wire [3:0]S01_AXI_wstrb;
  wire [0:0]S01_AXI_wvalid;
  wire [63:0]S02_AXI_araddr;
  wire [1:0]S02_AXI_arburst;
  wire [3:0]S02_AXI_arcache;
  wire [7:0]S02_AXI_arlen;
  wire [0:0]S02_AXI_arlock;
  wire [2:0]S02_AXI_arprot;
  wire [3:0]S02_AXI_arqos;
  wire [0:0]S02_AXI_arready;
  wire [2:0]S02_AXI_arsize;
  wire [0:0]S02_AXI_arvalid;
  wire [63:0]S02_AXI_awaddr;
  wire [1:0]S02_AXI_awburst;
  wire [3:0]S02_AXI_awcache;
  wire [7:0]S02_AXI_awlen;
  wire [0:0]S02_AXI_awlock;
  wire [2:0]S02_AXI_awprot;
  wire [3:0]S02_AXI_awqos;
  wire [0:0]S02_AXI_awready;
  wire [2:0]S02_AXI_awsize;
  wire [0:0]S02_AXI_awvalid;
  wire [0:0]S02_AXI_bready;
  wire [1:0]S02_AXI_bresp;
  wire [0:0]S02_AXI_bvalid;
  wire [511:0]S02_AXI_rdata;
  wire [0:0]S02_AXI_rlast;
  wire [0:0]S02_AXI_rready;
  wire [1:0]S02_AXI_rresp;
  wire [0:0]S02_AXI_rvalid;
  wire [511:0]S02_AXI_wdata;
  wire [0:0]S02_AXI_wlast;
  wire [0:0]S02_AXI_wready;
  wire [63:0]S02_AXI_wstrb;
  wire [0:0]S02_AXI_wvalid;
  wire [63:0]S03_AXI_araddr;
  wire [1:0]S03_AXI_arburst;
  wire [3:0]S03_AXI_arcache;
  wire [7:0]S03_AXI_arlen;
  wire [0:0]S03_AXI_arlock;
  wire [2:0]S03_AXI_arprot;
  wire [3:0]S03_AXI_arqos;
  wire [0:0]S03_AXI_arready;
  wire [2:0]S03_AXI_arsize;
  wire [0:0]S03_AXI_arvalid;
  wire [63:0]S03_AXI_awaddr;
  wire [1:0]S03_AXI_awburst;
  wire [3:0]S03_AXI_awcache;
  wire [7:0]S03_AXI_awlen;
  wire [0:0]S03_AXI_awlock;
  wire [2:0]S03_AXI_awprot;
  wire [3:0]S03_AXI_awqos;
  wire [0:0]S03_AXI_awready;
  wire [2:0]S03_AXI_awsize;
  wire [0:0]S03_AXI_awvalid;
  wire [0:0]S03_AXI_bready;
  wire [1:0]S03_AXI_bresp;
  wire [0:0]S03_AXI_bvalid;
  wire [31:0]S03_AXI_rdata;
  wire [0:0]S03_AXI_rlast;
  wire [0:0]S03_AXI_rready;
  wire [1:0]S03_AXI_rresp;
  wire [0:0]S03_AXI_rvalid;
  wire [31:0]S03_AXI_wdata;
  wire [0:0]S03_AXI_wlast;
  wire [0:0]S03_AXI_wready;
  wire [3:0]S03_AXI_wstrb;
  wire [0:0]S03_AXI_wvalid;
  wire [63:0]S04_AXI_araddr;
  wire [1:0]S04_AXI_arburst;
  wire [3:0]S04_AXI_arcache;
  wire [7:0]S04_AXI_arlen;
  wire [0:0]S04_AXI_arlock;
  wire [2:0]S04_AXI_arprot;
  wire [3:0]S04_AXI_arqos;
  wire [0:0]S04_AXI_arready;
  wire [2:0]S04_AXI_arsize;
  wire [0:0]S04_AXI_arvalid;
  wire [63:0]S04_AXI_awaddr;
  wire [1:0]S04_AXI_awburst;
  wire [3:0]S04_AXI_awcache;
  wire [7:0]S04_AXI_awlen;
  wire [0:0]S04_AXI_awlock;
  wire [2:0]S04_AXI_awprot;
  wire [3:0]S04_AXI_awqos;
  wire [0:0]S04_AXI_awready;
  wire [2:0]S04_AXI_awsize;
  wire [0:0]S04_AXI_awvalid;
  wire [0:0]S04_AXI_bready;
  wire [1:0]S04_AXI_bresp;
  wire [0:0]S04_AXI_bvalid;
  wire [31:0]S04_AXI_rdata;
  wire [0:0]S04_AXI_rlast;
  wire [0:0]S04_AXI_rready;
  wire [1:0]S04_AXI_rresp;
  wire [0:0]S04_AXI_rvalid;
  wire [31:0]S04_AXI_wdata;
  wire [0:0]S04_AXI_wlast;
  wire [0:0]S04_AXI_wready;
  wire [3:0]S04_AXI_wstrb;
  wire [0:0]S04_AXI_wvalid;
  wire [63:0]S05_AXI_araddr;
  wire [1:0]S05_AXI_arburst;
  wire [3:0]S05_AXI_arcache;
  wire [7:0]S05_AXI_arlen;
  wire [0:0]S05_AXI_arlock;
  wire [2:0]S05_AXI_arprot;
  wire [3:0]S05_AXI_arqos;
  wire [0:0]S05_AXI_arready;
  wire [2:0]S05_AXI_arsize;
  wire [0:0]S05_AXI_arvalid;
  wire [63:0]S05_AXI_awaddr;
  wire [1:0]S05_AXI_awburst;
  wire [3:0]S05_AXI_awcache;
  wire [7:0]S05_AXI_awlen;
  wire [0:0]S05_AXI_awlock;
  wire [2:0]S05_AXI_awprot;
  wire [3:0]S05_AXI_awqos;
  wire [0:0]S05_AXI_awready;
  wire [2:0]S05_AXI_awsize;
  wire [0:0]S05_AXI_awvalid;
  wire [0:0]S05_AXI_bready;
  wire [1:0]S05_AXI_bresp;
  wire [0:0]S05_AXI_bvalid;
  wire [31:0]S05_AXI_rdata;
  wire [0:0]S05_AXI_rlast;
  wire [0:0]S05_AXI_rready;
  wire [1:0]S05_AXI_rresp;
  wire [0:0]S05_AXI_rvalid;
  wire [31:0]S05_AXI_wdata;
  wire [0:0]S05_AXI_wlast;
  wire [0:0]S05_AXI_wready;
  wire [3:0]S05_AXI_wstrb;
  wire [0:0]S05_AXI_wvalid;
  wire [63:0]S06_AXI_araddr;
  wire [1:0]S06_AXI_arburst;
  wire [3:0]S06_AXI_arcache;
  wire [7:0]S06_AXI_arlen;
  wire [0:0]S06_AXI_arlock;
  wire [2:0]S06_AXI_arprot;
  wire [3:0]S06_AXI_arqos;
  wire [0:0]S06_AXI_arready;
  wire [2:0]S06_AXI_arsize;
  wire [0:0]S06_AXI_arvalid;
  wire [63:0]S06_AXI_awaddr;
  wire [1:0]S06_AXI_awburst;
  wire [3:0]S06_AXI_awcache;
  wire [7:0]S06_AXI_awlen;
  wire [0:0]S06_AXI_awlock;
  wire [2:0]S06_AXI_awprot;
  wire [3:0]S06_AXI_awqos;
  wire [0:0]S06_AXI_awready;
  wire [2:0]S06_AXI_awsize;
  wire [0:0]S06_AXI_awvalid;
  wire [0:0]S06_AXI_bready;
  wire [1:0]S06_AXI_bresp;
  wire [0:0]S06_AXI_bvalid;
  wire [63:0]S06_AXI_rdata;
  wire [0:0]S06_AXI_rlast;
  wire [0:0]S06_AXI_rready;
  wire [1:0]S06_AXI_rresp;
  wire [0:0]S06_AXI_rvalid;
  wire [63:0]S06_AXI_wdata;
  wire [0:0]S06_AXI_wlast;
  wire [0:0]S06_AXI_wready;
  wire [7:0]S06_AXI_wstrb;
  wire [0:0]S06_AXI_wvalid;
  wire [22:0]S_AXI_CTRL_araddr;
  wire [0:0]S_AXI_CTRL_arready;
  wire [0:0]S_AXI_CTRL_arvalid;
  wire [22:0]S_AXI_CTRL_awaddr;
  wire [0:0]S_AXI_CTRL_awready;
  wire [0:0]S_AXI_CTRL_awvalid;
  wire [0:0]S_AXI_CTRL_bready;
  wire [1:0]S_AXI_CTRL_bresp;
  wire [0:0]S_AXI_CTRL_bvalid;
  wire [31:0]S_AXI_CTRL_rdata;
  wire [0:0]S_AXI_CTRL_rready;
  wire [1:0]S_AXI_CTRL_rresp;
  wire [0:0]S_AXI_CTRL_rvalid;
  wire [31:0]S_AXI_CTRL_wdata;
  wire [0:0]S_AXI_CTRL_wready;
  wire [0:0]S_AXI_CTRL_wvalid;
  wire aclk;
  wire aclk1;
  wire aresetn;
  wire aresetn1;
  wire [31:0]axi_apb_bridge_inst_APB_M2_PRDATA;
  wire axi_apb_bridge_inst_APB_M2_PREADY;
  wire axi_apb_bridge_inst_APB_M2_PSEL;
  wire axi_apb_bridge_inst_APB_M2_PSLVERR;
  wire [21:0]axi_apb_bridge_inst_APB_M_PADDR;
  wire axi_apb_bridge_inst_APB_M_PENABLE;
  wire [31:0]axi_apb_bridge_inst_APB_M_PRDATA;
  wire axi_apb_bridge_inst_APB_M_PREADY;
  wire axi_apb_bridge_inst_APB_M_PSEL;
  wire axi_apb_bridge_inst_APB_M_PSLVERR;
  wire [31:0]axi_apb_bridge_inst_APB_M_PWDATA;
  wire axi_apb_bridge_inst_APB_M_PWRITE;
  wire ctrl_aclk;
  wire ctrl_aresetn;
  wire hbm_aclk;
  wire hbm_aresetn;
  wire hbm_inst_DRAM_0_STAT_CATTRIP;
  wire hbm_inst_DRAM_1_STAT_CATTRIP;
  wire hbm_inst_apb_complete_0;
  wire hbm_inst_apb_complete_1;
  wire hbm_mc_init_seq_complete;
  wire hbm_ref_clk;
  wire hbm_reset_sync_SLR0_interconnect_aresetn;
  wire hbm_reset_sync_SLR2_interconnect_aresetn;
  wire [32:0]slice0_23_M_AXI_ARADDR;
  wire [1:0]slice0_23_M_AXI_ARBURST;
  wire [3:0]slice0_23_M_AXI_ARCACHE;
  wire [3:0]slice0_23_M_AXI_ARLEN;
  wire [1:0]slice0_23_M_AXI_ARLOCK;
  wire [2:0]slice0_23_M_AXI_ARPROT;
  wire [3:0]slice0_23_M_AXI_ARQOS;
  wire slice0_23_M_AXI_ARREADY;
  wire slice0_23_M_AXI_ARVALID;
  wire [32:0]slice0_23_M_AXI_AWADDR;
  wire [1:0]slice0_23_M_AXI_AWBURST;
  wire [3:0]slice0_23_M_AXI_AWCACHE;
  wire [3:0]slice0_23_M_AXI_AWLEN;
  wire [1:0]slice0_23_M_AXI_AWLOCK;
  wire [2:0]slice0_23_M_AXI_AWPROT;
  wire [3:0]slice0_23_M_AXI_AWQOS;
  wire slice0_23_M_AXI_AWREADY;
  wire slice0_23_M_AXI_AWVALID;
  wire slice0_23_M_AXI_BREADY;
  wire [1:0]slice0_23_M_AXI_BRESP;
  wire slice0_23_M_AXI_BVALID;
  wire [255:0]slice0_23_M_AXI_RDATA;
  wire slice0_23_M_AXI_RLAST;
  wire slice0_23_M_AXI_RREADY;
  wire [1:0]slice0_23_M_AXI_RRESP;
  wire slice0_23_M_AXI_RVALID;
  wire [255:0]slice0_23_M_AXI_WDATA;
  wire slice0_23_M_AXI_WLAST;
  wire slice0_23_M_AXI_WREADY;
  wire [31:0]slice0_23_M_AXI_WSTRB;
  wire slice0_23_M_AXI_WVALID;
  wire [32:0]slice1_20_M_AXI_ARADDR;
  wire [1:0]slice1_20_M_AXI_ARBURST;
  wire [3:0]slice1_20_M_AXI_ARCACHE;
  wire [3:0]slice1_20_M_AXI_ARLEN;
  wire [1:0]slice1_20_M_AXI_ARLOCK;
  wire [2:0]slice1_20_M_AXI_ARPROT;
  wire [3:0]slice1_20_M_AXI_ARQOS;
  wire slice1_20_M_AXI_ARREADY;
  wire slice1_20_M_AXI_ARVALID;
  wire [32:0]slice1_20_M_AXI_AWADDR;
  wire [1:0]slice1_20_M_AXI_AWBURST;
  wire [3:0]slice1_20_M_AXI_AWCACHE;
  wire [3:0]slice1_20_M_AXI_AWLEN;
  wire [1:0]slice1_20_M_AXI_AWLOCK;
  wire [2:0]slice1_20_M_AXI_AWPROT;
  wire [3:0]slice1_20_M_AXI_AWQOS;
  wire slice1_20_M_AXI_AWREADY;
  wire slice1_20_M_AXI_AWVALID;
  wire slice1_20_M_AXI_BREADY;
  wire [1:0]slice1_20_M_AXI_BRESP;
  wire slice1_20_M_AXI_BVALID;
  wire [255:0]slice1_20_M_AXI_RDATA;
  wire slice1_20_M_AXI_RLAST;
  wire slice1_20_M_AXI_RREADY;
  wire [1:0]slice1_20_M_AXI_RRESP;
  wire slice1_20_M_AXI_RVALID;
  wire [255:0]slice1_20_M_AXI_WDATA;
  wire slice1_20_M_AXI_WLAST;
  wire slice1_20_M_AXI_WREADY;
  wire [31:0]slice1_20_M_AXI_WSTRB;
  wire slice1_20_M_AXI_WVALID;
  wire [32:0]slice2_21_M_AXI_ARADDR;
  wire [1:0]slice2_21_M_AXI_ARBURST;
  wire [3:0]slice2_21_M_AXI_ARCACHE;
  wire [3:0]slice2_21_M_AXI_ARLEN;
  wire [1:0]slice2_21_M_AXI_ARLOCK;
  wire [2:0]slice2_21_M_AXI_ARPROT;
  wire [3:0]slice2_21_M_AXI_ARQOS;
  wire slice2_21_M_AXI_ARREADY;
  wire slice2_21_M_AXI_ARVALID;
  wire [32:0]slice2_21_M_AXI_AWADDR;
  wire [1:0]slice2_21_M_AXI_AWBURST;
  wire [3:0]slice2_21_M_AXI_AWCACHE;
  wire [3:0]slice2_21_M_AXI_AWLEN;
  wire [1:0]slice2_21_M_AXI_AWLOCK;
  wire [2:0]slice2_21_M_AXI_AWPROT;
  wire [3:0]slice2_21_M_AXI_AWQOS;
  wire slice2_21_M_AXI_AWREADY;
  wire slice2_21_M_AXI_AWVALID;
  wire slice2_21_M_AXI_BREADY;
  wire [1:0]slice2_21_M_AXI_BRESP;
  wire slice2_21_M_AXI_BVALID;
  wire [255:0]slice2_21_M_AXI_RDATA;
  wire slice2_21_M_AXI_RLAST;
  wire slice2_21_M_AXI_RREADY;
  wire [1:0]slice2_21_M_AXI_RRESP;
  wire slice2_21_M_AXI_RVALID;
  wire [255:0]slice2_21_M_AXI_WDATA;
  wire slice2_21_M_AXI_WLAST;
  wire slice2_21_M_AXI_WREADY;
  wire [31:0]slice2_21_M_AXI_WSTRB;
  wire slice2_21_M_AXI_WVALID;
  wire [32:0]slice3_22_M_AXI_ARADDR;
  wire [1:0]slice3_22_M_AXI_ARBURST;
  wire [3:0]slice3_22_M_AXI_ARCACHE;
  wire [3:0]slice3_22_M_AXI_ARLEN;
  wire [1:0]slice3_22_M_AXI_ARLOCK;
  wire [2:0]slice3_22_M_AXI_ARPROT;
  wire [3:0]slice3_22_M_AXI_ARQOS;
  wire slice3_22_M_AXI_ARREADY;
  wire slice3_22_M_AXI_ARVALID;
  wire [32:0]slice3_22_M_AXI_AWADDR;
  wire [1:0]slice3_22_M_AXI_AWBURST;
  wire [3:0]slice3_22_M_AXI_AWCACHE;
  wire [3:0]slice3_22_M_AXI_AWLEN;
  wire [1:0]slice3_22_M_AXI_AWLOCK;
  wire [2:0]slice3_22_M_AXI_AWPROT;
  wire [3:0]slice3_22_M_AXI_AWQOS;
  wire slice3_22_M_AXI_AWREADY;
  wire slice3_22_M_AXI_AWVALID;
  wire slice3_22_M_AXI_BREADY;
  wire [1:0]slice3_22_M_AXI_BRESP;
  wire slice3_22_M_AXI_BVALID;
  wire [255:0]slice3_22_M_AXI_RDATA;
  wire slice3_22_M_AXI_RLAST;
  wire slice3_22_M_AXI_RREADY;
  wire [1:0]slice3_22_M_AXI_RRESP;
  wire slice3_22_M_AXI_RVALID;
  wire [255:0]slice3_22_M_AXI_WDATA;
  wire slice3_22_M_AXI_WLAST;
  wire slice3_22_M_AXI_WREADY;
  wire [31:0]slice3_22_M_AXI_WSTRB;
  wire slice3_22_M_AXI_WVALID;
  wire [32:0]slice4_24_M_AXI_ARADDR;
  wire [1:0]slice4_24_M_AXI_ARBURST;
  wire [3:0]slice4_24_M_AXI_ARCACHE;
  wire [3:0]slice4_24_M_AXI_ARLEN;
  wire [1:0]slice4_24_M_AXI_ARLOCK;
  wire [2:0]slice4_24_M_AXI_ARPROT;
  wire [3:0]slice4_24_M_AXI_ARQOS;
  wire slice4_24_M_AXI_ARREADY;
  wire slice4_24_M_AXI_ARVALID;
  wire [32:0]slice4_24_M_AXI_AWADDR;
  wire [1:0]slice4_24_M_AXI_AWBURST;
  wire [3:0]slice4_24_M_AXI_AWCACHE;
  wire [3:0]slice4_24_M_AXI_AWLEN;
  wire [1:0]slice4_24_M_AXI_AWLOCK;
  wire [2:0]slice4_24_M_AXI_AWPROT;
  wire [3:0]slice4_24_M_AXI_AWQOS;
  wire slice4_24_M_AXI_AWREADY;
  wire slice4_24_M_AXI_AWVALID;
  wire slice4_24_M_AXI_BREADY;
  wire [1:0]slice4_24_M_AXI_BRESP;
  wire slice4_24_M_AXI_BVALID;
  wire [255:0]slice4_24_M_AXI_RDATA;
  wire slice4_24_M_AXI_RLAST;
  wire slice4_24_M_AXI_RREADY;
  wire [1:0]slice4_24_M_AXI_RRESP;
  wire slice4_24_M_AXI_RVALID;
  wire [255:0]slice4_24_M_AXI_WDATA;
  wire slice4_24_M_AXI_WLAST;
  wire slice4_24_M_AXI_WREADY;
  wire [31:0]slice4_24_M_AXI_WSTRB;
  wire slice4_24_M_AXI_WVALID;
  wire [32:0]slice5_25_M_AXI_ARADDR;
  wire [1:0]slice5_25_M_AXI_ARBURST;
  wire [3:0]slice5_25_M_AXI_ARCACHE;
  wire [3:0]slice5_25_M_AXI_ARLEN;
  wire [1:0]slice5_25_M_AXI_ARLOCK;
  wire [2:0]slice5_25_M_AXI_ARPROT;
  wire [3:0]slice5_25_M_AXI_ARQOS;
  wire slice5_25_M_AXI_ARREADY;
  wire slice5_25_M_AXI_ARVALID;
  wire [32:0]slice5_25_M_AXI_AWADDR;
  wire [1:0]slice5_25_M_AXI_AWBURST;
  wire [3:0]slice5_25_M_AXI_AWCACHE;
  wire [3:0]slice5_25_M_AXI_AWLEN;
  wire [1:0]slice5_25_M_AXI_AWLOCK;
  wire [2:0]slice5_25_M_AXI_AWPROT;
  wire [3:0]slice5_25_M_AXI_AWQOS;
  wire slice5_25_M_AXI_AWREADY;
  wire slice5_25_M_AXI_AWVALID;
  wire slice5_25_M_AXI_BREADY;
  wire [1:0]slice5_25_M_AXI_BRESP;
  wire slice5_25_M_AXI_BVALID;
  wire [255:0]slice5_25_M_AXI_RDATA;
  wire slice5_25_M_AXI_RLAST;
  wire slice5_25_M_AXI_RREADY;
  wire [1:0]slice5_25_M_AXI_RRESP;
  wire slice5_25_M_AXI_RVALID;
  wire [255:0]slice5_25_M_AXI_WDATA;
  wire slice5_25_M_AXI_WLAST;
  wire slice5_25_M_AXI_WREADY;
  wire [31:0]slice5_25_M_AXI_WSTRB;
  wire slice5_25_M_AXI_WVALID;
  wire [32:0]slice6_26_M_AXI_ARADDR;
  wire [1:0]slice6_26_M_AXI_ARBURST;
  wire [3:0]slice6_26_M_AXI_ARCACHE;
  wire [3:0]slice6_26_M_AXI_ARLEN;
  wire [1:0]slice6_26_M_AXI_ARLOCK;
  wire [2:0]slice6_26_M_AXI_ARPROT;
  wire [3:0]slice6_26_M_AXI_ARQOS;
  wire slice6_26_M_AXI_ARREADY;
  wire slice6_26_M_AXI_ARVALID;
  wire [32:0]slice6_26_M_AXI_AWADDR;
  wire [1:0]slice6_26_M_AXI_AWBURST;
  wire [3:0]slice6_26_M_AXI_AWCACHE;
  wire [3:0]slice6_26_M_AXI_AWLEN;
  wire [1:0]slice6_26_M_AXI_AWLOCK;
  wire [2:0]slice6_26_M_AXI_AWPROT;
  wire [3:0]slice6_26_M_AXI_AWQOS;
  wire slice6_26_M_AXI_AWREADY;
  wire slice6_26_M_AXI_AWVALID;
  wire slice6_26_M_AXI_BREADY;
  wire [1:0]slice6_26_M_AXI_BRESP;
  wire slice6_26_M_AXI_BVALID;
  wire [255:0]slice6_26_M_AXI_RDATA;
  wire slice6_26_M_AXI_RLAST;
  wire slice6_26_M_AXI_RREADY;
  wire [1:0]slice6_26_M_AXI_RRESP;
  wire slice6_26_M_AXI_RVALID;
  wire [255:0]slice6_26_M_AXI_WDATA;
  wire slice6_26_M_AXI_WLAST;
  wire slice6_26_M_AXI_WREADY;
  wire [31:0]slice6_26_M_AXI_WSTRB;
  wire slice6_26_M_AXI_WVALID;
  wire [32:0]vip_S00_M_AXI_ARADDR;
  wire [1:0]vip_S00_M_AXI_ARBURST;
  wire [3:0]vip_S00_M_AXI_ARLEN;
  wire vip_S00_M_AXI_ARREADY;
  wire vip_S00_M_AXI_ARVALID;
  wire [32:0]vip_S00_M_AXI_AWADDR;
  wire [1:0]vip_S00_M_AXI_AWBURST;
  wire [3:0]vip_S00_M_AXI_AWLEN;
  wire vip_S00_M_AXI_AWREADY;
  wire vip_S00_M_AXI_AWVALID;
  wire vip_S00_M_AXI_BREADY;
  wire [1:0]vip_S00_M_AXI_BRESP;
  wire vip_S00_M_AXI_BVALID;
  wire [255:0]vip_S00_M_AXI_RDATA;
  wire vip_S00_M_AXI_RLAST;
  wire vip_S00_M_AXI_RREADY;
  wire [1:0]vip_S00_M_AXI_RRESP;
  wire vip_S00_M_AXI_RVALID;
  wire [255:0]vip_S00_M_AXI_WDATA;
  wire vip_S00_M_AXI_WLAST;
  wire vip_S00_M_AXI_WREADY;
  wire [31:0]vip_S00_M_AXI_WSTRB;
  wire vip_S00_M_AXI_WVALID;
  wire [32:0]vip_S01_M_AXI_ARADDR;
  wire [1:0]vip_S01_M_AXI_ARBURST;
  wire [3:0]vip_S01_M_AXI_ARLEN;
  wire vip_S01_M_AXI_ARREADY;
  wire vip_S01_M_AXI_ARVALID;
  wire [32:0]vip_S01_M_AXI_AWADDR;
  wire [1:0]vip_S01_M_AXI_AWBURST;
  wire [3:0]vip_S01_M_AXI_AWLEN;
  wire vip_S01_M_AXI_AWREADY;
  wire vip_S01_M_AXI_AWVALID;
  wire vip_S01_M_AXI_BREADY;
  wire [1:0]vip_S01_M_AXI_BRESP;
  wire vip_S01_M_AXI_BVALID;
  wire [255:0]vip_S01_M_AXI_RDATA;
  wire vip_S01_M_AXI_RLAST;
  wire vip_S01_M_AXI_RREADY;
  wire [1:0]vip_S01_M_AXI_RRESP;
  wire vip_S01_M_AXI_RVALID;
  wire [255:0]vip_S01_M_AXI_WDATA;
  wire vip_S01_M_AXI_WLAST;
  wire vip_S01_M_AXI_WREADY;
  wire [31:0]vip_S01_M_AXI_WSTRB;
  wire vip_S01_M_AXI_WVALID;
  wire [32:0]vip_S02_M_AXI_ARADDR;
  wire [1:0]vip_S02_M_AXI_ARBURST;
  wire [3:0]vip_S02_M_AXI_ARLEN;
  wire vip_S02_M_AXI_ARREADY;
  wire vip_S02_M_AXI_ARVALID;
  wire [32:0]vip_S02_M_AXI_AWADDR;
  wire [1:0]vip_S02_M_AXI_AWBURST;
  wire [3:0]vip_S02_M_AXI_AWLEN;
  wire vip_S02_M_AXI_AWREADY;
  wire vip_S02_M_AXI_AWVALID;
  wire vip_S02_M_AXI_BREADY;
  wire [1:0]vip_S02_M_AXI_BRESP;
  wire vip_S02_M_AXI_BVALID;
  wire [255:0]vip_S02_M_AXI_RDATA;
  wire vip_S02_M_AXI_RLAST;
  wire vip_S02_M_AXI_RREADY;
  wire [1:0]vip_S02_M_AXI_RRESP;
  wire vip_S02_M_AXI_RVALID;
  wire [255:0]vip_S02_M_AXI_WDATA;
  wire vip_S02_M_AXI_WLAST;
  wire vip_S02_M_AXI_WREADY;
  wire [31:0]vip_S02_M_AXI_WSTRB;
  wire vip_S02_M_AXI_WVALID;
  wire [32:0]vip_S03_M_AXI_ARADDR;
  wire [1:0]vip_S03_M_AXI_ARBURST;
  wire [3:0]vip_S03_M_AXI_ARLEN;
  wire vip_S03_M_AXI_ARREADY;
  wire vip_S03_M_AXI_ARVALID;
  wire [32:0]vip_S03_M_AXI_AWADDR;
  wire [1:0]vip_S03_M_AXI_AWBURST;
  wire [3:0]vip_S03_M_AXI_AWLEN;
  wire vip_S03_M_AXI_AWREADY;
  wire vip_S03_M_AXI_AWVALID;
  wire vip_S03_M_AXI_BREADY;
  wire [1:0]vip_S03_M_AXI_BRESP;
  wire vip_S03_M_AXI_BVALID;
  wire [255:0]vip_S03_M_AXI_RDATA;
  wire vip_S03_M_AXI_RLAST;
  wire vip_S03_M_AXI_RREADY;
  wire [1:0]vip_S03_M_AXI_RRESP;
  wire vip_S03_M_AXI_RVALID;
  wire [255:0]vip_S03_M_AXI_WDATA;
  wire vip_S03_M_AXI_WLAST;
  wire vip_S03_M_AXI_WREADY;
  wire [31:0]vip_S03_M_AXI_WSTRB;
  wire vip_S03_M_AXI_WVALID;
  wire [32:0]vip_S04_M_AXI_ARADDR;
  wire [1:0]vip_S04_M_AXI_ARBURST;
  wire [3:0]vip_S04_M_AXI_ARLEN;
  wire vip_S04_M_AXI_ARREADY;
  wire vip_S04_M_AXI_ARVALID;
  wire [32:0]vip_S04_M_AXI_AWADDR;
  wire [1:0]vip_S04_M_AXI_AWBURST;
  wire [3:0]vip_S04_M_AXI_AWLEN;
  wire vip_S04_M_AXI_AWREADY;
  wire vip_S04_M_AXI_AWVALID;
  wire vip_S04_M_AXI_BREADY;
  wire [1:0]vip_S04_M_AXI_BRESP;
  wire vip_S04_M_AXI_BVALID;
  wire [255:0]vip_S04_M_AXI_RDATA;
  wire vip_S04_M_AXI_RLAST;
  wire vip_S04_M_AXI_RREADY;
  wire [1:0]vip_S04_M_AXI_RRESP;
  wire vip_S04_M_AXI_RVALID;
  wire [255:0]vip_S04_M_AXI_WDATA;
  wire vip_S04_M_AXI_WLAST;
  wire vip_S04_M_AXI_WREADY;
  wire [31:0]vip_S04_M_AXI_WSTRB;
  wire vip_S04_M_AXI_WVALID;
  wire [32:0]vip_S05_M_AXI_ARADDR;
  wire [1:0]vip_S05_M_AXI_ARBURST;
  wire [3:0]vip_S05_M_AXI_ARLEN;
  wire vip_S05_M_AXI_ARREADY;
  wire vip_S05_M_AXI_ARVALID;
  wire [32:0]vip_S05_M_AXI_AWADDR;
  wire [1:0]vip_S05_M_AXI_AWBURST;
  wire [3:0]vip_S05_M_AXI_AWLEN;
  wire vip_S05_M_AXI_AWREADY;
  wire vip_S05_M_AXI_AWVALID;
  wire vip_S05_M_AXI_BREADY;
  wire [1:0]vip_S05_M_AXI_BRESP;
  wire vip_S05_M_AXI_BVALID;
  wire [255:0]vip_S05_M_AXI_RDATA;
  wire vip_S05_M_AXI_RLAST;
  wire vip_S05_M_AXI_RREADY;
  wire [1:0]vip_S05_M_AXI_RRESP;
  wire vip_S05_M_AXI_RVALID;
  wire [255:0]vip_S05_M_AXI_WDATA;
  wire vip_S05_M_AXI_WLAST;
  wire vip_S05_M_AXI_WREADY;
  wire [31:0]vip_S05_M_AXI_WSTRB;
  wire vip_S05_M_AXI_WVALID;
  wire [32:0]vip_S06_M_AXI_ARADDR;
  wire [1:0]vip_S06_M_AXI_ARBURST;
  wire [3:0]vip_S06_M_AXI_ARLEN;
  wire vip_S06_M_AXI_ARREADY;
  wire vip_S06_M_AXI_ARVALID;
  wire [32:0]vip_S06_M_AXI_AWADDR;
  wire [1:0]vip_S06_M_AXI_AWBURST;
  wire [3:0]vip_S06_M_AXI_AWLEN;
  wire vip_S06_M_AXI_AWREADY;
  wire vip_S06_M_AXI_AWVALID;
  wire vip_S06_M_AXI_BREADY;
  wire [1:0]vip_S06_M_AXI_BRESP;
  wire vip_S06_M_AXI_BVALID;
  wire [255:0]vip_S06_M_AXI_RDATA;
  wire vip_S06_M_AXI_RLAST;
  wire vip_S06_M_AXI_RREADY;
  wire [1:0]vip_S06_M_AXI_RRESP;
  wire vip_S06_M_AXI_RVALID;
  wire [255:0]vip_S06_M_AXI_WDATA;
  wire vip_S06_M_AXI_WLAST;
  wire vip_S06_M_AXI_WREADY;
  wire [31:0]vip_S06_M_AXI_WSTRB;
  wire vip_S06_M_AXI_WVALID;
  wire [22:22]NLW_axi_apb_bridge_inst_m_apb_paddr_UNCONNECTED;
  wire [5:0]NLW_hbm_inst_AXI_20_BID_UNCONNECTED;
  wire [31:0]NLW_hbm_inst_AXI_20_RDATA_PARITY_UNCONNECTED;
  wire [5:0]NLW_hbm_inst_AXI_20_RID_UNCONNECTED;
  wire [5:0]NLW_hbm_inst_AXI_21_BID_UNCONNECTED;
  wire [31:0]NLW_hbm_inst_AXI_21_RDATA_PARITY_UNCONNECTED;
  wire [5:0]NLW_hbm_inst_AXI_21_RID_UNCONNECTED;
  wire [5:0]NLW_hbm_inst_AXI_22_BID_UNCONNECTED;
  wire [31:0]NLW_hbm_inst_AXI_22_RDATA_PARITY_UNCONNECTED;
  wire [5:0]NLW_hbm_inst_AXI_22_RID_UNCONNECTED;
  wire [5:0]NLW_hbm_inst_AXI_23_BID_UNCONNECTED;
  wire [31:0]NLW_hbm_inst_AXI_23_RDATA_PARITY_UNCONNECTED;
  wire [5:0]NLW_hbm_inst_AXI_23_RID_UNCONNECTED;
  wire [5:0]NLW_hbm_inst_AXI_24_BID_UNCONNECTED;
  wire [31:0]NLW_hbm_inst_AXI_24_RDATA_PARITY_UNCONNECTED;
  wire [5:0]NLW_hbm_inst_AXI_24_RID_UNCONNECTED;
  wire [5:0]NLW_hbm_inst_AXI_25_BID_UNCONNECTED;
  wire [31:0]NLW_hbm_inst_AXI_25_RDATA_PARITY_UNCONNECTED;
  wire [5:0]NLW_hbm_inst_AXI_25_RID_UNCONNECTED;
  wire [5:0]NLW_hbm_inst_AXI_26_BID_UNCONNECTED;
  wire [31:0]NLW_hbm_inst_AXI_26_RDATA_PARITY_UNCONNECTED;
  wire [5:0]NLW_hbm_inst_AXI_26_RID_UNCONNECTED;
  wire NLW_hbm_reset_sync_SLR0_mb_reset_UNCONNECTED;
  wire [0:0]NLW_hbm_reset_sync_SLR0_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_hbm_reset_sync_SLR0_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_hbm_reset_sync_SLR0_peripheral_reset_UNCONNECTED;
  wire NLW_hbm_reset_sync_SLR2_mb_reset_UNCONNECTED;
  wire [0:0]NLW_hbm_reset_sync_SLR2_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_hbm_reset_sync_SLR2_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_hbm_reset_sync_SLR2_peripheral_reset_UNCONNECTED;
  wire [3:0]NLW_vip_S00_m_axi_arcache_UNCONNECTED;
  wire [1:0]NLW_vip_S00_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_vip_S00_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_vip_S00_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_vip_S00_m_axi_awcache_UNCONNECTED;
  wire [1:0]NLW_vip_S00_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_vip_S00_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_vip_S00_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_vip_S01_m_axi_arcache_UNCONNECTED;
  wire [1:0]NLW_vip_S01_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_vip_S01_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_vip_S01_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_vip_S01_m_axi_awcache_UNCONNECTED;
  wire [1:0]NLW_vip_S01_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_vip_S01_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_vip_S01_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_vip_S02_m_axi_arcache_UNCONNECTED;
  wire [1:0]NLW_vip_S02_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_vip_S02_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_vip_S02_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_vip_S02_m_axi_awcache_UNCONNECTED;
  wire [1:0]NLW_vip_S02_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_vip_S02_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_vip_S02_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_vip_S03_m_axi_arcache_UNCONNECTED;
  wire [1:0]NLW_vip_S03_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_vip_S03_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_vip_S03_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_vip_S03_m_axi_awcache_UNCONNECTED;
  wire [1:0]NLW_vip_S03_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_vip_S03_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_vip_S03_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_vip_S04_m_axi_arcache_UNCONNECTED;
  wire [1:0]NLW_vip_S04_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_vip_S04_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_vip_S04_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_vip_S04_m_axi_awcache_UNCONNECTED;
  wire [1:0]NLW_vip_S04_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_vip_S04_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_vip_S04_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_vip_S05_m_axi_arcache_UNCONNECTED;
  wire [1:0]NLW_vip_S05_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_vip_S05_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_vip_S05_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_vip_S05_m_axi_awcache_UNCONNECTED;
  wire [1:0]NLW_vip_S05_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_vip_S05_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_vip_S05_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_vip_S06_m_axi_arcache_UNCONNECTED;
  wire [1:0]NLW_vip_S06_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_vip_S06_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_vip_S06_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_vip_S06_m_axi_awcache_UNCONNECTED;
  wire [1:0]NLW_vip_S06_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_vip_S06_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_vip_S06_m_axi_awqos_UNCONNECTED;

  (* X_CORE_INFO = "axi_apb_bridge,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_axi_apb_bridge_inst_0 axi_apb_bridge_inst
       (.m_apb_paddr({NLW_axi_apb_bridge_inst_m_apb_paddr_UNCONNECTED[22],axi_apb_bridge_inst_APB_M_PADDR}),
        .m_apb_penable(axi_apb_bridge_inst_APB_M_PENABLE),
        .m_apb_prdata(axi_apb_bridge_inst_APB_M_PRDATA),
        .m_apb_prdata2(axi_apb_bridge_inst_APB_M2_PRDATA),
        .m_apb_pready({axi_apb_bridge_inst_APB_M2_PREADY,axi_apb_bridge_inst_APB_M_PREADY}),
        .m_apb_psel({axi_apb_bridge_inst_APB_M2_PSEL,axi_apb_bridge_inst_APB_M_PSEL}),
        .m_apb_pslverr({axi_apb_bridge_inst_APB_M2_PSLVERR,axi_apb_bridge_inst_APB_M_PSLVERR}),
        .m_apb_pwdata(axi_apb_bridge_inst_APB_M_PWDATA),
        .m_apb_pwrite(axi_apb_bridge_inst_APB_M_PWRITE),
        .s_axi_aclk(ctrl_aclk),
        .s_axi_araddr(S_AXI_CTRL_araddr),
        .s_axi_aresetn(ctrl_aresetn),
        .s_axi_arready(S_AXI_CTRL_arready),
        .s_axi_arvalid(S_AXI_CTRL_arvalid),
        .s_axi_awaddr(S_AXI_CTRL_awaddr),
        .s_axi_awready(S_AXI_CTRL_awready),
        .s_axi_awvalid(S_AXI_CTRL_awvalid),
        .s_axi_bready(S_AXI_CTRL_bready),
        .s_axi_bresp(S_AXI_CTRL_bresp),
        .s_axi_bvalid(S_AXI_CTRL_bvalid),
        .s_axi_rdata(S_AXI_CTRL_rdata),
        .s_axi_rready(S_AXI_CTRL_rready),
        .s_axi_rresp(S_AXI_CTRL_rresp),
        .s_axi_rvalid(S_AXI_CTRL_rvalid),
        .s_axi_wdata(S_AXI_CTRL_wdata),
        .s_axi_wready(S_AXI_CTRL_wready),
        .s_axi_wvalid(S_AXI_CTRL_wvalid));
  (* X_CORE_INFO = "hbm_v1_0_9,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_hbm_inst_0 hbm_inst
       (.APB_0_PADDR(axi_apb_bridge_inst_APB_M_PADDR),
        .APB_0_PCLK(ctrl_aclk),
        .APB_0_PENABLE(axi_apb_bridge_inst_APB_M_PENABLE),
        .APB_0_PRDATA(axi_apb_bridge_inst_APB_M_PRDATA),
        .APB_0_PREADY(axi_apb_bridge_inst_APB_M_PREADY),
        .APB_0_PRESET_N(ctrl_aresetn),
        .APB_0_PSEL(axi_apb_bridge_inst_APB_M_PSEL),
        .APB_0_PSLVERR(axi_apb_bridge_inst_APB_M_PSLVERR),
        .APB_0_PWDATA(axi_apb_bridge_inst_APB_M_PWDATA),
        .APB_0_PWRITE(axi_apb_bridge_inst_APB_M_PWRITE),
        .APB_1_PADDR(axi_apb_bridge_inst_APB_M_PADDR),
        .APB_1_PCLK(ctrl_aclk),
        .APB_1_PENABLE(axi_apb_bridge_inst_APB_M_PENABLE),
        .APB_1_PRDATA(axi_apb_bridge_inst_APB_M2_PRDATA),
        .APB_1_PREADY(axi_apb_bridge_inst_APB_M2_PREADY),
        .APB_1_PRESET_N(ctrl_aresetn),
        .APB_1_PSEL(axi_apb_bridge_inst_APB_M2_PSEL),
        .APB_1_PSLVERR(axi_apb_bridge_inst_APB_M2_PSLVERR),
        .APB_1_PWDATA(axi_apb_bridge_inst_APB_M_PWDATA),
        .APB_1_PWRITE(axi_apb_bridge_inst_APB_M_PWRITE),
        .AXI_20_ACLK(hbm_aclk),
        .AXI_20_ARADDR(vip_S01_M_AXI_ARADDR),
        .AXI_20_ARBURST(vip_S01_M_AXI_ARBURST),
        .AXI_20_ARESET_N(hbm_reset_sync_SLR0_interconnect_aresetn),
        .AXI_20_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_20_ARLEN(vip_S01_M_AXI_ARLEN),
        .AXI_20_ARREADY(vip_S01_M_AXI_ARREADY),
        .AXI_20_ARSIZE({1'b1,1'b0,1'b1}),
        .AXI_20_ARVALID(vip_S01_M_AXI_ARVALID),
        .AXI_20_AWADDR(vip_S01_M_AXI_AWADDR),
        .AXI_20_AWBURST(vip_S01_M_AXI_AWBURST),
        .AXI_20_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_20_AWLEN(vip_S01_M_AXI_AWLEN),
        .AXI_20_AWREADY(vip_S01_M_AXI_AWREADY),
        .AXI_20_AWSIZE({1'b1,1'b0,1'b1}),
        .AXI_20_AWVALID(vip_S01_M_AXI_AWVALID),
        .AXI_20_BID(NLW_hbm_inst_AXI_20_BID_UNCONNECTED[5:0]),
        .AXI_20_BREADY(vip_S01_M_AXI_BREADY),
        .AXI_20_BRESP(vip_S01_M_AXI_BRESP),
        .AXI_20_BVALID(vip_S01_M_AXI_BVALID),
        .AXI_20_RDATA(vip_S01_M_AXI_RDATA),
        .AXI_20_RDATA_PARITY(NLW_hbm_inst_AXI_20_RDATA_PARITY_UNCONNECTED[31:0]),
        .AXI_20_RID(NLW_hbm_inst_AXI_20_RID_UNCONNECTED[5:0]),
        .AXI_20_RLAST(vip_S01_M_AXI_RLAST),
        .AXI_20_RREADY(vip_S01_M_AXI_RREADY),
        .AXI_20_RRESP(vip_S01_M_AXI_RRESP),
        .AXI_20_RVALID(vip_S01_M_AXI_RVALID),
        .AXI_20_WDATA(vip_S01_M_AXI_WDATA),
        .AXI_20_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_20_WLAST(vip_S01_M_AXI_WLAST),
        .AXI_20_WREADY(vip_S01_M_AXI_WREADY),
        .AXI_20_WSTRB(vip_S01_M_AXI_WSTRB),
        .AXI_20_WVALID(vip_S01_M_AXI_WVALID),
        .AXI_21_ACLK(hbm_aclk),
        .AXI_21_ARADDR(vip_S02_M_AXI_ARADDR),
        .AXI_21_ARBURST(vip_S02_M_AXI_ARBURST),
        .AXI_21_ARESET_N(hbm_reset_sync_SLR0_interconnect_aresetn),
        .AXI_21_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_21_ARLEN(vip_S02_M_AXI_ARLEN),
        .AXI_21_ARREADY(vip_S02_M_AXI_ARREADY),
        .AXI_21_ARSIZE({1'b1,1'b0,1'b1}),
        .AXI_21_ARVALID(vip_S02_M_AXI_ARVALID),
        .AXI_21_AWADDR(vip_S02_M_AXI_AWADDR),
        .AXI_21_AWBURST(vip_S02_M_AXI_AWBURST),
        .AXI_21_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_21_AWLEN(vip_S02_M_AXI_AWLEN),
        .AXI_21_AWREADY(vip_S02_M_AXI_AWREADY),
        .AXI_21_AWSIZE({1'b1,1'b0,1'b1}),
        .AXI_21_AWVALID(vip_S02_M_AXI_AWVALID),
        .AXI_21_BID(NLW_hbm_inst_AXI_21_BID_UNCONNECTED[5:0]),
        .AXI_21_BREADY(vip_S02_M_AXI_BREADY),
        .AXI_21_BRESP(vip_S02_M_AXI_BRESP),
        .AXI_21_BVALID(vip_S02_M_AXI_BVALID),
        .AXI_21_RDATA(vip_S02_M_AXI_RDATA),
        .AXI_21_RDATA_PARITY(NLW_hbm_inst_AXI_21_RDATA_PARITY_UNCONNECTED[31:0]),
        .AXI_21_RID(NLW_hbm_inst_AXI_21_RID_UNCONNECTED[5:0]),
        .AXI_21_RLAST(vip_S02_M_AXI_RLAST),
        .AXI_21_RREADY(vip_S02_M_AXI_RREADY),
        .AXI_21_RRESP(vip_S02_M_AXI_RRESP),
        .AXI_21_RVALID(vip_S02_M_AXI_RVALID),
        .AXI_21_WDATA(vip_S02_M_AXI_WDATA),
        .AXI_21_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_21_WLAST(vip_S02_M_AXI_WLAST),
        .AXI_21_WREADY(vip_S02_M_AXI_WREADY),
        .AXI_21_WSTRB(vip_S02_M_AXI_WSTRB),
        .AXI_21_WVALID(vip_S02_M_AXI_WVALID),
        .AXI_22_ACLK(hbm_aclk),
        .AXI_22_ARADDR(vip_S03_M_AXI_ARADDR),
        .AXI_22_ARBURST(vip_S03_M_AXI_ARBURST),
        .AXI_22_ARESET_N(hbm_reset_sync_SLR0_interconnect_aresetn),
        .AXI_22_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_22_ARLEN(vip_S03_M_AXI_ARLEN),
        .AXI_22_ARREADY(vip_S03_M_AXI_ARREADY),
        .AXI_22_ARSIZE({1'b1,1'b0,1'b1}),
        .AXI_22_ARVALID(vip_S03_M_AXI_ARVALID),
        .AXI_22_AWADDR(vip_S03_M_AXI_AWADDR),
        .AXI_22_AWBURST(vip_S03_M_AXI_AWBURST),
        .AXI_22_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_22_AWLEN(vip_S03_M_AXI_AWLEN),
        .AXI_22_AWREADY(vip_S03_M_AXI_AWREADY),
        .AXI_22_AWSIZE({1'b1,1'b0,1'b1}),
        .AXI_22_AWVALID(vip_S03_M_AXI_AWVALID),
        .AXI_22_BID(NLW_hbm_inst_AXI_22_BID_UNCONNECTED[5:0]),
        .AXI_22_BREADY(vip_S03_M_AXI_BREADY),
        .AXI_22_BRESP(vip_S03_M_AXI_BRESP),
        .AXI_22_BVALID(vip_S03_M_AXI_BVALID),
        .AXI_22_RDATA(vip_S03_M_AXI_RDATA),
        .AXI_22_RDATA_PARITY(NLW_hbm_inst_AXI_22_RDATA_PARITY_UNCONNECTED[31:0]),
        .AXI_22_RID(NLW_hbm_inst_AXI_22_RID_UNCONNECTED[5:0]),
        .AXI_22_RLAST(vip_S03_M_AXI_RLAST),
        .AXI_22_RREADY(vip_S03_M_AXI_RREADY),
        .AXI_22_RRESP(vip_S03_M_AXI_RRESP),
        .AXI_22_RVALID(vip_S03_M_AXI_RVALID),
        .AXI_22_WDATA(vip_S03_M_AXI_WDATA),
        .AXI_22_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_22_WLAST(vip_S03_M_AXI_WLAST),
        .AXI_22_WREADY(vip_S03_M_AXI_WREADY),
        .AXI_22_WSTRB(vip_S03_M_AXI_WSTRB),
        .AXI_22_WVALID(vip_S03_M_AXI_WVALID),
        .AXI_23_ACLK(hbm_aclk),
        .AXI_23_ARADDR(vip_S00_M_AXI_ARADDR),
        .AXI_23_ARBURST(vip_S00_M_AXI_ARBURST),
        .AXI_23_ARESET_N(hbm_reset_sync_SLR0_interconnect_aresetn),
        .AXI_23_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_23_ARLEN(vip_S00_M_AXI_ARLEN),
        .AXI_23_ARREADY(vip_S00_M_AXI_ARREADY),
        .AXI_23_ARSIZE({1'b1,1'b0,1'b1}),
        .AXI_23_ARVALID(vip_S00_M_AXI_ARVALID),
        .AXI_23_AWADDR(vip_S00_M_AXI_AWADDR),
        .AXI_23_AWBURST(vip_S00_M_AXI_AWBURST),
        .AXI_23_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_23_AWLEN(vip_S00_M_AXI_AWLEN),
        .AXI_23_AWREADY(vip_S00_M_AXI_AWREADY),
        .AXI_23_AWSIZE({1'b1,1'b0,1'b1}),
        .AXI_23_AWVALID(vip_S00_M_AXI_AWVALID),
        .AXI_23_BID(NLW_hbm_inst_AXI_23_BID_UNCONNECTED[5:0]),
        .AXI_23_BREADY(vip_S00_M_AXI_BREADY),
        .AXI_23_BRESP(vip_S00_M_AXI_BRESP),
        .AXI_23_BVALID(vip_S00_M_AXI_BVALID),
        .AXI_23_RDATA(vip_S00_M_AXI_RDATA),
        .AXI_23_RDATA_PARITY(NLW_hbm_inst_AXI_23_RDATA_PARITY_UNCONNECTED[31:0]),
        .AXI_23_RID(NLW_hbm_inst_AXI_23_RID_UNCONNECTED[5:0]),
        .AXI_23_RLAST(vip_S00_M_AXI_RLAST),
        .AXI_23_RREADY(vip_S00_M_AXI_RREADY),
        .AXI_23_RRESP(vip_S00_M_AXI_RRESP),
        .AXI_23_RVALID(vip_S00_M_AXI_RVALID),
        .AXI_23_WDATA(vip_S00_M_AXI_WDATA),
        .AXI_23_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_23_WLAST(vip_S00_M_AXI_WLAST),
        .AXI_23_WREADY(vip_S00_M_AXI_WREADY),
        .AXI_23_WSTRB(vip_S00_M_AXI_WSTRB),
        .AXI_23_WVALID(vip_S00_M_AXI_WVALID),
        .AXI_24_ACLK(hbm_aclk),
        .AXI_24_ARADDR(vip_S04_M_AXI_ARADDR),
        .AXI_24_ARBURST(vip_S04_M_AXI_ARBURST),
        .AXI_24_ARESET_N(hbm_reset_sync_SLR0_interconnect_aresetn),
        .AXI_24_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_24_ARLEN(vip_S04_M_AXI_ARLEN),
        .AXI_24_ARREADY(vip_S04_M_AXI_ARREADY),
        .AXI_24_ARSIZE({1'b1,1'b0,1'b1}),
        .AXI_24_ARVALID(vip_S04_M_AXI_ARVALID),
        .AXI_24_AWADDR(vip_S04_M_AXI_AWADDR),
        .AXI_24_AWBURST(vip_S04_M_AXI_AWBURST),
        .AXI_24_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_24_AWLEN(vip_S04_M_AXI_AWLEN),
        .AXI_24_AWREADY(vip_S04_M_AXI_AWREADY),
        .AXI_24_AWSIZE({1'b1,1'b0,1'b1}),
        .AXI_24_AWVALID(vip_S04_M_AXI_AWVALID),
        .AXI_24_BID(NLW_hbm_inst_AXI_24_BID_UNCONNECTED[5:0]),
        .AXI_24_BREADY(vip_S04_M_AXI_BREADY),
        .AXI_24_BRESP(vip_S04_M_AXI_BRESP),
        .AXI_24_BVALID(vip_S04_M_AXI_BVALID),
        .AXI_24_RDATA(vip_S04_M_AXI_RDATA),
        .AXI_24_RDATA_PARITY(NLW_hbm_inst_AXI_24_RDATA_PARITY_UNCONNECTED[31:0]),
        .AXI_24_RID(NLW_hbm_inst_AXI_24_RID_UNCONNECTED[5:0]),
        .AXI_24_RLAST(vip_S04_M_AXI_RLAST),
        .AXI_24_RREADY(vip_S04_M_AXI_RREADY),
        .AXI_24_RRESP(vip_S04_M_AXI_RRESP),
        .AXI_24_RVALID(vip_S04_M_AXI_RVALID),
        .AXI_24_WDATA(vip_S04_M_AXI_WDATA),
        .AXI_24_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_24_WLAST(vip_S04_M_AXI_WLAST),
        .AXI_24_WREADY(vip_S04_M_AXI_WREADY),
        .AXI_24_WSTRB(vip_S04_M_AXI_WSTRB),
        .AXI_24_WVALID(vip_S04_M_AXI_WVALID),
        .AXI_25_ACLK(hbm_aclk),
        .AXI_25_ARADDR(vip_S05_M_AXI_ARADDR),
        .AXI_25_ARBURST(vip_S05_M_AXI_ARBURST),
        .AXI_25_ARESET_N(hbm_reset_sync_SLR0_interconnect_aresetn),
        .AXI_25_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_25_ARLEN(vip_S05_M_AXI_ARLEN),
        .AXI_25_ARREADY(vip_S05_M_AXI_ARREADY),
        .AXI_25_ARSIZE({1'b1,1'b0,1'b1}),
        .AXI_25_ARVALID(vip_S05_M_AXI_ARVALID),
        .AXI_25_AWADDR(vip_S05_M_AXI_AWADDR),
        .AXI_25_AWBURST(vip_S05_M_AXI_AWBURST),
        .AXI_25_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_25_AWLEN(vip_S05_M_AXI_AWLEN),
        .AXI_25_AWREADY(vip_S05_M_AXI_AWREADY),
        .AXI_25_AWSIZE({1'b1,1'b0,1'b1}),
        .AXI_25_AWVALID(vip_S05_M_AXI_AWVALID),
        .AXI_25_BID(NLW_hbm_inst_AXI_25_BID_UNCONNECTED[5:0]),
        .AXI_25_BREADY(vip_S05_M_AXI_BREADY),
        .AXI_25_BRESP(vip_S05_M_AXI_BRESP),
        .AXI_25_BVALID(vip_S05_M_AXI_BVALID),
        .AXI_25_RDATA(vip_S05_M_AXI_RDATA),
        .AXI_25_RDATA_PARITY(NLW_hbm_inst_AXI_25_RDATA_PARITY_UNCONNECTED[31:0]),
        .AXI_25_RID(NLW_hbm_inst_AXI_25_RID_UNCONNECTED[5:0]),
        .AXI_25_RLAST(vip_S05_M_AXI_RLAST),
        .AXI_25_RREADY(vip_S05_M_AXI_RREADY),
        .AXI_25_RRESP(vip_S05_M_AXI_RRESP),
        .AXI_25_RVALID(vip_S05_M_AXI_RVALID),
        .AXI_25_WDATA(vip_S05_M_AXI_WDATA),
        .AXI_25_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_25_WLAST(vip_S05_M_AXI_WLAST),
        .AXI_25_WREADY(vip_S05_M_AXI_WREADY),
        .AXI_25_WSTRB(vip_S05_M_AXI_WSTRB),
        .AXI_25_WVALID(vip_S05_M_AXI_WVALID),
        .AXI_26_ACLK(hbm_aclk),
        .AXI_26_ARADDR(vip_S06_M_AXI_ARADDR),
        .AXI_26_ARBURST(vip_S06_M_AXI_ARBURST),
        .AXI_26_ARESET_N(hbm_reset_sync_SLR0_interconnect_aresetn),
        .AXI_26_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_26_ARLEN(vip_S06_M_AXI_ARLEN),
        .AXI_26_ARREADY(vip_S06_M_AXI_ARREADY),
        .AXI_26_ARSIZE({1'b1,1'b0,1'b1}),
        .AXI_26_ARVALID(vip_S06_M_AXI_ARVALID),
        .AXI_26_AWADDR(vip_S06_M_AXI_AWADDR),
        .AXI_26_AWBURST(vip_S06_M_AXI_AWBURST),
        .AXI_26_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_26_AWLEN(vip_S06_M_AXI_AWLEN),
        .AXI_26_AWREADY(vip_S06_M_AXI_AWREADY),
        .AXI_26_AWSIZE({1'b1,1'b0,1'b1}),
        .AXI_26_AWVALID(vip_S06_M_AXI_AWVALID),
        .AXI_26_BID(NLW_hbm_inst_AXI_26_BID_UNCONNECTED[5:0]),
        .AXI_26_BREADY(vip_S06_M_AXI_BREADY),
        .AXI_26_BRESP(vip_S06_M_AXI_BRESP),
        .AXI_26_BVALID(vip_S06_M_AXI_BVALID),
        .AXI_26_RDATA(vip_S06_M_AXI_RDATA),
        .AXI_26_RDATA_PARITY(NLW_hbm_inst_AXI_26_RDATA_PARITY_UNCONNECTED[31:0]),
        .AXI_26_RID(NLW_hbm_inst_AXI_26_RID_UNCONNECTED[5:0]),
        .AXI_26_RLAST(vip_S06_M_AXI_RLAST),
        .AXI_26_RREADY(vip_S06_M_AXI_RREADY),
        .AXI_26_RRESP(vip_S06_M_AXI_RRESP),
        .AXI_26_RVALID(vip_S06_M_AXI_RVALID),
        .AXI_26_WDATA(vip_S06_M_AXI_WDATA),
        .AXI_26_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_26_WLAST(vip_S06_M_AXI_WLAST),
        .AXI_26_WREADY(vip_S06_M_AXI_WREADY),
        .AXI_26_WSTRB(vip_S06_M_AXI_WSTRB),
        .AXI_26_WVALID(vip_S06_M_AXI_WVALID),
        .DRAM_0_STAT_CATTRIP(hbm_inst_DRAM_0_STAT_CATTRIP),
        .DRAM_0_STAT_TEMP(DRAM_0_STAT_TEMP),
        .DRAM_1_STAT_CATTRIP(hbm_inst_DRAM_1_STAT_CATTRIP),
        .DRAM_1_STAT_TEMP(DRAM_1_STAT_TEMP),
        .HBM_REF_CLK_0(hbm_ref_clk),
        .HBM_REF_CLK_1(hbm_ref_clk),
        .apb_complete_0(hbm_inst_apb_complete_0),
        .apb_complete_1(hbm_inst_apb_complete_1));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_hbm_reset_sync_SLR0_0 hbm_reset_sync_SLR0
       (.aux_reset_in(DRAM_STAT_CATTRIP),
        .bus_struct_reset(NLW_hbm_reset_sync_SLR0_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(hbm_aresetn),
        .interconnect_aresetn(hbm_reset_sync_SLR0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_hbm_reset_sync_SLR0_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_hbm_reset_sync_SLR0_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_hbm_reset_sync_SLR0_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(hbm_aclk));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_hbm_reset_sync_SLR2_0 hbm_reset_sync_SLR2
       (.aux_reset_in(DRAM_STAT_CATTRIP),
        .bus_struct_reset(NLW_hbm_reset_sync_SLR2_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(hbm_aresetn),
        .interconnect_aresetn(hbm_reset_sync_SLR2_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_hbm_reset_sync_SLR2_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_hbm_reset_sync_SLR2_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_hbm_reset_sync_SLR2_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(hbm_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_init_logic_imp_156LN22 init_logic
       (.In0(hbm_inst_apb_complete_0),
        .In1(hbm_inst_apb_complete_1),
        .hbm_mc_init_seq_complete(hbm_mc_init_seq_complete));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_20_imp_1XT8RPB path_20
       (.M_AXI_araddr(slice1_20_M_AXI_ARADDR),
        .M_AXI_arburst(slice1_20_M_AXI_ARBURST),
        .M_AXI_arcache(slice1_20_M_AXI_ARCACHE),
        .M_AXI_arlen(slice1_20_M_AXI_ARLEN),
        .M_AXI_arlock(slice1_20_M_AXI_ARLOCK),
        .M_AXI_arprot(slice1_20_M_AXI_ARPROT),
        .M_AXI_arqos(slice1_20_M_AXI_ARQOS),
        .M_AXI_arready(slice1_20_M_AXI_ARREADY),
        .M_AXI_arvalid(slice1_20_M_AXI_ARVALID),
        .M_AXI_awaddr(slice1_20_M_AXI_AWADDR),
        .M_AXI_awburst(slice1_20_M_AXI_AWBURST),
        .M_AXI_awcache(slice1_20_M_AXI_AWCACHE),
        .M_AXI_awlen(slice1_20_M_AXI_AWLEN),
        .M_AXI_awlock(slice1_20_M_AXI_AWLOCK),
        .M_AXI_awprot(slice1_20_M_AXI_AWPROT),
        .M_AXI_awqos(slice1_20_M_AXI_AWQOS),
        .M_AXI_awready(slice1_20_M_AXI_AWREADY),
        .M_AXI_awvalid(slice1_20_M_AXI_AWVALID),
        .M_AXI_bready(slice1_20_M_AXI_BREADY),
        .M_AXI_bresp(slice1_20_M_AXI_BRESP),
        .M_AXI_bvalid(slice1_20_M_AXI_BVALID),
        .M_AXI_rdata(slice1_20_M_AXI_RDATA),
        .M_AXI_rlast(slice1_20_M_AXI_RLAST),
        .M_AXI_rready(slice1_20_M_AXI_RREADY),
        .M_AXI_rresp(slice1_20_M_AXI_RRESP),
        .M_AXI_rvalid(slice1_20_M_AXI_RVALID),
        .M_AXI_wdata(slice1_20_M_AXI_WDATA),
        .M_AXI_wlast(slice1_20_M_AXI_WLAST),
        .M_AXI_wready(slice1_20_M_AXI_WREADY),
        .M_AXI_wstrb(slice1_20_M_AXI_WSTRB),
        .M_AXI_wvalid(slice1_20_M_AXI_WVALID),
        .S01_AXI_araddr(S01_AXI_araddr),
        .S01_AXI_arburst(S01_AXI_arburst),
        .S01_AXI_arcache(S01_AXI_arcache),
        .S01_AXI_arlen(S01_AXI_arlen),
        .S01_AXI_arlock(S01_AXI_arlock),
        .S01_AXI_arprot(S01_AXI_arprot),
        .S01_AXI_arqos(S01_AXI_arqos),
        .S01_AXI_arready(S01_AXI_arready),
        .S01_AXI_arsize(S01_AXI_arsize),
        .S01_AXI_arvalid(S01_AXI_arvalid),
        .S01_AXI_awaddr(S01_AXI_awaddr),
        .S01_AXI_awburst(S01_AXI_awburst),
        .S01_AXI_awcache(S01_AXI_awcache),
        .S01_AXI_awlen(S01_AXI_awlen),
        .S01_AXI_awlock(S01_AXI_awlock),
        .S01_AXI_awprot(S01_AXI_awprot),
        .S01_AXI_awqos(S01_AXI_awqos),
        .S01_AXI_awready(S01_AXI_awready),
        .S01_AXI_awsize(S01_AXI_awsize),
        .S01_AXI_awvalid(S01_AXI_awvalid),
        .S01_AXI_bready(S01_AXI_bready),
        .S01_AXI_bresp(S01_AXI_bresp),
        .S01_AXI_bvalid(S01_AXI_bvalid),
        .S01_AXI_rdata(S01_AXI_rdata),
        .S01_AXI_rlast(S01_AXI_rlast),
        .S01_AXI_rready(S01_AXI_rready),
        .S01_AXI_rresp(S01_AXI_rresp),
        .S01_AXI_rvalid(S01_AXI_rvalid),
        .S01_AXI_wdata(S01_AXI_wdata),
        .S01_AXI_wlast(S01_AXI_wlast),
        .S01_AXI_wready(S01_AXI_wready),
        .S01_AXI_wstrb(S01_AXI_wstrb),
        .S01_AXI_wvalid(S01_AXI_wvalid),
        .aclk1(aclk1),
        .aresetn(hbm_reset_sync_SLR0_interconnect_aresetn),
        .aresetn1(aresetn1),
        .hbm_aclk(hbm_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_21_imp_FBBGKH path_21
       (.M_AXI_araddr(slice2_21_M_AXI_ARADDR),
        .M_AXI_arburst(slice2_21_M_AXI_ARBURST),
        .M_AXI_arcache(slice2_21_M_AXI_ARCACHE),
        .M_AXI_arlen(slice2_21_M_AXI_ARLEN),
        .M_AXI_arlock(slice2_21_M_AXI_ARLOCK),
        .M_AXI_arprot(slice2_21_M_AXI_ARPROT),
        .M_AXI_arqos(slice2_21_M_AXI_ARQOS),
        .M_AXI_arready(slice2_21_M_AXI_ARREADY),
        .M_AXI_arvalid(slice2_21_M_AXI_ARVALID),
        .M_AXI_awaddr(slice2_21_M_AXI_AWADDR),
        .M_AXI_awburst(slice2_21_M_AXI_AWBURST),
        .M_AXI_awcache(slice2_21_M_AXI_AWCACHE),
        .M_AXI_awlen(slice2_21_M_AXI_AWLEN),
        .M_AXI_awlock(slice2_21_M_AXI_AWLOCK),
        .M_AXI_awprot(slice2_21_M_AXI_AWPROT),
        .M_AXI_awqos(slice2_21_M_AXI_AWQOS),
        .M_AXI_awready(slice2_21_M_AXI_AWREADY),
        .M_AXI_awvalid(slice2_21_M_AXI_AWVALID),
        .M_AXI_bready(slice2_21_M_AXI_BREADY),
        .M_AXI_bresp(slice2_21_M_AXI_BRESP),
        .M_AXI_bvalid(slice2_21_M_AXI_BVALID),
        .M_AXI_rdata(slice2_21_M_AXI_RDATA),
        .M_AXI_rlast(slice2_21_M_AXI_RLAST),
        .M_AXI_rready(slice2_21_M_AXI_RREADY),
        .M_AXI_rresp(slice2_21_M_AXI_RRESP),
        .M_AXI_rvalid(slice2_21_M_AXI_RVALID),
        .M_AXI_wdata(slice2_21_M_AXI_WDATA),
        .M_AXI_wlast(slice2_21_M_AXI_WLAST),
        .M_AXI_wready(slice2_21_M_AXI_WREADY),
        .M_AXI_wstrb(slice2_21_M_AXI_WSTRB),
        .M_AXI_wvalid(slice2_21_M_AXI_WVALID),
        .S02_AXI_araddr(S02_AXI_araddr),
        .S02_AXI_arburst(S02_AXI_arburst),
        .S02_AXI_arcache(S02_AXI_arcache),
        .S02_AXI_arlen(S02_AXI_arlen),
        .S02_AXI_arlock(S02_AXI_arlock),
        .S02_AXI_arprot(S02_AXI_arprot),
        .S02_AXI_arqos(S02_AXI_arqos),
        .S02_AXI_arready(S02_AXI_arready),
        .S02_AXI_arsize(S02_AXI_arsize),
        .S02_AXI_arvalid(S02_AXI_arvalid),
        .S02_AXI_awaddr(S02_AXI_awaddr),
        .S02_AXI_awburst(S02_AXI_awburst),
        .S02_AXI_awcache(S02_AXI_awcache),
        .S02_AXI_awlen(S02_AXI_awlen),
        .S02_AXI_awlock(S02_AXI_awlock),
        .S02_AXI_awprot(S02_AXI_awprot),
        .S02_AXI_awqos(S02_AXI_awqos),
        .S02_AXI_awready(S02_AXI_awready),
        .S02_AXI_awsize(S02_AXI_awsize),
        .S02_AXI_awvalid(S02_AXI_awvalid),
        .S02_AXI_bready(S02_AXI_bready),
        .S02_AXI_bresp(S02_AXI_bresp),
        .S02_AXI_bvalid(S02_AXI_bvalid),
        .S02_AXI_rdata(S02_AXI_rdata),
        .S02_AXI_rlast(S02_AXI_rlast),
        .S02_AXI_rready(S02_AXI_rready),
        .S02_AXI_rresp(S02_AXI_rresp),
        .S02_AXI_rvalid(S02_AXI_rvalid),
        .S02_AXI_wdata(S02_AXI_wdata),
        .S02_AXI_wlast(S02_AXI_wlast),
        .S02_AXI_wready(S02_AXI_wready),
        .S02_AXI_wstrb(S02_AXI_wstrb),
        .S02_AXI_wvalid(S02_AXI_wvalid),
        .aclk1(aclk1),
        .aresetn(hbm_reset_sync_SLR0_interconnect_aresetn),
        .aresetn1(aresetn1),
        .hbm_aclk(hbm_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_22_imp_1FJCOXU path_22
       (.M_AXI_araddr(slice3_22_M_AXI_ARADDR),
        .M_AXI_arburst(slice3_22_M_AXI_ARBURST),
        .M_AXI_arcache(slice3_22_M_AXI_ARCACHE),
        .M_AXI_arlen(slice3_22_M_AXI_ARLEN),
        .M_AXI_arlock(slice3_22_M_AXI_ARLOCK),
        .M_AXI_arprot(slice3_22_M_AXI_ARPROT),
        .M_AXI_arqos(slice3_22_M_AXI_ARQOS),
        .M_AXI_arready(slice3_22_M_AXI_ARREADY),
        .M_AXI_arvalid(slice3_22_M_AXI_ARVALID),
        .M_AXI_awaddr(slice3_22_M_AXI_AWADDR),
        .M_AXI_awburst(slice3_22_M_AXI_AWBURST),
        .M_AXI_awcache(slice3_22_M_AXI_AWCACHE),
        .M_AXI_awlen(slice3_22_M_AXI_AWLEN),
        .M_AXI_awlock(slice3_22_M_AXI_AWLOCK),
        .M_AXI_awprot(slice3_22_M_AXI_AWPROT),
        .M_AXI_awqos(slice3_22_M_AXI_AWQOS),
        .M_AXI_awready(slice3_22_M_AXI_AWREADY),
        .M_AXI_awvalid(slice3_22_M_AXI_AWVALID),
        .M_AXI_bready(slice3_22_M_AXI_BREADY),
        .M_AXI_bresp(slice3_22_M_AXI_BRESP),
        .M_AXI_bvalid(slice3_22_M_AXI_BVALID),
        .M_AXI_rdata(slice3_22_M_AXI_RDATA),
        .M_AXI_rlast(slice3_22_M_AXI_RLAST),
        .M_AXI_rready(slice3_22_M_AXI_RREADY),
        .M_AXI_rresp(slice3_22_M_AXI_RRESP),
        .M_AXI_rvalid(slice3_22_M_AXI_RVALID),
        .M_AXI_wdata(slice3_22_M_AXI_WDATA),
        .M_AXI_wlast(slice3_22_M_AXI_WLAST),
        .M_AXI_wready(slice3_22_M_AXI_WREADY),
        .M_AXI_wstrb(slice3_22_M_AXI_WSTRB),
        .M_AXI_wvalid(slice3_22_M_AXI_WVALID),
        .S03_AXI_araddr(S03_AXI_araddr),
        .S03_AXI_arburst(S03_AXI_arburst),
        .S03_AXI_arcache(S03_AXI_arcache),
        .S03_AXI_arlen(S03_AXI_arlen),
        .S03_AXI_arlock(S03_AXI_arlock),
        .S03_AXI_arprot(S03_AXI_arprot),
        .S03_AXI_arqos(S03_AXI_arqos),
        .S03_AXI_arready(S03_AXI_arready),
        .S03_AXI_arsize(S03_AXI_arsize),
        .S03_AXI_arvalid(S03_AXI_arvalid),
        .S03_AXI_awaddr(S03_AXI_awaddr),
        .S03_AXI_awburst(S03_AXI_awburst),
        .S03_AXI_awcache(S03_AXI_awcache),
        .S03_AXI_awlen(S03_AXI_awlen),
        .S03_AXI_awlock(S03_AXI_awlock),
        .S03_AXI_awprot(S03_AXI_awprot),
        .S03_AXI_awqos(S03_AXI_awqos),
        .S03_AXI_awready(S03_AXI_awready),
        .S03_AXI_awsize(S03_AXI_awsize),
        .S03_AXI_awvalid(S03_AXI_awvalid),
        .S03_AXI_bready(S03_AXI_bready),
        .S03_AXI_bresp(S03_AXI_bresp),
        .S03_AXI_bvalid(S03_AXI_bvalid),
        .S03_AXI_rdata(S03_AXI_rdata),
        .S03_AXI_rlast(S03_AXI_rlast),
        .S03_AXI_rready(S03_AXI_rready),
        .S03_AXI_rresp(S03_AXI_rresp),
        .S03_AXI_rvalid(S03_AXI_rvalid),
        .S03_AXI_wdata(S03_AXI_wdata),
        .S03_AXI_wlast(S03_AXI_wlast),
        .S03_AXI_wready(S03_AXI_wready),
        .S03_AXI_wstrb(S03_AXI_wstrb),
        .S03_AXI_wvalid(S03_AXI_wvalid),
        .aclk1(aclk1),
        .aresetn(hbm_reset_sync_SLR0_interconnect_aresetn),
        .aresetn1(aresetn1),
        .hbm_aclk(hbm_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_23_imp_WHHIHO path_23
       (.M_AXI_araddr(slice0_23_M_AXI_ARADDR),
        .M_AXI_arburst(slice0_23_M_AXI_ARBURST),
        .M_AXI_arcache(slice0_23_M_AXI_ARCACHE),
        .M_AXI_arlen(slice0_23_M_AXI_ARLEN),
        .M_AXI_arlock(slice0_23_M_AXI_ARLOCK),
        .M_AXI_arprot(slice0_23_M_AXI_ARPROT),
        .M_AXI_arqos(slice0_23_M_AXI_ARQOS),
        .M_AXI_arready(slice0_23_M_AXI_ARREADY),
        .M_AXI_arvalid(slice0_23_M_AXI_ARVALID),
        .M_AXI_awaddr(slice0_23_M_AXI_AWADDR),
        .M_AXI_awburst(slice0_23_M_AXI_AWBURST),
        .M_AXI_awcache(slice0_23_M_AXI_AWCACHE),
        .M_AXI_awlen(slice0_23_M_AXI_AWLEN),
        .M_AXI_awlock(slice0_23_M_AXI_AWLOCK),
        .M_AXI_awprot(slice0_23_M_AXI_AWPROT),
        .M_AXI_awqos(slice0_23_M_AXI_AWQOS),
        .M_AXI_awready(slice0_23_M_AXI_AWREADY),
        .M_AXI_awvalid(slice0_23_M_AXI_AWVALID),
        .M_AXI_bready(slice0_23_M_AXI_BREADY),
        .M_AXI_bresp(slice0_23_M_AXI_BRESP),
        .M_AXI_bvalid(slice0_23_M_AXI_BVALID),
        .M_AXI_rdata(slice0_23_M_AXI_RDATA),
        .M_AXI_rlast(slice0_23_M_AXI_RLAST),
        .M_AXI_rready(slice0_23_M_AXI_RREADY),
        .M_AXI_rresp(slice0_23_M_AXI_RRESP),
        .M_AXI_rvalid(slice0_23_M_AXI_RVALID),
        .M_AXI_wdata(slice0_23_M_AXI_WDATA),
        .M_AXI_wlast(slice0_23_M_AXI_WLAST),
        .M_AXI_wready(slice0_23_M_AXI_WREADY),
        .M_AXI_wstrb(slice0_23_M_AXI_WSTRB),
        .M_AXI_wvalid(slice0_23_M_AXI_WVALID),
        .S00_AXI_araddr(S00_AXI_araddr),
        .S00_AXI_arburst(S00_AXI_arburst),
        .S00_AXI_arcache(S00_AXI_arcache),
        .S00_AXI_arlen(S00_AXI_arlen),
        .S00_AXI_arlock(S00_AXI_arlock),
        .S00_AXI_arprot(S00_AXI_arprot),
        .S00_AXI_arqos(S00_AXI_arqos),
        .S00_AXI_arready(S00_AXI_arready),
        .S00_AXI_arsize(S00_AXI_arsize),
        .S00_AXI_arvalid(S00_AXI_arvalid),
        .S00_AXI_awaddr(S00_AXI_awaddr),
        .S00_AXI_awburst(S00_AXI_awburst),
        .S00_AXI_awcache(S00_AXI_awcache),
        .S00_AXI_awlen(S00_AXI_awlen),
        .S00_AXI_awlock(S00_AXI_awlock),
        .S00_AXI_awprot(S00_AXI_awprot),
        .S00_AXI_awqos(S00_AXI_awqos),
        .S00_AXI_awready(S00_AXI_awready),
        .S00_AXI_awsize(S00_AXI_awsize),
        .S00_AXI_awvalid(S00_AXI_awvalid),
        .S00_AXI_bready(S00_AXI_bready),
        .S00_AXI_bresp(S00_AXI_bresp),
        .S00_AXI_bvalid(S00_AXI_bvalid),
        .S00_AXI_rdata(S00_AXI_rdata),
        .S00_AXI_rlast(S00_AXI_rlast),
        .S00_AXI_rready(S00_AXI_rready),
        .S00_AXI_rresp(S00_AXI_rresp),
        .S00_AXI_rvalid(S00_AXI_rvalid),
        .S00_AXI_wdata(S00_AXI_wdata),
        .S00_AXI_wlast(S00_AXI_wlast),
        .S00_AXI_wready(S00_AXI_wready),
        .S00_AXI_wstrb(S00_AXI_wstrb),
        .S00_AXI_wvalid(S00_AXI_wvalid),
        .aclk(aclk),
        .aresetn(aresetn),
        .aresetn1(hbm_reset_sync_SLR2_interconnect_aresetn),
        .hbm_aclk(hbm_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_24_imp_ZGQW91 path_24
       (.M_AXI_araddr(slice4_24_M_AXI_ARADDR),
        .M_AXI_arburst(slice4_24_M_AXI_ARBURST),
        .M_AXI_arcache(slice4_24_M_AXI_ARCACHE),
        .M_AXI_arlen(slice4_24_M_AXI_ARLEN),
        .M_AXI_arlock(slice4_24_M_AXI_ARLOCK),
        .M_AXI_arprot(slice4_24_M_AXI_ARPROT),
        .M_AXI_arqos(slice4_24_M_AXI_ARQOS),
        .M_AXI_arready(slice4_24_M_AXI_ARREADY),
        .M_AXI_arvalid(slice4_24_M_AXI_ARVALID),
        .M_AXI_awaddr(slice4_24_M_AXI_AWADDR),
        .M_AXI_awburst(slice4_24_M_AXI_AWBURST),
        .M_AXI_awcache(slice4_24_M_AXI_AWCACHE),
        .M_AXI_awlen(slice4_24_M_AXI_AWLEN),
        .M_AXI_awlock(slice4_24_M_AXI_AWLOCK),
        .M_AXI_awprot(slice4_24_M_AXI_AWPROT),
        .M_AXI_awqos(slice4_24_M_AXI_AWQOS),
        .M_AXI_awready(slice4_24_M_AXI_AWREADY),
        .M_AXI_awvalid(slice4_24_M_AXI_AWVALID),
        .M_AXI_bready(slice4_24_M_AXI_BREADY),
        .M_AXI_bresp(slice4_24_M_AXI_BRESP),
        .M_AXI_bvalid(slice4_24_M_AXI_BVALID),
        .M_AXI_rdata(slice4_24_M_AXI_RDATA),
        .M_AXI_rlast(slice4_24_M_AXI_RLAST),
        .M_AXI_rready(slice4_24_M_AXI_RREADY),
        .M_AXI_rresp(slice4_24_M_AXI_RRESP),
        .M_AXI_rvalid(slice4_24_M_AXI_RVALID),
        .M_AXI_wdata(slice4_24_M_AXI_WDATA),
        .M_AXI_wlast(slice4_24_M_AXI_WLAST),
        .M_AXI_wready(slice4_24_M_AXI_WREADY),
        .M_AXI_wstrb(slice4_24_M_AXI_WSTRB),
        .M_AXI_wvalid(slice4_24_M_AXI_WVALID),
        .S04_AXI_araddr(S04_AXI_araddr),
        .S04_AXI_arburst(S04_AXI_arburst),
        .S04_AXI_arcache(S04_AXI_arcache),
        .S04_AXI_arlen(S04_AXI_arlen),
        .S04_AXI_arlock(S04_AXI_arlock),
        .S04_AXI_arprot(S04_AXI_arprot),
        .S04_AXI_arqos(S04_AXI_arqos),
        .S04_AXI_arready(S04_AXI_arready),
        .S04_AXI_arsize(S04_AXI_arsize),
        .S04_AXI_arvalid(S04_AXI_arvalid),
        .S04_AXI_awaddr(S04_AXI_awaddr),
        .S04_AXI_awburst(S04_AXI_awburst),
        .S04_AXI_awcache(S04_AXI_awcache),
        .S04_AXI_awlen(S04_AXI_awlen),
        .S04_AXI_awlock(S04_AXI_awlock),
        .S04_AXI_awprot(S04_AXI_awprot),
        .S04_AXI_awqos(S04_AXI_awqos),
        .S04_AXI_awready(S04_AXI_awready),
        .S04_AXI_awsize(S04_AXI_awsize),
        .S04_AXI_awvalid(S04_AXI_awvalid),
        .S04_AXI_bready(S04_AXI_bready),
        .S04_AXI_bresp(S04_AXI_bresp),
        .S04_AXI_bvalid(S04_AXI_bvalid),
        .S04_AXI_rdata(S04_AXI_rdata),
        .S04_AXI_rlast(S04_AXI_rlast),
        .S04_AXI_rready(S04_AXI_rready),
        .S04_AXI_rresp(S04_AXI_rresp),
        .S04_AXI_rvalid(S04_AXI_rvalid),
        .S04_AXI_wdata(S04_AXI_wdata),
        .S04_AXI_wlast(S04_AXI_wlast),
        .S04_AXI_wready(S04_AXI_wready),
        .S04_AXI_wstrb(S04_AXI_wstrb),
        .S04_AXI_wvalid(S04_AXI_wvalid),
        .aclk1(aclk1),
        .aresetn1(aresetn1),
        .hbm_aclk(hbm_aclk),
        .interconnect_aresetn(hbm_reset_sync_SLR0_interconnect_aresetn));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_25_imp_1DSSZ8B path_25
       (.M_AXI_araddr(slice5_25_M_AXI_ARADDR),
        .M_AXI_arburst(slice5_25_M_AXI_ARBURST),
        .M_AXI_arcache(slice5_25_M_AXI_ARCACHE),
        .M_AXI_arlen(slice5_25_M_AXI_ARLEN),
        .M_AXI_arlock(slice5_25_M_AXI_ARLOCK),
        .M_AXI_arprot(slice5_25_M_AXI_ARPROT),
        .M_AXI_arqos(slice5_25_M_AXI_ARQOS),
        .M_AXI_arready(slice5_25_M_AXI_ARREADY),
        .M_AXI_arvalid(slice5_25_M_AXI_ARVALID),
        .M_AXI_awaddr(slice5_25_M_AXI_AWADDR),
        .M_AXI_awburst(slice5_25_M_AXI_AWBURST),
        .M_AXI_awcache(slice5_25_M_AXI_AWCACHE),
        .M_AXI_awlen(slice5_25_M_AXI_AWLEN),
        .M_AXI_awlock(slice5_25_M_AXI_AWLOCK),
        .M_AXI_awprot(slice5_25_M_AXI_AWPROT),
        .M_AXI_awqos(slice5_25_M_AXI_AWQOS),
        .M_AXI_awready(slice5_25_M_AXI_AWREADY),
        .M_AXI_awvalid(slice5_25_M_AXI_AWVALID),
        .M_AXI_bready(slice5_25_M_AXI_BREADY),
        .M_AXI_bresp(slice5_25_M_AXI_BRESP),
        .M_AXI_bvalid(slice5_25_M_AXI_BVALID),
        .M_AXI_rdata(slice5_25_M_AXI_RDATA),
        .M_AXI_rlast(slice5_25_M_AXI_RLAST),
        .M_AXI_rready(slice5_25_M_AXI_RREADY),
        .M_AXI_rresp(slice5_25_M_AXI_RRESP),
        .M_AXI_rvalid(slice5_25_M_AXI_RVALID),
        .M_AXI_wdata(slice5_25_M_AXI_WDATA),
        .M_AXI_wlast(slice5_25_M_AXI_WLAST),
        .M_AXI_wready(slice5_25_M_AXI_WREADY),
        .M_AXI_wstrb(slice5_25_M_AXI_WSTRB),
        .M_AXI_wvalid(slice5_25_M_AXI_WVALID),
        .S05_AXI_araddr(S05_AXI_araddr),
        .S05_AXI_arburst(S05_AXI_arburst),
        .S05_AXI_arcache(S05_AXI_arcache),
        .S05_AXI_arlen(S05_AXI_arlen),
        .S05_AXI_arlock(S05_AXI_arlock),
        .S05_AXI_arprot(S05_AXI_arprot),
        .S05_AXI_arqos(S05_AXI_arqos),
        .S05_AXI_arready(S05_AXI_arready),
        .S05_AXI_arsize(S05_AXI_arsize),
        .S05_AXI_arvalid(S05_AXI_arvalid),
        .S05_AXI_awaddr(S05_AXI_awaddr),
        .S05_AXI_awburst(S05_AXI_awburst),
        .S05_AXI_awcache(S05_AXI_awcache),
        .S05_AXI_awlen(S05_AXI_awlen),
        .S05_AXI_awlock(S05_AXI_awlock),
        .S05_AXI_awprot(S05_AXI_awprot),
        .S05_AXI_awqos(S05_AXI_awqos),
        .S05_AXI_awready(S05_AXI_awready),
        .S05_AXI_awsize(S05_AXI_awsize),
        .S05_AXI_awvalid(S05_AXI_awvalid),
        .S05_AXI_bready(S05_AXI_bready),
        .S05_AXI_bresp(S05_AXI_bresp),
        .S05_AXI_bvalid(S05_AXI_bvalid),
        .S05_AXI_rdata(S05_AXI_rdata),
        .S05_AXI_rlast(S05_AXI_rlast),
        .S05_AXI_rready(S05_AXI_rready),
        .S05_AXI_rresp(S05_AXI_rresp),
        .S05_AXI_rvalid(S05_AXI_rvalid),
        .S05_AXI_wdata(S05_AXI_wdata),
        .S05_AXI_wlast(S05_AXI_wlast),
        .S05_AXI_wready(S05_AXI_wready),
        .S05_AXI_wstrb(S05_AXI_wstrb),
        .S05_AXI_wvalid(S05_AXI_wvalid),
        .aclk1(aclk1),
        .aresetn1(aresetn1),
        .hbm_aclk(hbm_aclk),
        .interconnect_aresetn(hbm_reset_sync_SLR0_interconnect_aresetn));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_26_imp_H6UVUG path_26
       (.M_AXI_araddr(slice6_26_M_AXI_ARADDR),
        .M_AXI_arburst(slice6_26_M_AXI_ARBURST),
        .M_AXI_arcache(slice6_26_M_AXI_ARCACHE),
        .M_AXI_arlen(slice6_26_M_AXI_ARLEN),
        .M_AXI_arlock(slice6_26_M_AXI_ARLOCK),
        .M_AXI_arprot(slice6_26_M_AXI_ARPROT),
        .M_AXI_arqos(slice6_26_M_AXI_ARQOS),
        .M_AXI_arready(slice6_26_M_AXI_ARREADY),
        .M_AXI_arvalid(slice6_26_M_AXI_ARVALID),
        .M_AXI_awaddr(slice6_26_M_AXI_AWADDR),
        .M_AXI_awburst(slice6_26_M_AXI_AWBURST),
        .M_AXI_awcache(slice6_26_M_AXI_AWCACHE),
        .M_AXI_awlen(slice6_26_M_AXI_AWLEN),
        .M_AXI_awlock(slice6_26_M_AXI_AWLOCK),
        .M_AXI_awprot(slice6_26_M_AXI_AWPROT),
        .M_AXI_awqos(slice6_26_M_AXI_AWQOS),
        .M_AXI_awready(slice6_26_M_AXI_AWREADY),
        .M_AXI_awvalid(slice6_26_M_AXI_AWVALID),
        .M_AXI_bready(slice6_26_M_AXI_BREADY),
        .M_AXI_bresp(slice6_26_M_AXI_BRESP),
        .M_AXI_bvalid(slice6_26_M_AXI_BVALID),
        .M_AXI_rdata(slice6_26_M_AXI_RDATA),
        .M_AXI_rlast(slice6_26_M_AXI_RLAST),
        .M_AXI_rready(slice6_26_M_AXI_RREADY),
        .M_AXI_rresp(slice6_26_M_AXI_RRESP),
        .M_AXI_rvalid(slice6_26_M_AXI_RVALID),
        .M_AXI_wdata(slice6_26_M_AXI_WDATA),
        .M_AXI_wlast(slice6_26_M_AXI_WLAST),
        .M_AXI_wready(slice6_26_M_AXI_WREADY),
        .M_AXI_wstrb(slice6_26_M_AXI_WSTRB),
        .M_AXI_wvalid(slice6_26_M_AXI_WVALID),
        .S06_AXI_araddr(S06_AXI_araddr),
        .S06_AXI_arburst(S06_AXI_arburst),
        .S06_AXI_arcache(S06_AXI_arcache),
        .S06_AXI_arlen(S06_AXI_arlen),
        .S06_AXI_arlock(S06_AXI_arlock),
        .S06_AXI_arprot(S06_AXI_arprot),
        .S06_AXI_arqos(S06_AXI_arqos),
        .S06_AXI_arready(S06_AXI_arready),
        .S06_AXI_arsize(S06_AXI_arsize),
        .S06_AXI_arvalid(S06_AXI_arvalid),
        .S06_AXI_awaddr(S06_AXI_awaddr),
        .S06_AXI_awburst(S06_AXI_awburst),
        .S06_AXI_awcache(S06_AXI_awcache),
        .S06_AXI_awlen(S06_AXI_awlen),
        .S06_AXI_awlock(S06_AXI_awlock),
        .S06_AXI_awprot(S06_AXI_awprot),
        .S06_AXI_awqos(S06_AXI_awqos),
        .S06_AXI_awready(S06_AXI_awready),
        .S06_AXI_awsize(S06_AXI_awsize),
        .S06_AXI_awvalid(S06_AXI_awvalid),
        .S06_AXI_bready(S06_AXI_bready),
        .S06_AXI_bresp(S06_AXI_bresp),
        .S06_AXI_bvalid(S06_AXI_bvalid),
        .S06_AXI_rdata(S06_AXI_rdata),
        .S06_AXI_rlast(S06_AXI_rlast),
        .S06_AXI_rready(S06_AXI_rready),
        .S06_AXI_rresp(S06_AXI_rresp),
        .S06_AXI_rvalid(S06_AXI_rvalid),
        .S06_AXI_wdata(S06_AXI_wdata),
        .S06_AXI_wlast(S06_AXI_wlast),
        .S06_AXI_wready(S06_AXI_wready),
        .S06_AXI_wstrb(S06_AXI_wstrb),
        .S06_AXI_wvalid(S06_AXI_wvalid),
        .aclk1(aclk1),
        .aresetn1(aresetn1),
        .hbm_aclk(hbm_aclk),
        .interconnect_aresetn(hbm_reset_sync_SLR0_interconnect_aresetn));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_util_vector_logic_0 util_vector_logic
       (.Op1(hbm_inst_DRAM_0_STAT_CATTRIP),
        .Op2(hbm_inst_DRAM_1_STAT_CATTRIP),
        .Res(DRAM_STAT_CATTRIP));
  (* X_CORE_INFO = "axi_vip_v1_1_8_top,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S00_0 vip_S00
       (.aclk(hbm_aclk),
        .aresetn(hbm_reset_sync_SLR2_interconnect_aresetn),
        .m_axi_araddr(vip_S00_M_AXI_ARADDR),
        .m_axi_arburst(vip_S00_M_AXI_ARBURST),
        .m_axi_arcache(NLW_vip_S00_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arlen(vip_S00_M_AXI_ARLEN),
        .m_axi_arlock(NLW_vip_S00_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_vip_S00_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_vip_S00_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(vip_S00_M_AXI_ARREADY),
        .m_axi_arvalid(vip_S00_M_AXI_ARVALID),
        .m_axi_awaddr(vip_S00_M_AXI_AWADDR),
        .m_axi_awburst(vip_S00_M_AXI_AWBURST),
        .m_axi_awcache(NLW_vip_S00_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awlen(vip_S00_M_AXI_AWLEN),
        .m_axi_awlock(NLW_vip_S00_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_vip_S00_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_vip_S00_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(vip_S00_M_AXI_AWREADY),
        .m_axi_awvalid(vip_S00_M_AXI_AWVALID),
        .m_axi_bready(vip_S00_M_AXI_BREADY),
        .m_axi_bresp(vip_S00_M_AXI_BRESP),
        .m_axi_bvalid(vip_S00_M_AXI_BVALID),
        .m_axi_rdata(vip_S00_M_AXI_RDATA),
        .m_axi_rlast(vip_S00_M_AXI_RLAST),
        .m_axi_rready(vip_S00_M_AXI_RREADY),
        .m_axi_rresp(vip_S00_M_AXI_RRESP),
        .m_axi_rvalid(vip_S00_M_AXI_RVALID),
        .m_axi_wdata(vip_S00_M_AXI_WDATA),
        .m_axi_wlast(vip_S00_M_AXI_WLAST),
        .m_axi_wready(vip_S00_M_AXI_WREADY),
        .m_axi_wstrb(vip_S00_M_AXI_WSTRB),
        .m_axi_wvalid(vip_S00_M_AXI_WVALID),
        .s_axi_araddr(slice0_23_M_AXI_ARADDR),
        .s_axi_arburst(slice0_23_M_AXI_ARBURST),
        .s_axi_arcache(slice0_23_M_AXI_ARCACHE),
        .s_axi_arlen(slice0_23_M_AXI_ARLEN),
        .s_axi_arlock(slice0_23_M_AXI_ARLOCK),
        .s_axi_arprot(slice0_23_M_AXI_ARPROT),
        .s_axi_arqos(slice0_23_M_AXI_ARQOS),
        .s_axi_arready(slice0_23_M_AXI_ARREADY),
        .s_axi_arvalid(slice0_23_M_AXI_ARVALID),
        .s_axi_awaddr(slice0_23_M_AXI_AWADDR),
        .s_axi_awburst(slice0_23_M_AXI_AWBURST),
        .s_axi_awcache(slice0_23_M_AXI_AWCACHE),
        .s_axi_awlen(slice0_23_M_AXI_AWLEN),
        .s_axi_awlock(slice0_23_M_AXI_AWLOCK),
        .s_axi_awprot(slice0_23_M_AXI_AWPROT),
        .s_axi_awqos(slice0_23_M_AXI_AWQOS),
        .s_axi_awready(slice0_23_M_AXI_AWREADY),
        .s_axi_awvalid(slice0_23_M_AXI_AWVALID),
        .s_axi_bready(slice0_23_M_AXI_BREADY),
        .s_axi_bresp(slice0_23_M_AXI_BRESP),
        .s_axi_bvalid(slice0_23_M_AXI_BVALID),
        .s_axi_rdata(slice0_23_M_AXI_RDATA),
        .s_axi_rlast(slice0_23_M_AXI_RLAST),
        .s_axi_rready(slice0_23_M_AXI_RREADY),
        .s_axi_rresp(slice0_23_M_AXI_RRESP),
        .s_axi_rvalid(slice0_23_M_AXI_RVALID),
        .s_axi_wdata(slice0_23_M_AXI_WDATA),
        .s_axi_wlast(slice0_23_M_AXI_WLAST),
        .s_axi_wready(slice0_23_M_AXI_WREADY),
        .s_axi_wstrb(slice0_23_M_AXI_WSTRB),
        .s_axi_wvalid(slice0_23_M_AXI_WVALID));
  (* X_CORE_INFO = "axi_vip_v1_1_8_top,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S01_0 vip_S01
       (.aclk(hbm_aclk),
        .aresetn(hbm_reset_sync_SLR0_interconnect_aresetn),
        .m_axi_araddr(vip_S01_M_AXI_ARADDR),
        .m_axi_arburst(vip_S01_M_AXI_ARBURST),
        .m_axi_arcache(NLW_vip_S01_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arlen(vip_S01_M_AXI_ARLEN),
        .m_axi_arlock(NLW_vip_S01_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_vip_S01_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_vip_S01_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(vip_S01_M_AXI_ARREADY),
        .m_axi_arvalid(vip_S01_M_AXI_ARVALID),
        .m_axi_awaddr(vip_S01_M_AXI_AWADDR),
        .m_axi_awburst(vip_S01_M_AXI_AWBURST),
        .m_axi_awcache(NLW_vip_S01_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awlen(vip_S01_M_AXI_AWLEN),
        .m_axi_awlock(NLW_vip_S01_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_vip_S01_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_vip_S01_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(vip_S01_M_AXI_AWREADY),
        .m_axi_awvalid(vip_S01_M_AXI_AWVALID),
        .m_axi_bready(vip_S01_M_AXI_BREADY),
        .m_axi_bresp(vip_S01_M_AXI_BRESP),
        .m_axi_bvalid(vip_S01_M_AXI_BVALID),
        .m_axi_rdata(vip_S01_M_AXI_RDATA),
        .m_axi_rlast(vip_S01_M_AXI_RLAST),
        .m_axi_rready(vip_S01_M_AXI_RREADY),
        .m_axi_rresp(vip_S01_M_AXI_RRESP),
        .m_axi_rvalid(vip_S01_M_AXI_RVALID),
        .m_axi_wdata(vip_S01_M_AXI_WDATA),
        .m_axi_wlast(vip_S01_M_AXI_WLAST),
        .m_axi_wready(vip_S01_M_AXI_WREADY),
        .m_axi_wstrb(vip_S01_M_AXI_WSTRB),
        .m_axi_wvalid(vip_S01_M_AXI_WVALID),
        .s_axi_araddr(slice1_20_M_AXI_ARADDR),
        .s_axi_arburst(slice1_20_M_AXI_ARBURST),
        .s_axi_arcache(slice1_20_M_AXI_ARCACHE),
        .s_axi_arlen(slice1_20_M_AXI_ARLEN),
        .s_axi_arlock(slice1_20_M_AXI_ARLOCK),
        .s_axi_arprot(slice1_20_M_AXI_ARPROT),
        .s_axi_arqos(slice1_20_M_AXI_ARQOS),
        .s_axi_arready(slice1_20_M_AXI_ARREADY),
        .s_axi_arvalid(slice1_20_M_AXI_ARVALID),
        .s_axi_awaddr(slice1_20_M_AXI_AWADDR),
        .s_axi_awburst(slice1_20_M_AXI_AWBURST),
        .s_axi_awcache(slice1_20_M_AXI_AWCACHE),
        .s_axi_awlen(slice1_20_M_AXI_AWLEN),
        .s_axi_awlock(slice1_20_M_AXI_AWLOCK),
        .s_axi_awprot(slice1_20_M_AXI_AWPROT),
        .s_axi_awqos(slice1_20_M_AXI_AWQOS),
        .s_axi_awready(slice1_20_M_AXI_AWREADY),
        .s_axi_awvalid(slice1_20_M_AXI_AWVALID),
        .s_axi_bready(slice1_20_M_AXI_BREADY),
        .s_axi_bresp(slice1_20_M_AXI_BRESP),
        .s_axi_bvalid(slice1_20_M_AXI_BVALID),
        .s_axi_rdata(slice1_20_M_AXI_RDATA),
        .s_axi_rlast(slice1_20_M_AXI_RLAST),
        .s_axi_rready(slice1_20_M_AXI_RREADY),
        .s_axi_rresp(slice1_20_M_AXI_RRESP),
        .s_axi_rvalid(slice1_20_M_AXI_RVALID),
        .s_axi_wdata(slice1_20_M_AXI_WDATA),
        .s_axi_wlast(slice1_20_M_AXI_WLAST),
        .s_axi_wready(slice1_20_M_AXI_WREADY),
        .s_axi_wstrb(slice1_20_M_AXI_WSTRB),
        .s_axi_wvalid(slice1_20_M_AXI_WVALID));
  (* X_CORE_INFO = "axi_vip_v1_1_8_top,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S02_0 vip_S02
       (.aclk(hbm_aclk),
        .aresetn(hbm_reset_sync_SLR0_interconnect_aresetn),
        .m_axi_araddr(vip_S02_M_AXI_ARADDR),
        .m_axi_arburst(vip_S02_M_AXI_ARBURST),
        .m_axi_arcache(NLW_vip_S02_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arlen(vip_S02_M_AXI_ARLEN),
        .m_axi_arlock(NLW_vip_S02_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_vip_S02_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_vip_S02_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(vip_S02_M_AXI_ARREADY),
        .m_axi_arvalid(vip_S02_M_AXI_ARVALID),
        .m_axi_awaddr(vip_S02_M_AXI_AWADDR),
        .m_axi_awburst(vip_S02_M_AXI_AWBURST),
        .m_axi_awcache(NLW_vip_S02_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awlen(vip_S02_M_AXI_AWLEN),
        .m_axi_awlock(NLW_vip_S02_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_vip_S02_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_vip_S02_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(vip_S02_M_AXI_AWREADY),
        .m_axi_awvalid(vip_S02_M_AXI_AWVALID),
        .m_axi_bready(vip_S02_M_AXI_BREADY),
        .m_axi_bresp(vip_S02_M_AXI_BRESP),
        .m_axi_bvalid(vip_S02_M_AXI_BVALID),
        .m_axi_rdata(vip_S02_M_AXI_RDATA),
        .m_axi_rlast(vip_S02_M_AXI_RLAST),
        .m_axi_rready(vip_S02_M_AXI_RREADY),
        .m_axi_rresp(vip_S02_M_AXI_RRESP),
        .m_axi_rvalid(vip_S02_M_AXI_RVALID),
        .m_axi_wdata(vip_S02_M_AXI_WDATA),
        .m_axi_wlast(vip_S02_M_AXI_WLAST),
        .m_axi_wready(vip_S02_M_AXI_WREADY),
        .m_axi_wstrb(vip_S02_M_AXI_WSTRB),
        .m_axi_wvalid(vip_S02_M_AXI_WVALID),
        .s_axi_araddr(slice2_21_M_AXI_ARADDR),
        .s_axi_arburst(slice2_21_M_AXI_ARBURST),
        .s_axi_arcache(slice2_21_M_AXI_ARCACHE),
        .s_axi_arlen(slice2_21_M_AXI_ARLEN),
        .s_axi_arlock(slice2_21_M_AXI_ARLOCK),
        .s_axi_arprot(slice2_21_M_AXI_ARPROT),
        .s_axi_arqos(slice2_21_M_AXI_ARQOS),
        .s_axi_arready(slice2_21_M_AXI_ARREADY),
        .s_axi_arvalid(slice2_21_M_AXI_ARVALID),
        .s_axi_awaddr(slice2_21_M_AXI_AWADDR),
        .s_axi_awburst(slice2_21_M_AXI_AWBURST),
        .s_axi_awcache(slice2_21_M_AXI_AWCACHE),
        .s_axi_awlen(slice2_21_M_AXI_AWLEN),
        .s_axi_awlock(slice2_21_M_AXI_AWLOCK),
        .s_axi_awprot(slice2_21_M_AXI_AWPROT),
        .s_axi_awqos(slice2_21_M_AXI_AWQOS),
        .s_axi_awready(slice2_21_M_AXI_AWREADY),
        .s_axi_awvalid(slice2_21_M_AXI_AWVALID),
        .s_axi_bready(slice2_21_M_AXI_BREADY),
        .s_axi_bresp(slice2_21_M_AXI_BRESP),
        .s_axi_bvalid(slice2_21_M_AXI_BVALID),
        .s_axi_rdata(slice2_21_M_AXI_RDATA),
        .s_axi_rlast(slice2_21_M_AXI_RLAST),
        .s_axi_rready(slice2_21_M_AXI_RREADY),
        .s_axi_rresp(slice2_21_M_AXI_RRESP),
        .s_axi_rvalid(slice2_21_M_AXI_RVALID),
        .s_axi_wdata(slice2_21_M_AXI_WDATA),
        .s_axi_wlast(slice2_21_M_AXI_WLAST),
        .s_axi_wready(slice2_21_M_AXI_WREADY),
        .s_axi_wstrb(slice2_21_M_AXI_WSTRB),
        .s_axi_wvalid(slice2_21_M_AXI_WVALID));
  (* X_CORE_INFO = "axi_vip_v1_1_8_top,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S03_0 vip_S03
       (.aclk(hbm_aclk),
        .aresetn(hbm_reset_sync_SLR0_interconnect_aresetn),
        .m_axi_araddr(vip_S03_M_AXI_ARADDR),
        .m_axi_arburst(vip_S03_M_AXI_ARBURST),
        .m_axi_arcache(NLW_vip_S03_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arlen(vip_S03_M_AXI_ARLEN),
        .m_axi_arlock(NLW_vip_S03_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_vip_S03_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_vip_S03_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(vip_S03_M_AXI_ARREADY),
        .m_axi_arvalid(vip_S03_M_AXI_ARVALID),
        .m_axi_awaddr(vip_S03_M_AXI_AWADDR),
        .m_axi_awburst(vip_S03_M_AXI_AWBURST),
        .m_axi_awcache(NLW_vip_S03_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awlen(vip_S03_M_AXI_AWLEN),
        .m_axi_awlock(NLW_vip_S03_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_vip_S03_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_vip_S03_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(vip_S03_M_AXI_AWREADY),
        .m_axi_awvalid(vip_S03_M_AXI_AWVALID),
        .m_axi_bready(vip_S03_M_AXI_BREADY),
        .m_axi_bresp(vip_S03_M_AXI_BRESP),
        .m_axi_bvalid(vip_S03_M_AXI_BVALID),
        .m_axi_rdata(vip_S03_M_AXI_RDATA),
        .m_axi_rlast(vip_S03_M_AXI_RLAST),
        .m_axi_rready(vip_S03_M_AXI_RREADY),
        .m_axi_rresp(vip_S03_M_AXI_RRESP),
        .m_axi_rvalid(vip_S03_M_AXI_RVALID),
        .m_axi_wdata(vip_S03_M_AXI_WDATA),
        .m_axi_wlast(vip_S03_M_AXI_WLAST),
        .m_axi_wready(vip_S03_M_AXI_WREADY),
        .m_axi_wstrb(vip_S03_M_AXI_WSTRB),
        .m_axi_wvalid(vip_S03_M_AXI_WVALID),
        .s_axi_araddr(slice3_22_M_AXI_ARADDR),
        .s_axi_arburst(slice3_22_M_AXI_ARBURST),
        .s_axi_arcache(slice3_22_M_AXI_ARCACHE),
        .s_axi_arlen(slice3_22_M_AXI_ARLEN),
        .s_axi_arlock(slice3_22_M_AXI_ARLOCK),
        .s_axi_arprot(slice3_22_M_AXI_ARPROT),
        .s_axi_arqos(slice3_22_M_AXI_ARQOS),
        .s_axi_arready(slice3_22_M_AXI_ARREADY),
        .s_axi_arvalid(slice3_22_M_AXI_ARVALID),
        .s_axi_awaddr(slice3_22_M_AXI_AWADDR),
        .s_axi_awburst(slice3_22_M_AXI_AWBURST),
        .s_axi_awcache(slice3_22_M_AXI_AWCACHE),
        .s_axi_awlen(slice3_22_M_AXI_AWLEN),
        .s_axi_awlock(slice3_22_M_AXI_AWLOCK),
        .s_axi_awprot(slice3_22_M_AXI_AWPROT),
        .s_axi_awqos(slice3_22_M_AXI_AWQOS),
        .s_axi_awready(slice3_22_M_AXI_AWREADY),
        .s_axi_awvalid(slice3_22_M_AXI_AWVALID),
        .s_axi_bready(slice3_22_M_AXI_BREADY),
        .s_axi_bresp(slice3_22_M_AXI_BRESP),
        .s_axi_bvalid(slice3_22_M_AXI_BVALID),
        .s_axi_rdata(slice3_22_M_AXI_RDATA),
        .s_axi_rlast(slice3_22_M_AXI_RLAST),
        .s_axi_rready(slice3_22_M_AXI_RREADY),
        .s_axi_rresp(slice3_22_M_AXI_RRESP),
        .s_axi_rvalid(slice3_22_M_AXI_RVALID),
        .s_axi_wdata(slice3_22_M_AXI_WDATA),
        .s_axi_wlast(slice3_22_M_AXI_WLAST),
        .s_axi_wready(slice3_22_M_AXI_WREADY),
        .s_axi_wstrb(slice3_22_M_AXI_WSTRB),
        .s_axi_wvalid(slice3_22_M_AXI_WVALID));
  (* X_CORE_INFO = "axi_vip_v1_1_8_top,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S04_0 vip_S04
       (.aclk(hbm_aclk),
        .aresetn(hbm_reset_sync_SLR0_interconnect_aresetn),
        .m_axi_araddr(vip_S04_M_AXI_ARADDR),
        .m_axi_arburst(vip_S04_M_AXI_ARBURST),
        .m_axi_arcache(NLW_vip_S04_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arlen(vip_S04_M_AXI_ARLEN),
        .m_axi_arlock(NLW_vip_S04_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_vip_S04_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_vip_S04_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(vip_S04_M_AXI_ARREADY),
        .m_axi_arvalid(vip_S04_M_AXI_ARVALID),
        .m_axi_awaddr(vip_S04_M_AXI_AWADDR),
        .m_axi_awburst(vip_S04_M_AXI_AWBURST),
        .m_axi_awcache(NLW_vip_S04_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awlen(vip_S04_M_AXI_AWLEN),
        .m_axi_awlock(NLW_vip_S04_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_vip_S04_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_vip_S04_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(vip_S04_M_AXI_AWREADY),
        .m_axi_awvalid(vip_S04_M_AXI_AWVALID),
        .m_axi_bready(vip_S04_M_AXI_BREADY),
        .m_axi_bresp(vip_S04_M_AXI_BRESP),
        .m_axi_bvalid(vip_S04_M_AXI_BVALID),
        .m_axi_rdata(vip_S04_M_AXI_RDATA),
        .m_axi_rlast(vip_S04_M_AXI_RLAST),
        .m_axi_rready(vip_S04_M_AXI_RREADY),
        .m_axi_rresp(vip_S04_M_AXI_RRESP),
        .m_axi_rvalid(vip_S04_M_AXI_RVALID),
        .m_axi_wdata(vip_S04_M_AXI_WDATA),
        .m_axi_wlast(vip_S04_M_AXI_WLAST),
        .m_axi_wready(vip_S04_M_AXI_WREADY),
        .m_axi_wstrb(vip_S04_M_AXI_WSTRB),
        .m_axi_wvalid(vip_S04_M_AXI_WVALID),
        .s_axi_araddr(slice4_24_M_AXI_ARADDR),
        .s_axi_arburst(slice4_24_M_AXI_ARBURST),
        .s_axi_arcache(slice4_24_M_AXI_ARCACHE),
        .s_axi_arlen(slice4_24_M_AXI_ARLEN),
        .s_axi_arlock(slice4_24_M_AXI_ARLOCK),
        .s_axi_arprot(slice4_24_M_AXI_ARPROT),
        .s_axi_arqos(slice4_24_M_AXI_ARQOS),
        .s_axi_arready(slice4_24_M_AXI_ARREADY),
        .s_axi_arvalid(slice4_24_M_AXI_ARVALID),
        .s_axi_awaddr(slice4_24_M_AXI_AWADDR),
        .s_axi_awburst(slice4_24_M_AXI_AWBURST),
        .s_axi_awcache(slice4_24_M_AXI_AWCACHE),
        .s_axi_awlen(slice4_24_M_AXI_AWLEN),
        .s_axi_awlock(slice4_24_M_AXI_AWLOCK),
        .s_axi_awprot(slice4_24_M_AXI_AWPROT),
        .s_axi_awqos(slice4_24_M_AXI_AWQOS),
        .s_axi_awready(slice4_24_M_AXI_AWREADY),
        .s_axi_awvalid(slice4_24_M_AXI_AWVALID),
        .s_axi_bready(slice4_24_M_AXI_BREADY),
        .s_axi_bresp(slice4_24_M_AXI_BRESP),
        .s_axi_bvalid(slice4_24_M_AXI_BVALID),
        .s_axi_rdata(slice4_24_M_AXI_RDATA),
        .s_axi_rlast(slice4_24_M_AXI_RLAST),
        .s_axi_rready(slice4_24_M_AXI_RREADY),
        .s_axi_rresp(slice4_24_M_AXI_RRESP),
        .s_axi_rvalid(slice4_24_M_AXI_RVALID),
        .s_axi_wdata(slice4_24_M_AXI_WDATA),
        .s_axi_wlast(slice4_24_M_AXI_WLAST),
        .s_axi_wready(slice4_24_M_AXI_WREADY),
        .s_axi_wstrb(slice4_24_M_AXI_WSTRB),
        .s_axi_wvalid(slice4_24_M_AXI_WVALID));
  (* X_CORE_INFO = "axi_vip_v1_1_8_top,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S05_0 vip_S05
       (.aclk(hbm_aclk),
        .aresetn(hbm_reset_sync_SLR0_interconnect_aresetn),
        .m_axi_araddr(vip_S05_M_AXI_ARADDR),
        .m_axi_arburst(vip_S05_M_AXI_ARBURST),
        .m_axi_arcache(NLW_vip_S05_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arlen(vip_S05_M_AXI_ARLEN),
        .m_axi_arlock(NLW_vip_S05_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_vip_S05_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_vip_S05_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(vip_S05_M_AXI_ARREADY),
        .m_axi_arvalid(vip_S05_M_AXI_ARVALID),
        .m_axi_awaddr(vip_S05_M_AXI_AWADDR),
        .m_axi_awburst(vip_S05_M_AXI_AWBURST),
        .m_axi_awcache(NLW_vip_S05_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awlen(vip_S05_M_AXI_AWLEN),
        .m_axi_awlock(NLW_vip_S05_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_vip_S05_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_vip_S05_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(vip_S05_M_AXI_AWREADY),
        .m_axi_awvalid(vip_S05_M_AXI_AWVALID),
        .m_axi_bready(vip_S05_M_AXI_BREADY),
        .m_axi_bresp(vip_S05_M_AXI_BRESP),
        .m_axi_bvalid(vip_S05_M_AXI_BVALID),
        .m_axi_rdata(vip_S05_M_AXI_RDATA),
        .m_axi_rlast(vip_S05_M_AXI_RLAST),
        .m_axi_rready(vip_S05_M_AXI_RREADY),
        .m_axi_rresp(vip_S05_M_AXI_RRESP),
        .m_axi_rvalid(vip_S05_M_AXI_RVALID),
        .m_axi_wdata(vip_S05_M_AXI_WDATA),
        .m_axi_wlast(vip_S05_M_AXI_WLAST),
        .m_axi_wready(vip_S05_M_AXI_WREADY),
        .m_axi_wstrb(vip_S05_M_AXI_WSTRB),
        .m_axi_wvalid(vip_S05_M_AXI_WVALID),
        .s_axi_araddr(slice5_25_M_AXI_ARADDR),
        .s_axi_arburst(slice5_25_M_AXI_ARBURST),
        .s_axi_arcache(slice5_25_M_AXI_ARCACHE),
        .s_axi_arlen(slice5_25_M_AXI_ARLEN),
        .s_axi_arlock(slice5_25_M_AXI_ARLOCK),
        .s_axi_arprot(slice5_25_M_AXI_ARPROT),
        .s_axi_arqos(slice5_25_M_AXI_ARQOS),
        .s_axi_arready(slice5_25_M_AXI_ARREADY),
        .s_axi_arvalid(slice5_25_M_AXI_ARVALID),
        .s_axi_awaddr(slice5_25_M_AXI_AWADDR),
        .s_axi_awburst(slice5_25_M_AXI_AWBURST),
        .s_axi_awcache(slice5_25_M_AXI_AWCACHE),
        .s_axi_awlen(slice5_25_M_AXI_AWLEN),
        .s_axi_awlock(slice5_25_M_AXI_AWLOCK),
        .s_axi_awprot(slice5_25_M_AXI_AWPROT),
        .s_axi_awqos(slice5_25_M_AXI_AWQOS),
        .s_axi_awready(slice5_25_M_AXI_AWREADY),
        .s_axi_awvalid(slice5_25_M_AXI_AWVALID),
        .s_axi_bready(slice5_25_M_AXI_BREADY),
        .s_axi_bresp(slice5_25_M_AXI_BRESP),
        .s_axi_bvalid(slice5_25_M_AXI_BVALID),
        .s_axi_rdata(slice5_25_M_AXI_RDATA),
        .s_axi_rlast(slice5_25_M_AXI_RLAST),
        .s_axi_rready(slice5_25_M_AXI_RREADY),
        .s_axi_rresp(slice5_25_M_AXI_RRESP),
        .s_axi_rvalid(slice5_25_M_AXI_RVALID),
        .s_axi_wdata(slice5_25_M_AXI_WDATA),
        .s_axi_wlast(slice5_25_M_AXI_WLAST),
        .s_axi_wready(slice5_25_M_AXI_WREADY),
        .s_axi_wstrb(slice5_25_M_AXI_WSTRB),
        .s_axi_wvalid(slice5_25_M_AXI_WVALID));
  (* X_CORE_INFO = "axi_vip_v1_1_8_top,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S06_0 vip_S06
       (.aclk(hbm_aclk),
        .aresetn(hbm_reset_sync_SLR0_interconnect_aresetn),
        .m_axi_araddr(vip_S06_M_AXI_ARADDR),
        .m_axi_arburst(vip_S06_M_AXI_ARBURST),
        .m_axi_arcache(NLW_vip_S06_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arlen(vip_S06_M_AXI_ARLEN),
        .m_axi_arlock(NLW_vip_S06_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_vip_S06_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_vip_S06_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(vip_S06_M_AXI_ARREADY),
        .m_axi_arvalid(vip_S06_M_AXI_ARVALID),
        .m_axi_awaddr(vip_S06_M_AXI_AWADDR),
        .m_axi_awburst(vip_S06_M_AXI_AWBURST),
        .m_axi_awcache(NLW_vip_S06_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awlen(vip_S06_M_AXI_AWLEN),
        .m_axi_awlock(NLW_vip_S06_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_vip_S06_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_vip_S06_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(vip_S06_M_AXI_AWREADY),
        .m_axi_awvalid(vip_S06_M_AXI_AWVALID),
        .m_axi_bready(vip_S06_M_AXI_BREADY),
        .m_axi_bresp(vip_S06_M_AXI_BRESP),
        .m_axi_bvalid(vip_S06_M_AXI_BVALID),
        .m_axi_rdata(vip_S06_M_AXI_RDATA),
        .m_axi_rlast(vip_S06_M_AXI_RLAST),
        .m_axi_rready(vip_S06_M_AXI_RREADY),
        .m_axi_rresp(vip_S06_M_AXI_RRESP),
        .m_axi_rvalid(vip_S06_M_AXI_RVALID),
        .m_axi_wdata(vip_S06_M_AXI_WDATA),
        .m_axi_wlast(vip_S06_M_AXI_WLAST),
        .m_axi_wready(vip_S06_M_AXI_WREADY),
        .m_axi_wstrb(vip_S06_M_AXI_WSTRB),
        .m_axi_wvalid(vip_S06_M_AXI_WVALID),
        .s_axi_araddr(slice6_26_M_AXI_ARADDR),
        .s_axi_arburst(slice6_26_M_AXI_ARBURST),
        .s_axi_arcache(slice6_26_M_AXI_ARCACHE),
        .s_axi_arlen(slice6_26_M_AXI_ARLEN),
        .s_axi_arlock(slice6_26_M_AXI_ARLOCK),
        .s_axi_arprot(slice6_26_M_AXI_ARPROT),
        .s_axi_arqos(slice6_26_M_AXI_ARQOS),
        .s_axi_arready(slice6_26_M_AXI_ARREADY),
        .s_axi_arvalid(slice6_26_M_AXI_ARVALID),
        .s_axi_awaddr(slice6_26_M_AXI_AWADDR),
        .s_axi_awburst(slice6_26_M_AXI_AWBURST),
        .s_axi_awcache(slice6_26_M_AXI_AWCACHE),
        .s_axi_awlen(slice6_26_M_AXI_AWLEN),
        .s_axi_awlock(slice6_26_M_AXI_AWLOCK),
        .s_axi_awprot(slice6_26_M_AXI_AWPROT),
        .s_axi_awqos(slice6_26_M_AXI_AWQOS),
        .s_axi_awready(slice6_26_M_AXI_AWREADY),
        .s_axi_awvalid(slice6_26_M_AXI_AWVALID),
        .s_axi_bready(slice6_26_M_AXI_BREADY),
        .s_axi_bresp(slice6_26_M_AXI_BRESP),
        .s_axi_bvalid(slice6_26_M_AXI_BVALID),
        .s_axi_rdata(slice6_26_M_AXI_RDATA),
        .s_axi_rlast(slice6_26_M_AXI_RLAST),
        .s_axi_rready(slice6_26_M_AXI_RREADY),
        .s_axi_rresp(slice6_26_M_AXI_RRESP),
        .s_axi_rvalid(slice6_26_M_AXI_RVALID),
        .s_axi_wdata(slice6_26_M_AXI_WDATA),
        .s_axi_wlast(slice6_26_M_AXI_WLAST),
        .s_axi_wready(slice6_26_M_AXI_WREADY),
        .s_axi_wstrb(slice6_26_M_AXI_WSTRB),
        .s_axi_wvalid(slice6_26_M_AXI_WVALID));
endmodule

(* X_CORE_INFO = "axi_apb_bridge,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_axi_apb_bridge_inst_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_apb_paddr,
    m_apb_psel,
    m_apb_penable,
    m_apb_pwrite,
    m_apb_pwdata,
    m_apb_pready,
    m_apb_prdata,
    m_apb_prdata2,
    m_apb_pslverr);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [22:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [22:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output [22:0]m_apb_paddr;
  output [1:0]m_apb_psel;
  output m_apb_penable;
  output m_apb_pwrite;
  output [31:0]m_apb_pwdata;
  input [1:0]m_apb_pready;
  input [31:0]m_apb_prdata;
  input [31:0]m_apb_prdata2;
  input [1:0]m_apb_pslverr;


endmodule

(* X_CORE_INFO = "hbm_v1_0_9,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_hbm_inst_0
   (HBM_REF_CLK_0,
    HBM_REF_CLK_1,
    AXI_20_ACLK,
    AXI_20_ARESET_N,
    AXI_20_ARADDR,
    AXI_20_ARBURST,
    AXI_20_ARID,
    AXI_20_ARLEN,
    AXI_20_ARSIZE,
    AXI_20_ARVALID,
    AXI_20_AWADDR,
    AXI_20_AWBURST,
    AXI_20_AWID,
    AXI_20_AWLEN,
    AXI_20_AWSIZE,
    AXI_20_AWVALID,
    AXI_20_RREADY,
    AXI_20_BREADY,
    AXI_20_WDATA,
    AXI_20_WLAST,
    AXI_20_WSTRB,
    AXI_20_WDATA_PARITY,
    AXI_20_WVALID,
    AXI_21_ACLK,
    AXI_21_ARESET_N,
    AXI_21_ARADDR,
    AXI_21_ARBURST,
    AXI_21_ARID,
    AXI_21_ARLEN,
    AXI_21_ARSIZE,
    AXI_21_ARVALID,
    AXI_21_AWADDR,
    AXI_21_AWBURST,
    AXI_21_AWID,
    AXI_21_AWLEN,
    AXI_21_AWSIZE,
    AXI_21_AWVALID,
    AXI_21_RREADY,
    AXI_21_BREADY,
    AXI_21_WDATA,
    AXI_21_WLAST,
    AXI_21_WSTRB,
    AXI_21_WDATA_PARITY,
    AXI_21_WVALID,
    AXI_22_ACLK,
    AXI_22_ARESET_N,
    AXI_22_ARADDR,
    AXI_22_ARBURST,
    AXI_22_ARID,
    AXI_22_ARLEN,
    AXI_22_ARSIZE,
    AXI_22_ARVALID,
    AXI_22_AWADDR,
    AXI_22_AWBURST,
    AXI_22_AWID,
    AXI_22_AWLEN,
    AXI_22_AWSIZE,
    AXI_22_AWVALID,
    AXI_22_RREADY,
    AXI_22_BREADY,
    AXI_22_WDATA,
    AXI_22_WLAST,
    AXI_22_WSTRB,
    AXI_22_WDATA_PARITY,
    AXI_22_WVALID,
    AXI_23_ACLK,
    AXI_23_ARESET_N,
    AXI_23_ARADDR,
    AXI_23_ARBURST,
    AXI_23_ARID,
    AXI_23_ARLEN,
    AXI_23_ARSIZE,
    AXI_23_ARVALID,
    AXI_23_AWADDR,
    AXI_23_AWBURST,
    AXI_23_AWID,
    AXI_23_AWLEN,
    AXI_23_AWSIZE,
    AXI_23_AWVALID,
    AXI_23_RREADY,
    AXI_23_BREADY,
    AXI_23_WDATA,
    AXI_23_WLAST,
    AXI_23_WSTRB,
    AXI_23_WDATA_PARITY,
    AXI_23_WVALID,
    AXI_24_ACLK,
    AXI_24_ARESET_N,
    AXI_24_ARADDR,
    AXI_24_ARBURST,
    AXI_24_ARID,
    AXI_24_ARLEN,
    AXI_24_ARSIZE,
    AXI_24_ARVALID,
    AXI_24_AWADDR,
    AXI_24_AWBURST,
    AXI_24_AWID,
    AXI_24_AWLEN,
    AXI_24_AWSIZE,
    AXI_24_AWVALID,
    AXI_24_RREADY,
    AXI_24_BREADY,
    AXI_24_WDATA,
    AXI_24_WLAST,
    AXI_24_WSTRB,
    AXI_24_WDATA_PARITY,
    AXI_24_WVALID,
    AXI_25_ACLK,
    AXI_25_ARESET_N,
    AXI_25_ARADDR,
    AXI_25_ARBURST,
    AXI_25_ARID,
    AXI_25_ARLEN,
    AXI_25_ARSIZE,
    AXI_25_ARVALID,
    AXI_25_AWADDR,
    AXI_25_AWBURST,
    AXI_25_AWID,
    AXI_25_AWLEN,
    AXI_25_AWSIZE,
    AXI_25_AWVALID,
    AXI_25_RREADY,
    AXI_25_BREADY,
    AXI_25_WDATA,
    AXI_25_WLAST,
    AXI_25_WSTRB,
    AXI_25_WDATA_PARITY,
    AXI_25_WVALID,
    AXI_26_ACLK,
    AXI_26_ARESET_N,
    AXI_26_ARADDR,
    AXI_26_ARBURST,
    AXI_26_ARID,
    AXI_26_ARLEN,
    AXI_26_ARSIZE,
    AXI_26_ARVALID,
    AXI_26_AWADDR,
    AXI_26_AWBURST,
    AXI_26_AWID,
    AXI_26_AWLEN,
    AXI_26_AWSIZE,
    AXI_26_AWVALID,
    AXI_26_RREADY,
    AXI_26_BREADY,
    AXI_26_WDATA,
    AXI_26_WLAST,
    AXI_26_WSTRB,
    AXI_26_WDATA_PARITY,
    AXI_26_WVALID,
    APB_0_PWDATA,
    APB_0_PADDR,
    APB_0_PCLK,
    APB_0_PENABLE,
    APB_0_PRESET_N,
    APB_0_PSEL,
    APB_0_PWRITE,
    APB_1_PWDATA,
    APB_1_PADDR,
    APB_1_PCLK,
    APB_1_PENABLE,
    APB_1_PRESET_N,
    APB_1_PSEL,
    APB_1_PWRITE,
    AXI_20_ARREADY,
    AXI_20_AWREADY,
    AXI_20_RDATA_PARITY,
    AXI_20_RDATA,
    AXI_20_RID,
    AXI_20_RLAST,
    AXI_20_RRESP,
    AXI_20_RVALID,
    AXI_20_WREADY,
    AXI_20_BID,
    AXI_20_BRESP,
    AXI_20_BVALID,
    AXI_21_ARREADY,
    AXI_21_AWREADY,
    AXI_21_RDATA_PARITY,
    AXI_21_RDATA,
    AXI_21_RID,
    AXI_21_RLAST,
    AXI_21_RRESP,
    AXI_21_RVALID,
    AXI_21_WREADY,
    AXI_21_BID,
    AXI_21_BRESP,
    AXI_21_BVALID,
    AXI_22_ARREADY,
    AXI_22_AWREADY,
    AXI_22_RDATA_PARITY,
    AXI_22_RDATA,
    AXI_22_RID,
    AXI_22_RLAST,
    AXI_22_RRESP,
    AXI_22_RVALID,
    AXI_22_WREADY,
    AXI_22_BID,
    AXI_22_BRESP,
    AXI_22_BVALID,
    AXI_23_ARREADY,
    AXI_23_AWREADY,
    AXI_23_RDATA_PARITY,
    AXI_23_RDATA,
    AXI_23_RID,
    AXI_23_RLAST,
    AXI_23_RRESP,
    AXI_23_RVALID,
    AXI_23_WREADY,
    AXI_23_BID,
    AXI_23_BRESP,
    AXI_23_BVALID,
    AXI_24_ARREADY,
    AXI_24_AWREADY,
    AXI_24_RDATA_PARITY,
    AXI_24_RDATA,
    AXI_24_RID,
    AXI_24_RLAST,
    AXI_24_RRESP,
    AXI_24_RVALID,
    AXI_24_WREADY,
    AXI_24_BID,
    AXI_24_BRESP,
    AXI_24_BVALID,
    AXI_25_ARREADY,
    AXI_25_AWREADY,
    AXI_25_RDATA_PARITY,
    AXI_25_RDATA,
    AXI_25_RID,
    AXI_25_RLAST,
    AXI_25_RRESP,
    AXI_25_RVALID,
    AXI_25_WREADY,
    AXI_25_BID,
    AXI_25_BRESP,
    AXI_25_BVALID,
    AXI_26_ARREADY,
    AXI_26_AWREADY,
    AXI_26_RDATA_PARITY,
    AXI_26_RDATA,
    AXI_26_RID,
    AXI_26_RLAST,
    AXI_26_RRESP,
    AXI_26_RVALID,
    AXI_26_WREADY,
    AXI_26_BID,
    AXI_26_BRESP,
    AXI_26_BVALID,
    APB_0_PRDATA,
    APB_0_PREADY,
    APB_0_PSLVERR,
    APB_1_PRDATA,
    APB_1_PREADY,
    APB_1_PSLVERR,
    apb_complete_0,
    apb_complete_1,
    DRAM_0_STAT_CATTRIP,
    DRAM_0_STAT_TEMP,
    DRAM_1_STAT_CATTRIP,
    DRAM_1_STAT_TEMP);
  input HBM_REF_CLK_0;
  input HBM_REF_CLK_1;
  input AXI_20_ACLK;
  input AXI_20_ARESET_N;
  input [32:0]AXI_20_ARADDR;
  input [1:0]AXI_20_ARBURST;
  input [5:0]AXI_20_ARID;
  input [3:0]AXI_20_ARLEN;
  input [2:0]AXI_20_ARSIZE;
  input AXI_20_ARVALID;
  input [32:0]AXI_20_AWADDR;
  input [1:0]AXI_20_AWBURST;
  input [5:0]AXI_20_AWID;
  input [3:0]AXI_20_AWLEN;
  input [2:0]AXI_20_AWSIZE;
  input AXI_20_AWVALID;
  input AXI_20_RREADY;
  input AXI_20_BREADY;
  input [255:0]AXI_20_WDATA;
  input AXI_20_WLAST;
  input [31:0]AXI_20_WSTRB;
  input [31:0]AXI_20_WDATA_PARITY;
  input AXI_20_WVALID;
  input AXI_21_ACLK;
  input AXI_21_ARESET_N;
  input [32:0]AXI_21_ARADDR;
  input [1:0]AXI_21_ARBURST;
  input [5:0]AXI_21_ARID;
  input [3:0]AXI_21_ARLEN;
  input [2:0]AXI_21_ARSIZE;
  input AXI_21_ARVALID;
  input [32:0]AXI_21_AWADDR;
  input [1:0]AXI_21_AWBURST;
  input [5:0]AXI_21_AWID;
  input [3:0]AXI_21_AWLEN;
  input [2:0]AXI_21_AWSIZE;
  input AXI_21_AWVALID;
  input AXI_21_RREADY;
  input AXI_21_BREADY;
  input [255:0]AXI_21_WDATA;
  input AXI_21_WLAST;
  input [31:0]AXI_21_WSTRB;
  input [31:0]AXI_21_WDATA_PARITY;
  input AXI_21_WVALID;
  input AXI_22_ACLK;
  input AXI_22_ARESET_N;
  input [32:0]AXI_22_ARADDR;
  input [1:0]AXI_22_ARBURST;
  input [5:0]AXI_22_ARID;
  input [3:0]AXI_22_ARLEN;
  input [2:0]AXI_22_ARSIZE;
  input AXI_22_ARVALID;
  input [32:0]AXI_22_AWADDR;
  input [1:0]AXI_22_AWBURST;
  input [5:0]AXI_22_AWID;
  input [3:0]AXI_22_AWLEN;
  input [2:0]AXI_22_AWSIZE;
  input AXI_22_AWVALID;
  input AXI_22_RREADY;
  input AXI_22_BREADY;
  input [255:0]AXI_22_WDATA;
  input AXI_22_WLAST;
  input [31:0]AXI_22_WSTRB;
  input [31:0]AXI_22_WDATA_PARITY;
  input AXI_22_WVALID;
  input AXI_23_ACLK;
  input AXI_23_ARESET_N;
  input [32:0]AXI_23_ARADDR;
  input [1:0]AXI_23_ARBURST;
  input [5:0]AXI_23_ARID;
  input [3:0]AXI_23_ARLEN;
  input [2:0]AXI_23_ARSIZE;
  input AXI_23_ARVALID;
  input [32:0]AXI_23_AWADDR;
  input [1:0]AXI_23_AWBURST;
  input [5:0]AXI_23_AWID;
  input [3:0]AXI_23_AWLEN;
  input [2:0]AXI_23_AWSIZE;
  input AXI_23_AWVALID;
  input AXI_23_RREADY;
  input AXI_23_BREADY;
  input [255:0]AXI_23_WDATA;
  input AXI_23_WLAST;
  input [31:0]AXI_23_WSTRB;
  input [31:0]AXI_23_WDATA_PARITY;
  input AXI_23_WVALID;
  input AXI_24_ACLK;
  input AXI_24_ARESET_N;
  input [32:0]AXI_24_ARADDR;
  input [1:0]AXI_24_ARBURST;
  input [5:0]AXI_24_ARID;
  input [3:0]AXI_24_ARLEN;
  input [2:0]AXI_24_ARSIZE;
  input AXI_24_ARVALID;
  input [32:0]AXI_24_AWADDR;
  input [1:0]AXI_24_AWBURST;
  input [5:0]AXI_24_AWID;
  input [3:0]AXI_24_AWLEN;
  input [2:0]AXI_24_AWSIZE;
  input AXI_24_AWVALID;
  input AXI_24_RREADY;
  input AXI_24_BREADY;
  input [255:0]AXI_24_WDATA;
  input AXI_24_WLAST;
  input [31:0]AXI_24_WSTRB;
  input [31:0]AXI_24_WDATA_PARITY;
  input AXI_24_WVALID;
  input AXI_25_ACLK;
  input AXI_25_ARESET_N;
  input [32:0]AXI_25_ARADDR;
  input [1:0]AXI_25_ARBURST;
  input [5:0]AXI_25_ARID;
  input [3:0]AXI_25_ARLEN;
  input [2:0]AXI_25_ARSIZE;
  input AXI_25_ARVALID;
  input [32:0]AXI_25_AWADDR;
  input [1:0]AXI_25_AWBURST;
  input [5:0]AXI_25_AWID;
  input [3:0]AXI_25_AWLEN;
  input [2:0]AXI_25_AWSIZE;
  input AXI_25_AWVALID;
  input AXI_25_RREADY;
  input AXI_25_BREADY;
  input [255:0]AXI_25_WDATA;
  input AXI_25_WLAST;
  input [31:0]AXI_25_WSTRB;
  input [31:0]AXI_25_WDATA_PARITY;
  input AXI_25_WVALID;
  input AXI_26_ACLK;
  input AXI_26_ARESET_N;
  input [32:0]AXI_26_ARADDR;
  input [1:0]AXI_26_ARBURST;
  input [5:0]AXI_26_ARID;
  input [3:0]AXI_26_ARLEN;
  input [2:0]AXI_26_ARSIZE;
  input AXI_26_ARVALID;
  input [32:0]AXI_26_AWADDR;
  input [1:0]AXI_26_AWBURST;
  input [5:0]AXI_26_AWID;
  input [3:0]AXI_26_AWLEN;
  input [2:0]AXI_26_AWSIZE;
  input AXI_26_AWVALID;
  input AXI_26_RREADY;
  input AXI_26_BREADY;
  input [255:0]AXI_26_WDATA;
  input AXI_26_WLAST;
  input [31:0]AXI_26_WSTRB;
  input [31:0]AXI_26_WDATA_PARITY;
  input AXI_26_WVALID;
  input [31:0]APB_0_PWDATA;
  input [21:0]APB_0_PADDR;
  input APB_0_PCLK;
  input APB_0_PENABLE;
  input APB_0_PRESET_N;
  input APB_0_PSEL;
  input APB_0_PWRITE;
  input [31:0]APB_1_PWDATA;
  input [21:0]APB_1_PADDR;
  input APB_1_PCLK;
  input APB_1_PENABLE;
  input APB_1_PRESET_N;
  input APB_1_PSEL;
  input APB_1_PWRITE;
  output AXI_20_ARREADY;
  output AXI_20_AWREADY;
  output [31:0]AXI_20_RDATA_PARITY;
  output [255:0]AXI_20_RDATA;
  output [5:0]AXI_20_RID;
  output AXI_20_RLAST;
  output [1:0]AXI_20_RRESP;
  output AXI_20_RVALID;
  output AXI_20_WREADY;
  output [5:0]AXI_20_BID;
  output [1:0]AXI_20_BRESP;
  output AXI_20_BVALID;
  output AXI_21_ARREADY;
  output AXI_21_AWREADY;
  output [31:0]AXI_21_RDATA_PARITY;
  output [255:0]AXI_21_RDATA;
  output [5:0]AXI_21_RID;
  output AXI_21_RLAST;
  output [1:0]AXI_21_RRESP;
  output AXI_21_RVALID;
  output AXI_21_WREADY;
  output [5:0]AXI_21_BID;
  output [1:0]AXI_21_BRESP;
  output AXI_21_BVALID;
  output AXI_22_ARREADY;
  output AXI_22_AWREADY;
  output [31:0]AXI_22_RDATA_PARITY;
  output [255:0]AXI_22_RDATA;
  output [5:0]AXI_22_RID;
  output AXI_22_RLAST;
  output [1:0]AXI_22_RRESP;
  output AXI_22_RVALID;
  output AXI_22_WREADY;
  output [5:0]AXI_22_BID;
  output [1:0]AXI_22_BRESP;
  output AXI_22_BVALID;
  output AXI_23_ARREADY;
  output AXI_23_AWREADY;
  output [31:0]AXI_23_RDATA_PARITY;
  output [255:0]AXI_23_RDATA;
  output [5:0]AXI_23_RID;
  output AXI_23_RLAST;
  output [1:0]AXI_23_RRESP;
  output AXI_23_RVALID;
  output AXI_23_WREADY;
  output [5:0]AXI_23_BID;
  output [1:0]AXI_23_BRESP;
  output AXI_23_BVALID;
  output AXI_24_ARREADY;
  output AXI_24_AWREADY;
  output [31:0]AXI_24_RDATA_PARITY;
  output [255:0]AXI_24_RDATA;
  output [5:0]AXI_24_RID;
  output AXI_24_RLAST;
  output [1:0]AXI_24_RRESP;
  output AXI_24_RVALID;
  output AXI_24_WREADY;
  output [5:0]AXI_24_BID;
  output [1:0]AXI_24_BRESP;
  output AXI_24_BVALID;
  output AXI_25_ARREADY;
  output AXI_25_AWREADY;
  output [31:0]AXI_25_RDATA_PARITY;
  output [255:0]AXI_25_RDATA;
  output [5:0]AXI_25_RID;
  output AXI_25_RLAST;
  output [1:0]AXI_25_RRESP;
  output AXI_25_RVALID;
  output AXI_25_WREADY;
  output [5:0]AXI_25_BID;
  output [1:0]AXI_25_BRESP;
  output AXI_25_BVALID;
  output AXI_26_ARREADY;
  output AXI_26_AWREADY;
  output [31:0]AXI_26_RDATA_PARITY;
  output [255:0]AXI_26_RDATA;
  output [5:0]AXI_26_RID;
  output AXI_26_RLAST;
  output [1:0]AXI_26_RRESP;
  output AXI_26_RVALID;
  output AXI_26_WREADY;
  output [5:0]AXI_26_BID;
  output [1:0]AXI_26_BRESP;
  output AXI_26_BVALID;
  output [31:0]APB_0_PRDATA;
  output APB_0_PREADY;
  output APB_0_PSLVERR;
  output [31:0]APB_1_PRDATA;
  output APB_1_PREADY;
  output APB_1_PSLVERR;
  output apb_complete_0;
  output apb_complete_1;
  output DRAM_0_STAT_CATTRIP;
  output [6:0]DRAM_0_STAT_TEMP;
  output DRAM_1_STAT_CATTRIP;
  output [6:0]DRAM_1_STAT_TEMP;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_hbm_reset_sync_SLR0_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_hbm_reset_sync_SLR2_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_5dca_init_concat_0,xlconcat_v2_1_4_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlconcat_v2_1_4_xlconcat,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_init_concat_0
   (In0,
    In1,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  output [1:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;

  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* X_CORE_INFO = "util_reduced_logic_v2_0_4_util_reduced_logic,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_init_reduce_0
   (Op1,
    Res);
  input [1:0]Op1;
  output Res;


endmodule

(* X_CORE_INFO = "bd_831b,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect0_23_0
   (aclk,
    aclk1,
    aresetn,
    S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awsize,
    S00_AXI_awburst,
    S00_AXI_awlock,
    S00_AXI_awcache,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awvalid,
    S00_AXI_awready,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wvalid,
    S00_AXI_wready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_bready,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arsize,
    S00_AXI_arburst,
    S00_AXI_arlock,
    S00_AXI_arcache,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arvalid,
    S00_AXI_arready,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    S00_AXI_rready,
    M00_AXI_awaddr,
    M00_AXI_awlen,
    M00_AXI_awsize,
    M00_AXI_awburst,
    M00_AXI_awlock,
    M00_AXI_awcache,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awvalid,
    M00_AXI_awready,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wlast,
    M00_AXI_wvalid,
    M00_AXI_wready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_bready,
    M00_AXI_araddr,
    M00_AXI_arlen,
    M00_AXI_arsize,
    M00_AXI_arburst,
    M00_AXI_arlock,
    M00_AXI_arcache,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arvalid,
    M00_AXI_arready,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rlast,
    M00_AXI_rvalid,
    M00_AXI_rready);
  input aclk;
  input aclk1;
  input aresetn;
  input [32:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awsize;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  input S00_AXI_awvalid;
  output S00_AXI_awready;
  input [511:0]S00_AXI_wdata;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wlast;
  input S00_AXI_wvalid;
  output S00_AXI_wready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input S00_AXI_bready;
  input [32:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  input S00_AXI_arvalid;
  output S00_AXI_arready;
  output [511:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rlast;
  output S00_AXI_rvalid;
  input S00_AXI_rready;
  output [32:0]M00_AXI_awaddr;
  output [3:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awsize;
  output [1:0]M00_AXI_awburst;
  output [1:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  output M00_AXI_awvalid;
  input M00_AXI_awready;
  output [255:0]M00_AXI_wdata;
  output [31:0]M00_AXI_wstrb;
  output M00_AXI_wlast;
  output M00_AXI_wvalid;
  input M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  output M00_AXI_bready;
  output [32:0]M00_AXI_araddr;
  output [3:0]M00_AXI_arlen;
  output [2:0]M00_AXI_arsize;
  output [1:0]M00_AXI_arburst;
  output [1:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  output M00_AXI_arvalid;
  input M00_AXI_arready;
  input [255:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rlast;
  input M00_AXI_rvalid;
  output M00_AXI_rready;


endmodule

(* X_CORE_INFO = "bd_52ea,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect1_20_0
   (aclk,
    aclk1,
    aresetn,
    S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awsize,
    S00_AXI_awburst,
    S00_AXI_awlock,
    S00_AXI_awcache,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awvalid,
    S00_AXI_awready,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wvalid,
    S00_AXI_wready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_bready,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arsize,
    S00_AXI_arburst,
    S00_AXI_arlock,
    S00_AXI_arcache,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arvalid,
    S00_AXI_arready,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    S00_AXI_rready,
    M00_AXI_awaddr,
    M00_AXI_awlen,
    M00_AXI_awsize,
    M00_AXI_awburst,
    M00_AXI_awlock,
    M00_AXI_awcache,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awvalid,
    M00_AXI_awready,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wlast,
    M00_AXI_wvalid,
    M00_AXI_wready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_bready,
    M00_AXI_araddr,
    M00_AXI_arlen,
    M00_AXI_arsize,
    M00_AXI_arburst,
    M00_AXI_arlock,
    M00_AXI_arcache,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arvalid,
    M00_AXI_arready,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rlast,
    M00_AXI_rvalid,
    M00_AXI_rready);
  input aclk;
  input aclk1;
  input aresetn;
  input [63:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awsize;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  input S00_AXI_awvalid;
  output S00_AXI_awready;
  input [31:0]S00_AXI_wdata;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wlast;
  input S00_AXI_wvalid;
  output S00_AXI_wready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input S00_AXI_bready;
  input [63:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  input S00_AXI_arvalid;
  output S00_AXI_arready;
  output [31:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rlast;
  output S00_AXI_rvalid;
  input S00_AXI_rready;
  output [32:0]M00_AXI_awaddr;
  output [3:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awsize;
  output [1:0]M00_AXI_awburst;
  output [1:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  output M00_AXI_awvalid;
  input M00_AXI_awready;
  output [255:0]M00_AXI_wdata;
  output [31:0]M00_AXI_wstrb;
  output M00_AXI_wlast;
  output M00_AXI_wvalid;
  input M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  output M00_AXI_bready;
  output [32:0]M00_AXI_araddr;
  output [3:0]M00_AXI_arlen;
  output [2:0]M00_AXI_arsize;
  output [1:0]M00_AXI_arburst;
  output [1:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  output M00_AXI_arvalid;
  input M00_AXI_arready;
  input [255:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rlast;
  input M00_AXI_rvalid;
  output M00_AXI_rready;


endmodule

(* X_CORE_INFO = "bd_a1bb,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect2_21_0
   (aclk,
    aclk1,
    aresetn,
    S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awsize,
    S00_AXI_awburst,
    S00_AXI_awlock,
    S00_AXI_awcache,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awvalid,
    S00_AXI_awready,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wvalid,
    S00_AXI_wready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_bready,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arsize,
    S00_AXI_arburst,
    S00_AXI_arlock,
    S00_AXI_arcache,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arvalid,
    S00_AXI_arready,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    S00_AXI_rready,
    M00_AXI_awaddr,
    M00_AXI_awlen,
    M00_AXI_awsize,
    M00_AXI_awburst,
    M00_AXI_awlock,
    M00_AXI_awcache,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awvalid,
    M00_AXI_awready,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wlast,
    M00_AXI_wvalid,
    M00_AXI_wready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_bready,
    M00_AXI_araddr,
    M00_AXI_arlen,
    M00_AXI_arsize,
    M00_AXI_arburst,
    M00_AXI_arlock,
    M00_AXI_arcache,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arvalid,
    M00_AXI_arready,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rlast,
    M00_AXI_rvalid,
    M00_AXI_rready);
  input aclk;
  input aclk1;
  input aresetn;
  input [63:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awsize;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  input S00_AXI_awvalid;
  output S00_AXI_awready;
  input [511:0]S00_AXI_wdata;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wlast;
  input S00_AXI_wvalid;
  output S00_AXI_wready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input S00_AXI_bready;
  input [63:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  input S00_AXI_arvalid;
  output S00_AXI_arready;
  output [511:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rlast;
  output S00_AXI_rvalid;
  input S00_AXI_rready;
  output [32:0]M00_AXI_awaddr;
  output [3:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awsize;
  output [1:0]M00_AXI_awburst;
  output [1:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  output M00_AXI_awvalid;
  input M00_AXI_awready;
  output [255:0]M00_AXI_wdata;
  output [31:0]M00_AXI_wstrb;
  output M00_AXI_wlast;
  output M00_AXI_wvalid;
  input M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  output M00_AXI_bready;
  output [32:0]M00_AXI_araddr;
  output [3:0]M00_AXI_arlen;
  output [2:0]M00_AXI_arsize;
  output [1:0]M00_AXI_arburst;
  output [1:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  output M00_AXI_arvalid;
  input M00_AXI_arready;
  input [255:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rlast;
  input M00_AXI_rvalid;
  output M00_AXI_rready;


endmodule

(* X_CORE_INFO = "bd_704a,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect3_22_0
   (aclk,
    aclk1,
    aresetn,
    S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awsize,
    S00_AXI_awburst,
    S00_AXI_awlock,
    S00_AXI_awcache,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awvalid,
    S00_AXI_awready,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wvalid,
    S00_AXI_wready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_bready,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arsize,
    S00_AXI_arburst,
    S00_AXI_arlock,
    S00_AXI_arcache,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arvalid,
    S00_AXI_arready,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    S00_AXI_rready,
    M00_AXI_awaddr,
    M00_AXI_awlen,
    M00_AXI_awsize,
    M00_AXI_awburst,
    M00_AXI_awlock,
    M00_AXI_awcache,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awvalid,
    M00_AXI_awready,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wlast,
    M00_AXI_wvalid,
    M00_AXI_wready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_bready,
    M00_AXI_araddr,
    M00_AXI_arlen,
    M00_AXI_arsize,
    M00_AXI_arburst,
    M00_AXI_arlock,
    M00_AXI_arcache,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arvalid,
    M00_AXI_arready,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rlast,
    M00_AXI_rvalid,
    M00_AXI_rready);
  input aclk;
  input aclk1;
  input aresetn;
  input [63:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awsize;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  input S00_AXI_awvalid;
  output S00_AXI_awready;
  input [31:0]S00_AXI_wdata;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wlast;
  input S00_AXI_wvalid;
  output S00_AXI_wready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input S00_AXI_bready;
  input [63:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  input S00_AXI_arvalid;
  output S00_AXI_arready;
  output [31:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rlast;
  output S00_AXI_rvalid;
  input S00_AXI_rready;
  output [32:0]M00_AXI_awaddr;
  output [3:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awsize;
  output [1:0]M00_AXI_awburst;
  output [1:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  output M00_AXI_awvalid;
  input M00_AXI_awready;
  output [255:0]M00_AXI_wdata;
  output [31:0]M00_AXI_wstrb;
  output M00_AXI_wlast;
  output M00_AXI_wvalid;
  input M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  output M00_AXI_bready;
  output [32:0]M00_AXI_araddr;
  output [3:0]M00_AXI_arlen;
  output [2:0]M00_AXI_arsize;
  output [1:0]M00_AXI_arburst;
  output [1:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  output M00_AXI_arvalid;
  input M00_AXI_arready;
  input [255:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rlast;
  input M00_AXI_rvalid;
  output M00_AXI_rready;


endmodule

(* X_CORE_INFO = "bd_c6ab,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect4_24_0
   (aclk,
    aclk1,
    aresetn,
    S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awsize,
    S00_AXI_awburst,
    S00_AXI_awlock,
    S00_AXI_awcache,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awvalid,
    S00_AXI_awready,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wvalid,
    S00_AXI_wready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_bready,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arsize,
    S00_AXI_arburst,
    S00_AXI_arlock,
    S00_AXI_arcache,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arvalid,
    S00_AXI_arready,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    S00_AXI_rready,
    M00_AXI_awaddr,
    M00_AXI_awlen,
    M00_AXI_awsize,
    M00_AXI_awburst,
    M00_AXI_awlock,
    M00_AXI_awcache,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awvalid,
    M00_AXI_awready,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wlast,
    M00_AXI_wvalid,
    M00_AXI_wready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_bready,
    M00_AXI_araddr,
    M00_AXI_arlen,
    M00_AXI_arsize,
    M00_AXI_arburst,
    M00_AXI_arlock,
    M00_AXI_arcache,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arvalid,
    M00_AXI_arready,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rlast,
    M00_AXI_rvalid,
    M00_AXI_rready);
  input aclk;
  input aclk1;
  input aresetn;
  input [63:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awsize;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  input S00_AXI_awvalid;
  output S00_AXI_awready;
  input [31:0]S00_AXI_wdata;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wlast;
  input S00_AXI_wvalid;
  output S00_AXI_wready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input S00_AXI_bready;
  input [63:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  input S00_AXI_arvalid;
  output S00_AXI_arready;
  output [31:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rlast;
  output S00_AXI_rvalid;
  input S00_AXI_rready;
  output [32:0]M00_AXI_awaddr;
  output [3:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awsize;
  output [1:0]M00_AXI_awburst;
  output [1:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  output M00_AXI_awvalid;
  input M00_AXI_awready;
  output [255:0]M00_AXI_wdata;
  output [31:0]M00_AXI_wstrb;
  output M00_AXI_wlast;
  output M00_AXI_wvalid;
  input M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  output M00_AXI_bready;
  output [32:0]M00_AXI_araddr;
  output [3:0]M00_AXI_arlen;
  output [2:0]M00_AXI_arsize;
  output [1:0]M00_AXI_arburst;
  output [1:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  output M00_AXI_arvalid;
  input M00_AXI_arready;
  input [255:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rlast;
  input M00_AXI_rvalid;
  output M00_AXI_rready;


endmodule

(* X_CORE_INFO = "bd_d7fb,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect5_25_0
   (aclk,
    aclk1,
    aresetn,
    S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awsize,
    S00_AXI_awburst,
    S00_AXI_awlock,
    S00_AXI_awcache,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awvalid,
    S00_AXI_awready,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wvalid,
    S00_AXI_wready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_bready,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arsize,
    S00_AXI_arburst,
    S00_AXI_arlock,
    S00_AXI_arcache,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arvalid,
    S00_AXI_arready,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    S00_AXI_rready,
    M00_AXI_awaddr,
    M00_AXI_awlen,
    M00_AXI_awsize,
    M00_AXI_awburst,
    M00_AXI_awlock,
    M00_AXI_awcache,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awvalid,
    M00_AXI_awready,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wlast,
    M00_AXI_wvalid,
    M00_AXI_wready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_bready,
    M00_AXI_araddr,
    M00_AXI_arlen,
    M00_AXI_arsize,
    M00_AXI_arburst,
    M00_AXI_arlock,
    M00_AXI_arcache,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arvalid,
    M00_AXI_arready,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rlast,
    M00_AXI_rvalid,
    M00_AXI_rready);
  input aclk;
  input aclk1;
  input aresetn;
  input [63:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awsize;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  input S00_AXI_awvalid;
  output S00_AXI_awready;
  input [31:0]S00_AXI_wdata;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wlast;
  input S00_AXI_wvalid;
  output S00_AXI_wready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input S00_AXI_bready;
  input [63:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  input S00_AXI_arvalid;
  output S00_AXI_arready;
  output [31:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rlast;
  output S00_AXI_rvalid;
  input S00_AXI_rready;
  output [32:0]M00_AXI_awaddr;
  output [3:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awsize;
  output [1:0]M00_AXI_awburst;
  output [1:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  output M00_AXI_awvalid;
  input M00_AXI_awready;
  output [255:0]M00_AXI_wdata;
  output [31:0]M00_AXI_wstrb;
  output M00_AXI_wlast;
  output M00_AXI_wvalid;
  input M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  output M00_AXI_bready;
  output [32:0]M00_AXI_araddr;
  output [3:0]M00_AXI_arlen;
  output [2:0]M00_AXI_arsize;
  output [1:0]M00_AXI_arburst;
  output [1:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  output M00_AXI_arvalid;
  input M00_AXI_arready;
  input [255:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rlast;
  input M00_AXI_rvalid;
  output M00_AXI_rready;


endmodule

(* X_CORE_INFO = "bd_e40b,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect6_26_0
   (aclk,
    aclk1,
    aresetn,
    S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awsize,
    S00_AXI_awburst,
    S00_AXI_awlock,
    S00_AXI_awcache,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awvalid,
    S00_AXI_awready,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wvalid,
    S00_AXI_wready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_bready,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arsize,
    S00_AXI_arburst,
    S00_AXI_arlock,
    S00_AXI_arcache,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arvalid,
    S00_AXI_arready,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    S00_AXI_rready,
    M00_AXI_awaddr,
    M00_AXI_awlen,
    M00_AXI_awsize,
    M00_AXI_awburst,
    M00_AXI_awlock,
    M00_AXI_awcache,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awvalid,
    M00_AXI_awready,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wlast,
    M00_AXI_wvalid,
    M00_AXI_wready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_bready,
    M00_AXI_araddr,
    M00_AXI_arlen,
    M00_AXI_arsize,
    M00_AXI_arburst,
    M00_AXI_arlock,
    M00_AXI_arcache,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arvalid,
    M00_AXI_arready,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rlast,
    M00_AXI_rvalid,
    M00_AXI_rready);
  input aclk;
  input aclk1;
  input aresetn;
  input [63:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awsize;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  input S00_AXI_awvalid;
  output S00_AXI_awready;
  input [63:0]S00_AXI_wdata;
  input [7:0]S00_AXI_wstrb;
  input S00_AXI_wlast;
  input S00_AXI_wvalid;
  output S00_AXI_wready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input S00_AXI_bready;
  input [63:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  input S00_AXI_arvalid;
  output S00_AXI_arready;
  output [63:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rlast;
  output S00_AXI_rvalid;
  input S00_AXI_rready;
  output [32:0]M00_AXI_awaddr;
  output [3:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awsize;
  output [1:0]M00_AXI_awburst;
  output [1:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  output M00_AXI_awvalid;
  input M00_AXI_awready;
  output [255:0]M00_AXI_wdata;
  output [31:0]M00_AXI_wstrb;
  output M00_AXI_wlast;
  output M00_AXI_wvalid;
  input M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  output M00_AXI_bready;
  output [32:0]M00_AXI_araddr;
  output [3:0]M00_AXI_arlen;
  output [2:0]M00_AXI_arsize;
  output [1:0]M00_AXI_arburst;
  output [1:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  output M00_AXI_arvalid;
  input M00_AXI_arready;
  input [255:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rlast;
  input M00_AXI_rvalid;
  output M00_AXI_rready;


endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_22_axi_register_slice,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice0_23_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [32:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [255:0]s_axi_wdata;
  input [31:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [32:0]s_axi_araddr;
  input [3:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [255:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [32:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [255:0]m_axi_wdata;
  output [31:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [32:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [255:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_22_axi_register_slice,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice1_20_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [32:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [255:0]s_axi_wdata;
  input [31:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [32:0]s_axi_araddr;
  input [3:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [255:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [32:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [255:0]m_axi_wdata;
  output [31:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [32:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [255:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_22_axi_register_slice,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice2_21_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [32:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [255:0]s_axi_wdata;
  input [31:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [32:0]s_axi_araddr;
  input [3:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [255:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [32:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [255:0]m_axi_wdata;
  output [31:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [32:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [255:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_22_axi_register_slice,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice3_22_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [32:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [255:0]s_axi_wdata;
  input [31:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [32:0]s_axi_araddr;
  input [3:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [255:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [32:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [255:0]m_axi_wdata;
  output [31:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [32:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [255:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_22_axi_register_slice,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice4_24_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [32:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [255:0]s_axi_wdata;
  input [31:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [32:0]s_axi_araddr;
  input [3:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [255:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [32:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [255:0]m_axi_wdata;
  output [31:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [32:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [255:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_22_axi_register_slice,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice5_25_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [32:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [255:0]s_axi_wdata;
  input [31:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [32:0]s_axi_araddr;
  input [3:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [255:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [32:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [255:0]m_axi_wdata;
  output [31:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [32:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [255:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_22_axi_register_slice,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice6_26_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [32:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [255:0]s_axi_wdata;
  input [31:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [32:0]s_axi_araddr;
  input [3:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [255:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [32:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [255:0]m_axi_wdata;
  output [31:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [32:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [255:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_util_vector_logic_0
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_8_top,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S00_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [32:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [255:0]s_axi_wdata;
  input [31:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [32:0]s_axi_araddr;
  input [3:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [255:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [32:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [255:0]m_axi_wdata;
  output [31:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [32:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [255:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_8_top,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S01_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [32:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [255:0]s_axi_wdata;
  input [31:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [32:0]s_axi_araddr;
  input [3:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [255:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [32:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [255:0]m_axi_wdata;
  output [31:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [32:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [255:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_8_top,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S02_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [32:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [255:0]s_axi_wdata;
  input [31:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [32:0]s_axi_araddr;
  input [3:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [255:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [32:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [255:0]m_axi_wdata;
  output [31:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [32:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [255:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_8_top,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S03_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [32:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [255:0]s_axi_wdata;
  input [31:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [32:0]s_axi_araddr;
  input [3:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [255:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [32:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [255:0]m_axi_wdata;
  output [31:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [32:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [255:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_8_top,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S04_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [32:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [255:0]s_axi_wdata;
  input [31:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [32:0]s_axi_araddr;
  input [3:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [255:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [32:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [255:0]m_axi_wdata;
  output [31:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [32:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [255:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_8_top,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S05_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [32:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [255:0]s_axi_wdata;
  input [31:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [32:0]s_axi_araddr;
  input [3:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [255:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [32:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [255:0]m_axi_wdata;
  output [31:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [32:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [255:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_8_top,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S06_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [32:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [255:0]s_axi_wdata;
  input [31:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [32:0]s_axi_araddr;
  input [3:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [255:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [32:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [255:0]m_axi_wdata;
  output [31:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [32:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [255:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_init_logic_imp_156LN22
   (hbm_mc_init_seq_complete,
    In0,
    In1);
  output hbm_mc_init_seq_complete;
  input [0:0]In0;
  input [0:0]In1;

  wire [0:0]In0;
  wire [0:0]In1;
  wire hbm_mc_init_seq_complete;
  wire [1:0]init_concat_dout;

  (* CHECK_LICENSE_TYPE = "bd_5dca_init_concat_0,xlconcat_v2_1_4_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_4_xlconcat,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_init_concat_0 init_concat
       (.In0(In0),
        .In1(In1),
        .dout(init_concat_dout));
  (* X_CORE_INFO = "util_reduced_logic_v2_0_4_util_reduced_logic,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_init_reduce_0 init_reduce
       (.Op1(init_concat_dout),
        .Res(hbm_mc_init_seq_complete));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_20_imp_1XT8RPB
   (S01_AXI_awready,
    S01_AXI_wready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_arready,
    S01_AXI_rdata,
    S01_AXI_rresp,
    S01_AXI_rlast,
    S01_AXI_rvalid,
    M_AXI_awaddr,
    M_AXI_awlen,
    M_AXI_awburst,
    M_AXI_awlock,
    M_AXI_awcache,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awvalid,
    M_AXI_wdata,
    M_AXI_wstrb,
    M_AXI_wlast,
    M_AXI_wvalid,
    M_AXI_bready,
    M_AXI_araddr,
    M_AXI_arlen,
    M_AXI_arburst,
    M_AXI_arlock,
    M_AXI_arcache,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arvalid,
    M_AXI_rready,
    aclk1,
    hbm_aclk,
    aresetn1,
    S01_AXI_awaddr,
    S01_AXI_awlen,
    S01_AXI_awsize,
    S01_AXI_awburst,
    S01_AXI_awlock,
    S01_AXI_awcache,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awvalid,
    S01_AXI_wdata,
    S01_AXI_wstrb,
    S01_AXI_wlast,
    S01_AXI_wvalid,
    S01_AXI_bready,
    S01_AXI_araddr,
    S01_AXI_arlen,
    S01_AXI_arsize,
    S01_AXI_arburst,
    S01_AXI_arlock,
    S01_AXI_arcache,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arvalid,
    S01_AXI_rready,
    aresetn,
    M_AXI_awready,
    M_AXI_wready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_arready,
    M_AXI_rdata,
    M_AXI_rresp,
    M_AXI_rlast,
    M_AXI_rvalid);
  output [0:0]S01_AXI_awready;
  output [0:0]S01_AXI_wready;
  output [1:0]S01_AXI_bresp;
  output [0:0]S01_AXI_bvalid;
  output [0:0]S01_AXI_arready;
  output [31:0]S01_AXI_rdata;
  output [1:0]S01_AXI_rresp;
  output [0:0]S01_AXI_rlast;
  output [0:0]S01_AXI_rvalid;
  output [32:0]M_AXI_awaddr;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awburst;
  output [1:0]M_AXI_awlock;
  output [3:0]M_AXI_awcache;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  output M_AXI_awvalid;
  output [255:0]M_AXI_wdata;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wlast;
  output M_AXI_wvalid;
  output M_AXI_bready;
  output [32:0]M_AXI_araddr;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arburst;
  output [1:0]M_AXI_arlock;
  output [3:0]M_AXI_arcache;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  output M_AXI_arvalid;
  output M_AXI_rready;
  input aclk1;
  input hbm_aclk;
  input aresetn1;
  input [63:0]S01_AXI_awaddr;
  input [7:0]S01_AXI_awlen;
  input [2:0]S01_AXI_awsize;
  input [1:0]S01_AXI_awburst;
  input [0:0]S01_AXI_awlock;
  input [3:0]S01_AXI_awcache;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  input [0:0]S01_AXI_awvalid;
  input [31:0]S01_AXI_wdata;
  input [3:0]S01_AXI_wstrb;
  input [0:0]S01_AXI_wlast;
  input [0:0]S01_AXI_wvalid;
  input [0:0]S01_AXI_bready;
  input [63:0]S01_AXI_araddr;
  input [7:0]S01_AXI_arlen;
  input [2:0]S01_AXI_arsize;
  input [1:0]S01_AXI_arburst;
  input [0:0]S01_AXI_arlock;
  input [3:0]S01_AXI_arcache;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  input [0:0]S01_AXI_arvalid;
  input [0:0]S01_AXI_rready;
  input aresetn;
  input M_AXI_awready;
  input M_AXI_wready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_arready;
  input [255:0]M_AXI_rdata;
  input [1:0]M_AXI_rresp;
  input M_AXI_rlast;
  input M_AXI_rvalid;

  wire [32:0]M_AXI_araddr;
  wire [1:0]M_AXI_arburst;
  wire [3:0]M_AXI_arcache;
  wire [3:0]M_AXI_arlen;
  wire [1:0]M_AXI_arlock;
  wire [2:0]M_AXI_arprot;
  wire [3:0]M_AXI_arqos;
  wire M_AXI_arready;
  wire M_AXI_arvalid;
  wire [32:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [3:0]M_AXI_awlen;
  wire [1:0]M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire M_AXI_awready;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire [1:0]M_AXI_bresp;
  wire M_AXI_bvalid;
  wire [255:0]M_AXI_rdata;
  wire M_AXI_rlast;
  wire M_AXI_rready;
  wire [1:0]M_AXI_rresp;
  wire M_AXI_rvalid;
  wire [255:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire M_AXI_wready;
  wire [31:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire [63:0]S01_AXI_araddr;
  wire [1:0]S01_AXI_arburst;
  wire [3:0]S01_AXI_arcache;
  wire [7:0]S01_AXI_arlen;
  wire [0:0]S01_AXI_arlock;
  wire [2:0]S01_AXI_arprot;
  wire [3:0]S01_AXI_arqos;
  wire [0:0]S01_AXI_arready;
  wire [2:0]S01_AXI_arsize;
  wire [0:0]S01_AXI_arvalid;
  wire [63:0]S01_AXI_awaddr;
  wire [1:0]S01_AXI_awburst;
  wire [3:0]S01_AXI_awcache;
  wire [7:0]S01_AXI_awlen;
  wire [0:0]S01_AXI_awlock;
  wire [2:0]S01_AXI_awprot;
  wire [3:0]S01_AXI_awqos;
  wire [0:0]S01_AXI_awready;
  wire [2:0]S01_AXI_awsize;
  wire [0:0]S01_AXI_awvalid;
  wire [0:0]S01_AXI_bready;
  wire [1:0]S01_AXI_bresp;
  wire [0:0]S01_AXI_bvalid;
  wire [31:0]S01_AXI_rdata;
  wire [0:0]S01_AXI_rlast;
  wire [0:0]S01_AXI_rready;
  wire [1:0]S01_AXI_rresp;
  wire [0:0]S01_AXI_rvalid;
  wire [31:0]S01_AXI_wdata;
  wire [0:0]S01_AXI_wlast;
  wire [0:0]S01_AXI_wready;
  wire [3:0]S01_AXI_wstrb;
  wire [0:0]S01_AXI_wvalid;
  wire aclk1;
  wire aresetn;
  wire aresetn1;
  wire hbm_aclk;
  wire [32:0]interconnect1_20_M00_AXI_ARADDR;
  wire [1:0]interconnect1_20_M00_AXI_ARBURST;
  wire [3:0]interconnect1_20_M00_AXI_ARCACHE;
  wire [3:0]interconnect1_20_M00_AXI_ARLEN;
  wire [1:0]interconnect1_20_M00_AXI_ARLOCK;
  wire [2:0]interconnect1_20_M00_AXI_ARPROT;
  wire [3:0]interconnect1_20_M00_AXI_ARQOS;
  wire interconnect1_20_M00_AXI_ARREADY;
  wire [2:0]interconnect1_20_M00_AXI_ARSIZE;
  wire interconnect1_20_M00_AXI_ARVALID;
  wire [32:0]interconnect1_20_M00_AXI_AWADDR;
  wire [1:0]interconnect1_20_M00_AXI_AWBURST;
  wire [3:0]interconnect1_20_M00_AXI_AWCACHE;
  wire [3:0]interconnect1_20_M00_AXI_AWLEN;
  wire [1:0]interconnect1_20_M00_AXI_AWLOCK;
  wire [2:0]interconnect1_20_M00_AXI_AWPROT;
  wire [3:0]interconnect1_20_M00_AXI_AWQOS;
  wire interconnect1_20_M00_AXI_AWREADY;
  wire [2:0]interconnect1_20_M00_AXI_AWSIZE;
  wire interconnect1_20_M00_AXI_AWVALID;
  wire interconnect1_20_M00_AXI_BREADY;
  wire [1:0]interconnect1_20_M00_AXI_BRESP;
  wire interconnect1_20_M00_AXI_BVALID;
  wire [255:0]interconnect1_20_M00_AXI_RDATA;
  wire interconnect1_20_M00_AXI_RLAST;
  wire interconnect1_20_M00_AXI_RREADY;
  wire [1:0]interconnect1_20_M00_AXI_RRESP;
  wire interconnect1_20_M00_AXI_RVALID;
  wire [255:0]interconnect1_20_M00_AXI_WDATA;
  wire interconnect1_20_M00_AXI_WLAST;
  wire interconnect1_20_M00_AXI_WREADY;
  wire [31:0]interconnect1_20_M00_AXI_WSTRB;
  wire interconnect1_20_M00_AXI_WVALID;
  wire [2:0]NLW_slice1_20_m_axi_arsize_UNCONNECTED;
  wire [2:0]NLW_slice1_20_m_axi_awsize_UNCONNECTED;

  (* X_CORE_INFO = "bd_52ea,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect1_20_0 interconnect1_20
       (.M00_AXI_araddr(interconnect1_20_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect1_20_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect1_20_M00_AXI_ARCACHE),
        .M00_AXI_arlen(interconnect1_20_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect1_20_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect1_20_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect1_20_M00_AXI_ARQOS),
        .M00_AXI_arready(interconnect1_20_M00_AXI_ARREADY),
        .M00_AXI_arsize(interconnect1_20_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(interconnect1_20_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect1_20_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect1_20_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect1_20_M00_AXI_AWCACHE),
        .M00_AXI_awlen(interconnect1_20_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect1_20_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect1_20_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect1_20_M00_AXI_AWQOS),
        .M00_AXI_awready(interconnect1_20_M00_AXI_AWREADY),
        .M00_AXI_awsize(interconnect1_20_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(interconnect1_20_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect1_20_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect1_20_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect1_20_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect1_20_M00_AXI_RDATA),
        .M00_AXI_rlast(interconnect1_20_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect1_20_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect1_20_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect1_20_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect1_20_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect1_20_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect1_20_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect1_20_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect1_20_M00_AXI_WVALID),
        .S00_AXI_araddr(S01_AXI_araddr),
        .S00_AXI_arburst(S01_AXI_arburst),
        .S00_AXI_arcache(S01_AXI_arcache),
        .S00_AXI_arlen(S01_AXI_arlen),
        .S00_AXI_arlock(S01_AXI_arlock),
        .S00_AXI_arprot(S01_AXI_arprot),
        .S00_AXI_arqos(S01_AXI_arqos),
        .S00_AXI_arready(S01_AXI_arready),
        .S00_AXI_arsize(S01_AXI_arsize),
        .S00_AXI_arvalid(S01_AXI_arvalid),
        .S00_AXI_awaddr(S01_AXI_awaddr),
        .S00_AXI_awburst(S01_AXI_awburst),
        .S00_AXI_awcache(S01_AXI_awcache),
        .S00_AXI_awlen(S01_AXI_awlen),
        .S00_AXI_awlock(S01_AXI_awlock),
        .S00_AXI_awprot(S01_AXI_awprot),
        .S00_AXI_awqos(S01_AXI_awqos),
        .S00_AXI_awready(S01_AXI_awready),
        .S00_AXI_awsize(S01_AXI_awsize),
        .S00_AXI_awvalid(S01_AXI_awvalid),
        .S00_AXI_bready(S01_AXI_bready),
        .S00_AXI_bresp(S01_AXI_bresp),
        .S00_AXI_bvalid(S01_AXI_bvalid),
        .S00_AXI_rdata(S01_AXI_rdata),
        .S00_AXI_rlast(S01_AXI_rlast),
        .S00_AXI_rready(S01_AXI_rready),
        .S00_AXI_rresp(S01_AXI_rresp),
        .S00_AXI_rvalid(S01_AXI_rvalid),
        .S00_AXI_wdata(S01_AXI_wdata),
        .S00_AXI_wlast(S01_AXI_wlast),
        .S00_AXI_wready(S01_AXI_wready),
        .S00_AXI_wstrb(S01_AXI_wstrb),
        .S00_AXI_wvalid(S01_AXI_wvalid),
        .aclk(aclk1),
        .aclk1(hbm_aclk),
        .aresetn(aresetn1));
  (* X_CORE_INFO = "axi_register_slice_v2_1_22_axi_register_slice,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice1_20_0 slice1_20
       (.aclk(hbm_aclk),
        .aresetn(aresetn),
        .m_axi_araddr(M_AXI_araddr),
        .m_axi_arburst(M_AXI_arburst),
        .m_axi_arcache(M_AXI_arcache),
        .m_axi_arlen(M_AXI_arlen),
        .m_axi_arlock(M_AXI_arlock),
        .m_axi_arprot(M_AXI_arprot),
        .m_axi_arqos(M_AXI_arqos),
        .m_axi_arready(M_AXI_arready),
        .m_axi_arsize(NLW_slice1_20_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_arvalid(M_AXI_arvalid),
        .m_axi_awaddr(M_AXI_awaddr),
        .m_axi_awburst(M_AXI_awburst),
        .m_axi_awcache(M_AXI_awcache),
        .m_axi_awlen(M_AXI_awlen),
        .m_axi_awlock(M_AXI_awlock),
        .m_axi_awprot(M_AXI_awprot),
        .m_axi_awqos(M_AXI_awqos),
        .m_axi_awready(M_AXI_awready),
        .m_axi_awsize(NLW_slice1_20_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awvalid(M_AXI_awvalid),
        .m_axi_bready(M_AXI_bready),
        .m_axi_bresp(M_AXI_bresp),
        .m_axi_bvalid(M_AXI_bvalid),
        .m_axi_rdata(M_AXI_rdata),
        .m_axi_rlast(M_AXI_rlast),
        .m_axi_rready(M_AXI_rready),
        .m_axi_rresp(M_AXI_rresp),
        .m_axi_rvalid(M_AXI_rvalid),
        .m_axi_wdata(M_AXI_wdata),
        .m_axi_wlast(M_AXI_wlast),
        .m_axi_wready(M_AXI_wready),
        .m_axi_wstrb(M_AXI_wstrb),
        .m_axi_wvalid(M_AXI_wvalid),
        .s_axi_araddr(interconnect1_20_M00_AXI_ARADDR),
        .s_axi_arburst(interconnect1_20_M00_AXI_ARBURST),
        .s_axi_arcache(interconnect1_20_M00_AXI_ARCACHE),
        .s_axi_arlen(interconnect1_20_M00_AXI_ARLEN),
        .s_axi_arlock(interconnect1_20_M00_AXI_ARLOCK),
        .s_axi_arprot(interconnect1_20_M00_AXI_ARPROT),
        .s_axi_arqos(interconnect1_20_M00_AXI_ARQOS),
        .s_axi_arready(interconnect1_20_M00_AXI_ARREADY),
        .s_axi_arsize(interconnect1_20_M00_AXI_ARSIZE),
        .s_axi_arvalid(interconnect1_20_M00_AXI_ARVALID),
        .s_axi_awaddr(interconnect1_20_M00_AXI_AWADDR),
        .s_axi_awburst(interconnect1_20_M00_AXI_AWBURST),
        .s_axi_awcache(interconnect1_20_M00_AXI_AWCACHE),
        .s_axi_awlen(interconnect1_20_M00_AXI_AWLEN),
        .s_axi_awlock(interconnect1_20_M00_AXI_AWLOCK),
        .s_axi_awprot(interconnect1_20_M00_AXI_AWPROT),
        .s_axi_awqos(interconnect1_20_M00_AXI_AWQOS),
        .s_axi_awready(interconnect1_20_M00_AXI_AWREADY),
        .s_axi_awsize(interconnect1_20_M00_AXI_AWSIZE),
        .s_axi_awvalid(interconnect1_20_M00_AXI_AWVALID),
        .s_axi_bready(interconnect1_20_M00_AXI_BREADY),
        .s_axi_bresp(interconnect1_20_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect1_20_M00_AXI_BVALID),
        .s_axi_rdata(interconnect1_20_M00_AXI_RDATA),
        .s_axi_rlast(interconnect1_20_M00_AXI_RLAST),
        .s_axi_rready(interconnect1_20_M00_AXI_RREADY),
        .s_axi_rresp(interconnect1_20_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect1_20_M00_AXI_RVALID),
        .s_axi_wdata(interconnect1_20_M00_AXI_WDATA),
        .s_axi_wlast(interconnect1_20_M00_AXI_WLAST),
        .s_axi_wready(interconnect1_20_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect1_20_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect1_20_M00_AXI_WVALID));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_21_imp_FBBGKH
   (S02_AXI_awready,
    S02_AXI_wready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_arready,
    S02_AXI_rdata,
    S02_AXI_rresp,
    S02_AXI_rlast,
    S02_AXI_rvalid,
    M_AXI_awaddr,
    M_AXI_awlen,
    M_AXI_awburst,
    M_AXI_awlock,
    M_AXI_awcache,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awvalid,
    M_AXI_wdata,
    M_AXI_wstrb,
    M_AXI_wlast,
    M_AXI_wvalid,
    M_AXI_bready,
    M_AXI_araddr,
    M_AXI_arlen,
    M_AXI_arburst,
    M_AXI_arlock,
    M_AXI_arcache,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arvalid,
    M_AXI_rready,
    aclk1,
    hbm_aclk,
    aresetn1,
    S02_AXI_awaddr,
    S02_AXI_awlen,
    S02_AXI_awsize,
    S02_AXI_awburst,
    S02_AXI_awlock,
    S02_AXI_awcache,
    S02_AXI_awprot,
    S02_AXI_awqos,
    S02_AXI_awvalid,
    S02_AXI_wdata,
    S02_AXI_wstrb,
    S02_AXI_wlast,
    S02_AXI_wvalid,
    S02_AXI_bready,
    S02_AXI_araddr,
    S02_AXI_arlen,
    S02_AXI_arsize,
    S02_AXI_arburst,
    S02_AXI_arlock,
    S02_AXI_arcache,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arvalid,
    S02_AXI_rready,
    aresetn,
    M_AXI_awready,
    M_AXI_wready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_arready,
    M_AXI_rdata,
    M_AXI_rresp,
    M_AXI_rlast,
    M_AXI_rvalid);
  output [0:0]S02_AXI_awready;
  output [0:0]S02_AXI_wready;
  output [1:0]S02_AXI_bresp;
  output [0:0]S02_AXI_bvalid;
  output [0:0]S02_AXI_arready;
  output [511:0]S02_AXI_rdata;
  output [1:0]S02_AXI_rresp;
  output [0:0]S02_AXI_rlast;
  output [0:0]S02_AXI_rvalid;
  output [32:0]M_AXI_awaddr;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awburst;
  output [1:0]M_AXI_awlock;
  output [3:0]M_AXI_awcache;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  output M_AXI_awvalid;
  output [255:0]M_AXI_wdata;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wlast;
  output M_AXI_wvalid;
  output M_AXI_bready;
  output [32:0]M_AXI_araddr;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arburst;
  output [1:0]M_AXI_arlock;
  output [3:0]M_AXI_arcache;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  output M_AXI_arvalid;
  output M_AXI_rready;
  input aclk1;
  input hbm_aclk;
  input aresetn1;
  input [63:0]S02_AXI_awaddr;
  input [7:0]S02_AXI_awlen;
  input [2:0]S02_AXI_awsize;
  input [1:0]S02_AXI_awburst;
  input [0:0]S02_AXI_awlock;
  input [3:0]S02_AXI_awcache;
  input [2:0]S02_AXI_awprot;
  input [3:0]S02_AXI_awqos;
  input [0:0]S02_AXI_awvalid;
  input [511:0]S02_AXI_wdata;
  input [63:0]S02_AXI_wstrb;
  input [0:0]S02_AXI_wlast;
  input [0:0]S02_AXI_wvalid;
  input [0:0]S02_AXI_bready;
  input [63:0]S02_AXI_araddr;
  input [7:0]S02_AXI_arlen;
  input [2:0]S02_AXI_arsize;
  input [1:0]S02_AXI_arburst;
  input [0:0]S02_AXI_arlock;
  input [3:0]S02_AXI_arcache;
  input [2:0]S02_AXI_arprot;
  input [3:0]S02_AXI_arqos;
  input [0:0]S02_AXI_arvalid;
  input [0:0]S02_AXI_rready;
  input aresetn;
  input M_AXI_awready;
  input M_AXI_wready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_arready;
  input [255:0]M_AXI_rdata;
  input [1:0]M_AXI_rresp;
  input M_AXI_rlast;
  input M_AXI_rvalid;

  wire [32:0]M_AXI_araddr;
  wire [1:0]M_AXI_arburst;
  wire [3:0]M_AXI_arcache;
  wire [3:0]M_AXI_arlen;
  wire [1:0]M_AXI_arlock;
  wire [2:0]M_AXI_arprot;
  wire [3:0]M_AXI_arqos;
  wire M_AXI_arready;
  wire M_AXI_arvalid;
  wire [32:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [3:0]M_AXI_awlen;
  wire [1:0]M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire M_AXI_awready;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire [1:0]M_AXI_bresp;
  wire M_AXI_bvalid;
  wire [255:0]M_AXI_rdata;
  wire M_AXI_rlast;
  wire M_AXI_rready;
  wire [1:0]M_AXI_rresp;
  wire M_AXI_rvalid;
  wire [255:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire M_AXI_wready;
  wire [31:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire [63:0]S02_AXI_araddr;
  wire [1:0]S02_AXI_arburst;
  wire [3:0]S02_AXI_arcache;
  wire [7:0]S02_AXI_arlen;
  wire [0:0]S02_AXI_arlock;
  wire [2:0]S02_AXI_arprot;
  wire [3:0]S02_AXI_arqos;
  wire [0:0]S02_AXI_arready;
  wire [2:0]S02_AXI_arsize;
  wire [0:0]S02_AXI_arvalid;
  wire [63:0]S02_AXI_awaddr;
  wire [1:0]S02_AXI_awburst;
  wire [3:0]S02_AXI_awcache;
  wire [7:0]S02_AXI_awlen;
  wire [0:0]S02_AXI_awlock;
  wire [2:0]S02_AXI_awprot;
  wire [3:0]S02_AXI_awqos;
  wire [0:0]S02_AXI_awready;
  wire [2:0]S02_AXI_awsize;
  wire [0:0]S02_AXI_awvalid;
  wire [0:0]S02_AXI_bready;
  wire [1:0]S02_AXI_bresp;
  wire [0:0]S02_AXI_bvalid;
  wire [511:0]S02_AXI_rdata;
  wire [0:0]S02_AXI_rlast;
  wire [0:0]S02_AXI_rready;
  wire [1:0]S02_AXI_rresp;
  wire [0:0]S02_AXI_rvalid;
  wire [511:0]S02_AXI_wdata;
  wire [0:0]S02_AXI_wlast;
  wire [0:0]S02_AXI_wready;
  wire [63:0]S02_AXI_wstrb;
  wire [0:0]S02_AXI_wvalid;
  wire aclk1;
  wire aresetn;
  wire aresetn1;
  wire hbm_aclk;
  wire [32:0]interconnect2_21_M00_AXI_ARADDR;
  wire [1:0]interconnect2_21_M00_AXI_ARBURST;
  wire [3:0]interconnect2_21_M00_AXI_ARCACHE;
  wire [3:0]interconnect2_21_M00_AXI_ARLEN;
  wire [1:0]interconnect2_21_M00_AXI_ARLOCK;
  wire [2:0]interconnect2_21_M00_AXI_ARPROT;
  wire [3:0]interconnect2_21_M00_AXI_ARQOS;
  wire interconnect2_21_M00_AXI_ARREADY;
  wire [2:0]interconnect2_21_M00_AXI_ARSIZE;
  wire interconnect2_21_M00_AXI_ARVALID;
  wire [32:0]interconnect2_21_M00_AXI_AWADDR;
  wire [1:0]interconnect2_21_M00_AXI_AWBURST;
  wire [3:0]interconnect2_21_M00_AXI_AWCACHE;
  wire [3:0]interconnect2_21_M00_AXI_AWLEN;
  wire [1:0]interconnect2_21_M00_AXI_AWLOCK;
  wire [2:0]interconnect2_21_M00_AXI_AWPROT;
  wire [3:0]interconnect2_21_M00_AXI_AWQOS;
  wire interconnect2_21_M00_AXI_AWREADY;
  wire [2:0]interconnect2_21_M00_AXI_AWSIZE;
  wire interconnect2_21_M00_AXI_AWVALID;
  wire interconnect2_21_M00_AXI_BREADY;
  wire [1:0]interconnect2_21_M00_AXI_BRESP;
  wire interconnect2_21_M00_AXI_BVALID;
  wire [255:0]interconnect2_21_M00_AXI_RDATA;
  wire interconnect2_21_M00_AXI_RLAST;
  wire interconnect2_21_M00_AXI_RREADY;
  wire [1:0]interconnect2_21_M00_AXI_RRESP;
  wire interconnect2_21_M00_AXI_RVALID;
  wire [255:0]interconnect2_21_M00_AXI_WDATA;
  wire interconnect2_21_M00_AXI_WLAST;
  wire interconnect2_21_M00_AXI_WREADY;
  wire [31:0]interconnect2_21_M00_AXI_WSTRB;
  wire interconnect2_21_M00_AXI_WVALID;
  wire [2:0]NLW_slice2_21_m_axi_arsize_UNCONNECTED;
  wire [2:0]NLW_slice2_21_m_axi_awsize_UNCONNECTED;

  (* X_CORE_INFO = "bd_a1bb,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect2_21_0 interconnect2_21
       (.M00_AXI_araddr(interconnect2_21_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect2_21_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect2_21_M00_AXI_ARCACHE),
        .M00_AXI_arlen(interconnect2_21_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect2_21_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect2_21_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect2_21_M00_AXI_ARQOS),
        .M00_AXI_arready(interconnect2_21_M00_AXI_ARREADY),
        .M00_AXI_arsize(interconnect2_21_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(interconnect2_21_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect2_21_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect2_21_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect2_21_M00_AXI_AWCACHE),
        .M00_AXI_awlen(interconnect2_21_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect2_21_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect2_21_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect2_21_M00_AXI_AWQOS),
        .M00_AXI_awready(interconnect2_21_M00_AXI_AWREADY),
        .M00_AXI_awsize(interconnect2_21_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(interconnect2_21_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect2_21_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect2_21_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect2_21_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect2_21_M00_AXI_RDATA),
        .M00_AXI_rlast(interconnect2_21_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect2_21_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect2_21_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect2_21_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect2_21_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect2_21_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect2_21_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect2_21_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect2_21_M00_AXI_WVALID),
        .S00_AXI_araddr(S02_AXI_araddr),
        .S00_AXI_arburst(S02_AXI_arburst),
        .S00_AXI_arcache(S02_AXI_arcache),
        .S00_AXI_arlen(S02_AXI_arlen),
        .S00_AXI_arlock(S02_AXI_arlock),
        .S00_AXI_arprot(S02_AXI_arprot),
        .S00_AXI_arqos(S02_AXI_arqos),
        .S00_AXI_arready(S02_AXI_arready),
        .S00_AXI_arsize(S02_AXI_arsize),
        .S00_AXI_arvalid(S02_AXI_arvalid),
        .S00_AXI_awaddr(S02_AXI_awaddr),
        .S00_AXI_awburst(S02_AXI_awburst),
        .S00_AXI_awcache(S02_AXI_awcache),
        .S00_AXI_awlen(S02_AXI_awlen),
        .S00_AXI_awlock(S02_AXI_awlock),
        .S00_AXI_awprot(S02_AXI_awprot),
        .S00_AXI_awqos(S02_AXI_awqos),
        .S00_AXI_awready(S02_AXI_awready),
        .S00_AXI_awsize(S02_AXI_awsize),
        .S00_AXI_awvalid(S02_AXI_awvalid),
        .S00_AXI_bready(S02_AXI_bready),
        .S00_AXI_bresp(S02_AXI_bresp),
        .S00_AXI_bvalid(S02_AXI_bvalid),
        .S00_AXI_rdata(S02_AXI_rdata),
        .S00_AXI_rlast(S02_AXI_rlast),
        .S00_AXI_rready(S02_AXI_rready),
        .S00_AXI_rresp(S02_AXI_rresp),
        .S00_AXI_rvalid(S02_AXI_rvalid),
        .S00_AXI_wdata(S02_AXI_wdata),
        .S00_AXI_wlast(S02_AXI_wlast),
        .S00_AXI_wready(S02_AXI_wready),
        .S00_AXI_wstrb(S02_AXI_wstrb),
        .S00_AXI_wvalid(S02_AXI_wvalid),
        .aclk(aclk1),
        .aclk1(hbm_aclk),
        .aresetn(aresetn1));
  (* X_CORE_INFO = "axi_register_slice_v2_1_22_axi_register_slice,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice2_21_0 slice2_21
       (.aclk(hbm_aclk),
        .aresetn(aresetn),
        .m_axi_araddr(M_AXI_araddr),
        .m_axi_arburst(M_AXI_arburst),
        .m_axi_arcache(M_AXI_arcache),
        .m_axi_arlen(M_AXI_arlen),
        .m_axi_arlock(M_AXI_arlock),
        .m_axi_arprot(M_AXI_arprot),
        .m_axi_arqos(M_AXI_arqos),
        .m_axi_arready(M_AXI_arready),
        .m_axi_arsize(NLW_slice2_21_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_arvalid(M_AXI_arvalid),
        .m_axi_awaddr(M_AXI_awaddr),
        .m_axi_awburst(M_AXI_awburst),
        .m_axi_awcache(M_AXI_awcache),
        .m_axi_awlen(M_AXI_awlen),
        .m_axi_awlock(M_AXI_awlock),
        .m_axi_awprot(M_AXI_awprot),
        .m_axi_awqos(M_AXI_awqos),
        .m_axi_awready(M_AXI_awready),
        .m_axi_awsize(NLW_slice2_21_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awvalid(M_AXI_awvalid),
        .m_axi_bready(M_AXI_bready),
        .m_axi_bresp(M_AXI_bresp),
        .m_axi_bvalid(M_AXI_bvalid),
        .m_axi_rdata(M_AXI_rdata),
        .m_axi_rlast(M_AXI_rlast),
        .m_axi_rready(M_AXI_rready),
        .m_axi_rresp(M_AXI_rresp),
        .m_axi_rvalid(M_AXI_rvalid),
        .m_axi_wdata(M_AXI_wdata),
        .m_axi_wlast(M_AXI_wlast),
        .m_axi_wready(M_AXI_wready),
        .m_axi_wstrb(M_AXI_wstrb),
        .m_axi_wvalid(M_AXI_wvalid),
        .s_axi_araddr(interconnect2_21_M00_AXI_ARADDR),
        .s_axi_arburst(interconnect2_21_M00_AXI_ARBURST),
        .s_axi_arcache(interconnect2_21_M00_AXI_ARCACHE),
        .s_axi_arlen(interconnect2_21_M00_AXI_ARLEN),
        .s_axi_arlock(interconnect2_21_M00_AXI_ARLOCK),
        .s_axi_arprot(interconnect2_21_M00_AXI_ARPROT),
        .s_axi_arqos(interconnect2_21_M00_AXI_ARQOS),
        .s_axi_arready(interconnect2_21_M00_AXI_ARREADY),
        .s_axi_arsize(interconnect2_21_M00_AXI_ARSIZE),
        .s_axi_arvalid(interconnect2_21_M00_AXI_ARVALID),
        .s_axi_awaddr(interconnect2_21_M00_AXI_AWADDR),
        .s_axi_awburst(interconnect2_21_M00_AXI_AWBURST),
        .s_axi_awcache(interconnect2_21_M00_AXI_AWCACHE),
        .s_axi_awlen(interconnect2_21_M00_AXI_AWLEN),
        .s_axi_awlock(interconnect2_21_M00_AXI_AWLOCK),
        .s_axi_awprot(interconnect2_21_M00_AXI_AWPROT),
        .s_axi_awqos(interconnect2_21_M00_AXI_AWQOS),
        .s_axi_awready(interconnect2_21_M00_AXI_AWREADY),
        .s_axi_awsize(interconnect2_21_M00_AXI_AWSIZE),
        .s_axi_awvalid(interconnect2_21_M00_AXI_AWVALID),
        .s_axi_bready(interconnect2_21_M00_AXI_BREADY),
        .s_axi_bresp(interconnect2_21_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect2_21_M00_AXI_BVALID),
        .s_axi_rdata(interconnect2_21_M00_AXI_RDATA),
        .s_axi_rlast(interconnect2_21_M00_AXI_RLAST),
        .s_axi_rready(interconnect2_21_M00_AXI_RREADY),
        .s_axi_rresp(interconnect2_21_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect2_21_M00_AXI_RVALID),
        .s_axi_wdata(interconnect2_21_M00_AXI_WDATA),
        .s_axi_wlast(interconnect2_21_M00_AXI_WLAST),
        .s_axi_wready(interconnect2_21_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect2_21_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect2_21_M00_AXI_WVALID));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_22_imp_1FJCOXU
   (S03_AXI_awready,
    S03_AXI_wready,
    S03_AXI_bresp,
    S03_AXI_bvalid,
    S03_AXI_arready,
    S03_AXI_rdata,
    S03_AXI_rresp,
    S03_AXI_rlast,
    S03_AXI_rvalid,
    M_AXI_awaddr,
    M_AXI_awlen,
    M_AXI_awburst,
    M_AXI_awlock,
    M_AXI_awcache,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awvalid,
    M_AXI_wdata,
    M_AXI_wstrb,
    M_AXI_wlast,
    M_AXI_wvalid,
    M_AXI_bready,
    M_AXI_araddr,
    M_AXI_arlen,
    M_AXI_arburst,
    M_AXI_arlock,
    M_AXI_arcache,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arvalid,
    M_AXI_rready,
    aclk1,
    hbm_aclk,
    aresetn1,
    S03_AXI_awaddr,
    S03_AXI_awlen,
    S03_AXI_awsize,
    S03_AXI_awburst,
    S03_AXI_awlock,
    S03_AXI_awcache,
    S03_AXI_awprot,
    S03_AXI_awqos,
    S03_AXI_awvalid,
    S03_AXI_wdata,
    S03_AXI_wstrb,
    S03_AXI_wlast,
    S03_AXI_wvalid,
    S03_AXI_bready,
    S03_AXI_araddr,
    S03_AXI_arlen,
    S03_AXI_arsize,
    S03_AXI_arburst,
    S03_AXI_arlock,
    S03_AXI_arcache,
    S03_AXI_arprot,
    S03_AXI_arqos,
    S03_AXI_arvalid,
    S03_AXI_rready,
    aresetn,
    M_AXI_awready,
    M_AXI_wready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_arready,
    M_AXI_rdata,
    M_AXI_rresp,
    M_AXI_rlast,
    M_AXI_rvalid);
  output [0:0]S03_AXI_awready;
  output [0:0]S03_AXI_wready;
  output [1:0]S03_AXI_bresp;
  output [0:0]S03_AXI_bvalid;
  output [0:0]S03_AXI_arready;
  output [31:0]S03_AXI_rdata;
  output [1:0]S03_AXI_rresp;
  output [0:0]S03_AXI_rlast;
  output [0:0]S03_AXI_rvalid;
  output [32:0]M_AXI_awaddr;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awburst;
  output [1:0]M_AXI_awlock;
  output [3:0]M_AXI_awcache;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  output M_AXI_awvalid;
  output [255:0]M_AXI_wdata;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wlast;
  output M_AXI_wvalid;
  output M_AXI_bready;
  output [32:0]M_AXI_araddr;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arburst;
  output [1:0]M_AXI_arlock;
  output [3:0]M_AXI_arcache;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  output M_AXI_arvalid;
  output M_AXI_rready;
  input aclk1;
  input hbm_aclk;
  input aresetn1;
  input [63:0]S03_AXI_awaddr;
  input [7:0]S03_AXI_awlen;
  input [2:0]S03_AXI_awsize;
  input [1:0]S03_AXI_awburst;
  input [0:0]S03_AXI_awlock;
  input [3:0]S03_AXI_awcache;
  input [2:0]S03_AXI_awprot;
  input [3:0]S03_AXI_awqos;
  input [0:0]S03_AXI_awvalid;
  input [31:0]S03_AXI_wdata;
  input [3:0]S03_AXI_wstrb;
  input [0:0]S03_AXI_wlast;
  input [0:0]S03_AXI_wvalid;
  input [0:0]S03_AXI_bready;
  input [63:0]S03_AXI_araddr;
  input [7:0]S03_AXI_arlen;
  input [2:0]S03_AXI_arsize;
  input [1:0]S03_AXI_arburst;
  input [0:0]S03_AXI_arlock;
  input [3:0]S03_AXI_arcache;
  input [2:0]S03_AXI_arprot;
  input [3:0]S03_AXI_arqos;
  input [0:0]S03_AXI_arvalid;
  input [0:0]S03_AXI_rready;
  input aresetn;
  input M_AXI_awready;
  input M_AXI_wready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_arready;
  input [255:0]M_AXI_rdata;
  input [1:0]M_AXI_rresp;
  input M_AXI_rlast;
  input M_AXI_rvalid;

  wire [32:0]M_AXI_araddr;
  wire [1:0]M_AXI_arburst;
  wire [3:0]M_AXI_arcache;
  wire [3:0]M_AXI_arlen;
  wire [1:0]M_AXI_arlock;
  wire [2:0]M_AXI_arprot;
  wire [3:0]M_AXI_arqos;
  wire M_AXI_arready;
  wire M_AXI_arvalid;
  wire [32:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [3:0]M_AXI_awlen;
  wire [1:0]M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire M_AXI_awready;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire [1:0]M_AXI_bresp;
  wire M_AXI_bvalid;
  wire [255:0]M_AXI_rdata;
  wire M_AXI_rlast;
  wire M_AXI_rready;
  wire [1:0]M_AXI_rresp;
  wire M_AXI_rvalid;
  wire [255:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire M_AXI_wready;
  wire [31:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire [63:0]S03_AXI_araddr;
  wire [1:0]S03_AXI_arburst;
  wire [3:0]S03_AXI_arcache;
  wire [7:0]S03_AXI_arlen;
  wire [0:0]S03_AXI_arlock;
  wire [2:0]S03_AXI_arprot;
  wire [3:0]S03_AXI_arqos;
  wire [0:0]S03_AXI_arready;
  wire [2:0]S03_AXI_arsize;
  wire [0:0]S03_AXI_arvalid;
  wire [63:0]S03_AXI_awaddr;
  wire [1:0]S03_AXI_awburst;
  wire [3:0]S03_AXI_awcache;
  wire [7:0]S03_AXI_awlen;
  wire [0:0]S03_AXI_awlock;
  wire [2:0]S03_AXI_awprot;
  wire [3:0]S03_AXI_awqos;
  wire [0:0]S03_AXI_awready;
  wire [2:0]S03_AXI_awsize;
  wire [0:0]S03_AXI_awvalid;
  wire [0:0]S03_AXI_bready;
  wire [1:0]S03_AXI_bresp;
  wire [0:0]S03_AXI_bvalid;
  wire [31:0]S03_AXI_rdata;
  wire [0:0]S03_AXI_rlast;
  wire [0:0]S03_AXI_rready;
  wire [1:0]S03_AXI_rresp;
  wire [0:0]S03_AXI_rvalid;
  wire [31:0]S03_AXI_wdata;
  wire [0:0]S03_AXI_wlast;
  wire [0:0]S03_AXI_wready;
  wire [3:0]S03_AXI_wstrb;
  wire [0:0]S03_AXI_wvalid;
  wire aclk1;
  wire aresetn;
  wire aresetn1;
  wire hbm_aclk;
  wire [32:0]interconnect3_22_M00_AXI_ARADDR;
  wire [1:0]interconnect3_22_M00_AXI_ARBURST;
  wire [3:0]interconnect3_22_M00_AXI_ARCACHE;
  wire [3:0]interconnect3_22_M00_AXI_ARLEN;
  wire [1:0]interconnect3_22_M00_AXI_ARLOCK;
  wire [2:0]interconnect3_22_M00_AXI_ARPROT;
  wire [3:0]interconnect3_22_M00_AXI_ARQOS;
  wire interconnect3_22_M00_AXI_ARREADY;
  wire [2:0]interconnect3_22_M00_AXI_ARSIZE;
  wire interconnect3_22_M00_AXI_ARVALID;
  wire [32:0]interconnect3_22_M00_AXI_AWADDR;
  wire [1:0]interconnect3_22_M00_AXI_AWBURST;
  wire [3:0]interconnect3_22_M00_AXI_AWCACHE;
  wire [3:0]interconnect3_22_M00_AXI_AWLEN;
  wire [1:0]interconnect3_22_M00_AXI_AWLOCK;
  wire [2:0]interconnect3_22_M00_AXI_AWPROT;
  wire [3:0]interconnect3_22_M00_AXI_AWQOS;
  wire interconnect3_22_M00_AXI_AWREADY;
  wire [2:0]interconnect3_22_M00_AXI_AWSIZE;
  wire interconnect3_22_M00_AXI_AWVALID;
  wire interconnect3_22_M00_AXI_BREADY;
  wire [1:0]interconnect3_22_M00_AXI_BRESP;
  wire interconnect3_22_M00_AXI_BVALID;
  wire [255:0]interconnect3_22_M00_AXI_RDATA;
  wire interconnect3_22_M00_AXI_RLAST;
  wire interconnect3_22_M00_AXI_RREADY;
  wire [1:0]interconnect3_22_M00_AXI_RRESP;
  wire interconnect3_22_M00_AXI_RVALID;
  wire [255:0]interconnect3_22_M00_AXI_WDATA;
  wire interconnect3_22_M00_AXI_WLAST;
  wire interconnect3_22_M00_AXI_WREADY;
  wire [31:0]interconnect3_22_M00_AXI_WSTRB;
  wire interconnect3_22_M00_AXI_WVALID;
  wire [2:0]NLW_slice3_22_m_axi_arsize_UNCONNECTED;
  wire [2:0]NLW_slice3_22_m_axi_awsize_UNCONNECTED;

  (* X_CORE_INFO = "bd_704a,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect3_22_0 interconnect3_22
       (.M00_AXI_araddr(interconnect3_22_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect3_22_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect3_22_M00_AXI_ARCACHE),
        .M00_AXI_arlen(interconnect3_22_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect3_22_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect3_22_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect3_22_M00_AXI_ARQOS),
        .M00_AXI_arready(interconnect3_22_M00_AXI_ARREADY),
        .M00_AXI_arsize(interconnect3_22_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(interconnect3_22_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect3_22_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect3_22_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect3_22_M00_AXI_AWCACHE),
        .M00_AXI_awlen(interconnect3_22_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect3_22_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect3_22_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect3_22_M00_AXI_AWQOS),
        .M00_AXI_awready(interconnect3_22_M00_AXI_AWREADY),
        .M00_AXI_awsize(interconnect3_22_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(interconnect3_22_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect3_22_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect3_22_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect3_22_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect3_22_M00_AXI_RDATA),
        .M00_AXI_rlast(interconnect3_22_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect3_22_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect3_22_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect3_22_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect3_22_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect3_22_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect3_22_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect3_22_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect3_22_M00_AXI_WVALID),
        .S00_AXI_araddr(S03_AXI_araddr),
        .S00_AXI_arburst(S03_AXI_arburst),
        .S00_AXI_arcache(S03_AXI_arcache),
        .S00_AXI_arlen(S03_AXI_arlen),
        .S00_AXI_arlock(S03_AXI_arlock),
        .S00_AXI_arprot(S03_AXI_arprot),
        .S00_AXI_arqos(S03_AXI_arqos),
        .S00_AXI_arready(S03_AXI_arready),
        .S00_AXI_arsize(S03_AXI_arsize),
        .S00_AXI_arvalid(S03_AXI_arvalid),
        .S00_AXI_awaddr(S03_AXI_awaddr),
        .S00_AXI_awburst(S03_AXI_awburst),
        .S00_AXI_awcache(S03_AXI_awcache),
        .S00_AXI_awlen(S03_AXI_awlen),
        .S00_AXI_awlock(S03_AXI_awlock),
        .S00_AXI_awprot(S03_AXI_awprot),
        .S00_AXI_awqos(S03_AXI_awqos),
        .S00_AXI_awready(S03_AXI_awready),
        .S00_AXI_awsize(S03_AXI_awsize),
        .S00_AXI_awvalid(S03_AXI_awvalid),
        .S00_AXI_bready(S03_AXI_bready),
        .S00_AXI_bresp(S03_AXI_bresp),
        .S00_AXI_bvalid(S03_AXI_bvalid),
        .S00_AXI_rdata(S03_AXI_rdata),
        .S00_AXI_rlast(S03_AXI_rlast),
        .S00_AXI_rready(S03_AXI_rready),
        .S00_AXI_rresp(S03_AXI_rresp),
        .S00_AXI_rvalid(S03_AXI_rvalid),
        .S00_AXI_wdata(S03_AXI_wdata),
        .S00_AXI_wlast(S03_AXI_wlast),
        .S00_AXI_wready(S03_AXI_wready),
        .S00_AXI_wstrb(S03_AXI_wstrb),
        .S00_AXI_wvalid(S03_AXI_wvalid),
        .aclk(aclk1),
        .aclk1(hbm_aclk),
        .aresetn(aresetn1));
  (* X_CORE_INFO = "axi_register_slice_v2_1_22_axi_register_slice,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice3_22_0 slice3_22
       (.aclk(hbm_aclk),
        .aresetn(aresetn),
        .m_axi_araddr(M_AXI_araddr),
        .m_axi_arburst(M_AXI_arburst),
        .m_axi_arcache(M_AXI_arcache),
        .m_axi_arlen(M_AXI_arlen),
        .m_axi_arlock(M_AXI_arlock),
        .m_axi_arprot(M_AXI_arprot),
        .m_axi_arqos(M_AXI_arqos),
        .m_axi_arready(M_AXI_arready),
        .m_axi_arsize(NLW_slice3_22_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_arvalid(M_AXI_arvalid),
        .m_axi_awaddr(M_AXI_awaddr),
        .m_axi_awburst(M_AXI_awburst),
        .m_axi_awcache(M_AXI_awcache),
        .m_axi_awlen(M_AXI_awlen),
        .m_axi_awlock(M_AXI_awlock),
        .m_axi_awprot(M_AXI_awprot),
        .m_axi_awqos(M_AXI_awqos),
        .m_axi_awready(M_AXI_awready),
        .m_axi_awsize(NLW_slice3_22_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awvalid(M_AXI_awvalid),
        .m_axi_bready(M_AXI_bready),
        .m_axi_bresp(M_AXI_bresp),
        .m_axi_bvalid(M_AXI_bvalid),
        .m_axi_rdata(M_AXI_rdata),
        .m_axi_rlast(M_AXI_rlast),
        .m_axi_rready(M_AXI_rready),
        .m_axi_rresp(M_AXI_rresp),
        .m_axi_rvalid(M_AXI_rvalid),
        .m_axi_wdata(M_AXI_wdata),
        .m_axi_wlast(M_AXI_wlast),
        .m_axi_wready(M_AXI_wready),
        .m_axi_wstrb(M_AXI_wstrb),
        .m_axi_wvalid(M_AXI_wvalid),
        .s_axi_araddr(interconnect3_22_M00_AXI_ARADDR),
        .s_axi_arburst(interconnect3_22_M00_AXI_ARBURST),
        .s_axi_arcache(interconnect3_22_M00_AXI_ARCACHE),
        .s_axi_arlen(interconnect3_22_M00_AXI_ARLEN),
        .s_axi_arlock(interconnect3_22_M00_AXI_ARLOCK),
        .s_axi_arprot(interconnect3_22_M00_AXI_ARPROT),
        .s_axi_arqos(interconnect3_22_M00_AXI_ARQOS),
        .s_axi_arready(interconnect3_22_M00_AXI_ARREADY),
        .s_axi_arsize(interconnect3_22_M00_AXI_ARSIZE),
        .s_axi_arvalid(interconnect3_22_M00_AXI_ARVALID),
        .s_axi_awaddr(interconnect3_22_M00_AXI_AWADDR),
        .s_axi_awburst(interconnect3_22_M00_AXI_AWBURST),
        .s_axi_awcache(interconnect3_22_M00_AXI_AWCACHE),
        .s_axi_awlen(interconnect3_22_M00_AXI_AWLEN),
        .s_axi_awlock(interconnect3_22_M00_AXI_AWLOCK),
        .s_axi_awprot(interconnect3_22_M00_AXI_AWPROT),
        .s_axi_awqos(interconnect3_22_M00_AXI_AWQOS),
        .s_axi_awready(interconnect3_22_M00_AXI_AWREADY),
        .s_axi_awsize(interconnect3_22_M00_AXI_AWSIZE),
        .s_axi_awvalid(interconnect3_22_M00_AXI_AWVALID),
        .s_axi_bready(interconnect3_22_M00_AXI_BREADY),
        .s_axi_bresp(interconnect3_22_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect3_22_M00_AXI_BVALID),
        .s_axi_rdata(interconnect3_22_M00_AXI_RDATA),
        .s_axi_rlast(interconnect3_22_M00_AXI_RLAST),
        .s_axi_rready(interconnect3_22_M00_AXI_RREADY),
        .s_axi_rresp(interconnect3_22_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect3_22_M00_AXI_RVALID),
        .s_axi_wdata(interconnect3_22_M00_AXI_WDATA),
        .s_axi_wlast(interconnect3_22_M00_AXI_WLAST),
        .s_axi_wready(interconnect3_22_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect3_22_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect3_22_M00_AXI_WVALID));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_23_imp_WHHIHO
   (S00_AXI_awready,
    S00_AXI_wready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_arready,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    M_AXI_awaddr,
    M_AXI_awlen,
    M_AXI_awburst,
    M_AXI_awlock,
    M_AXI_awcache,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awvalid,
    M_AXI_wdata,
    M_AXI_wstrb,
    M_AXI_wlast,
    M_AXI_wvalid,
    M_AXI_bready,
    M_AXI_araddr,
    M_AXI_arlen,
    M_AXI_arburst,
    M_AXI_arlock,
    M_AXI_arcache,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arvalid,
    M_AXI_rready,
    aclk,
    hbm_aclk,
    aresetn,
    S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awsize,
    S00_AXI_awburst,
    S00_AXI_awlock,
    S00_AXI_awcache,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awvalid,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wvalid,
    S00_AXI_bready,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arsize,
    S00_AXI_arburst,
    S00_AXI_arlock,
    S00_AXI_arcache,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arvalid,
    S00_AXI_rready,
    aresetn1,
    M_AXI_awready,
    M_AXI_wready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_arready,
    M_AXI_rdata,
    M_AXI_rresp,
    M_AXI_rlast,
    M_AXI_rvalid);
  output [0:0]S00_AXI_awready;
  output [0:0]S00_AXI_wready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [0:0]S00_AXI_arready;
  output [511:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rlast;
  output [0:0]S00_AXI_rvalid;
  output [32:0]M_AXI_awaddr;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awburst;
  output [1:0]M_AXI_awlock;
  output [3:0]M_AXI_awcache;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  output M_AXI_awvalid;
  output [255:0]M_AXI_wdata;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wlast;
  output M_AXI_wvalid;
  output M_AXI_bready;
  output [32:0]M_AXI_araddr;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arburst;
  output [1:0]M_AXI_arlock;
  output [3:0]M_AXI_arcache;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  output M_AXI_arvalid;
  output M_AXI_rready;
  input aclk;
  input hbm_aclk;
  input aresetn;
  input [32:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awsize;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  input [0:0]S00_AXI_awvalid;
  input [511:0]S00_AXI_wdata;
  input [63:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wlast;
  input [0:0]S00_AXI_wvalid;
  input [0:0]S00_AXI_bready;
  input [32:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  input [0:0]S00_AXI_arvalid;
  input [0:0]S00_AXI_rready;
  input aresetn1;
  input M_AXI_awready;
  input M_AXI_wready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_arready;
  input [255:0]M_AXI_rdata;
  input [1:0]M_AXI_rresp;
  input M_AXI_rlast;
  input M_AXI_rvalid;

  wire [32:0]M_AXI_araddr;
  wire [1:0]M_AXI_arburst;
  wire [3:0]M_AXI_arcache;
  wire [3:0]M_AXI_arlen;
  wire [1:0]M_AXI_arlock;
  wire [2:0]M_AXI_arprot;
  wire [3:0]M_AXI_arqos;
  wire M_AXI_arready;
  wire M_AXI_arvalid;
  wire [32:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [3:0]M_AXI_awlen;
  wire [1:0]M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire M_AXI_awready;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire [1:0]M_AXI_bresp;
  wire M_AXI_bvalid;
  wire [255:0]M_AXI_rdata;
  wire M_AXI_rlast;
  wire M_AXI_rready;
  wire [1:0]M_AXI_rresp;
  wire M_AXI_rvalid;
  wire [255:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire M_AXI_wready;
  wire [31:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire [32:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [7:0]S00_AXI_arlen;
  wire [0:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire [0:0]S00_AXI_arready;
  wire [2:0]S00_AXI_arsize;
  wire [0:0]S00_AXI_arvalid;
  wire [32:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [7:0]S00_AXI_awlen;
  wire [0:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire [0:0]S00_AXI_awready;
  wire [2:0]S00_AXI_awsize;
  wire [0:0]S00_AXI_awvalid;
  wire [0:0]S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire [0:0]S00_AXI_bvalid;
  wire [511:0]S00_AXI_rdata;
  wire [0:0]S00_AXI_rlast;
  wire [0:0]S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire [0:0]S00_AXI_rvalid;
  wire [511:0]S00_AXI_wdata;
  wire [0:0]S00_AXI_wlast;
  wire [0:0]S00_AXI_wready;
  wire [63:0]S00_AXI_wstrb;
  wire [0:0]S00_AXI_wvalid;
  wire aclk;
  wire aresetn;
  wire aresetn1;
  wire hbm_aclk;
  wire [32:0]interconnect0_23_M00_AXI_ARADDR;
  wire [1:0]interconnect0_23_M00_AXI_ARBURST;
  wire [3:0]interconnect0_23_M00_AXI_ARCACHE;
  wire [3:0]interconnect0_23_M00_AXI_ARLEN;
  wire [1:0]interconnect0_23_M00_AXI_ARLOCK;
  wire [2:0]interconnect0_23_M00_AXI_ARPROT;
  wire [3:0]interconnect0_23_M00_AXI_ARQOS;
  wire interconnect0_23_M00_AXI_ARREADY;
  wire [2:0]interconnect0_23_M00_AXI_ARSIZE;
  wire interconnect0_23_M00_AXI_ARVALID;
  wire [32:0]interconnect0_23_M00_AXI_AWADDR;
  wire [1:0]interconnect0_23_M00_AXI_AWBURST;
  wire [3:0]interconnect0_23_M00_AXI_AWCACHE;
  wire [3:0]interconnect0_23_M00_AXI_AWLEN;
  wire [1:0]interconnect0_23_M00_AXI_AWLOCK;
  wire [2:0]interconnect0_23_M00_AXI_AWPROT;
  wire [3:0]interconnect0_23_M00_AXI_AWQOS;
  wire interconnect0_23_M00_AXI_AWREADY;
  wire [2:0]interconnect0_23_M00_AXI_AWSIZE;
  wire interconnect0_23_M00_AXI_AWVALID;
  wire interconnect0_23_M00_AXI_BREADY;
  wire [1:0]interconnect0_23_M00_AXI_BRESP;
  wire interconnect0_23_M00_AXI_BVALID;
  wire [255:0]interconnect0_23_M00_AXI_RDATA;
  wire interconnect0_23_M00_AXI_RLAST;
  wire interconnect0_23_M00_AXI_RREADY;
  wire [1:0]interconnect0_23_M00_AXI_RRESP;
  wire interconnect0_23_M00_AXI_RVALID;
  wire [255:0]interconnect0_23_M00_AXI_WDATA;
  wire interconnect0_23_M00_AXI_WLAST;
  wire interconnect0_23_M00_AXI_WREADY;
  wire [31:0]interconnect0_23_M00_AXI_WSTRB;
  wire interconnect0_23_M00_AXI_WVALID;
  wire [2:0]NLW_slice0_23_m_axi_arsize_UNCONNECTED;
  wire [2:0]NLW_slice0_23_m_axi_awsize_UNCONNECTED;

  (* X_CORE_INFO = "bd_831b,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect0_23_0 interconnect0_23
       (.M00_AXI_araddr(interconnect0_23_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect0_23_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect0_23_M00_AXI_ARCACHE),
        .M00_AXI_arlen(interconnect0_23_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect0_23_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect0_23_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect0_23_M00_AXI_ARQOS),
        .M00_AXI_arready(interconnect0_23_M00_AXI_ARREADY),
        .M00_AXI_arsize(interconnect0_23_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(interconnect0_23_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect0_23_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect0_23_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect0_23_M00_AXI_AWCACHE),
        .M00_AXI_awlen(interconnect0_23_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect0_23_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect0_23_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect0_23_M00_AXI_AWQOS),
        .M00_AXI_awready(interconnect0_23_M00_AXI_AWREADY),
        .M00_AXI_awsize(interconnect0_23_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(interconnect0_23_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect0_23_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect0_23_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect0_23_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect0_23_M00_AXI_RDATA),
        .M00_AXI_rlast(interconnect0_23_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect0_23_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect0_23_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect0_23_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect0_23_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect0_23_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect0_23_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect0_23_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect0_23_M00_AXI_WVALID),
        .S00_AXI_araddr(S00_AXI_araddr),
        .S00_AXI_arburst(S00_AXI_arburst),
        .S00_AXI_arcache(S00_AXI_arcache),
        .S00_AXI_arlen(S00_AXI_arlen),
        .S00_AXI_arlock(S00_AXI_arlock),
        .S00_AXI_arprot(S00_AXI_arprot),
        .S00_AXI_arqos(S00_AXI_arqos),
        .S00_AXI_arready(S00_AXI_arready),
        .S00_AXI_arsize(S00_AXI_arsize),
        .S00_AXI_arvalid(S00_AXI_arvalid),
        .S00_AXI_awaddr(S00_AXI_awaddr),
        .S00_AXI_awburst(S00_AXI_awburst),
        .S00_AXI_awcache(S00_AXI_awcache),
        .S00_AXI_awlen(S00_AXI_awlen),
        .S00_AXI_awlock(S00_AXI_awlock),
        .S00_AXI_awprot(S00_AXI_awprot),
        .S00_AXI_awqos(S00_AXI_awqos),
        .S00_AXI_awready(S00_AXI_awready),
        .S00_AXI_awsize(S00_AXI_awsize),
        .S00_AXI_awvalid(S00_AXI_awvalid),
        .S00_AXI_bready(S00_AXI_bready),
        .S00_AXI_bresp(S00_AXI_bresp),
        .S00_AXI_bvalid(S00_AXI_bvalid),
        .S00_AXI_rdata(S00_AXI_rdata),
        .S00_AXI_rlast(S00_AXI_rlast),
        .S00_AXI_rready(S00_AXI_rready),
        .S00_AXI_rresp(S00_AXI_rresp),
        .S00_AXI_rvalid(S00_AXI_rvalid),
        .S00_AXI_wdata(S00_AXI_wdata),
        .S00_AXI_wlast(S00_AXI_wlast),
        .S00_AXI_wready(S00_AXI_wready),
        .S00_AXI_wstrb(S00_AXI_wstrb),
        .S00_AXI_wvalid(S00_AXI_wvalid),
        .aclk(aclk),
        .aclk1(hbm_aclk),
        .aresetn(aresetn));
  (* X_CORE_INFO = "axi_register_slice_v2_1_22_axi_register_slice,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice0_23_0 slice0_23
       (.aclk(hbm_aclk),
        .aresetn(aresetn1),
        .m_axi_araddr(M_AXI_araddr),
        .m_axi_arburst(M_AXI_arburst),
        .m_axi_arcache(M_AXI_arcache),
        .m_axi_arlen(M_AXI_arlen),
        .m_axi_arlock(M_AXI_arlock),
        .m_axi_arprot(M_AXI_arprot),
        .m_axi_arqos(M_AXI_arqos),
        .m_axi_arready(M_AXI_arready),
        .m_axi_arsize(NLW_slice0_23_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_arvalid(M_AXI_arvalid),
        .m_axi_awaddr(M_AXI_awaddr),
        .m_axi_awburst(M_AXI_awburst),
        .m_axi_awcache(M_AXI_awcache),
        .m_axi_awlen(M_AXI_awlen),
        .m_axi_awlock(M_AXI_awlock),
        .m_axi_awprot(M_AXI_awprot),
        .m_axi_awqos(M_AXI_awqos),
        .m_axi_awready(M_AXI_awready),
        .m_axi_awsize(NLW_slice0_23_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awvalid(M_AXI_awvalid),
        .m_axi_bready(M_AXI_bready),
        .m_axi_bresp(M_AXI_bresp),
        .m_axi_bvalid(M_AXI_bvalid),
        .m_axi_rdata(M_AXI_rdata),
        .m_axi_rlast(M_AXI_rlast),
        .m_axi_rready(M_AXI_rready),
        .m_axi_rresp(M_AXI_rresp),
        .m_axi_rvalid(M_AXI_rvalid),
        .m_axi_wdata(M_AXI_wdata),
        .m_axi_wlast(M_AXI_wlast),
        .m_axi_wready(M_AXI_wready),
        .m_axi_wstrb(M_AXI_wstrb),
        .m_axi_wvalid(M_AXI_wvalid),
        .s_axi_araddr(interconnect0_23_M00_AXI_ARADDR),
        .s_axi_arburst(interconnect0_23_M00_AXI_ARBURST),
        .s_axi_arcache(interconnect0_23_M00_AXI_ARCACHE),
        .s_axi_arlen(interconnect0_23_M00_AXI_ARLEN),
        .s_axi_arlock(interconnect0_23_M00_AXI_ARLOCK),
        .s_axi_arprot(interconnect0_23_M00_AXI_ARPROT),
        .s_axi_arqos(interconnect0_23_M00_AXI_ARQOS),
        .s_axi_arready(interconnect0_23_M00_AXI_ARREADY),
        .s_axi_arsize(interconnect0_23_M00_AXI_ARSIZE),
        .s_axi_arvalid(interconnect0_23_M00_AXI_ARVALID),
        .s_axi_awaddr(interconnect0_23_M00_AXI_AWADDR),
        .s_axi_awburst(interconnect0_23_M00_AXI_AWBURST),
        .s_axi_awcache(interconnect0_23_M00_AXI_AWCACHE),
        .s_axi_awlen(interconnect0_23_M00_AXI_AWLEN),
        .s_axi_awlock(interconnect0_23_M00_AXI_AWLOCK),
        .s_axi_awprot(interconnect0_23_M00_AXI_AWPROT),
        .s_axi_awqos(interconnect0_23_M00_AXI_AWQOS),
        .s_axi_awready(interconnect0_23_M00_AXI_AWREADY),
        .s_axi_awsize(interconnect0_23_M00_AXI_AWSIZE),
        .s_axi_awvalid(interconnect0_23_M00_AXI_AWVALID),
        .s_axi_bready(interconnect0_23_M00_AXI_BREADY),
        .s_axi_bresp(interconnect0_23_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect0_23_M00_AXI_BVALID),
        .s_axi_rdata(interconnect0_23_M00_AXI_RDATA),
        .s_axi_rlast(interconnect0_23_M00_AXI_RLAST),
        .s_axi_rready(interconnect0_23_M00_AXI_RREADY),
        .s_axi_rresp(interconnect0_23_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect0_23_M00_AXI_RVALID),
        .s_axi_wdata(interconnect0_23_M00_AXI_WDATA),
        .s_axi_wlast(interconnect0_23_M00_AXI_WLAST),
        .s_axi_wready(interconnect0_23_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect0_23_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect0_23_M00_AXI_WVALID));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_24_imp_ZGQW91
   (S04_AXI_awready,
    S04_AXI_wready,
    S04_AXI_bresp,
    S04_AXI_bvalid,
    S04_AXI_arready,
    S04_AXI_rdata,
    S04_AXI_rresp,
    S04_AXI_rlast,
    S04_AXI_rvalid,
    M_AXI_awaddr,
    M_AXI_awlen,
    M_AXI_awburst,
    M_AXI_awlock,
    M_AXI_awcache,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awvalid,
    M_AXI_wdata,
    M_AXI_wstrb,
    M_AXI_wlast,
    M_AXI_wvalid,
    M_AXI_bready,
    M_AXI_araddr,
    M_AXI_arlen,
    M_AXI_arburst,
    M_AXI_arlock,
    M_AXI_arcache,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arvalid,
    M_AXI_rready,
    aclk1,
    hbm_aclk,
    aresetn1,
    S04_AXI_awaddr,
    S04_AXI_awlen,
    S04_AXI_awsize,
    S04_AXI_awburst,
    S04_AXI_awlock,
    S04_AXI_awcache,
    S04_AXI_awprot,
    S04_AXI_awqos,
    S04_AXI_awvalid,
    S04_AXI_wdata,
    S04_AXI_wstrb,
    S04_AXI_wlast,
    S04_AXI_wvalid,
    S04_AXI_bready,
    S04_AXI_araddr,
    S04_AXI_arlen,
    S04_AXI_arsize,
    S04_AXI_arburst,
    S04_AXI_arlock,
    S04_AXI_arcache,
    S04_AXI_arprot,
    S04_AXI_arqos,
    S04_AXI_arvalid,
    S04_AXI_rready,
    interconnect_aresetn,
    M_AXI_awready,
    M_AXI_wready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_arready,
    M_AXI_rdata,
    M_AXI_rresp,
    M_AXI_rlast,
    M_AXI_rvalid);
  output [0:0]S04_AXI_awready;
  output [0:0]S04_AXI_wready;
  output [1:0]S04_AXI_bresp;
  output [0:0]S04_AXI_bvalid;
  output [0:0]S04_AXI_arready;
  output [31:0]S04_AXI_rdata;
  output [1:0]S04_AXI_rresp;
  output [0:0]S04_AXI_rlast;
  output [0:0]S04_AXI_rvalid;
  output [32:0]M_AXI_awaddr;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awburst;
  output [1:0]M_AXI_awlock;
  output [3:0]M_AXI_awcache;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  output M_AXI_awvalid;
  output [255:0]M_AXI_wdata;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wlast;
  output M_AXI_wvalid;
  output M_AXI_bready;
  output [32:0]M_AXI_araddr;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arburst;
  output [1:0]M_AXI_arlock;
  output [3:0]M_AXI_arcache;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  output M_AXI_arvalid;
  output M_AXI_rready;
  input aclk1;
  input hbm_aclk;
  input aresetn1;
  input [63:0]S04_AXI_awaddr;
  input [7:0]S04_AXI_awlen;
  input [2:0]S04_AXI_awsize;
  input [1:0]S04_AXI_awburst;
  input [0:0]S04_AXI_awlock;
  input [3:0]S04_AXI_awcache;
  input [2:0]S04_AXI_awprot;
  input [3:0]S04_AXI_awqos;
  input [0:0]S04_AXI_awvalid;
  input [31:0]S04_AXI_wdata;
  input [3:0]S04_AXI_wstrb;
  input [0:0]S04_AXI_wlast;
  input [0:0]S04_AXI_wvalid;
  input [0:0]S04_AXI_bready;
  input [63:0]S04_AXI_araddr;
  input [7:0]S04_AXI_arlen;
  input [2:0]S04_AXI_arsize;
  input [1:0]S04_AXI_arburst;
  input [0:0]S04_AXI_arlock;
  input [3:0]S04_AXI_arcache;
  input [2:0]S04_AXI_arprot;
  input [3:0]S04_AXI_arqos;
  input [0:0]S04_AXI_arvalid;
  input [0:0]S04_AXI_rready;
  input [0:0]interconnect_aresetn;
  input M_AXI_awready;
  input M_AXI_wready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_arready;
  input [255:0]M_AXI_rdata;
  input [1:0]M_AXI_rresp;
  input M_AXI_rlast;
  input M_AXI_rvalid;

  wire [32:0]M_AXI_araddr;
  wire [1:0]M_AXI_arburst;
  wire [3:0]M_AXI_arcache;
  wire [3:0]M_AXI_arlen;
  wire [1:0]M_AXI_arlock;
  wire [2:0]M_AXI_arprot;
  wire [3:0]M_AXI_arqos;
  wire M_AXI_arready;
  wire M_AXI_arvalid;
  wire [32:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [3:0]M_AXI_awlen;
  wire [1:0]M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire M_AXI_awready;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire [1:0]M_AXI_bresp;
  wire M_AXI_bvalid;
  wire [255:0]M_AXI_rdata;
  wire M_AXI_rlast;
  wire M_AXI_rready;
  wire [1:0]M_AXI_rresp;
  wire M_AXI_rvalid;
  wire [255:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire M_AXI_wready;
  wire [31:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire [63:0]S04_AXI_araddr;
  wire [1:0]S04_AXI_arburst;
  wire [3:0]S04_AXI_arcache;
  wire [7:0]S04_AXI_arlen;
  wire [0:0]S04_AXI_arlock;
  wire [2:0]S04_AXI_arprot;
  wire [3:0]S04_AXI_arqos;
  wire [0:0]S04_AXI_arready;
  wire [2:0]S04_AXI_arsize;
  wire [0:0]S04_AXI_arvalid;
  wire [63:0]S04_AXI_awaddr;
  wire [1:0]S04_AXI_awburst;
  wire [3:0]S04_AXI_awcache;
  wire [7:0]S04_AXI_awlen;
  wire [0:0]S04_AXI_awlock;
  wire [2:0]S04_AXI_awprot;
  wire [3:0]S04_AXI_awqos;
  wire [0:0]S04_AXI_awready;
  wire [2:0]S04_AXI_awsize;
  wire [0:0]S04_AXI_awvalid;
  wire [0:0]S04_AXI_bready;
  wire [1:0]S04_AXI_bresp;
  wire [0:0]S04_AXI_bvalid;
  wire [31:0]S04_AXI_rdata;
  wire [0:0]S04_AXI_rlast;
  wire [0:0]S04_AXI_rready;
  wire [1:0]S04_AXI_rresp;
  wire [0:0]S04_AXI_rvalid;
  wire [31:0]S04_AXI_wdata;
  wire [0:0]S04_AXI_wlast;
  wire [0:0]S04_AXI_wready;
  wire [3:0]S04_AXI_wstrb;
  wire [0:0]S04_AXI_wvalid;
  wire aclk1;
  wire aresetn1;
  wire hbm_aclk;
  wire [32:0]interconnect4_24_M00_AXI_ARADDR;
  wire [1:0]interconnect4_24_M00_AXI_ARBURST;
  wire [3:0]interconnect4_24_M00_AXI_ARCACHE;
  wire [3:0]interconnect4_24_M00_AXI_ARLEN;
  wire [1:0]interconnect4_24_M00_AXI_ARLOCK;
  wire [2:0]interconnect4_24_M00_AXI_ARPROT;
  wire [3:0]interconnect4_24_M00_AXI_ARQOS;
  wire interconnect4_24_M00_AXI_ARREADY;
  wire [2:0]interconnect4_24_M00_AXI_ARSIZE;
  wire interconnect4_24_M00_AXI_ARVALID;
  wire [32:0]interconnect4_24_M00_AXI_AWADDR;
  wire [1:0]interconnect4_24_M00_AXI_AWBURST;
  wire [3:0]interconnect4_24_M00_AXI_AWCACHE;
  wire [3:0]interconnect4_24_M00_AXI_AWLEN;
  wire [1:0]interconnect4_24_M00_AXI_AWLOCK;
  wire [2:0]interconnect4_24_M00_AXI_AWPROT;
  wire [3:0]interconnect4_24_M00_AXI_AWQOS;
  wire interconnect4_24_M00_AXI_AWREADY;
  wire [2:0]interconnect4_24_M00_AXI_AWSIZE;
  wire interconnect4_24_M00_AXI_AWVALID;
  wire interconnect4_24_M00_AXI_BREADY;
  wire [1:0]interconnect4_24_M00_AXI_BRESP;
  wire interconnect4_24_M00_AXI_BVALID;
  wire [255:0]interconnect4_24_M00_AXI_RDATA;
  wire interconnect4_24_M00_AXI_RLAST;
  wire interconnect4_24_M00_AXI_RREADY;
  wire [1:0]interconnect4_24_M00_AXI_RRESP;
  wire interconnect4_24_M00_AXI_RVALID;
  wire [255:0]interconnect4_24_M00_AXI_WDATA;
  wire interconnect4_24_M00_AXI_WLAST;
  wire interconnect4_24_M00_AXI_WREADY;
  wire [31:0]interconnect4_24_M00_AXI_WSTRB;
  wire interconnect4_24_M00_AXI_WVALID;
  wire [0:0]interconnect_aresetn;
  wire [2:0]NLW_slice4_24_m_axi_arsize_UNCONNECTED;
  wire [2:0]NLW_slice4_24_m_axi_awsize_UNCONNECTED;

  (* X_CORE_INFO = "bd_c6ab,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect4_24_0 interconnect4_24
       (.M00_AXI_araddr(interconnect4_24_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect4_24_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect4_24_M00_AXI_ARCACHE),
        .M00_AXI_arlen(interconnect4_24_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect4_24_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect4_24_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect4_24_M00_AXI_ARQOS),
        .M00_AXI_arready(interconnect4_24_M00_AXI_ARREADY),
        .M00_AXI_arsize(interconnect4_24_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(interconnect4_24_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect4_24_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect4_24_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect4_24_M00_AXI_AWCACHE),
        .M00_AXI_awlen(interconnect4_24_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect4_24_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect4_24_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect4_24_M00_AXI_AWQOS),
        .M00_AXI_awready(interconnect4_24_M00_AXI_AWREADY),
        .M00_AXI_awsize(interconnect4_24_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(interconnect4_24_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect4_24_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect4_24_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect4_24_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect4_24_M00_AXI_RDATA),
        .M00_AXI_rlast(interconnect4_24_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect4_24_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect4_24_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect4_24_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect4_24_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect4_24_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect4_24_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect4_24_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect4_24_M00_AXI_WVALID),
        .S00_AXI_araddr(S04_AXI_araddr),
        .S00_AXI_arburst(S04_AXI_arburst),
        .S00_AXI_arcache(S04_AXI_arcache),
        .S00_AXI_arlen(S04_AXI_arlen),
        .S00_AXI_arlock(S04_AXI_arlock),
        .S00_AXI_arprot(S04_AXI_arprot),
        .S00_AXI_arqos(S04_AXI_arqos),
        .S00_AXI_arready(S04_AXI_arready),
        .S00_AXI_arsize(S04_AXI_arsize),
        .S00_AXI_arvalid(S04_AXI_arvalid),
        .S00_AXI_awaddr(S04_AXI_awaddr),
        .S00_AXI_awburst(S04_AXI_awburst),
        .S00_AXI_awcache(S04_AXI_awcache),
        .S00_AXI_awlen(S04_AXI_awlen),
        .S00_AXI_awlock(S04_AXI_awlock),
        .S00_AXI_awprot(S04_AXI_awprot),
        .S00_AXI_awqos(S04_AXI_awqos),
        .S00_AXI_awready(S04_AXI_awready),
        .S00_AXI_awsize(S04_AXI_awsize),
        .S00_AXI_awvalid(S04_AXI_awvalid),
        .S00_AXI_bready(S04_AXI_bready),
        .S00_AXI_bresp(S04_AXI_bresp),
        .S00_AXI_bvalid(S04_AXI_bvalid),
        .S00_AXI_rdata(S04_AXI_rdata),
        .S00_AXI_rlast(S04_AXI_rlast),
        .S00_AXI_rready(S04_AXI_rready),
        .S00_AXI_rresp(S04_AXI_rresp),
        .S00_AXI_rvalid(S04_AXI_rvalid),
        .S00_AXI_wdata(S04_AXI_wdata),
        .S00_AXI_wlast(S04_AXI_wlast),
        .S00_AXI_wready(S04_AXI_wready),
        .S00_AXI_wstrb(S04_AXI_wstrb),
        .S00_AXI_wvalid(S04_AXI_wvalid),
        .aclk(aclk1),
        .aclk1(hbm_aclk),
        .aresetn(aresetn1));
  (* X_CORE_INFO = "axi_register_slice_v2_1_22_axi_register_slice,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice4_24_0 slice4_24
       (.aclk(hbm_aclk),
        .aresetn(interconnect_aresetn),
        .m_axi_araddr(M_AXI_araddr),
        .m_axi_arburst(M_AXI_arburst),
        .m_axi_arcache(M_AXI_arcache),
        .m_axi_arlen(M_AXI_arlen),
        .m_axi_arlock(M_AXI_arlock),
        .m_axi_arprot(M_AXI_arprot),
        .m_axi_arqos(M_AXI_arqos),
        .m_axi_arready(M_AXI_arready),
        .m_axi_arsize(NLW_slice4_24_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_arvalid(M_AXI_arvalid),
        .m_axi_awaddr(M_AXI_awaddr),
        .m_axi_awburst(M_AXI_awburst),
        .m_axi_awcache(M_AXI_awcache),
        .m_axi_awlen(M_AXI_awlen),
        .m_axi_awlock(M_AXI_awlock),
        .m_axi_awprot(M_AXI_awprot),
        .m_axi_awqos(M_AXI_awqos),
        .m_axi_awready(M_AXI_awready),
        .m_axi_awsize(NLW_slice4_24_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awvalid(M_AXI_awvalid),
        .m_axi_bready(M_AXI_bready),
        .m_axi_bresp(M_AXI_bresp),
        .m_axi_bvalid(M_AXI_bvalid),
        .m_axi_rdata(M_AXI_rdata),
        .m_axi_rlast(M_AXI_rlast),
        .m_axi_rready(M_AXI_rready),
        .m_axi_rresp(M_AXI_rresp),
        .m_axi_rvalid(M_AXI_rvalid),
        .m_axi_wdata(M_AXI_wdata),
        .m_axi_wlast(M_AXI_wlast),
        .m_axi_wready(M_AXI_wready),
        .m_axi_wstrb(M_AXI_wstrb),
        .m_axi_wvalid(M_AXI_wvalid),
        .s_axi_araddr(interconnect4_24_M00_AXI_ARADDR),
        .s_axi_arburst(interconnect4_24_M00_AXI_ARBURST),
        .s_axi_arcache(interconnect4_24_M00_AXI_ARCACHE),
        .s_axi_arlen(interconnect4_24_M00_AXI_ARLEN),
        .s_axi_arlock(interconnect4_24_M00_AXI_ARLOCK),
        .s_axi_arprot(interconnect4_24_M00_AXI_ARPROT),
        .s_axi_arqos(interconnect4_24_M00_AXI_ARQOS),
        .s_axi_arready(interconnect4_24_M00_AXI_ARREADY),
        .s_axi_arsize(interconnect4_24_M00_AXI_ARSIZE),
        .s_axi_arvalid(interconnect4_24_M00_AXI_ARVALID),
        .s_axi_awaddr(interconnect4_24_M00_AXI_AWADDR),
        .s_axi_awburst(interconnect4_24_M00_AXI_AWBURST),
        .s_axi_awcache(interconnect4_24_M00_AXI_AWCACHE),
        .s_axi_awlen(interconnect4_24_M00_AXI_AWLEN),
        .s_axi_awlock(interconnect4_24_M00_AXI_AWLOCK),
        .s_axi_awprot(interconnect4_24_M00_AXI_AWPROT),
        .s_axi_awqos(interconnect4_24_M00_AXI_AWQOS),
        .s_axi_awready(interconnect4_24_M00_AXI_AWREADY),
        .s_axi_awsize(interconnect4_24_M00_AXI_AWSIZE),
        .s_axi_awvalid(interconnect4_24_M00_AXI_AWVALID),
        .s_axi_bready(interconnect4_24_M00_AXI_BREADY),
        .s_axi_bresp(interconnect4_24_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect4_24_M00_AXI_BVALID),
        .s_axi_rdata(interconnect4_24_M00_AXI_RDATA),
        .s_axi_rlast(interconnect4_24_M00_AXI_RLAST),
        .s_axi_rready(interconnect4_24_M00_AXI_RREADY),
        .s_axi_rresp(interconnect4_24_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect4_24_M00_AXI_RVALID),
        .s_axi_wdata(interconnect4_24_M00_AXI_WDATA),
        .s_axi_wlast(interconnect4_24_M00_AXI_WLAST),
        .s_axi_wready(interconnect4_24_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect4_24_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect4_24_M00_AXI_WVALID));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_25_imp_1DSSZ8B
   (S05_AXI_awready,
    S05_AXI_wready,
    S05_AXI_bresp,
    S05_AXI_bvalid,
    S05_AXI_arready,
    S05_AXI_rdata,
    S05_AXI_rresp,
    S05_AXI_rlast,
    S05_AXI_rvalid,
    M_AXI_awaddr,
    M_AXI_awlen,
    M_AXI_awburst,
    M_AXI_awlock,
    M_AXI_awcache,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awvalid,
    M_AXI_wdata,
    M_AXI_wstrb,
    M_AXI_wlast,
    M_AXI_wvalid,
    M_AXI_bready,
    M_AXI_araddr,
    M_AXI_arlen,
    M_AXI_arburst,
    M_AXI_arlock,
    M_AXI_arcache,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arvalid,
    M_AXI_rready,
    aclk1,
    hbm_aclk,
    aresetn1,
    S05_AXI_awaddr,
    S05_AXI_awlen,
    S05_AXI_awsize,
    S05_AXI_awburst,
    S05_AXI_awlock,
    S05_AXI_awcache,
    S05_AXI_awprot,
    S05_AXI_awqos,
    S05_AXI_awvalid,
    S05_AXI_wdata,
    S05_AXI_wstrb,
    S05_AXI_wlast,
    S05_AXI_wvalid,
    S05_AXI_bready,
    S05_AXI_araddr,
    S05_AXI_arlen,
    S05_AXI_arsize,
    S05_AXI_arburst,
    S05_AXI_arlock,
    S05_AXI_arcache,
    S05_AXI_arprot,
    S05_AXI_arqos,
    S05_AXI_arvalid,
    S05_AXI_rready,
    interconnect_aresetn,
    M_AXI_awready,
    M_AXI_wready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_arready,
    M_AXI_rdata,
    M_AXI_rresp,
    M_AXI_rlast,
    M_AXI_rvalid);
  output [0:0]S05_AXI_awready;
  output [0:0]S05_AXI_wready;
  output [1:0]S05_AXI_bresp;
  output [0:0]S05_AXI_bvalid;
  output [0:0]S05_AXI_arready;
  output [31:0]S05_AXI_rdata;
  output [1:0]S05_AXI_rresp;
  output [0:0]S05_AXI_rlast;
  output [0:0]S05_AXI_rvalid;
  output [32:0]M_AXI_awaddr;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awburst;
  output [1:0]M_AXI_awlock;
  output [3:0]M_AXI_awcache;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  output M_AXI_awvalid;
  output [255:0]M_AXI_wdata;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wlast;
  output M_AXI_wvalid;
  output M_AXI_bready;
  output [32:0]M_AXI_araddr;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arburst;
  output [1:0]M_AXI_arlock;
  output [3:0]M_AXI_arcache;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  output M_AXI_arvalid;
  output M_AXI_rready;
  input aclk1;
  input hbm_aclk;
  input aresetn1;
  input [63:0]S05_AXI_awaddr;
  input [7:0]S05_AXI_awlen;
  input [2:0]S05_AXI_awsize;
  input [1:0]S05_AXI_awburst;
  input [0:0]S05_AXI_awlock;
  input [3:0]S05_AXI_awcache;
  input [2:0]S05_AXI_awprot;
  input [3:0]S05_AXI_awqos;
  input [0:0]S05_AXI_awvalid;
  input [31:0]S05_AXI_wdata;
  input [3:0]S05_AXI_wstrb;
  input [0:0]S05_AXI_wlast;
  input [0:0]S05_AXI_wvalid;
  input [0:0]S05_AXI_bready;
  input [63:0]S05_AXI_araddr;
  input [7:0]S05_AXI_arlen;
  input [2:0]S05_AXI_arsize;
  input [1:0]S05_AXI_arburst;
  input [0:0]S05_AXI_arlock;
  input [3:0]S05_AXI_arcache;
  input [2:0]S05_AXI_arprot;
  input [3:0]S05_AXI_arqos;
  input [0:0]S05_AXI_arvalid;
  input [0:0]S05_AXI_rready;
  input [0:0]interconnect_aresetn;
  input M_AXI_awready;
  input M_AXI_wready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_arready;
  input [255:0]M_AXI_rdata;
  input [1:0]M_AXI_rresp;
  input M_AXI_rlast;
  input M_AXI_rvalid;

  wire [32:0]M_AXI_araddr;
  wire [1:0]M_AXI_arburst;
  wire [3:0]M_AXI_arcache;
  wire [3:0]M_AXI_arlen;
  wire [1:0]M_AXI_arlock;
  wire [2:0]M_AXI_arprot;
  wire [3:0]M_AXI_arqos;
  wire M_AXI_arready;
  wire M_AXI_arvalid;
  wire [32:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [3:0]M_AXI_awlen;
  wire [1:0]M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire M_AXI_awready;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire [1:0]M_AXI_bresp;
  wire M_AXI_bvalid;
  wire [255:0]M_AXI_rdata;
  wire M_AXI_rlast;
  wire M_AXI_rready;
  wire [1:0]M_AXI_rresp;
  wire M_AXI_rvalid;
  wire [255:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire M_AXI_wready;
  wire [31:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire [63:0]S05_AXI_araddr;
  wire [1:0]S05_AXI_arburst;
  wire [3:0]S05_AXI_arcache;
  wire [7:0]S05_AXI_arlen;
  wire [0:0]S05_AXI_arlock;
  wire [2:0]S05_AXI_arprot;
  wire [3:0]S05_AXI_arqos;
  wire [0:0]S05_AXI_arready;
  wire [2:0]S05_AXI_arsize;
  wire [0:0]S05_AXI_arvalid;
  wire [63:0]S05_AXI_awaddr;
  wire [1:0]S05_AXI_awburst;
  wire [3:0]S05_AXI_awcache;
  wire [7:0]S05_AXI_awlen;
  wire [0:0]S05_AXI_awlock;
  wire [2:0]S05_AXI_awprot;
  wire [3:0]S05_AXI_awqos;
  wire [0:0]S05_AXI_awready;
  wire [2:0]S05_AXI_awsize;
  wire [0:0]S05_AXI_awvalid;
  wire [0:0]S05_AXI_bready;
  wire [1:0]S05_AXI_bresp;
  wire [0:0]S05_AXI_bvalid;
  wire [31:0]S05_AXI_rdata;
  wire [0:0]S05_AXI_rlast;
  wire [0:0]S05_AXI_rready;
  wire [1:0]S05_AXI_rresp;
  wire [0:0]S05_AXI_rvalid;
  wire [31:0]S05_AXI_wdata;
  wire [0:0]S05_AXI_wlast;
  wire [0:0]S05_AXI_wready;
  wire [3:0]S05_AXI_wstrb;
  wire [0:0]S05_AXI_wvalid;
  wire aclk1;
  wire aresetn1;
  wire hbm_aclk;
  wire [32:0]interconnect5_25_M00_AXI_ARADDR;
  wire [1:0]interconnect5_25_M00_AXI_ARBURST;
  wire [3:0]interconnect5_25_M00_AXI_ARCACHE;
  wire [3:0]interconnect5_25_M00_AXI_ARLEN;
  wire [1:0]interconnect5_25_M00_AXI_ARLOCK;
  wire [2:0]interconnect5_25_M00_AXI_ARPROT;
  wire [3:0]interconnect5_25_M00_AXI_ARQOS;
  wire interconnect5_25_M00_AXI_ARREADY;
  wire [2:0]interconnect5_25_M00_AXI_ARSIZE;
  wire interconnect5_25_M00_AXI_ARVALID;
  wire [32:0]interconnect5_25_M00_AXI_AWADDR;
  wire [1:0]interconnect5_25_M00_AXI_AWBURST;
  wire [3:0]interconnect5_25_M00_AXI_AWCACHE;
  wire [3:0]interconnect5_25_M00_AXI_AWLEN;
  wire [1:0]interconnect5_25_M00_AXI_AWLOCK;
  wire [2:0]interconnect5_25_M00_AXI_AWPROT;
  wire [3:0]interconnect5_25_M00_AXI_AWQOS;
  wire interconnect5_25_M00_AXI_AWREADY;
  wire [2:0]interconnect5_25_M00_AXI_AWSIZE;
  wire interconnect5_25_M00_AXI_AWVALID;
  wire interconnect5_25_M00_AXI_BREADY;
  wire [1:0]interconnect5_25_M00_AXI_BRESP;
  wire interconnect5_25_M00_AXI_BVALID;
  wire [255:0]interconnect5_25_M00_AXI_RDATA;
  wire interconnect5_25_M00_AXI_RLAST;
  wire interconnect5_25_M00_AXI_RREADY;
  wire [1:0]interconnect5_25_M00_AXI_RRESP;
  wire interconnect5_25_M00_AXI_RVALID;
  wire [255:0]interconnect5_25_M00_AXI_WDATA;
  wire interconnect5_25_M00_AXI_WLAST;
  wire interconnect5_25_M00_AXI_WREADY;
  wire [31:0]interconnect5_25_M00_AXI_WSTRB;
  wire interconnect5_25_M00_AXI_WVALID;
  wire [0:0]interconnect_aresetn;
  wire [2:0]NLW_slice5_25_m_axi_arsize_UNCONNECTED;
  wire [2:0]NLW_slice5_25_m_axi_awsize_UNCONNECTED;

  (* X_CORE_INFO = "bd_d7fb,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect5_25_0 interconnect5_25
       (.M00_AXI_araddr(interconnect5_25_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect5_25_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect5_25_M00_AXI_ARCACHE),
        .M00_AXI_arlen(interconnect5_25_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect5_25_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect5_25_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect5_25_M00_AXI_ARQOS),
        .M00_AXI_arready(interconnect5_25_M00_AXI_ARREADY),
        .M00_AXI_arsize(interconnect5_25_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(interconnect5_25_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect5_25_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect5_25_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect5_25_M00_AXI_AWCACHE),
        .M00_AXI_awlen(interconnect5_25_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect5_25_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect5_25_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect5_25_M00_AXI_AWQOS),
        .M00_AXI_awready(interconnect5_25_M00_AXI_AWREADY),
        .M00_AXI_awsize(interconnect5_25_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(interconnect5_25_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect5_25_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect5_25_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect5_25_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect5_25_M00_AXI_RDATA),
        .M00_AXI_rlast(interconnect5_25_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect5_25_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect5_25_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect5_25_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect5_25_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect5_25_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect5_25_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect5_25_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect5_25_M00_AXI_WVALID),
        .S00_AXI_araddr(S05_AXI_araddr),
        .S00_AXI_arburst(S05_AXI_arburst),
        .S00_AXI_arcache(S05_AXI_arcache),
        .S00_AXI_arlen(S05_AXI_arlen),
        .S00_AXI_arlock(S05_AXI_arlock),
        .S00_AXI_arprot(S05_AXI_arprot),
        .S00_AXI_arqos(S05_AXI_arqos),
        .S00_AXI_arready(S05_AXI_arready),
        .S00_AXI_arsize(S05_AXI_arsize),
        .S00_AXI_arvalid(S05_AXI_arvalid),
        .S00_AXI_awaddr(S05_AXI_awaddr),
        .S00_AXI_awburst(S05_AXI_awburst),
        .S00_AXI_awcache(S05_AXI_awcache),
        .S00_AXI_awlen(S05_AXI_awlen),
        .S00_AXI_awlock(S05_AXI_awlock),
        .S00_AXI_awprot(S05_AXI_awprot),
        .S00_AXI_awqos(S05_AXI_awqos),
        .S00_AXI_awready(S05_AXI_awready),
        .S00_AXI_awsize(S05_AXI_awsize),
        .S00_AXI_awvalid(S05_AXI_awvalid),
        .S00_AXI_bready(S05_AXI_bready),
        .S00_AXI_bresp(S05_AXI_bresp),
        .S00_AXI_bvalid(S05_AXI_bvalid),
        .S00_AXI_rdata(S05_AXI_rdata),
        .S00_AXI_rlast(S05_AXI_rlast),
        .S00_AXI_rready(S05_AXI_rready),
        .S00_AXI_rresp(S05_AXI_rresp),
        .S00_AXI_rvalid(S05_AXI_rvalid),
        .S00_AXI_wdata(S05_AXI_wdata),
        .S00_AXI_wlast(S05_AXI_wlast),
        .S00_AXI_wready(S05_AXI_wready),
        .S00_AXI_wstrb(S05_AXI_wstrb),
        .S00_AXI_wvalid(S05_AXI_wvalid),
        .aclk(aclk1),
        .aclk1(hbm_aclk),
        .aresetn(aresetn1));
  (* X_CORE_INFO = "axi_register_slice_v2_1_22_axi_register_slice,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice5_25_0 slice5_25
       (.aclk(hbm_aclk),
        .aresetn(interconnect_aresetn),
        .m_axi_araddr(M_AXI_araddr),
        .m_axi_arburst(M_AXI_arburst),
        .m_axi_arcache(M_AXI_arcache),
        .m_axi_arlen(M_AXI_arlen),
        .m_axi_arlock(M_AXI_arlock),
        .m_axi_arprot(M_AXI_arprot),
        .m_axi_arqos(M_AXI_arqos),
        .m_axi_arready(M_AXI_arready),
        .m_axi_arsize(NLW_slice5_25_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_arvalid(M_AXI_arvalid),
        .m_axi_awaddr(M_AXI_awaddr),
        .m_axi_awburst(M_AXI_awburst),
        .m_axi_awcache(M_AXI_awcache),
        .m_axi_awlen(M_AXI_awlen),
        .m_axi_awlock(M_AXI_awlock),
        .m_axi_awprot(M_AXI_awprot),
        .m_axi_awqos(M_AXI_awqos),
        .m_axi_awready(M_AXI_awready),
        .m_axi_awsize(NLW_slice5_25_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awvalid(M_AXI_awvalid),
        .m_axi_bready(M_AXI_bready),
        .m_axi_bresp(M_AXI_bresp),
        .m_axi_bvalid(M_AXI_bvalid),
        .m_axi_rdata(M_AXI_rdata),
        .m_axi_rlast(M_AXI_rlast),
        .m_axi_rready(M_AXI_rready),
        .m_axi_rresp(M_AXI_rresp),
        .m_axi_rvalid(M_AXI_rvalid),
        .m_axi_wdata(M_AXI_wdata),
        .m_axi_wlast(M_AXI_wlast),
        .m_axi_wready(M_AXI_wready),
        .m_axi_wstrb(M_AXI_wstrb),
        .m_axi_wvalid(M_AXI_wvalid),
        .s_axi_araddr(interconnect5_25_M00_AXI_ARADDR),
        .s_axi_arburst(interconnect5_25_M00_AXI_ARBURST),
        .s_axi_arcache(interconnect5_25_M00_AXI_ARCACHE),
        .s_axi_arlen(interconnect5_25_M00_AXI_ARLEN),
        .s_axi_arlock(interconnect5_25_M00_AXI_ARLOCK),
        .s_axi_arprot(interconnect5_25_M00_AXI_ARPROT),
        .s_axi_arqos(interconnect5_25_M00_AXI_ARQOS),
        .s_axi_arready(interconnect5_25_M00_AXI_ARREADY),
        .s_axi_arsize(interconnect5_25_M00_AXI_ARSIZE),
        .s_axi_arvalid(interconnect5_25_M00_AXI_ARVALID),
        .s_axi_awaddr(interconnect5_25_M00_AXI_AWADDR),
        .s_axi_awburst(interconnect5_25_M00_AXI_AWBURST),
        .s_axi_awcache(interconnect5_25_M00_AXI_AWCACHE),
        .s_axi_awlen(interconnect5_25_M00_AXI_AWLEN),
        .s_axi_awlock(interconnect5_25_M00_AXI_AWLOCK),
        .s_axi_awprot(interconnect5_25_M00_AXI_AWPROT),
        .s_axi_awqos(interconnect5_25_M00_AXI_AWQOS),
        .s_axi_awready(interconnect5_25_M00_AXI_AWREADY),
        .s_axi_awsize(interconnect5_25_M00_AXI_AWSIZE),
        .s_axi_awvalid(interconnect5_25_M00_AXI_AWVALID),
        .s_axi_bready(interconnect5_25_M00_AXI_BREADY),
        .s_axi_bresp(interconnect5_25_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect5_25_M00_AXI_BVALID),
        .s_axi_rdata(interconnect5_25_M00_AXI_RDATA),
        .s_axi_rlast(interconnect5_25_M00_AXI_RLAST),
        .s_axi_rready(interconnect5_25_M00_AXI_RREADY),
        .s_axi_rresp(interconnect5_25_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect5_25_M00_AXI_RVALID),
        .s_axi_wdata(interconnect5_25_M00_AXI_WDATA),
        .s_axi_wlast(interconnect5_25_M00_AXI_WLAST),
        .s_axi_wready(interconnect5_25_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect5_25_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect5_25_M00_AXI_WVALID));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_26_imp_H6UVUG
   (S06_AXI_awready,
    S06_AXI_wready,
    S06_AXI_bresp,
    S06_AXI_bvalid,
    S06_AXI_arready,
    S06_AXI_rdata,
    S06_AXI_rresp,
    S06_AXI_rlast,
    S06_AXI_rvalid,
    M_AXI_awaddr,
    M_AXI_awlen,
    M_AXI_awburst,
    M_AXI_awlock,
    M_AXI_awcache,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awvalid,
    M_AXI_wdata,
    M_AXI_wstrb,
    M_AXI_wlast,
    M_AXI_wvalid,
    M_AXI_bready,
    M_AXI_araddr,
    M_AXI_arlen,
    M_AXI_arburst,
    M_AXI_arlock,
    M_AXI_arcache,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arvalid,
    M_AXI_rready,
    aclk1,
    hbm_aclk,
    aresetn1,
    S06_AXI_awaddr,
    S06_AXI_awlen,
    S06_AXI_awsize,
    S06_AXI_awburst,
    S06_AXI_awlock,
    S06_AXI_awcache,
    S06_AXI_awprot,
    S06_AXI_awqos,
    S06_AXI_awvalid,
    S06_AXI_wdata,
    S06_AXI_wstrb,
    S06_AXI_wlast,
    S06_AXI_wvalid,
    S06_AXI_bready,
    S06_AXI_araddr,
    S06_AXI_arlen,
    S06_AXI_arsize,
    S06_AXI_arburst,
    S06_AXI_arlock,
    S06_AXI_arcache,
    S06_AXI_arprot,
    S06_AXI_arqos,
    S06_AXI_arvalid,
    S06_AXI_rready,
    interconnect_aresetn,
    M_AXI_awready,
    M_AXI_wready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_arready,
    M_AXI_rdata,
    M_AXI_rresp,
    M_AXI_rlast,
    M_AXI_rvalid);
  output [0:0]S06_AXI_awready;
  output [0:0]S06_AXI_wready;
  output [1:0]S06_AXI_bresp;
  output [0:0]S06_AXI_bvalid;
  output [0:0]S06_AXI_arready;
  output [63:0]S06_AXI_rdata;
  output [1:0]S06_AXI_rresp;
  output [0:0]S06_AXI_rlast;
  output [0:0]S06_AXI_rvalid;
  output [32:0]M_AXI_awaddr;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awburst;
  output [1:0]M_AXI_awlock;
  output [3:0]M_AXI_awcache;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  output M_AXI_awvalid;
  output [255:0]M_AXI_wdata;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wlast;
  output M_AXI_wvalid;
  output M_AXI_bready;
  output [32:0]M_AXI_araddr;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arburst;
  output [1:0]M_AXI_arlock;
  output [3:0]M_AXI_arcache;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  output M_AXI_arvalid;
  output M_AXI_rready;
  input aclk1;
  input hbm_aclk;
  input aresetn1;
  input [63:0]S06_AXI_awaddr;
  input [7:0]S06_AXI_awlen;
  input [2:0]S06_AXI_awsize;
  input [1:0]S06_AXI_awburst;
  input [0:0]S06_AXI_awlock;
  input [3:0]S06_AXI_awcache;
  input [2:0]S06_AXI_awprot;
  input [3:0]S06_AXI_awqos;
  input [0:0]S06_AXI_awvalid;
  input [63:0]S06_AXI_wdata;
  input [7:0]S06_AXI_wstrb;
  input [0:0]S06_AXI_wlast;
  input [0:0]S06_AXI_wvalid;
  input [0:0]S06_AXI_bready;
  input [63:0]S06_AXI_araddr;
  input [7:0]S06_AXI_arlen;
  input [2:0]S06_AXI_arsize;
  input [1:0]S06_AXI_arburst;
  input [0:0]S06_AXI_arlock;
  input [3:0]S06_AXI_arcache;
  input [2:0]S06_AXI_arprot;
  input [3:0]S06_AXI_arqos;
  input [0:0]S06_AXI_arvalid;
  input [0:0]S06_AXI_rready;
  input [0:0]interconnect_aresetn;
  input M_AXI_awready;
  input M_AXI_wready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_arready;
  input [255:0]M_AXI_rdata;
  input [1:0]M_AXI_rresp;
  input M_AXI_rlast;
  input M_AXI_rvalid;

  wire [32:0]M_AXI_araddr;
  wire [1:0]M_AXI_arburst;
  wire [3:0]M_AXI_arcache;
  wire [3:0]M_AXI_arlen;
  wire [1:0]M_AXI_arlock;
  wire [2:0]M_AXI_arprot;
  wire [3:0]M_AXI_arqos;
  wire M_AXI_arready;
  wire M_AXI_arvalid;
  wire [32:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [3:0]M_AXI_awlen;
  wire [1:0]M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire M_AXI_awready;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire [1:0]M_AXI_bresp;
  wire M_AXI_bvalid;
  wire [255:0]M_AXI_rdata;
  wire M_AXI_rlast;
  wire M_AXI_rready;
  wire [1:0]M_AXI_rresp;
  wire M_AXI_rvalid;
  wire [255:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire M_AXI_wready;
  wire [31:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire [63:0]S06_AXI_araddr;
  wire [1:0]S06_AXI_arburst;
  wire [3:0]S06_AXI_arcache;
  wire [7:0]S06_AXI_arlen;
  wire [0:0]S06_AXI_arlock;
  wire [2:0]S06_AXI_arprot;
  wire [3:0]S06_AXI_arqos;
  wire [0:0]S06_AXI_arready;
  wire [2:0]S06_AXI_arsize;
  wire [0:0]S06_AXI_arvalid;
  wire [63:0]S06_AXI_awaddr;
  wire [1:0]S06_AXI_awburst;
  wire [3:0]S06_AXI_awcache;
  wire [7:0]S06_AXI_awlen;
  wire [0:0]S06_AXI_awlock;
  wire [2:0]S06_AXI_awprot;
  wire [3:0]S06_AXI_awqos;
  wire [0:0]S06_AXI_awready;
  wire [2:0]S06_AXI_awsize;
  wire [0:0]S06_AXI_awvalid;
  wire [0:0]S06_AXI_bready;
  wire [1:0]S06_AXI_bresp;
  wire [0:0]S06_AXI_bvalid;
  wire [63:0]S06_AXI_rdata;
  wire [0:0]S06_AXI_rlast;
  wire [0:0]S06_AXI_rready;
  wire [1:0]S06_AXI_rresp;
  wire [0:0]S06_AXI_rvalid;
  wire [63:0]S06_AXI_wdata;
  wire [0:0]S06_AXI_wlast;
  wire [0:0]S06_AXI_wready;
  wire [7:0]S06_AXI_wstrb;
  wire [0:0]S06_AXI_wvalid;
  wire aclk1;
  wire aresetn1;
  wire hbm_aclk;
  wire [32:0]interconnect6_26_M00_AXI_ARADDR;
  wire [1:0]interconnect6_26_M00_AXI_ARBURST;
  wire [3:0]interconnect6_26_M00_AXI_ARCACHE;
  wire [3:0]interconnect6_26_M00_AXI_ARLEN;
  wire [1:0]interconnect6_26_M00_AXI_ARLOCK;
  wire [2:0]interconnect6_26_M00_AXI_ARPROT;
  wire [3:0]interconnect6_26_M00_AXI_ARQOS;
  wire interconnect6_26_M00_AXI_ARREADY;
  wire [2:0]interconnect6_26_M00_AXI_ARSIZE;
  wire interconnect6_26_M00_AXI_ARVALID;
  wire [32:0]interconnect6_26_M00_AXI_AWADDR;
  wire [1:0]interconnect6_26_M00_AXI_AWBURST;
  wire [3:0]interconnect6_26_M00_AXI_AWCACHE;
  wire [3:0]interconnect6_26_M00_AXI_AWLEN;
  wire [1:0]interconnect6_26_M00_AXI_AWLOCK;
  wire [2:0]interconnect6_26_M00_AXI_AWPROT;
  wire [3:0]interconnect6_26_M00_AXI_AWQOS;
  wire interconnect6_26_M00_AXI_AWREADY;
  wire [2:0]interconnect6_26_M00_AXI_AWSIZE;
  wire interconnect6_26_M00_AXI_AWVALID;
  wire interconnect6_26_M00_AXI_BREADY;
  wire [1:0]interconnect6_26_M00_AXI_BRESP;
  wire interconnect6_26_M00_AXI_BVALID;
  wire [255:0]interconnect6_26_M00_AXI_RDATA;
  wire interconnect6_26_M00_AXI_RLAST;
  wire interconnect6_26_M00_AXI_RREADY;
  wire [1:0]interconnect6_26_M00_AXI_RRESP;
  wire interconnect6_26_M00_AXI_RVALID;
  wire [255:0]interconnect6_26_M00_AXI_WDATA;
  wire interconnect6_26_M00_AXI_WLAST;
  wire interconnect6_26_M00_AXI_WREADY;
  wire [31:0]interconnect6_26_M00_AXI_WSTRB;
  wire interconnect6_26_M00_AXI_WVALID;
  wire [0:0]interconnect_aresetn;
  wire [2:0]NLW_slice6_26_m_axi_arsize_UNCONNECTED;
  wire [2:0]NLW_slice6_26_m_axi_awsize_UNCONNECTED;

  (* X_CORE_INFO = "bd_e40b,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect6_26_0 interconnect6_26
       (.M00_AXI_araddr(interconnect6_26_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect6_26_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect6_26_M00_AXI_ARCACHE),
        .M00_AXI_arlen(interconnect6_26_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect6_26_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect6_26_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect6_26_M00_AXI_ARQOS),
        .M00_AXI_arready(interconnect6_26_M00_AXI_ARREADY),
        .M00_AXI_arsize(interconnect6_26_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(interconnect6_26_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect6_26_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect6_26_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect6_26_M00_AXI_AWCACHE),
        .M00_AXI_awlen(interconnect6_26_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect6_26_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect6_26_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect6_26_M00_AXI_AWQOS),
        .M00_AXI_awready(interconnect6_26_M00_AXI_AWREADY),
        .M00_AXI_awsize(interconnect6_26_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(interconnect6_26_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect6_26_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect6_26_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect6_26_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect6_26_M00_AXI_RDATA),
        .M00_AXI_rlast(interconnect6_26_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect6_26_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect6_26_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect6_26_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect6_26_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect6_26_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect6_26_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect6_26_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect6_26_M00_AXI_WVALID),
        .S00_AXI_araddr(S06_AXI_araddr),
        .S00_AXI_arburst(S06_AXI_arburst),
        .S00_AXI_arcache(S06_AXI_arcache),
        .S00_AXI_arlen(S06_AXI_arlen),
        .S00_AXI_arlock(S06_AXI_arlock),
        .S00_AXI_arprot(S06_AXI_arprot),
        .S00_AXI_arqos(S06_AXI_arqos),
        .S00_AXI_arready(S06_AXI_arready),
        .S00_AXI_arsize(S06_AXI_arsize),
        .S00_AXI_arvalid(S06_AXI_arvalid),
        .S00_AXI_awaddr(S06_AXI_awaddr),
        .S00_AXI_awburst(S06_AXI_awburst),
        .S00_AXI_awcache(S06_AXI_awcache),
        .S00_AXI_awlen(S06_AXI_awlen),
        .S00_AXI_awlock(S06_AXI_awlock),
        .S00_AXI_awprot(S06_AXI_awprot),
        .S00_AXI_awqos(S06_AXI_awqos),
        .S00_AXI_awready(S06_AXI_awready),
        .S00_AXI_awsize(S06_AXI_awsize),
        .S00_AXI_awvalid(S06_AXI_awvalid),
        .S00_AXI_bready(S06_AXI_bready),
        .S00_AXI_bresp(S06_AXI_bresp),
        .S00_AXI_bvalid(S06_AXI_bvalid),
        .S00_AXI_rdata(S06_AXI_rdata),
        .S00_AXI_rlast(S06_AXI_rlast),
        .S00_AXI_rready(S06_AXI_rready),
        .S00_AXI_rresp(S06_AXI_rresp),
        .S00_AXI_rvalid(S06_AXI_rvalid),
        .S00_AXI_wdata(S06_AXI_wdata),
        .S00_AXI_wlast(S06_AXI_wlast),
        .S00_AXI_wready(S06_AXI_wready),
        .S00_AXI_wstrb(S06_AXI_wstrb),
        .S00_AXI_wvalid(S06_AXI_wvalid),
        .aclk(aclk1),
        .aclk1(hbm_aclk),
        .aresetn(aresetn1));
  (* X_CORE_INFO = "axi_register_slice_v2_1_22_axi_register_slice,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice6_26_0 slice6_26
       (.aclk(hbm_aclk),
        .aresetn(interconnect_aresetn),
        .m_axi_araddr(M_AXI_araddr),
        .m_axi_arburst(M_AXI_arburst),
        .m_axi_arcache(M_AXI_arcache),
        .m_axi_arlen(M_AXI_arlen),
        .m_axi_arlock(M_AXI_arlock),
        .m_axi_arprot(M_AXI_arprot),
        .m_axi_arqos(M_AXI_arqos),
        .m_axi_arready(M_AXI_arready),
        .m_axi_arsize(NLW_slice6_26_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_arvalid(M_AXI_arvalid),
        .m_axi_awaddr(M_AXI_awaddr),
        .m_axi_awburst(M_AXI_awburst),
        .m_axi_awcache(M_AXI_awcache),
        .m_axi_awlen(M_AXI_awlen),
        .m_axi_awlock(M_AXI_awlock),
        .m_axi_awprot(M_AXI_awprot),
        .m_axi_awqos(M_AXI_awqos),
        .m_axi_awready(M_AXI_awready),
        .m_axi_awsize(NLW_slice6_26_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awvalid(M_AXI_awvalid),
        .m_axi_bready(M_AXI_bready),
        .m_axi_bresp(M_AXI_bresp),
        .m_axi_bvalid(M_AXI_bvalid),
        .m_axi_rdata(M_AXI_rdata),
        .m_axi_rlast(M_AXI_rlast),
        .m_axi_rready(M_AXI_rready),
        .m_axi_rresp(M_AXI_rresp),
        .m_axi_rvalid(M_AXI_rvalid),
        .m_axi_wdata(M_AXI_wdata),
        .m_axi_wlast(M_AXI_wlast),
        .m_axi_wready(M_AXI_wready),
        .m_axi_wstrb(M_AXI_wstrb),
        .m_axi_wvalid(M_AXI_wvalid),
        .s_axi_araddr(interconnect6_26_M00_AXI_ARADDR),
        .s_axi_arburst(interconnect6_26_M00_AXI_ARBURST),
        .s_axi_arcache(interconnect6_26_M00_AXI_ARCACHE),
        .s_axi_arlen(interconnect6_26_M00_AXI_ARLEN),
        .s_axi_arlock(interconnect6_26_M00_AXI_ARLOCK),
        .s_axi_arprot(interconnect6_26_M00_AXI_ARPROT),
        .s_axi_arqos(interconnect6_26_M00_AXI_ARQOS),
        .s_axi_arready(interconnect6_26_M00_AXI_ARREADY),
        .s_axi_arsize(interconnect6_26_M00_AXI_ARSIZE),
        .s_axi_arvalid(interconnect6_26_M00_AXI_ARVALID),
        .s_axi_awaddr(interconnect6_26_M00_AXI_AWADDR),
        .s_axi_awburst(interconnect6_26_M00_AXI_AWBURST),
        .s_axi_awcache(interconnect6_26_M00_AXI_AWCACHE),
        .s_axi_awlen(interconnect6_26_M00_AXI_AWLEN),
        .s_axi_awlock(interconnect6_26_M00_AXI_AWLOCK),
        .s_axi_awprot(interconnect6_26_M00_AXI_AWPROT),
        .s_axi_awqos(interconnect6_26_M00_AXI_AWQOS),
        .s_axi_awready(interconnect6_26_M00_AXI_AWREADY),
        .s_axi_awsize(interconnect6_26_M00_AXI_AWSIZE),
        .s_axi_awvalid(interconnect6_26_M00_AXI_AWVALID),
        .s_axi_bready(interconnect6_26_M00_AXI_BREADY),
        .s_axi_bresp(interconnect6_26_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect6_26_M00_AXI_BVALID),
        .s_axi_rdata(interconnect6_26_M00_AXI_RDATA),
        .s_axi_rlast(interconnect6_26_M00_AXI_RLAST),
        .s_axi_rready(interconnect6_26_M00_AXI_RREADY),
        .s_axi_rresp(interconnect6_26_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect6_26_M00_AXI_RVALID),
        .s_axi_wdata(interconnect6_26_M00_AXI_WDATA),
        .s_axi_wlast(interconnect6_26_M00_AXI_WLAST),
        .s_axi_wready(interconnect6_26_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect6_26_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect6_26_M00_AXI_WVALID));
endmodule

(* CHECK_LICENSE_TYPE = "pfm_dynamic_hmss_0_0,bd_5dca,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_5dca,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (hbm_aclk,
    hbm_aresetn,
    hbm_ref_clk,
    hbm_mc_init_seq_complete,
    DRAM_0_STAT_TEMP,
    DRAM_1_STAT_TEMP,
    DRAM_STAT_CATTRIP,
    S_AXI_CTRL_awaddr,
    S_AXI_CTRL_awvalid,
    S_AXI_CTRL_awready,
    S_AXI_CTRL_wdata,
    S_AXI_CTRL_wvalid,
    S_AXI_CTRL_wready,
    S_AXI_CTRL_bresp,
    S_AXI_CTRL_bvalid,
    S_AXI_CTRL_bready,
    S_AXI_CTRL_araddr,
    S_AXI_CTRL_arvalid,
    S_AXI_CTRL_arready,
    S_AXI_CTRL_rdata,
    S_AXI_CTRL_rresp,
    S_AXI_CTRL_rvalid,
    S_AXI_CTRL_rready,
    ctrl_aclk,
    ctrl_aresetn,
    aclk,
    aclk1,
    aresetn,
    aresetn1,
    S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awsize,
    S00_AXI_awburst,
    S00_AXI_awlock,
    S00_AXI_awcache,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awvalid,
    S00_AXI_awready,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wvalid,
    S00_AXI_wready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_bready,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arsize,
    S00_AXI_arburst,
    S00_AXI_arlock,
    S00_AXI_arcache,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arvalid,
    S00_AXI_arready,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    S00_AXI_rready,
    S01_AXI_awaddr,
    S01_AXI_awlen,
    S01_AXI_awsize,
    S01_AXI_awburst,
    S01_AXI_awlock,
    S01_AXI_awcache,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awvalid,
    S01_AXI_awready,
    S01_AXI_wdata,
    S01_AXI_wstrb,
    S01_AXI_wlast,
    S01_AXI_wvalid,
    S01_AXI_wready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_bready,
    S01_AXI_araddr,
    S01_AXI_arlen,
    S01_AXI_arsize,
    S01_AXI_arburst,
    S01_AXI_arlock,
    S01_AXI_arcache,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arvalid,
    S01_AXI_arready,
    S01_AXI_rdata,
    S01_AXI_rresp,
    S01_AXI_rlast,
    S01_AXI_rvalid,
    S01_AXI_rready,
    S02_AXI_awaddr,
    S02_AXI_awlen,
    S02_AXI_awsize,
    S02_AXI_awburst,
    S02_AXI_awlock,
    S02_AXI_awcache,
    S02_AXI_awprot,
    S02_AXI_awqos,
    S02_AXI_awvalid,
    S02_AXI_awready,
    S02_AXI_wdata,
    S02_AXI_wstrb,
    S02_AXI_wlast,
    S02_AXI_wvalid,
    S02_AXI_wready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_bready,
    S02_AXI_araddr,
    S02_AXI_arlen,
    S02_AXI_arsize,
    S02_AXI_arburst,
    S02_AXI_arlock,
    S02_AXI_arcache,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arvalid,
    S02_AXI_arready,
    S02_AXI_rdata,
    S02_AXI_rresp,
    S02_AXI_rlast,
    S02_AXI_rvalid,
    S02_AXI_rready,
    S03_AXI_awaddr,
    S03_AXI_awlen,
    S03_AXI_awsize,
    S03_AXI_awburst,
    S03_AXI_awlock,
    S03_AXI_awcache,
    S03_AXI_awprot,
    S03_AXI_awqos,
    S03_AXI_awvalid,
    S03_AXI_awready,
    S03_AXI_wdata,
    S03_AXI_wstrb,
    S03_AXI_wlast,
    S03_AXI_wvalid,
    S03_AXI_wready,
    S03_AXI_bresp,
    S03_AXI_bvalid,
    S03_AXI_bready,
    S03_AXI_araddr,
    S03_AXI_arlen,
    S03_AXI_arsize,
    S03_AXI_arburst,
    S03_AXI_arlock,
    S03_AXI_arcache,
    S03_AXI_arprot,
    S03_AXI_arqos,
    S03_AXI_arvalid,
    S03_AXI_arready,
    S03_AXI_rdata,
    S03_AXI_rresp,
    S03_AXI_rlast,
    S03_AXI_rvalid,
    S03_AXI_rready,
    S04_AXI_awaddr,
    S04_AXI_awlen,
    S04_AXI_awsize,
    S04_AXI_awburst,
    S04_AXI_awlock,
    S04_AXI_awcache,
    S04_AXI_awprot,
    S04_AXI_awqos,
    S04_AXI_awvalid,
    S04_AXI_awready,
    S04_AXI_wdata,
    S04_AXI_wstrb,
    S04_AXI_wlast,
    S04_AXI_wvalid,
    S04_AXI_wready,
    S04_AXI_bresp,
    S04_AXI_bvalid,
    S04_AXI_bready,
    S04_AXI_araddr,
    S04_AXI_arlen,
    S04_AXI_arsize,
    S04_AXI_arburst,
    S04_AXI_arlock,
    S04_AXI_arcache,
    S04_AXI_arprot,
    S04_AXI_arqos,
    S04_AXI_arvalid,
    S04_AXI_arready,
    S04_AXI_rdata,
    S04_AXI_rresp,
    S04_AXI_rlast,
    S04_AXI_rvalid,
    S04_AXI_rready,
    S05_AXI_awaddr,
    S05_AXI_awlen,
    S05_AXI_awsize,
    S05_AXI_awburst,
    S05_AXI_awlock,
    S05_AXI_awcache,
    S05_AXI_awprot,
    S05_AXI_awqos,
    S05_AXI_awvalid,
    S05_AXI_awready,
    S05_AXI_wdata,
    S05_AXI_wstrb,
    S05_AXI_wlast,
    S05_AXI_wvalid,
    S05_AXI_wready,
    S05_AXI_bresp,
    S05_AXI_bvalid,
    S05_AXI_bready,
    S05_AXI_araddr,
    S05_AXI_arlen,
    S05_AXI_arsize,
    S05_AXI_arburst,
    S05_AXI_arlock,
    S05_AXI_arcache,
    S05_AXI_arprot,
    S05_AXI_arqos,
    S05_AXI_arvalid,
    S05_AXI_arready,
    S05_AXI_rdata,
    S05_AXI_rresp,
    S05_AXI_rlast,
    S05_AXI_rvalid,
    S05_AXI_rready,
    S06_AXI_awaddr,
    S06_AXI_awlen,
    S06_AXI_awsize,
    S06_AXI_awburst,
    S06_AXI_awlock,
    S06_AXI_awcache,
    S06_AXI_awprot,
    S06_AXI_awqos,
    S06_AXI_awvalid,
    S06_AXI_awready,
    S06_AXI_wdata,
    S06_AXI_wstrb,
    S06_AXI_wlast,
    S06_AXI_wvalid,
    S06_AXI_wready,
    S06_AXI_bresp,
    S06_AXI_bvalid,
    S06_AXI_bready,
    S06_AXI_araddr,
    S06_AXI_arlen,
    S06_AXI_arsize,
    S06_AXI_arburst,
    S06_AXI_arlock,
    S06_AXI_arcache,
    S06_AXI_arprot,
    S06_AXI_arqos,
    S06_AXI_arvalid,
    S06_AXI_arready,
    S06_AXI_rdata,
    S06_AXI_rresp,
    S06_AXI_rlast,
    S06_AXI_rvalid,
    S06_AXI_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.hbm_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.hbm_aclk, FREQ_HZ 450000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clk_out1_pfm_top_clkwiz_hbm_aclk_0, INSERT_VIP 0, ASSOCIATED_CLKEN s_sc_aclken" *) input hbm_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.hbm_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.hbm_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input hbm_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.hbm_ref_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.hbm_ref_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN pfm_dynamic_hbm_ref_clk, INSERT_VIP 0" *) input hbm_ref_clk;
  output hbm_mc_init_seq_complete;
  output [6:0]DRAM_0_STAT_TEMP;
  output [6:0]DRAM_1_STAT_TEMP;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.DRAM_STAT_CATTRIP INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.DRAM_STAT_CATTRIP, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output [0:0]DRAM_STAT_CATTRIP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWADDR" *) input [22:0]S_AXI_CTRL_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWVALID" *) input [0:0]S_AXI_CTRL_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWREADY" *) output [0:0]S_AXI_CTRL_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WDATA" *) input [31:0]S_AXI_CTRL_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WVALID" *) input [0:0]S_AXI_CTRL_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WREADY" *) output [0:0]S_AXI_CTRL_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BRESP" *) output [1:0]S_AXI_CTRL_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BVALID" *) output [0:0]S_AXI_CTRL_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BREADY" *) input [0:0]S_AXI_CTRL_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARADDR" *) input [22:0]S_AXI_CTRL_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARVALID" *) input [0:0]S_AXI_CTRL_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARREADY" *) output [0:0]S_AXI_CTRL_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RDATA" *) output [31:0]S_AXI_CTRL_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RRESP" *) output [1:0]S_AXI_CTRL_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RVALID" *) output [0:0]S_AXI_CTRL_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CTRL, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 23, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN pfm_dynamic_s_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [0:0]S_AXI_CTRL_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ctrl_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ctrl_aclk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN pfm_dynamic_s_axi_aclk, ASSOCIATED_BUSIF S_AXI_CTRL, ASSOCIATED_RESET ctrl_aresetn, INSERT_VIP 0" *) input ctrl_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ctrl_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ctrl_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ctrl_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN pfm_dynamic_dma_pcie_axi_aclk, ASSOCIATED_BUSIF S00_AXI, INSERT_VIP 0, ASSOCIATED_CLKEN m_sc_aclken" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk1, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, ASSOCIATED_BUSIF S01_AXI:S02_AXI:S03_AXI:S04_AXI:S05_AXI:S06_AXI, INSERT_VIP 0, ASSOCIATED_CLKEN m_sc_aclken" *) input aclk1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn1, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [32:0]S00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN" *) input [7:0]S00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE" *) input [2:0]S00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST" *) input [1:0]S00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK" *) input [0:0]S00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE" *) input [3:0]S00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]S00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS" *) input [3:0]S00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input [0:0]S00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output [0:0]S00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [511:0]S00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [63:0]S00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST" *) input [0:0]S00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input [0:0]S00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output [0:0]S00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]S00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output [0:0]S00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input [0:0]S00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [32:0]S00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN" *) input [7:0]S00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE" *) input [2:0]S00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST" *) input [1:0]S00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK" *) input [0:0]S00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE" *) input [3:0]S00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]S00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS" *) input [3:0]S00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input [0:0]S00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output [0:0]S00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [511:0]S00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]S00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *) output [0:0]S00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output [0:0]S00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 33, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN pfm_dynamic_dma_pcie_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [0:0]S00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWADDR" *) input [63:0]S01_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWLEN" *) input [7:0]S01_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWSIZE" *) input [2:0]S01_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWBURST" *) input [1:0]S01_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK" *) input [0:0]S01_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE" *) input [3:0]S01_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWPROT" *) input [2:0]S01_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWQOS" *) input [3:0]S01_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWVALID" *) input [0:0]S01_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWREADY" *) output [0:0]S01_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WDATA" *) input [31:0]S01_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WSTRB" *) input [3:0]S01_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WLAST" *) input [0:0]S01_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WVALID" *) input [0:0]S01_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WREADY" *) output [0:0]S01_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BRESP" *) output [1:0]S01_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BVALID" *) output [0:0]S01_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BREADY" *) input [0:0]S01_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARADDR" *) input [63:0]S01_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARLEN" *) input [7:0]S01_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARSIZE" *) input [2:0]S01_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARBURST" *) input [1:0]S01_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK" *) input [0:0]S01_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE" *) input [3:0]S01_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARPROT" *) input [2:0]S01_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARQOS" *) input [3:0]S01_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARVALID" *) input [0:0]S01_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARREADY" *) output [0:0]S01_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RDATA" *) output [31:0]S01_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RRESP" *) output [1:0]S01_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RLAST" *) output [0:0]S01_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RVALID" *) output [0:0]S01_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S01_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 33, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [0:0]S01_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWADDR" *) input [63:0]S02_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWLEN" *) input [7:0]S02_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWSIZE" *) input [2:0]S02_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWBURST" *) input [1:0]S02_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWLOCK" *) input [0:0]S02_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWCACHE" *) input [3:0]S02_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWPROT" *) input [2:0]S02_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWQOS" *) input [3:0]S02_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWVALID" *) input [0:0]S02_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWREADY" *) output [0:0]S02_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WDATA" *) input [511:0]S02_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WSTRB" *) input [63:0]S02_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WLAST" *) input [0:0]S02_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WVALID" *) input [0:0]S02_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WREADY" *) output [0:0]S02_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BRESP" *) output [1:0]S02_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BVALID" *) output [0:0]S02_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BREADY" *) input [0:0]S02_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARADDR" *) input [63:0]S02_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARLEN" *) input [7:0]S02_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARSIZE" *) input [2:0]S02_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARBURST" *) input [1:0]S02_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARLOCK" *) input [0:0]S02_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARCACHE" *) input [3:0]S02_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARPROT" *) input [2:0]S02_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARQOS" *) input [3:0]S02_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARVALID" *) input [0:0]S02_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARREADY" *) output [0:0]S02_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RDATA" *) output [511:0]S02_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RRESP" *) output [1:0]S02_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RLAST" *) output [0:0]S02_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RVALID" *) output [0:0]S02_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S02_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 33, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [0:0]S02_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWADDR" *) input [63:0]S03_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWLEN" *) input [7:0]S03_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWSIZE" *) input [2:0]S03_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWBURST" *) input [1:0]S03_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWLOCK" *) input [0:0]S03_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWCACHE" *) input [3:0]S03_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWPROT" *) input [2:0]S03_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWQOS" *) input [3:0]S03_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWVALID" *) input [0:0]S03_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWREADY" *) output [0:0]S03_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WDATA" *) input [31:0]S03_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WSTRB" *) input [3:0]S03_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WLAST" *) input [0:0]S03_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WVALID" *) input [0:0]S03_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WREADY" *) output [0:0]S03_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BRESP" *) output [1:0]S03_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BVALID" *) output [0:0]S03_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BREADY" *) input [0:0]S03_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARADDR" *) input [63:0]S03_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARLEN" *) input [7:0]S03_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARSIZE" *) input [2:0]S03_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARBURST" *) input [1:0]S03_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARLOCK" *) input [0:0]S03_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARCACHE" *) input [3:0]S03_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARPROT" *) input [2:0]S03_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARQOS" *) input [3:0]S03_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARVALID" *) input [0:0]S03_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARREADY" *) output [0:0]S03_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RDATA" *) output [31:0]S03_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RRESP" *) output [1:0]S03_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RLAST" *) output [0:0]S03_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RVALID" *) output [0:0]S03_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S03_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 33, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [0:0]S03_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWADDR" *) input [63:0]S04_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWLEN" *) input [7:0]S04_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWSIZE" *) input [2:0]S04_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWBURST" *) input [1:0]S04_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWLOCK" *) input [0:0]S04_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWCACHE" *) input [3:0]S04_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWPROT" *) input [2:0]S04_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWQOS" *) input [3:0]S04_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWVALID" *) input [0:0]S04_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWREADY" *) output [0:0]S04_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WDATA" *) input [31:0]S04_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WSTRB" *) input [3:0]S04_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WLAST" *) input [0:0]S04_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WVALID" *) input [0:0]S04_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WREADY" *) output [0:0]S04_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI BRESP" *) output [1:0]S04_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI BVALID" *) output [0:0]S04_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI BREADY" *) input [0:0]S04_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARADDR" *) input [63:0]S04_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARLEN" *) input [7:0]S04_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARSIZE" *) input [2:0]S04_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARBURST" *) input [1:0]S04_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARLOCK" *) input [0:0]S04_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARCACHE" *) input [3:0]S04_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARPROT" *) input [2:0]S04_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARQOS" *) input [3:0]S04_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARVALID" *) input [0:0]S04_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARREADY" *) output [0:0]S04_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RDATA" *) output [31:0]S04_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RRESP" *) output [1:0]S04_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RLAST" *) output [0:0]S04_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RVALID" *) output [0:0]S04_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S04_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 33, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [0:0]S04_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWADDR" *) input [63:0]S05_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWLEN" *) input [7:0]S05_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWSIZE" *) input [2:0]S05_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWBURST" *) input [1:0]S05_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWLOCK" *) input [0:0]S05_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWCACHE" *) input [3:0]S05_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWPROT" *) input [2:0]S05_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWQOS" *) input [3:0]S05_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWVALID" *) input [0:0]S05_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWREADY" *) output [0:0]S05_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WDATA" *) input [31:0]S05_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WSTRB" *) input [3:0]S05_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WLAST" *) input [0:0]S05_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WVALID" *) input [0:0]S05_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WREADY" *) output [0:0]S05_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI BRESP" *) output [1:0]S05_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI BVALID" *) output [0:0]S05_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI BREADY" *) input [0:0]S05_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARADDR" *) input [63:0]S05_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARLEN" *) input [7:0]S05_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARSIZE" *) input [2:0]S05_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARBURST" *) input [1:0]S05_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARLOCK" *) input [0:0]S05_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARCACHE" *) input [3:0]S05_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARPROT" *) input [2:0]S05_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARQOS" *) input [3:0]S05_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARVALID" *) input [0:0]S05_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARREADY" *) output [0:0]S05_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RDATA" *) output [31:0]S05_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RRESP" *) output [1:0]S05_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RLAST" *) output [0:0]S05_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RVALID" *) output [0:0]S05_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S05_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 33, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [0:0]S05_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWADDR" *) input [63:0]S06_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWLEN" *) input [7:0]S06_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWSIZE" *) input [2:0]S06_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWBURST" *) input [1:0]S06_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWLOCK" *) input [0:0]S06_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWCACHE" *) input [3:0]S06_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWPROT" *) input [2:0]S06_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWQOS" *) input [3:0]S06_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWVALID" *) input [0:0]S06_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWREADY" *) output [0:0]S06_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WDATA" *) input [63:0]S06_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WSTRB" *) input [7:0]S06_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WLAST" *) input [0:0]S06_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WVALID" *) input [0:0]S06_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WREADY" *) output [0:0]S06_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI BRESP" *) output [1:0]S06_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI BVALID" *) output [0:0]S06_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI BREADY" *) input [0:0]S06_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARADDR" *) input [63:0]S06_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARLEN" *) input [7:0]S06_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARSIZE" *) input [2:0]S06_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARBURST" *) input [1:0]S06_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARLOCK" *) input [0:0]S06_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARCACHE" *) input [3:0]S06_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARPROT" *) input [2:0]S06_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARQOS" *) input [3:0]S06_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARVALID" *) input [0:0]S06_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARREADY" *) output [0:0]S06_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RDATA" *) output [63:0]S06_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RRESP" *) output [1:0]S06_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RLAST" *) output [0:0]S06_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RVALID" *) output [0:0]S06_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S06_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 33, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [0:0]S06_AXI_rready;

  wire [6:0]DRAM_0_STAT_TEMP;
  wire [6:0]DRAM_1_STAT_TEMP;
  wire [0:0]DRAM_STAT_CATTRIP;
  wire [32:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [7:0]S00_AXI_arlen;
  wire [0:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire [0:0]S00_AXI_arready;
  wire [2:0]S00_AXI_arsize;
  wire [0:0]S00_AXI_arvalid;
  wire [32:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [7:0]S00_AXI_awlen;
  wire [0:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire [0:0]S00_AXI_awready;
  wire [2:0]S00_AXI_awsize;
  wire [0:0]S00_AXI_awvalid;
  wire [0:0]S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire [0:0]S00_AXI_bvalid;
  wire [511:0]S00_AXI_rdata;
  wire [0:0]S00_AXI_rlast;
  wire [0:0]S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire [0:0]S00_AXI_rvalid;
  wire [511:0]S00_AXI_wdata;
  wire [0:0]S00_AXI_wlast;
  wire [0:0]S00_AXI_wready;
  wire [63:0]S00_AXI_wstrb;
  wire [0:0]S00_AXI_wvalid;
  wire [63:0]S01_AXI_araddr;
  wire [1:0]S01_AXI_arburst;
  wire [3:0]S01_AXI_arcache;
  wire [7:0]S01_AXI_arlen;
  wire [0:0]S01_AXI_arlock;
  wire [2:0]S01_AXI_arprot;
  wire [3:0]S01_AXI_arqos;
  wire [0:0]S01_AXI_arready;
  wire [2:0]S01_AXI_arsize;
  wire [0:0]S01_AXI_arvalid;
  wire [63:0]S01_AXI_awaddr;
  wire [1:0]S01_AXI_awburst;
  wire [3:0]S01_AXI_awcache;
  wire [7:0]S01_AXI_awlen;
  wire [0:0]S01_AXI_awlock;
  wire [2:0]S01_AXI_awprot;
  wire [3:0]S01_AXI_awqos;
  wire [0:0]S01_AXI_awready;
  wire [2:0]S01_AXI_awsize;
  wire [0:0]S01_AXI_awvalid;
  wire [0:0]S01_AXI_bready;
  wire [1:0]S01_AXI_bresp;
  wire [0:0]S01_AXI_bvalid;
  wire [31:0]S01_AXI_rdata;
  wire [0:0]S01_AXI_rlast;
  wire [0:0]S01_AXI_rready;
  wire [1:0]S01_AXI_rresp;
  wire [0:0]S01_AXI_rvalid;
  wire [31:0]S01_AXI_wdata;
  wire [0:0]S01_AXI_wlast;
  wire [0:0]S01_AXI_wready;
  wire [3:0]S01_AXI_wstrb;
  wire [0:0]S01_AXI_wvalid;
  wire [63:0]S02_AXI_araddr;
  wire [1:0]S02_AXI_arburst;
  wire [3:0]S02_AXI_arcache;
  wire [7:0]S02_AXI_arlen;
  wire [0:0]S02_AXI_arlock;
  wire [2:0]S02_AXI_arprot;
  wire [3:0]S02_AXI_arqos;
  wire [0:0]S02_AXI_arready;
  wire [2:0]S02_AXI_arsize;
  wire [0:0]S02_AXI_arvalid;
  wire [63:0]S02_AXI_awaddr;
  wire [1:0]S02_AXI_awburst;
  wire [3:0]S02_AXI_awcache;
  wire [7:0]S02_AXI_awlen;
  wire [0:0]S02_AXI_awlock;
  wire [2:0]S02_AXI_awprot;
  wire [3:0]S02_AXI_awqos;
  wire [0:0]S02_AXI_awready;
  wire [2:0]S02_AXI_awsize;
  wire [0:0]S02_AXI_awvalid;
  wire [0:0]S02_AXI_bready;
  wire [1:0]S02_AXI_bresp;
  wire [0:0]S02_AXI_bvalid;
  wire [511:0]S02_AXI_rdata;
  wire [0:0]S02_AXI_rlast;
  wire [0:0]S02_AXI_rready;
  wire [1:0]S02_AXI_rresp;
  wire [0:0]S02_AXI_rvalid;
  wire [511:0]S02_AXI_wdata;
  wire [0:0]S02_AXI_wlast;
  wire [0:0]S02_AXI_wready;
  wire [63:0]S02_AXI_wstrb;
  wire [0:0]S02_AXI_wvalid;
  wire [63:0]S03_AXI_araddr;
  wire [1:0]S03_AXI_arburst;
  wire [3:0]S03_AXI_arcache;
  wire [7:0]S03_AXI_arlen;
  wire [0:0]S03_AXI_arlock;
  wire [2:0]S03_AXI_arprot;
  wire [3:0]S03_AXI_arqos;
  wire [0:0]S03_AXI_arready;
  wire [2:0]S03_AXI_arsize;
  wire [0:0]S03_AXI_arvalid;
  wire [63:0]S03_AXI_awaddr;
  wire [1:0]S03_AXI_awburst;
  wire [3:0]S03_AXI_awcache;
  wire [7:0]S03_AXI_awlen;
  wire [0:0]S03_AXI_awlock;
  wire [2:0]S03_AXI_awprot;
  wire [3:0]S03_AXI_awqos;
  wire [0:0]S03_AXI_awready;
  wire [2:0]S03_AXI_awsize;
  wire [0:0]S03_AXI_awvalid;
  wire [0:0]S03_AXI_bready;
  wire [1:0]S03_AXI_bresp;
  wire [0:0]S03_AXI_bvalid;
  wire [31:0]S03_AXI_rdata;
  wire [0:0]S03_AXI_rlast;
  wire [0:0]S03_AXI_rready;
  wire [1:0]S03_AXI_rresp;
  wire [0:0]S03_AXI_rvalid;
  wire [31:0]S03_AXI_wdata;
  wire [0:0]S03_AXI_wlast;
  wire [0:0]S03_AXI_wready;
  wire [3:0]S03_AXI_wstrb;
  wire [0:0]S03_AXI_wvalid;
  wire [63:0]S04_AXI_araddr;
  wire [1:0]S04_AXI_arburst;
  wire [3:0]S04_AXI_arcache;
  wire [7:0]S04_AXI_arlen;
  wire [0:0]S04_AXI_arlock;
  wire [2:0]S04_AXI_arprot;
  wire [3:0]S04_AXI_arqos;
  wire [0:0]S04_AXI_arready;
  wire [2:0]S04_AXI_arsize;
  wire [0:0]S04_AXI_arvalid;
  wire [63:0]S04_AXI_awaddr;
  wire [1:0]S04_AXI_awburst;
  wire [3:0]S04_AXI_awcache;
  wire [7:0]S04_AXI_awlen;
  wire [0:0]S04_AXI_awlock;
  wire [2:0]S04_AXI_awprot;
  wire [3:0]S04_AXI_awqos;
  wire [0:0]S04_AXI_awready;
  wire [2:0]S04_AXI_awsize;
  wire [0:0]S04_AXI_awvalid;
  wire [0:0]S04_AXI_bready;
  wire [1:0]S04_AXI_bresp;
  wire [0:0]S04_AXI_bvalid;
  wire [31:0]S04_AXI_rdata;
  wire [0:0]S04_AXI_rlast;
  wire [0:0]S04_AXI_rready;
  wire [1:0]S04_AXI_rresp;
  wire [0:0]S04_AXI_rvalid;
  wire [31:0]S04_AXI_wdata;
  wire [0:0]S04_AXI_wlast;
  wire [0:0]S04_AXI_wready;
  wire [3:0]S04_AXI_wstrb;
  wire [0:0]S04_AXI_wvalid;
  wire [63:0]S05_AXI_araddr;
  wire [1:0]S05_AXI_arburst;
  wire [3:0]S05_AXI_arcache;
  wire [7:0]S05_AXI_arlen;
  wire [0:0]S05_AXI_arlock;
  wire [2:0]S05_AXI_arprot;
  wire [3:0]S05_AXI_arqos;
  wire [0:0]S05_AXI_arready;
  wire [2:0]S05_AXI_arsize;
  wire [0:0]S05_AXI_arvalid;
  wire [63:0]S05_AXI_awaddr;
  wire [1:0]S05_AXI_awburst;
  wire [3:0]S05_AXI_awcache;
  wire [7:0]S05_AXI_awlen;
  wire [0:0]S05_AXI_awlock;
  wire [2:0]S05_AXI_awprot;
  wire [3:0]S05_AXI_awqos;
  wire [0:0]S05_AXI_awready;
  wire [2:0]S05_AXI_awsize;
  wire [0:0]S05_AXI_awvalid;
  wire [0:0]S05_AXI_bready;
  wire [1:0]S05_AXI_bresp;
  wire [0:0]S05_AXI_bvalid;
  wire [31:0]S05_AXI_rdata;
  wire [0:0]S05_AXI_rlast;
  wire [0:0]S05_AXI_rready;
  wire [1:0]S05_AXI_rresp;
  wire [0:0]S05_AXI_rvalid;
  wire [31:0]S05_AXI_wdata;
  wire [0:0]S05_AXI_wlast;
  wire [0:0]S05_AXI_wready;
  wire [3:0]S05_AXI_wstrb;
  wire [0:0]S05_AXI_wvalid;
  wire [63:0]S06_AXI_araddr;
  wire [1:0]S06_AXI_arburst;
  wire [3:0]S06_AXI_arcache;
  wire [7:0]S06_AXI_arlen;
  wire [0:0]S06_AXI_arlock;
  wire [2:0]S06_AXI_arprot;
  wire [3:0]S06_AXI_arqos;
  wire [0:0]S06_AXI_arready;
  wire [2:0]S06_AXI_arsize;
  wire [0:0]S06_AXI_arvalid;
  wire [63:0]S06_AXI_awaddr;
  wire [1:0]S06_AXI_awburst;
  wire [3:0]S06_AXI_awcache;
  wire [7:0]S06_AXI_awlen;
  wire [0:0]S06_AXI_awlock;
  wire [2:0]S06_AXI_awprot;
  wire [3:0]S06_AXI_awqos;
  wire [0:0]S06_AXI_awready;
  wire [2:0]S06_AXI_awsize;
  wire [0:0]S06_AXI_awvalid;
  wire [0:0]S06_AXI_bready;
  wire [1:0]S06_AXI_bresp;
  wire [0:0]S06_AXI_bvalid;
  wire [63:0]S06_AXI_rdata;
  wire [0:0]S06_AXI_rlast;
  wire [0:0]S06_AXI_rready;
  wire [1:0]S06_AXI_rresp;
  wire [0:0]S06_AXI_rvalid;
  wire [63:0]S06_AXI_wdata;
  wire [0:0]S06_AXI_wlast;
  wire [0:0]S06_AXI_wready;
  wire [7:0]S06_AXI_wstrb;
  wire [0:0]S06_AXI_wvalid;
  wire [22:0]S_AXI_CTRL_araddr;
  wire [0:0]S_AXI_CTRL_arready;
  wire [0:0]S_AXI_CTRL_arvalid;
  wire [22:0]S_AXI_CTRL_awaddr;
  wire [0:0]S_AXI_CTRL_awready;
  wire [0:0]S_AXI_CTRL_awvalid;
  wire [0:0]S_AXI_CTRL_bready;
  wire [1:0]S_AXI_CTRL_bresp;
  wire [0:0]S_AXI_CTRL_bvalid;
  wire [31:0]S_AXI_CTRL_rdata;
  wire [0:0]S_AXI_CTRL_rready;
  wire [1:0]S_AXI_CTRL_rresp;
  wire [0:0]S_AXI_CTRL_rvalid;
  wire [31:0]S_AXI_CTRL_wdata;
  wire [0:0]S_AXI_CTRL_wready;
  wire [0:0]S_AXI_CTRL_wvalid;
  wire aclk;
  wire aclk1;
  wire aresetn;
  wire aresetn1;
  wire ctrl_aclk;
  wire ctrl_aresetn;
  wire hbm_aclk;
  wire hbm_aresetn;
  wire hbm_mc_init_seq_complete;
  wire hbm_ref_clk;

  (* HW_HANDOFF = "pfm_dynamic_hmss_0_0.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca inst
       (.DRAM_0_STAT_TEMP(DRAM_0_STAT_TEMP),
        .DRAM_1_STAT_TEMP(DRAM_1_STAT_TEMP),
        .DRAM_STAT_CATTRIP(DRAM_STAT_CATTRIP),
        .S00_AXI_araddr(S00_AXI_araddr),
        .S00_AXI_arburst(S00_AXI_arburst),
        .S00_AXI_arcache(S00_AXI_arcache),
        .S00_AXI_arlen(S00_AXI_arlen),
        .S00_AXI_arlock(S00_AXI_arlock),
        .S00_AXI_arprot(S00_AXI_arprot),
        .S00_AXI_arqos(S00_AXI_arqos),
        .S00_AXI_arready(S00_AXI_arready),
        .S00_AXI_arsize(S00_AXI_arsize),
        .S00_AXI_arvalid(S00_AXI_arvalid),
        .S00_AXI_awaddr(S00_AXI_awaddr),
        .S00_AXI_awburst(S00_AXI_awburst),
        .S00_AXI_awcache(S00_AXI_awcache),
        .S00_AXI_awlen(S00_AXI_awlen),
        .S00_AXI_awlock(S00_AXI_awlock),
        .S00_AXI_awprot(S00_AXI_awprot),
        .S00_AXI_awqos(S00_AXI_awqos),
        .S00_AXI_awready(S00_AXI_awready),
        .S00_AXI_awsize(S00_AXI_awsize),
        .S00_AXI_awvalid(S00_AXI_awvalid),
        .S00_AXI_bready(S00_AXI_bready),
        .S00_AXI_bresp(S00_AXI_bresp),
        .S00_AXI_bvalid(S00_AXI_bvalid),
        .S00_AXI_rdata(S00_AXI_rdata),
        .S00_AXI_rlast(S00_AXI_rlast),
        .S00_AXI_rready(S00_AXI_rready),
        .S00_AXI_rresp(S00_AXI_rresp),
        .S00_AXI_rvalid(S00_AXI_rvalid),
        .S00_AXI_wdata(S00_AXI_wdata),
        .S00_AXI_wlast(S00_AXI_wlast),
        .S00_AXI_wready(S00_AXI_wready),
        .S00_AXI_wstrb(S00_AXI_wstrb),
        .S00_AXI_wvalid(S00_AXI_wvalid),
        .S01_AXI_araddr(S01_AXI_araddr),
        .S01_AXI_arburst(S01_AXI_arburst),
        .S01_AXI_arcache(S01_AXI_arcache),
        .S01_AXI_arlen(S01_AXI_arlen),
        .S01_AXI_arlock(S01_AXI_arlock),
        .S01_AXI_arprot(S01_AXI_arprot),
        .S01_AXI_arqos(S01_AXI_arqos),
        .S01_AXI_arready(S01_AXI_arready),
        .S01_AXI_arsize(S01_AXI_arsize),
        .S01_AXI_arvalid(S01_AXI_arvalid),
        .S01_AXI_awaddr(S01_AXI_awaddr),
        .S01_AXI_awburst(S01_AXI_awburst),
        .S01_AXI_awcache(S01_AXI_awcache),
        .S01_AXI_awlen(S01_AXI_awlen),
        .S01_AXI_awlock(S01_AXI_awlock),
        .S01_AXI_awprot(S01_AXI_awprot),
        .S01_AXI_awqos(S01_AXI_awqos),
        .S01_AXI_awready(S01_AXI_awready),
        .S01_AXI_awsize(S01_AXI_awsize),
        .S01_AXI_awvalid(S01_AXI_awvalid),
        .S01_AXI_bready(S01_AXI_bready),
        .S01_AXI_bresp(S01_AXI_bresp),
        .S01_AXI_bvalid(S01_AXI_bvalid),
        .S01_AXI_rdata(S01_AXI_rdata),
        .S01_AXI_rlast(S01_AXI_rlast),
        .S01_AXI_rready(S01_AXI_rready),
        .S01_AXI_rresp(S01_AXI_rresp),
        .S01_AXI_rvalid(S01_AXI_rvalid),
        .S01_AXI_wdata(S01_AXI_wdata),
        .S01_AXI_wlast(S01_AXI_wlast),
        .S01_AXI_wready(S01_AXI_wready),
        .S01_AXI_wstrb(S01_AXI_wstrb),
        .S01_AXI_wvalid(S01_AXI_wvalid),
        .S02_AXI_araddr(S02_AXI_araddr),
        .S02_AXI_arburst(S02_AXI_arburst),
        .S02_AXI_arcache(S02_AXI_arcache),
        .S02_AXI_arlen(S02_AXI_arlen),
        .S02_AXI_arlock(S02_AXI_arlock),
        .S02_AXI_arprot(S02_AXI_arprot),
        .S02_AXI_arqos(S02_AXI_arqos),
        .S02_AXI_arready(S02_AXI_arready),
        .S02_AXI_arsize(S02_AXI_arsize),
        .S02_AXI_arvalid(S02_AXI_arvalid),
        .S02_AXI_awaddr(S02_AXI_awaddr),
        .S02_AXI_awburst(S02_AXI_awburst),
        .S02_AXI_awcache(S02_AXI_awcache),
        .S02_AXI_awlen(S02_AXI_awlen),
        .S02_AXI_awlock(S02_AXI_awlock),
        .S02_AXI_awprot(S02_AXI_awprot),
        .S02_AXI_awqos(S02_AXI_awqos),
        .S02_AXI_awready(S02_AXI_awready),
        .S02_AXI_awsize(S02_AXI_awsize),
        .S02_AXI_awvalid(S02_AXI_awvalid),
        .S02_AXI_bready(S02_AXI_bready),
        .S02_AXI_bresp(S02_AXI_bresp),
        .S02_AXI_bvalid(S02_AXI_bvalid),
        .S02_AXI_rdata(S02_AXI_rdata),
        .S02_AXI_rlast(S02_AXI_rlast),
        .S02_AXI_rready(S02_AXI_rready),
        .S02_AXI_rresp(S02_AXI_rresp),
        .S02_AXI_rvalid(S02_AXI_rvalid),
        .S02_AXI_wdata(S02_AXI_wdata),
        .S02_AXI_wlast(S02_AXI_wlast),
        .S02_AXI_wready(S02_AXI_wready),
        .S02_AXI_wstrb(S02_AXI_wstrb),
        .S02_AXI_wvalid(S02_AXI_wvalid),
        .S03_AXI_araddr(S03_AXI_araddr),
        .S03_AXI_arburst(S03_AXI_arburst),
        .S03_AXI_arcache(S03_AXI_arcache),
        .S03_AXI_arlen(S03_AXI_arlen),
        .S03_AXI_arlock(S03_AXI_arlock),
        .S03_AXI_arprot(S03_AXI_arprot),
        .S03_AXI_arqos(S03_AXI_arqos),
        .S03_AXI_arready(S03_AXI_arready),
        .S03_AXI_arsize(S03_AXI_arsize),
        .S03_AXI_arvalid(S03_AXI_arvalid),
        .S03_AXI_awaddr(S03_AXI_awaddr),
        .S03_AXI_awburst(S03_AXI_awburst),
        .S03_AXI_awcache(S03_AXI_awcache),
        .S03_AXI_awlen(S03_AXI_awlen),
        .S03_AXI_awlock(S03_AXI_awlock),
        .S03_AXI_awprot(S03_AXI_awprot),
        .S03_AXI_awqos(S03_AXI_awqos),
        .S03_AXI_awready(S03_AXI_awready),
        .S03_AXI_awsize(S03_AXI_awsize),
        .S03_AXI_awvalid(S03_AXI_awvalid),
        .S03_AXI_bready(S03_AXI_bready),
        .S03_AXI_bresp(S03_AXI_bresp),
        .S03_AXI_bvalid(S03_AXI_bvalid),
        .S03_AXI_rdata(S03_AXI_rdata),
        .S03_AXI_rlast(S03_AXI_rlast),
        .S03_AXI_rready(S03_AXI_rready),
        .S03_AXI_rresp(S03_AXI_rresp),
        .S03_AXI_rvalid(S03_AXI_rvalid),
        .S03_AXI_wdata(S03_AXI_wdata),
        .S03_AXI_wlast(S03_AXI_wlast),
        .S03_AXI_wready(S03_AXI_wready),
        .S03_AXI_wstrb(S03_AXI_wstrb),
        .S03_AXI_wvalid(S03_AXI_wvalid),
        .S04_AXI_araddr(S04_AXI_araddr),
        .S04_AXI_arburst(S04_AXI_arburst),
        .S04_AXI_arcache(S04_AXI_arcache),
        .S04_AXI_arlen(S04_AXI_arlen),
        .S04_AXI_arlock(S04_AXI_arlock),
        .S04_AXI_arprot(S04_AXI_arprot),
        .S04_AXI_arqos(S04_AXI_arqos),
        .S04_AXI_arready(S04_AXI_arready),
        .S04_AXI_arsize(S04_AXI_arsize),
        .S04_AXI_arvalid(S04_AXI_arvalid),
        .S04_AXI_awaddr(S04_AXI_awaddr),
        .S04_AXI_awburst(S04_AXI_awburst),
        .S04_AXI_awcache(S04_AXI_awcache),
        .S04_AXI_awlen(S04_AXI_awlen),
        .S04_AXI_awlock(S04_AXI_awlock),
        .S04_AXI_awprot(S04_AXI_awprot),
        .S04_AXI_awqos(S04_AXI_awqos),
        .S04_AXI_awready(S04_AXI_awready),
        .S04_AXI_awsize(S04_AXI_awsize),
        .S04_AXI_awvalid(S04_AXI_awvalid),
        .S04_AXI_bready(S04_AXI_bready),
        .S04_AXI_bresp(S04_AXI_bresp),
        .S04_AXI_bvalid(S04_AXI_bvalid),
        .S04_AXI_rdata(S04_AXI_rdata),
        .S04_AXI_rlast(S04_AXI_rlast),
        .S04_AXI_rready(S04_AXI_rready),
        .S04_AXI_rresp(S04_AXI_rresp),
        .S04_AXI_rvalid(S04_AXI_rvalid),
        .S04_AXI_wdata(S04_AXI_wdata),
        .S04_AXI_wlast(S04_AXI_wlast),
        .S04_AXI_wready(S04_AXI_wready),
        .S04_AXI_wstrb(S04_AXI_wstrb),
        .S04_AXI_wvalid(S04_AXI_wvalid),
        .S05_AXI_araddr(S05_AXI_araddr),
        .S05_AXI_arburst(S05_AXI_arburst),
        .S05_AXI_arcache(S05_AXI_arcache),
        .S05_AXI_arlen(S05_AXI_arlen),
        .S05_AXI_arlock(S05_AXI_arlock),
        .S05_AXI_arprot(S05_AXI_arprot),
        .S05_AXI_arqos(S05_AXI_arqos),
        .S05_AXI_arready(S05_AXI_arready),
        .S05_AXI_arsize(S05_AXI_arsize),
        .S05_AXI_arvalid(S05_AXI_arvalid),
        .S05_AXI_awaddr(S05_AXI_awaddr),
        .S05_AXI_awburst(S05_AXI_awburst),
        .S05_AXI_awcache(S05_AXI_awcache),
        .S05_AXI_awlen(S05_AXI_awlen),
        .S05_AXI_awlock(S05_AXI_awlock),
        .S05_AXI_awprot(S05_AXI_awprot),
        .S05_AXI_awqos(S05_AXI_awqos),
        .S05_AXI_awready(S05_AXI_awready),
        .S05_AXI_awsize(S05_AXI_awsize),
        .S05_AXI_awvalid(S05_AXI_awvalid),
        .S05_AXI_bready(S05_AXI_bready),
        .S05_AXI_bresp(S05_AXI_bresp),
        .S05_AXI_bvalid(S05_AXI_bvalid),
        .S05_AXI_rdata(S05_AXI_rdata),
        .S05_AXI_rlast(S05_AXI_rlast),
        .S05_AXI_rready(S05_AXI_rready),
        .S05_AXI_rresp(S05_AXI_rresp),
        .S05_AXI_rvalid(S05_AXI_rvalid),
        .S05_AXI_wdata(S05_AXI_wdata),
        .S05_AXI_wlast(S05_AXI_wlast),
        .S05_AXI_wready(S05_AXI_wready),
        .S05_AXI_wstrb(S05_AXI_wstrb),
        .S05_AXI_wvalid(S05_AXI_wvalid),
        .S06_AXI_araddr(S06_AXI_araddr),
        .S06_AXI_arburst(S06_AXI_arburst),
        .S06_AXI_arcache(S06_AXI_arcache),
        .S06_AXI_arlen(S06_AXI_arlen),
        .S06_AXI_arlock(S06_AXI_arlock),
        .S06_AXI_arprot(S06_AXI_arprot),
        .S06_AXI_arqos(S06_AXI_arqos),
        .S06_AXI_arready(S06_AXI_arready),
        .S06_AXI_arsize(S06_AXI_arsize),
        .S06_AXI_arvalid(S06_AXI_arvalid),
        .S06_AXI_awaddr(S06_AXI_awaddr),
        .S06_AXI_awburst(S06_AXI_awburst),
        .S06_AXI_awcache(S06_AXI_awcache),
        .S06_AXI_awlen(S06_AXI_awlen),
        .S06_AXI_awlock(S06_AXI_awlock),
        .S06_AXI_awprot(S06_AXI_awprot),
        .S06_AXI_awqos(S06_AXI_awqos),
        .S06_AXI_awready(S06_AXI_awready),
        .S06_AXI_awsize(S06_AXI_awsize),
        .S06_AXI_awvalid(S06_AXI_awvalid),
        .S06_AXI_bready(S06_AXI_bready),
        .S06_AXI_bresp(S06_AXI_bresp),
        .S06_AXI_bvalid(S06_AXI_bvalid),
        .S06_AXI_rdata(S06_AXI_rdata),
        .S06_AXI_rlast(S06_AXI_rlast),
        .S06_AXI_rready(S06_AXI_rready),
        .S06_AXI_rresp(S06_AXI_rresp),
        .S06_AXI_rvalid(S06_AXI_rvalid),
        .S06_AXI_wdata(S06_AXI_wdata),
        .S06_AXI_wlast(S06_AXI_wlast),
        .S06_AXI_wready(S06_AXI_wready),
        .S06_AXI_wstrb(S06_AXI_wstrb),
        .S06_AXI_wvalid(S06_AXI_wvalid),
        .S_AXI_CTRL_araddr(S_AXI_CTRL_araddr),
        .S_AXI_CTRL_arready(S_AXI_CTRL_arready),
        .S_AXI_CTRL_arvalid(S_AXI_CTRL_arvalid),
        .S_AXI_CTRL_awaddr(S_AXI_CTRL_awaddr),
        .S_AXI_CTRL_awready(S_AXI_CTRL_awready),
        .S_AXI_CTRL_awvalid(S_AXI_CTRL_awvalid),
        .S_AXI_CTRL_bready(S_AXI_CTRL_bready),
        .S_AXI_CTRL_bresp(S_AXI_CTRL_bresp),
        .S_AXI_CTRL_bvalid(S_AXI_CTRL_bvalid),
        .S_AXI_CTRL_rdata(S_AXI_CTRL_rdata),
        .S_AXI_CTRL_rready(S_AXI_CTRL_rready),
        .S_AXI_CTRL_rresp(S_AXI_CTRL_rresp),
        .S_AXI_CTRL_rvalid(S_AXI_CTRL_rvalid),
        .S_AXI_CTRL_wdata(S_AXI_CTRL_wdata),
        .S_AXI_CTRL_wready(S_AXI_CTRL_wready),
        .S_AXI_CTRL_wvalid(S_AXI_CTRL_wvalid),
        .aclk(aclk),
        .aclk1(aclk1),
        .aresetn(aresetn),
        .aresetn1(aresetn1),
        .ctrl_aclk(ctrl_aclk),
        .ctrl_aresetn(ctrl_aresetn),
        .hbm_aclk(hbm_aclk),
        .hbm_aresetn(hbm_aresetn),
        .hbm_mc_init_seq_complete(hbm_mc_init_seq_complete),
        .hbm_ref_clk(hbm_ref_clk));
endmodule
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
