-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Sun Jun 20 17:09:39 2021
-- Host        : alveo0 running 64-bit Ubuntu 18.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pfm_dynamic_hmss_0_0_sim_netlist.vhdl
-- Design      : pfm_dynamic_hmss_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu280-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_init_concat_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_init_concat_0 : entity is "bd_5dca_init_concat_0,xlconcat_v2_1_4_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_init_concat_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_init_concat_0 : entity is "xlconcat_v2_1_4_xlconcat,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_init_concat_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_init_concat_0 is
  signal \^in0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^in1\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \^in0\(0) <= In0(0);
  \^in1\(0) <= In1(0);
  dout(1) <= \^in1\(0);
  dout(0) <= \^in0\(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_init_logic_imp_156LN22 is
  port (
    hbm_mc_init_seq_complete : out STD_LOGIC;
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_init_logic_imp_156LN22;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_init_logic_imp_156LN22 is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_init_reduce_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Res : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_init_reduce_0;
  signal init_concat_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of init_concat : label is "bd_5dca_init_concat_0,xlconcat_v2_1_4_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of init_concat : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of init_concat : label is "xlconcat_v2_1_4_xlconcat,Vivado 2020.2";
  attribute X_CORE_INFO of init_reduce : label is "util_reduced_logic_v2_0_4_util_reduced_logic,Vivado 2020.2";
begin
init_concat: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_init_concat_0
     port map (
      In0(0) => In0(0),
      In1(0) => In1(0),
      dout(1 downto 0) => init_concat_dout(1 downto 0)
    );
init_reduce: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_init_reduce_0
     port map (
      Op1(1 downto 0) => init_concat_dout(1 downto 0),
      Res => hbm_mc_init_seq_complete
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_20_imp_1XT8RPB is
  port (
    S01_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    aclk1 : in STD_LOGIC;
    hbm_aclk : in STD_LOGIC;
    aresetn1 : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn : in STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_20_imp_1XT8RPB;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_20_imp_1XT8RPB is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect1_20_0 is
  port (
    aclk : in STD_LOGIC;
    aclk1 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect1_20_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice1_20_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice1_20_0;
  signal interconnect1_20_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal interconnect1_20_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect1_20_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect1_20_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect1_20_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect1_20_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect1_20_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect1_20_M00_AXI_ARREADY : STD_LOGIC;
  signal interconnect1_20_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect1_20_M00_AXI_ARVALID : STD_LOGIC;
  signal interconnect1_20_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal interconnect1_20_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect1_20_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect1_20_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect1_20_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect1_20_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect1_20_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect1_20_M00_AXI_AWREADY : STD_LOGIC;
  signal interconnect1_20_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect1_20_M00_AXI_AWVALID : STD_LOGIC;
  signal interconnect1_20_M00_AXI_BREADY : STD_LOGIC;
  signal interconnect1_20_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect1_20_M00_AXI_BVALID : STD_LOGIC;
  signal interconnect1_20_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal interconnect1_20_M00_AXI_RLAST : STD_LOGIC;
  signal interconnect1_20_M00_AXI_RREADY : STD_LOGIC;
  signal interconnect1_20_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect1_20_M00_AXI_RVALID : STD_LOGIC;
  signal interconnect1_20_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal interconnect1_20_M00_AXI_WLAST : STD_LOGIC;
  signal interconnect1_20_M00_AXI_WREADY : STD_LOGIC;
  signal interconnect1_20_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect1_20_M00_AXI_WVALID : STD_LOGIC;
  signal NLW_slice1_20_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_slice1_20_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of interconnect1_20 : label is "bd_52ea,Vivado 2020.2";
  attribute X_CORE_INFO of slice1_20 : label is "axi_register_slice_v2_1_22_axi_register_slice,Vivado 2020.2";
begin
interconnect1_20: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect1_20_0
     port map (
      M00_AXI_araddr(32 downto 0) => interconnect1_20_M00_AXI_ARADDR(32 downto 0),
      M00_AXI_arburst(1 downto 0) => interconnect1_20_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => interconnect1_20_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(3 downto 0) => interconnect1_20_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => interconnect1_20_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => interconnect1_20_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => interconnect1_20_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => interconnect1_20_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => interconnect1_20_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => interconnect1_20_M00_AXI_ARVALID,
      M00_AXI_awaddr(32 downto 0) => interconnect1_20_M00_AXI_AWADDR(32 downto 0),
      M00_AXI_awburst(1 downto 0) => interconnect1_20_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => interconnect1_20_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(3 downto 0) => interconnect1_20_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => interconnect1_20_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => interconnect1_20_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => interconnect1_20_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => interconnect1_20_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => interconnect1_20_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => interconnect1_20_M00_AXI_AWVALID,
      M00_AXI_bready => interconnect1_20_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => interconnect1_20_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => interconnect1_20_M00_AXI_BVALID,
      M00_AXI_rdata(255 downto 0) => interconnect1_20_M00_AXI_RDATA(255 downto 0),
      M00_AXI_rlast => interconnect1_20_M00_AXI_RLAST,
      M00_AXI_rready => interconnect1_20_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => interconnect1_20_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => interconnect1_20_M00_AXI_RVALID,
      M00_AXI_wdata(255 downto 0) => interconnect1_20_M00_AXI_WDATA(255 downto 0),
      M00_AXI_wlast => interconnect1_20_M00_AXI_WLAST,
      M00_AXI_wready => interconnect1_20_M00_AXI_WREADY,
      M00_AXI_wstrb(31 downto 0) => interconnect1_20_M00_AXI_WSTRB(31 downto 0),
      M00_AXI_wvalid => interconnect1_20_M00_AXI_WVALID,
      S00_AXI_araddr(63 downto 0) => S01_AXI_araddr(63 downto 0),
      S00_AXI_arburst(1 downto 0) => S01_AXI_arburst(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S01_AXI_arcache(3 downto 0),
      S00_AXI_arlen(7 downto 0) => S01_AXI_arlen(7 downto 0),
      S00_AXI_arlock(0) => S01_AXI_arlock(0),
      S00_AXI_arprot(2 downto 0) => S01_AXI_arprot(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S01_AXI_arqos(3 downto 0),
      S00_AXI_arready => S01_AXI_arready(0),
      S00_AXI_arsize(2 downto 0) => S01_AXI_arsize(2 downto 0),
      S00_AXI_arvalid => S01_AXI_arvalid(0),
      S00_AXI_awaddr(63 downto 0) => S01_AXI_awaddr(63 downto 0),
      S00_AXI_awburst(1 downto 0) => S01_AXI_awburst(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S01_AXI_awcache(3 downto 0),
      S00_AXI_awlen(7 downto 0) => S01_AXI_awlen(7 downto 0),
      S00_AXI_awlock(0) => S01_AXI_awlock(0),
      S00_AXI_awprot(2 downto 0) => S01_AXI_awprot(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S01_AXI_awqos(3 downto 0),
      S00_AXI_awready => S01_AXI_awready(0),
      S00_AXI_awsize(2 downto 0) => S01_AXI_awsize(2 downto 0),
      S00_AXI_awvalid => S01_AXI_awvalid(0),
      S00_AXI_bready => S01_AXI_bready(0),
      S00_AXI_bresp(1 downto 0) => S01_AXI_bresp(1 downto 0),
      S00_AXI_bvalid => S01_AXI_bvalid(0),
      S00_AXI_rdata(31 downto 0) => S01_AXI_rdata(31 downto 0),
      S00_AXI_rlast => S01_AXI_rlast(0),
      S00_AXI_rready => S01_AXI_rready(0),
      S00_AXI_rresp(1 downto 0) => S01_AXI_rresp(1 downto 0),
      S00_AXI_rvalid => S01_AXI_rvalid(0),
      S00_AXI_wdata(31 downto 0) => S01_AXI_wdata(31 downto 0),
      S00_AXI_wlast => S01_AXI_wlast(0),
      S00_AXI_wready => S01_AXI_wready(0),
      S00_AXI_wstrb(3 downto 0) => S01_AXI_wstrb(3 downto 0),
      S00_AXI_wvalid => S01_AXI_wvalid(0),
      aclk => aclk1,
      aclk1 => hbm_aclk,
      aresetn => aresetn1
    );
slice1_20: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice1_20_0
     port map (
      aclk => hbm_aclk,
      aresetn => aresetn,
      m_axi_araddr(32 downto 0) => M_AXI_araddr(32 downto 0),
      m_axi_arburst(1 downto 0) => M_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => M_AXI_arcache(3 downto 0),
      m_axi_arlen(3 downto 0) => M_AXI_arlen(3 downto 0),
      m_axi_arlock(1 downto 0) => M_AXI_arlock(1 downto 0),
      m_axi_arprot(2 downto 0) => M_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => M_AXI_arqos(3 downto 0),
      m_axi_arready => M_AXI_arready,
      m_axi_arsize(2 downto 0) => NLW_slice1_20_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_arvalid => M_AXI_arvalid,
      m_axi_awaddr(32 downto 0) => M_AXI_awaddr(32 downto 0),
      m_axi_awburst(1 downto 0) => M_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => M_AXI_awcache(3 downto 0),
      m_axi_awlen(3 downto 0) => M_AXI_awlen(3 downto 0),
      m_axi_awlock(1 downto 0) => M_AXI_awlock(1 downto 0),
      m_axi_awprot(2 downto 0) => M_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => M_AXI_awqos(3 downto 0),
      m_axi_awready => M_AXI_awready,
      m_axi_awsize(2 downto 0) => NLW_slice1_20_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awvalid => M_AXI_awvalid,
      m_axi_bready => M_AXI_bready,
      m_axi_bresp(1 downto 0) => M_AXI_bresp(1 downto 0),
      m_axi_bvalid => M_AXI_bvalid,
      m_axi_rdata(255 downto 0) => M_AXI_rdata(255 downto 0),
      m_axi_rlast => M_AXI_rlast,
      m_axi_rready => M_AXI_rready,
      m_axi_rresp(1 downto 0) => M_AXI_rresp(1 downto 0),
      m_axi_rvalid => M_AXI_rvalid,
      m_axi_wdata(255 downto 0) => M_AXI_wdata(255 downto 0),
      m_axi_wlast => M_AXI_wlast,
      m_axi_wready => M_AXI_wready,
      m_axi_wstrb(31 downto 0) => M_AXI_wstrb(31 downto 0),
      m_axi_wvalid => M_AXI_wvalid,
      s_axi_araddr(32 downto 0) => interconnect1_20_M00_AXI_ARADDR(32 downto 0),
      s_axi_arburst(1 downto 0) => interconnect1_20_M00_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => interconnect1_20_M00_AXI_ARCACHE(3 downto 0),
      s_axi_arlen(3 downto 0) => interconnect1_20_M00_AXI_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => interconnect1_20_M00_AXI_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => interconnect1_20_M00_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => interconnect1_20_M00_AXI_ARQOS(3 downto 0),
      s_axi_arready => interconnect1_20_M00_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => interconnect1_20_M00_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => interconnect1_20_M00_AXI_ARVALID,
      s_axi_awaddr(32 downto 0) => interconnect1_20_M00_AXI_AWADDR(32 downto 0),
      s_axi_awburst(1 downto 0) => interconnect1_20_M00_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => interconnect1_20_M00_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(3 downto 0) => interconnect1_20_M00_AXI_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => interconnect1_20_M00_AXI_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => interconnect1_20_M00_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => interconnect1_20_M00_AXI_AWQOS(3 downto 0),
      s_axi_awready => interconnect1_20_M00_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => interconnect1_20_M00_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => interconnect1_20_M00_AXI_AWVALID,
      s_axi_bready => interconnect1_20_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => interconnect1_20_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => interconnect1_20_M00_AXI_BVALID,
      s_axi_rdata(255 downto 0) => interconnect1_20_M00_AXI_RDATA(255 downto 0),
      s_axi_rlast => interconnect1_20_M00_AXI_RLAST,
      s_axi_rready => interconnect1_20_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => interconnect1_20_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => interconnect1_20_M00_AXI_RVALID,
      s_axi_wdata(255 downto 0) => interconnect1_20_M00_AXI_WDATA(255 downto 0),
      s_axi_wlast => interconnect1_20_M00_AXI_WLAST,
      s_axi_wready => interconnect1_20_M00_AXI_WREADY,
      s_axi_wstrb(31 downto 0) => interconnect1_20_M00_AXI_WSTRB(31 downto 0),
      s_axi_wvalid => interconnect1_20_M00_AXI_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_21_imp_FBBGKH is
  port (
    S02_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    aclk1 : in STD_LOGIC;
    hbm_aclk : in STD_LOGIC;
    aresetn1 : in STD_LOGIC;
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S02_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn : in STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_21_imp_FBBGKH;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_21_imp_FBBGKH is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect2_21_0 is
  port (
    aclk : in STD_LOGIC;
    aclk1 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect2_21_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice2_21_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice2_21_0;
  signal interconnect2_21_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal interconnect2_21_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect2_21_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect2_21_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect2_21_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect2_21_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect2_21_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect2_21_M00_AXI_ARREADY : STD_LOGIC;
  signal interconnect2_21_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect2_21_M00_AXI_ARVALID : STD_LOGIC;
  signal interconnect2_21_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal interconnect2_21_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect2_21_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect2_21_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect2_21_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect2_21_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect2_21_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect2_21_M00_AXI_AWREADY : STD_LOGIC;
  signal interconnect2_21_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect2_21_M00_AXI_AWVALID : STD_LOGIC;
  signal interconnect2_21_M00_AXI_BREADY : STD_LOGIC;
  signal interconnect2_21_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect2_21_M00_AXI_BVALID : STD_LOGIC;
  signal interconnect2_21_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal interconnect2_21_M00_AXI_RLAST : STD_LOGIC;
  signal interconnect2_21_M00_AXI_RREADY : STD_LOGIC;
  signal interconnect2_21_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect2_21_M00_AXI_RVALID : STD_LOGIC;
  signal interconnect2_21_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal interconnect2_21_M00_AXI_WLAST : STD_LOGIC;
  signal interconnect2_21_M00_AXI_WREADY : STD_LOGIC;
  signal interconnect2_21_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect2_21_M00_AXI_WVALID : STD_LOGIC;
  signal NLW_slice2_21_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_slice2_21_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of interconnect2_21 : label is "bd_a1bb,Vivado 2020.2";
  attribute X_CORE_INFO of slice2_21 : label is "axi_register_slice_v2_1_22_axi_register_slice,Vivado 2020.2";
begin
interconnect2_21: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect2_21_0
     port map (
      M00_AXI_araddr(32 downto 0) => interconnect2_21_M00_AXI_ARADDR(32 downto 0),
      M00_AXI_arburst(1 downto 0) => interconnect2_21_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => interconnect2_21_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(3 downto 0) => interconnect2_21_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => interconnect2_21_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => interconnect2_21_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => interconnect2_21_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => interconnect2_21_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => interconnect2_21_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => interconnect2_21_M00_AXI_ARVALID,
      M00_AXI_awaddr(32 downto 0) => interconnect2_21_M00_AXI_AWADDR(32 downto 0),
      M00_AXI_awburst(1 downto 0) => interconnect2_21_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => interconnect2_21_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(3 downto 0) => interconnect2_21_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => interconnect2_21_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => interconnect2_21_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => interconnect2_21_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => interconnect2_21_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => interconnect2_21_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => interconnect2_21_M00_AXI_AWVALID,
      M00_AXI_bready => interconnect2_21_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => interconnect2_21_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => interconnect2_21_M00_AXI_BVALID,
      M00_AXI_rdata(255 downto 0) => interconnect2_21_M00_AXI_RDATA(255 downto 0),
      M00_AXI_rlast => interconnect2_21_M00_AXI_RLAST,
      M00_AXI_rready => interconnect2_21_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => interconnect2_21_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => interconnect2_21_M00_AXI_RVALID,
      M00_AXI_wdata(255 downto 0) => interconnect2_21_M00_AXI_WDATA(255 downto 0),
      M00_AXI_wlast => interconnect2_21_M00_AXI_WLAST,
      M00_AXI_wready => interconnect2_21_M00_AXI_WREADY,
      M00_AXI_wstrb(31 downto 0) => interconnect2_21_M00_AXI_WSTRB(31 downto 0),
      M00_AXI_wvalid => interconnect2_21_M00_AXI_WVALID,
      S00_AXI_araddr(63 downto 0) => S02_AXI_araddr(63 downto 0),
      S00_AXI_arburst(1 downto 0) => S02_AXI_arburst(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S02_AXI_arcache(3 downto 0),
      S00_AXI_arlen(7 downto 0) => S02_AXI_arlen(7 downto 0),
      S00_AXI_arlock(0) => S02_AXI_arlock(0),
      S00_AXI_arprot(2 downto 0) => S02_AXI_arprot(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S02_AXI_arqos(3 downto 0),
      S00_AXI_arready => S02_AXI_arready(0),
      S00_AXI_arsize(2 downto 0) => S02_AXI_arsize(2 downto 0),
      S00_AXI_arvalid => S02_AXI_arvalid(0),
      S00_AXI_awaddr(63 downto 0) => S02_AXI_awaddr(63 downto 0),
      S00_AXI_awburst(1 downto 0) => S02_AXI_awburst(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S02_AXI_awcache(3 downto 0),
      S00_AXI_awlen(7 downto 0) => S02_AXI_awlen(7 downto 0),
      S00_AXI_awlock(0) => S02_AXI_awlock(0),
      S00_AXI_awprot(2 downto 0) => S02_AXI_awprot(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S02_AXI_awqos(3 downto 0),
      S00_AXI_awready => S02_AXI_awready(0),
      S00_AXI_awsize(2 downto 0) => S02_AXI_awsize(2 downto 0),
      S00_AXI_awvalid => S02_AXI_awvalid(0),
      S00_AXI_bready => S02_AXI_bready(0),
      S00_AXI_bresp(1 downto 0) => S02_AXI_bresp(1 downto 0),
      S00_AXI_bvalid => S02_AXI_bvalid(0),
      S00_AXI_rdata(511 downto 0) => S02_AXI_rdata(511 downto 0),
      S00_AXI_rlast => S02_AXI_rlast(0),
      S00_AXI_rready => S02_AXI_rready(0),
      S00_AXI_rresp(1 downto 0) => S02_AXI_rresp(1 downto 0),
      S00_AXI_rvalid => S02_AXI_rvalid(0),
      S00_AXI_wdata(511 downto 0) => S02_AXI_wdata(511 downto 0),
      S00_AXI_wlast => S02_AXI_wlast(0),
      S00_AXI_wready => S02_AXI_wready(0),
      S00_AXI_wstrb(63 downto 0) => S02_AXI_wstrb(63 downto 0),
      S00_AXI_wvalid => S02_AXI_wvalid(0),
      aclk => aclk1,
      aclk1 => hbm_aclk,
      aresetn => aresetn1
    );
slice2_21: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice2_21_0
     port map (
      aclk => hbm_aclk,
      aresetn => aresetn,
      m_axi_araddr(32 downto 0) => M_AXI_araddr(32 downto 0),
      m_axi_arburst(1 downto 0) => M_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => M_AXI_arcache(3 downto 0),
      m_axi_arlen(3 downto 0) => M_AXI_arlen(3 downto 0),
      m_axi_arlock(1 downto 0) => M_AXI_arlock(1 downto 0),
      m_axi_arprot(2 downto 0) => M_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => M_AXI_arqos(3 downto 0),
      m_axi_arready => M_AXI_arready,
      m_axi_arsize(2 downto 0) => NLW_slice2_21_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_arvalid => M_AXI_arvalid,
      m_axi_awaddr(32 downto 0) => M_AXI_awaddr(32 downto 0),
      m_axi_awburst(1 downto 0) => M_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => M_AXI_awcache(3 downto 0),
      m_axi_awlen(3 downto 0) => M_AXI_awlen(3 downto 0),
      m_axi_awlock(1 downto 0) => M_AXI_awlock(1 downto 0),
      m_axi_awprot(2 downto 0) => M_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => M_AXI_awqos(3 downto 0),
      m_axi_awready => M_AXI_awready,
      m_axi_awsize(2 downto 0) => NLW_slice2_21_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awvalid => M_AXI_awvalid,
      m_axi_bready => M_AXI_bready,
      m_axi_bresp(1 downto 0) => M_AXI_bresp(1 downto 0),
      m_axi_bvalid => M_AXI_bvalid,
      m_axi_rdata(255 downto 0) => M_AXI_rdata(255 downto 0),
      m_axi_rlast => M_AXI_rlast,
      m_axi_rready => M_AXI_rready,
      m_axi_rresp(1 downto 0) => M_AXI_rresp(1 downto 0),
      m_axi_rvalid => M_AXI_rvalid,
      m_axi_wdata(255 downto 0) => M_AXI_wdata(255 downto 0),
      m_axi_wlast => M_AXI_wlast,
      m_axi_wready => M_AXI_wready,
      m_axi_wstrb(31 downto 0) => M_AXI_wstrb(31 downto 0),
      m_axi_wvalid => M_AXI_wvalid,
      s_axi_araddr(32 downto 0) => interconnect2_21_M00_AXI_ARADDR(32 downto 0),
      s_axi_arburst(1 downto 0) => interconnect2_21_M00_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => interconnect2_21_M00_AXI_ARCACHE(3 downto 0),
      s_axi_arlen(3 downto 0) => interconnect2_21_M00_AXI_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => interconnect2_21_M00_AXI_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => interconnect2_21_M00_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => interconnect2_21_M00_AXI_ARQOS(3 downto 0),
      s_axi_arready => interconnect2_21_M00_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => interconnect2_21_M00_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => interconnect2_21_M00_AXI_ARVALID,
      s_axi_awaddr(32 downto 0) => interconnect2_21_M00_AXI_AWADDR(32 downto 0),
      s_axi_awburst(1 downto 0) => interconnect2_21_M00_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => interconnect2_21_M00_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(3 downto 0) => interconnect2_21_M00_AXI_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => interconnect2_21_M00_AXI_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => interconnect2_21_M00_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => interconnect2_21_M00_AXI_AWQOS(3 downto 0),
      s_axi_awready => interconnect2_21_M00_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => interconnect2_21_M00_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => interconnect2_21_M00_AXI_AWVALID,
      s_axi_bready => interconnect2_21_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => interconnect2_21_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => interconnect2_21_M00_AXI_BVALID,
      s_axi_rdata(255 downto 0) => interconnect2_21_M00_AXI_RDATA(255 downto 0),
      s_axi_rlast => interconnect2_21_M00_AXI_RLAST,
      s_axi_rready => interconnect2_21_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => interconnect2_21_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => interconnect2_21_M00_AXI_RVALID,
      s_axi_wdata(255 downto 0) => interconnect2_21_M00_AXI_WDATA(255 downto 0),
      s_axi_wlast => interconnect2_21_M00_AXI_WLAST,
      s_axi_wready => interconnect2_21_M00_AXI_WREADY,
      s_axi_wstrb(31 downto 0) => interconnect2_21_M00_AXI_WSTRB(31 downto 0),
      s_axi_wvalid => interconnect2_21_M00_AXI_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_22_imp_1FJCOXU is
  port (
    S03_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    aclk1 : in STD_LOGIC;
    hbm_aclk : in STD_LOGIC;
    aresetn1 : in STD_LOGIC;
    S03_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S03_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S03_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S03_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S03_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn : in STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_22_imp_1FJCOXU;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_22_imp_1FJCOXU is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect3_22_0 is
  port (
    aclk : in STD_LOGIC;
    aclk1 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect3_22_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice3_22_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice3_22_0;
  signal interconnect3_22_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal interconnect3_22_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect3_22_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect3_22_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect3_22_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect3_22_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect3_22_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect3_22_M00_AXI_ARREADY : STD_LOGIC;
  signal interconnect3_22_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect3_22_M00_AXI_ARVALID : STD_LOGIC;
  signal interconnect3_22_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal interconnect3_22_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect3_22_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect3_22_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect3_22_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect3_22_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect3_22_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect3_22_M00_AXI_AWREADY : STD_LOGIC;
  signal interconnect3_22_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect3_22_M00_AXI_AWVALID : STD_LOGIC;
  signal interconnect3_22_M00_AXI_BREADY : STD_LOGIC;
  signal interconnect3_22_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect3_22_M00_AXI_BVALID : STD_LOGIC;
  signal interconnect3_22_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal interconnect3_22_M00_AXI_RLAST : STD_LOGIC;
  signal interconnect3_22_M00_AXI_RREADY : STD_LOGIC;
  signal interconnect3_22_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect3_22_M00_AXI_RVALID : STD_LOGIC;
  signal interconnect3_22_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal interconnect3_22_M00_AXI_WLAST : STD_LOGIC;
  signal interconnect3_22_M00_AXI_WREADY : STD_LOGIC;
  signal interconnect3_22_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect3_22_M00_AXI_WVALID : STD_LOGIC;
  signal NLW_slice3_22_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_slice3_22_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of interconnect3_22 : label is "bd_704a,Vivado 2020.2";
  attribute X_CORE_INFO of slice3_22 : label is "axi_register_slice_v2_1_22_axi_register_slice,Vivado 2020.2";
begin
interconnect3_22: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect3_22_0
     port map (
      M00_AXI_araddr(32 downto 0) => interconnect3_22_M00_AXI_ARADDR(32 downto 0),
      M00_AXI_arburst(1 downto 0) => interconnect3_22_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => interconnect3_22_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(3 downto 0) => interconnect3_22_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => interconnect3_22_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => interconnect3_22_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => interconnect3_22_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => interconnect3_22_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => interconnect3_22_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => interconnect3_22_M00_AXI_ARVALID,
      M00_AXI_awaddr(32 downto 0) => interconnect3_22_M00_AXI_AWADDR(32 downto 0),
      M00_AXI_awburst(1 downto 0) => interconnect3_22_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => interconnect3_22_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(3 downto 0) => interconnect3_22_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => interconnect3_22_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => interconnect3_22_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => interconnect3_22_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => interconnect3_22_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => interconnect3_22_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => interconnect3_22_M00_AXI_AWVALID,
      M00_AXI_bready => interconnect3_22_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => interconnect3_22_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => interconnect3_22_M00_AXI_BVALID,
      M00_AXI_rdata(255 downto 0) => interconnect3_22_M00_AXI_RDATA(255 downto 0),
      M00_AXI_rlast => interconnect3_22_M00_AXI_RLAST,
      M00_AXI_rready => interconnect3_22_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => interconnect3_22_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => interconnect3_22_M00_AXI_RVALID,
      M00_AXI_wdata(255 downto 0) => interconnect3_22_M00_AXI_WDATA(255 downto 0),
      M00_AXI_wlast => interconnect3_22_M00_AXI_WLAST,
      M00_AXI_wready => interconnect3_22_M00_AXI_WREADY,
      M00_AXI_wstrb(31 downto 0) => interconnect3_22_M00_AXI_WSTRB(31 downto 0),
      M00_AXI_wvalid => interconnect3_22_M00_AXI_WVALID,
      S00_AXI_araddr(63 downto 0) => S03_AXI_araddr(63 downto 0),
      S00_AXI_arburst(1 downto 0) => S03_AXI_arburst(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S03_AXI_arcache(3 downto 0),
      S00_AXI_arlen(7 downto 0) => S03_AXI_arlen(7 downto 0),
      S00_AXI_arlock(0) => S03_AXI_arlock(0),
      S00_AXI_arprot(2 downto 0) => S03_AXI_arprot(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S03_AXI_arqos(3 downto 0),
      S00_AXI_arready => S03_AXI_arready(0),
      S00_AXI_arsize(2 downto 0) => S03_AXI_arsize(2 downto 0),
      S00_AXI_arvalid => S03_AXI_arvalid(0),
      S00_AXI_awaddr(63 downto 0) => S03_AXI_awaddr(63 downto 0),
      S00_AXI_awburst(1 downto 0) => S03_AXI_awburst(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S03_AXI_awcache(3 downto 0),
      S00_AXI_awlen(7 downto 0) => S03_AXI_awlen(7 downto 0),
      S00_AXI_awlock(0) => S03_AXI_awlock(0),
      S00_AXI_awprot(2 downto 0) => S03_AXI_awprot(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S03_AXI_awqos(3 downto 0),
      S00_AXI_awready => S03_AXI_awready(0),
      S00_AXI_awsize(2 downto 0) => S03_AXI_awsize(2 downto 0),
      S00_AXI_awvalid => S03_AXI_awvalid(0),
      S00_AXI_bready => S03_AXI_bready(0),
      S00_AXI_bresp(1 downto 0) => S03_AXI_bresp(1 downto 0),
      S00_AXI_bvalid => S03_AXI_bvalid(0),
      S00_AXI_rdata(31 downto 0) => S03_AXI_rdata(31 downto 0),
      S00_AXI_rlast => S03_AXI_rlast(0),
      S00_AXI_rready => S03_AXI_rready(0),
      S00_AXI_rresp(1 downto 0) => S03_AXI_rresp(1 downto 0),
      S00_AXI_rvalid => S03_AXI_rvalid(0),
      S00_AXI_wdata(31 downto 0) => S03_AXI_wdata(31 downto 0),
      S00_AXI_wlast => S03_AXI_wlast(0),
      S00_AXI_wready => S03_AXI_wready(0),
      S00_AXI_wstrb(3 downto 0) => S03_AXI_wstrb(3 downto 0),
      S00_AXI_wvalid => S03_AXI_wvalid(0),
      aclk => aclk1,
      aclk1 => hbm_aclk,
      aresetn => aresetn1
    );
slice3_22: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice3_22_0
     port map (
      aclk => hbm_aclk,
      aresetn => aresetn,
      m_axi_araddr(32 downto 0) => M_AXI_araddr(32 downto 0),
      m_axi_arburst(1 downto 0) => M_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => M_AXI_arcache(3 downto 0),
      m_axi_arlen(3 downto 0) => M_AXI_arlen(3 downto 0),
      m_axi_arlock(1 downto 0) => M_AXI_arlock(1 downto 0),
      m_axi_arprot(2 downto 0) => M_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => M_AXI_arqos(3 downto 0),
      m_axi_arready => M_AXI_arready,
      m_axi_arsize(2 downto 0) => NLW_slice3_22_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_arvalid => M_AXI_arvalid,
      m_axi_awaddr(32 downto 0) => M_AXI_awaddr(32 downto 0),
      m_axi_awburst(1 downto 0) => M_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => M_AXI_awcache(3 downto 0),
      m_axi_awlen(3 downto 0) => M_AXI_awlen(3 downto 0),
      m_axi_awlock(1 downto 0) => M_AXI_awlock(1 downto 0),
      m_axi_awprot(2 downto 0) => M_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => M_AXI_awqos(3 downto 0),
      m_axi_awready => M_AXI_awready,
      m_axi_awsize(2 downto 0) => NLW_slice3_22_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awvalid => M_AXI_awvalid,
      m_axi_bready => M_AXI_bready,
      m_axi_bresp(1 downto 0) => M_AXI_bresp(1 downto 0),
      m_axi_bvalid => M_AXI_bvalid,
      m_axi_rdata(255 downto 0) => M_AXI_rdata(255 downto 0),
      m_axi_rlast => M_AXI_rlast,
      m_axi_rready => M_AXI_rready,
      m_axi_rresp(1 downto 0) => M_AXI_rresp(1 downto 0),
      m_axi_rvalid => M_AXI_rvalid,
      m_axi_wdata(255 downto 0) => M_AXI_wdata(255 downto 0),
      m_axi_wlast => M_AXI_wlast,
      m_axi_wready => M_AXI_wready,
      m_axi_wstrb(31 downto 0) => M_AXI_wstrb(31 downto 0),
      m_axi_wvalid => M_AXI_wvalid,
      s_axi_araddr(32 downto 0) => interconnect3_22_M00_AXI_ARADDR(32 downto 0),
      s_axi_arburst(1 downto 0) => interconnect3_22_M00_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => interconnect3_22_M00_AXI_ARCACHE(3 downto 0),
      s_axi_arlen(3 downto 0) => interconnect3_22_M00_AXI_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => interconnect3_22_M00_AXI_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => interconnect3_22_M00_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => interconnect3_22_M00_AXI_ARQOS(3 downto 0),
      s_axi_arready => interconnect3_22_M00_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => interconnect3_22_M00_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => interconnect3_22_M00_AXI_ARVALID,
      s_axi_awaddr(32 downto 0) => interconnect3_22_M00_AXI_AWADDR(32 downto 0),
      s_axi_awburst(1 downto 0) => interconnect3_22_M00_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => interconnect3_22_M00_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(3 downto 0) => interconnect3_22_M00_AXI_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => interconnect3_22_M00_AXI_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => interconnect3_22_M00_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => interconnect3_22_M00_AXI_AWQOS(3 downto 0),
      s_axi_awready => interconnect3_22_M00_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => interconnect3_22_M00_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => interconnect3_22_M00_AXI_AWVALID,
      s_axi_bready => interconnect3_22_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => interconnect3_22_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => interconnect3_22_M00_AXI_BVALID,
      s_axi_rdata(255 downto 0) => interconnect3_22_M00_AXI_RDATA(255 downto 0),
      s_axi_rlast => interconnect3_22_M00_AXI_RLAST,
      s_axi_rready => interconnect3_22_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => interconnect3_22_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => interconnect3_22_M00_AXI_RVALID,
      s_axi_wdata(255 downto 0) => interconnect3_22_M00_AXI_WDATA(255 downto 0),
      s_axi_wlast => interconnect3_22_M00_AXI_WLAST,
      s_axi_wready => interconnect3_22_M00_AXI_WREADY,
      s_axi_wstrb(31 downto 0) => interconnect3_22_M00_AXI_WSTRB(31 downto 0),
      s_axi_wvalid => interconnect3_22_M00_AXI_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_23_imp_WHHIHO is
  port (
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    aclk : in STD_LOGIC;
    hbm_aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn1 : in STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_23_imp_WHHIHO;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_23_imp_WHHIHO is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect0_23_0 is
  port (
    aclk : in STD_LOGIC;
    aclk1 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect0_23_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice0_23_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice0_23_0;
  signal interconnect0_23_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal interconnect0_23_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect0_23_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect0_23_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect0_23_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect0_23_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect0_23_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect0_23_M00_AXI_ARREADY : STD_LOGIC;
  signal interconnect0_23_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect0_23_M00_AXI_ARVALID : STD_LOGIC;
  signal interconnect0_23_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal interconnect0_23_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect0_23_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect0_23_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect0_23_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect0_23_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect0_23_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect0_23_M00_AXI_AWREADY : STD_LOGIC;
  signal interconnect0_23_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect0_23_M00_AXI_AWVALID : STD_LOGIC;
  signal interconnect0_23_M00_AXI_BREADY : STD_LOGIC;
  signal interconnect0_23_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect0_23_M00_AXI_BVALID : STD_LOGIC;
  signal interconnect0_23_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal interconnect0_23_M00_AXI_RLAST : STD_LOGIC;
  signal interconnect0_23_M00_AXI_RREADY : STD_LOGIC;
  signal interconnect0_23_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect0_23_M00_AXI_RVALID : STD_LOGIC;
  signal interconnect0_23_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal interconnect0_23_M00_AXI_WLAST : STD_LOGIC;
  signal interconnect0_23_M00_AXI_WREADY : STD_LOGIC;
  signal interconnect0_23_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect0_23_M00_AXI_WVALID : STD_LOGIC;
  signal NLW_slice0_23_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_slice0_23_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of interconnect0_23 : label is "bd_831b,Vivado 2020.2";
  attribute X_CORE_INFO of slice0_23 : label is "axi_register_slice_v2_1_22_axi_register_slice,Vivado 2020.2";
begin
interconnect0_23: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect0_23_0
     port map (
      M00_AXI_araddr(32 downto 0) => interconnect0_23_M00_AXI_ARADDR(32 downto 0),
      M00_AXI_arburst(1 downto 0) => interconnect0_23_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => interconnect0_23_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(3 downto 0) => interconnect0_23_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => interconnect0_23_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => interconnect0_23_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => interconnect0_23_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => interconnect0_23_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => interconnect0_23_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => interconnect0_23_M00_AXI_ARVALID,
      M00_AXI_awaddr(32 downto 0) => interconnect0_23_M00_AXI_AWADDR(32 downto 0),
      M00_AXI_awburst(1 downto 0) => interconnect0_23_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => interconnect0_23_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(3 downto 0) => interconnect0_23_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => interconnect0_23_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => interconnect0_23_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => interconnect0_23_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => interconnect0_23_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => interconnect0_23_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => interconnect0_23_M00_AXI_AWVALID,
      M00_AXI_bready => interconnect0_23_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => interconnect0_23_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => interconnect0_23_M00_AXI_BVALID,
      M00_AXI_rdata(255 downto 0) => interconnect0_23_M00_AXI_RDATA(255 downto 0),
      M00_AXI_rlast => interconnect0_23_M00_AXI_RLAST,
      M00_AXI_rready => interconnect0_23_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => interconnect0_23_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => interconnect0_23_M00_AXI_RVALID,
      M00_AXI_wdata(255 downto 0) => interconnect0_23_M00_AXI_WDATA(255 downto 0),
      M00_AXI_wlast => interconnect0_23_M00_AXI_WLAST,
      M00_AXI_wready => interconnect0_23_M00_AXI_WREADY,
      M00_AXI_wstrb(31 downto 0) => interconnect0_23_M00_AXI_WSTRB(31 downto 0),
      M00_AXI_wvalid => interconnect0_23_M00_AXI_WVALID,
      S00_AXI_araddr(32 downto 0) => S00_AXI_araddr(32 downto 0),
      S00_AXI_arburst(1 downto 0) => S00_AXI_arburst(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S00_AXI_arcache(3 downto 0),
      S00_AXI_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      S00_AXI_arlock(0) => S00_AXI_arlock(0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S00_AXI_arqos(3 downto 0),
      S00_AXI_arready => S00_AXI_arready(0),
      S00_AXI_arsize(2 downto 0) => S00_AXI_arsize(2 downto 0),
      S00_AXI_arvalid => S00_AXI_arvalid(0),
      S00_AXI_awaddr(32 downto 0) => S00_AXI_awaddr(32 downto 0),
      S00_AXI_awburst(1 downto 0) => S00_AXI_awburst(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S00_AXI_awcache(3 downto 0),
      S00_AXI_awlen(7 downto 0) => S00_AXI_awlen(7 downto 0),
      S00_AXI_awlock(0) => S00_AXI_awlock(0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S00_AXI_awqos(3 downto 0),
      S00_AXI_awready => S00_AXI_awready(0),
      S00_AXI_awsize(2 downto 0) => S00_AXI_awsize(2 downto 0),
      S00_AXI_awvalid => S00_AXI_awvalid(0),
      S00_AXI_bready => S00_AXI_bready(0),
      S00_AXI_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      S00_AXI_bvalid => S00_AXI_bvalid(0),
      S00_AXI_rdata(511 downto 0) => S00_AXI_rdata(511 downto 0),
      S00_AXI_rlast => S00_AXI_rlast(0),
      S00_AXI_rready => S00_AXI_rready(0),
      S00_AXI_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      S00_AXI_rvalid => S00_AXI_rvalid(0),
      S00_AXI_wdata(511 downto 0) => S00_AXI_wdata(511 downto 0),
      S00_AXI_wlast => S00_AXI_wlast(0),
      S00_AXI_wready => S00_AXI_wready(0),
      S00_AXI_wstrb(63 downto 0) => S00_AXI_wstrb(63 downto 0),
      S00_AXI_wvalid => S00_AXI_wvalid(0),
      aclk => aclk,
      aclk1 => hbm_aclk,
      aresetn => aresetn
    );
slice0_23: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice0_23_0
     port map (
      aclk => hbm_aclk,
      aresetn => aresetn1,
      m_axi_araddr(32 downto 0) => M_AXI_araddr(32 downto 0),
      m_axi_arburst(1 downto 0) => M_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => M_AXI_arcache(3 downto 0),
      m_axi_arlen(3 downto 0) => M_AXI_arlen(3 downto 0),
      m_axi_arlock(1 downto 0) => M_AXI_arlock(1 downto 0),
      m_axi_arprot(2 downto 0) => M_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => M_AXI_arqos(3 downto 0),
      m_axi_arready => M_AXI_arready,
      m_axi_arsize(2 downto 0) => NLW_slice0_23_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_arvalid => M_AXI_arvalid,
      m_axi_awaddr(32 downto 0) => M_AXI_awaddr(32 downto 0),
      m_axi_awburst(1 downto 0) => M_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => M_AXI_awcache(3 downto 0),
      m_axi_awlen(3 downto 0) => M_AXI_awlen(3 downto 0),
      m_axi_awlock(1 downto 0) => M_AXI_awlock(1 downto 0),
      m_axi_awprot(2 downto 0) => M_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => M_AXI_awqos(3 downto 0),
      m_axi_awready => M_AXI_awready,
      m_axi_awsize(2 downto 0) => NLW_slice0_23_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awvalid => M_AXI_awvalid,
      m_axi_bready => M_AXI_bready,
      m_axi_bresp(1 downto 0) => M_AXI_bresp(1 downto 0),
      m_axi_bvalid => M_AXI_bvalid,
      m_axi_rdata(255 downto 0) => M_AXI_rdata(255 downto 0),
      m_axi_rlast => M_AXI_rlast,
      m_axi_rready => M_AXI_rready,
      m_axi_rresp(1 downto 0) => M_AXI_rresp(1 downto 0),
      m_axi_rvalid => M_AXI_rvalid,
      m_axi_wdata(255 downto 0) => M_AXI_wdata(255 downto 0),
      m_axi_wlast => M_AXI_wlast,
      m_axi_wready => M_AXI_wready,
      m_axi_wstrb(31 downto 0) => M_AXI_wstrb(31 downto 0),
      m_axi_wvalid => M_AXI_wvalid,
      s_axi_araddr(32 downto 0) => interconnect0_23_M00_AXI_ARADDR(32 downto 0),
      s_axi_arburst(1 downto 0) => interconnect0_23_M00_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => interconnect0_23_M00_AXI_ARCACHE(3 downto 0),
      s_axi_arlen(3 downto 0) => interconnect0_23_M00_AXI_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => interconnect0_23_M00_AXI_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => interconnect0_23_M00_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => interconnect0_23_M00_AXI_ARQOS(3 downto 0),
      s_axi_arready => interconnect0_23_M00_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => interconnect0_23_M00_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => interconnect0_23_M00_AXI_ARVALID,
      s_axi_awaddr(32 downto 0) => interconnect0_23_M00_AXI_AWADDR(32 downto 0),
      s_axi_awburst(1 downto 0) => interconnect0_23_M00_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => interconnect0_23_M00_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(3 downto 0) => interconnect0_23_M00_AXI_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => interconnect0_23_M00_AXI_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => interconnect0_23_M00_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => interconnect0_23_M00_AXI_AWQOS(3 downto 0),
      s_axi_awready => interconnect0_23_M00_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => interconnect0_23_M00_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => interconnect0_23_M00_AXI_AWVALID,
      s_axi_bready => interconnect0_23_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => interconnect0_23_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => interconnect0_23_M00_AXI_BVALID,
      s_axi_rdata(255 downto 0) => interconnect0_23_M00_AXI_RDATA(255 downto 0),
      s_axi_rlast => interconnect0_23_M00_AXI_RLAST,
      s_axi_rready => interconnect0_23_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => interconnect0_23_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => interconnect0_23_M00_AXI_RVALID,
      s_axi_wdata(255 downto 0) => interconnect0_23_M00_AXI_WDATA(255 downto 0),
      s_axi_wlast => interconnect0_23_M00_AXI_WLAST,
      s_axi_wready => interconnect0_23_M00_AXI_WREADY,
      s_axi_wstrb(31 downto 0) => interconnect0_23_M00_AXI_WSTRB(31 downto 0),
      s_axi_wvalid => interconnect0_23_M00_AXI_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_24_imp_ZGQW91 is
  port (
    S04_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    aclk1 : in STD_LOGIC;
    hbm_aclk : in STD_LOGIC;
    aresetn1 : in STD_LOGIC;
    S04_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S04_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S04_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S04_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S04_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_24_imp_ZGQW91;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_24_imp_ZGQW91 is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect4_24_0 is
  port (
    aclk : in STD_LOGIC;
    aclk1 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect4_24_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice4_24_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice4_24_0;
  signal interconnect4_24_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal interconnect4_24_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect4_24_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect4_24_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect4_24_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect4_24_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect4_24_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect4_24_M00_AXI_ARREADY : STD_LOGIC;
  signal interconnect4_24_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect4_24_M00_AXI_ARVALID : STD_LOGIC;
  signal interconnect4_24_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal interconnect4_24_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect4_24_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect4_24_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect4_24_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect4_24_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect4_24_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect4_24_M00_AXI_AWREADY : STD_LOGIC;
  signal interconnect4_24_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect4_24_M00_AXI_AWVALID : STD_LOGIC;
  signal interconnect4_24_M00_AXI_BREADY : STD_LOGIC;
  signal interconnect4_24_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect4_24_M00_AXI_BVALID : STD_LOGIC;
  signal interconnect4_24_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal interconnect4_24_M00_AXI_RLAST : STD_LOGIC;
  signal interconnect4_24_M00_AXI_RREADY : STD_LOGIC;
  signal interconnect4_24_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect4_24_M00_AXI_RVALID : STD_LOGIC;
  signal interconnect4_24_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal interconnect4_24_M00_AXI_WLAST : STD_LOGIC;
  signal interconnect4_24_M00_AXI_WREADY : STD_LOGIC;
  signal interconnect4_24_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect4_24_M00_AXI_WVALID : STD_LOGIC;
  signal NLW_slice4_24_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_slice4_24_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of interconnect4_24 : label is "bd_c6ab,Vivado 2020.2";
  attribute X_CORE_INFO of slice4_24 : label is "axi_register_slice_v2_1_22_axi_register_slice,Vivado 2020.2";
begin
interconnect4_24: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect4_24_0
     port map (
      M00_AXI_araddr(32 downto 0) => interconnect4_24_M00_AXI_ARADDR(32 downto 0),
      M00_AXI_arburst(1 downto 0) => interconnect4_24_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => interconnect4_24_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(3 downto 0) => interconnect4_24_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => interconnect4_24_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => interconnect4_24_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => interconnect4_24_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => interconnect4_24_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => interconnect4_24_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => interconnect4_24_M00_AXI_ARVALID,
      M00_AXI_awaddr(32 downto 0) => interconnect4_24_M00_AXI_AWADDR(32 downto 0),
      M00_AXI_awburst(1 downto 0) => interconnect4_24_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => interconnect4_24_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(3 downto 0) => interconnect4_24_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => interconnect4_24_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => interconnect4_24_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => interconnect4_24_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => interconnect4_24_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => interconnect4_24_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => interconnect4_24_M00_AXI_AWVALID,
      M00_AXI_bready => interconnect4_24_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => interconnect4_24_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => interconnect4_24_M00_AXI_BVALID,
      M00_AXI_rdata(255 downto 0) => interconnect4_24_M00_AXI_RDATA(255 downto 0),
      M00_AXI_rlast => interconnect4_24_M00_AXI_RLAST,
      M00_AXI_rready => interconnect4_24_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => interconnect4_24_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => interconnect4_24_M00_AXI_RVALID,
      M00_AXI_wdata(255 downto 0) => interconnect4_24_M00_AXI_WDATA(255 downto 0),
      M00_AXI_wlast => interconnect4_24_M00_AXI_WLAST,
      M00_AXI_wready => interconnect4_24_M00_AXI_WREADY,
      M00_AXI_wstrb(31 downto 0) => interconnect4_24_M00_AXI_WSTRB(31 downto 0),
      M00_AXI_wvalid => interconnect4_24_M00_AXI_WVALID,
      S00_AXI_araddr(63 downto 0) => S04_AXI_araddr(63 downto 0),
      S00_AXI_arburst(1 downto 0) => S04_AXI_arburst(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S04_AXI_arcache(3 downto 0),
      S00_AXI_arlen(7 downto 0) => S04_AXI_arlen(7 downto 0),
      S00_AXI_arlock(0) => S04_AXI_arlock(0),
      S00_AXI_arprot(2 downto 0) => S04_AXI_arprot(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S04_AXI_arqos(3 downto 0),
      S00_AXI_arready => S04_AXI_arready(0),
      S00_AXI_arsize(2 downto 0) => S04_AXI_arsize(2 downto 0),
      S00_AXI_arvalid => S04_AXI_arvalid(0),
      S00_AXI_awaddr(63 downto 0) => S04_AXI_awaddr(63 downto 0),
      S00_AXI_awburst(1 downto 0) => S04_AXI_awburst(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S04_AXI_awcache(3 downto 0),
      S00_AXI_awlen(7 downto 0) => S04_AXI_awlen(7 downto 0),
      S00_AXI_awlock(0) => S04_AXI_awlock(0),
      S00_AXI_awprot(2 downto 0) => S04_AXI_awprot(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S04_AXI_awqos(3 downto 0),
      S00_AXI_awready => S04_AXI_awready(0),
      S00_AXI_awsize(2 downto 0) => S04_AXI_awsize(2 downto 0),
      S00_AXI_awvalid => S04_AXI_awvalid(0),
      S00_AXI_bready => S04_AXI_bready(0),
      S00_AXI_bresp(1 downto 0) => S04_AXI_bresp(1 downto 0),
      S00_AXI_bvalid => S04_AXI_bvalid(0),
      S00_AXI_rdata(31 downto 0) => S04_AXI_rdata(31 downto 0),
      S00_AXI_rlast => S04_AXI_rlast(0),
      S00_AXI_rready => S04_AXI_rready(0),
      S00_AXI_rresp(1 downto 0) => S04_AXI_rresp(1 downto 0),
      S00_AXI_rvalid => S04_AXI_rvalid(0),
      S00_AXI_wdata(31 downto 0) => S04_AXI_wdata(31 downto 0),
      S00_AXI_wlast => S04_AXI_wlast(0),
      S00_AXI_wready => S04_AXI_wready(0),
      S00_AXI_wstrb(3 downto 0) => S04_AXI_wstrb(3 downto 0),
      S00_AXI_wvalid => S04_AXI_wvalid(0),
      aclk => aclk1,
      aclk1 => hbm_aclk,
      aresetn => aresetn1
    );
slice4_24: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice4_24_0
     port map (
      aclk => hbm_aclk,
      aresetn => interconnect_aresetn(0),
      m_axi_araddr(32 downto 0) => M_AXI_araddr(32 downto 0),
      m_axi_arburst(1 downto 0) => M_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => M_AXI_arcache(3 downto 0),
      m_axi_arlen(3 downto 0) => M_AXI_arlen(3 downto 0),
      m_axi_arlock(1 downto 0) => M_AXI_arlock(1 downto 0),
      m_axi_arprot(2 downto 0) => M_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => M_AXI_arqos(3 downto 0),
      m_axi_arready => M_AXI_arready,
      m_axi_arsize(2 downto 0) => NLW_slice4_24_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_arvalid => M_AXI_arvalid,
      m_axi_awaddr(32 downto 0) => M_AXI_awaddr(32 downto 0),
      m_axi_awburst(1 downto 0) => M_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => M_AXI_awcache(3 downto 0),
      m_axi_awlen(3 downto 0) => M_AXI_awlen(3 downto 0),
      m_axi_awlock(1 downto 0) => M_AXI_awlock(1 downto 0),
      m_axi_awprot(2 downto 0) => M_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => M_AXI_awqos(3 downto 0),
      m_axi_awready => M_AXI_awready,
      m_axi_awsize(2 downto 0) => NLW_slice4_24_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awvalid => M_AXI_awvalid,
      m_axi_bready => M_AXI_bready,
      m_axi_bresp(1 downto 0) => M_AXI_bresp(1 downto 0),
      m_axi_bvalid => M_AXI_bvalid,
      m_axi_rdata(255 downto 0) => M_AXI_rdata(255 downto 0),
      m_axi_rlast => M_AXI_rlast,
      m_axi_rready => M_AXI_rready,
      m_axi_rresp(1 downto 0) => M_AXI_rresp(1 downto 0),
      m_axi_rvalid => M_AXI_rvalid,
      m_axi_wdata(255 downto 0) => M_AXI_wdata(255 downto 0),
      m_axi_wlast => M_AXI_wlast,
      m_axi_wready => M_AXI_wready,
      m_axi_wstrb(31 downto 0) => M_AXI_wstrb(31 downto 0),
      m_axi_wvalid => M_AXI_wvalid,
      s_axi_araddr(32 downto 0) => interconnect4_24_M00_AXI_ARADDR(32 downto 0),
      s_axi_arburst(1 downto 0) => interconnect4_24_M00_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => interconnect4_24_M00_AXI_ARCACHE(3 downto 0),
      s_axi_arlen(3 downto 0) => interconnect4_24_M00_AXI_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => interconnect4_24_M00_AXI_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => interconnect4_24_M00_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => interconnect4_24_M00_AXI_ARQOS(3 downto 0),
      s_axi_arready => interconnect4_24_M00_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => interconnect4_24_M00_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => interconnect4_24_M00_AXI_ARVALID,
      s_axi_awaddr(32 downto 0) => interconnect4_24_M00_AXI_AWADDR(32 downto 0),
      s_axi_awburst(1 downto 0) => interconnect4_24_M00_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => interconnect4_24_M00_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(3 downto 0) => interconnect4_24_M00_AXI_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => interconnect4_24_M00_AXI_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => interconnect4_24_M00_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => interconnect4_24_M00_AXI_AWQOS(3 downto 0),
      s_axi_awready => interconnect4_24_M00_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => interconnect4_24_M00_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => interconnect4_24_M00_AXI_AWVALID,
      s_axi_bready => interconnect4_24_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => interconnect4_24_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => interconnect4_24_M00_AXI_BVALID,
      s_axi_rdata(255 downto 0) => interconnect4_24_M00_AXI_RDATA(255 downto 0),
      s_axi_rlast => interconnect4_24_M00_AXI_RLAST,
      s_axi_rready => interconnect4_24_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => interconnect4_24_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => interconnect4_24_M00_AXI_RVALID,
      s_axi_wdata(255 downto 0) => interconnect4_24_M00_AXI_WDATA(255 downto 0),
      s_axi_wlast => interconnect4_24_M00_AXI_WLAST,
      s_axi_wready => interconnect4_24_M00_AXI_WREADY,
      s_axi_wstrb(31 downto 0) => interconnect4_24_M00_AXI_WSTRB(31 downto 0),
      s_axi_wvalid => interconnect4_24_M00_AXI_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_25_imp_1DSSZ8B is
  port (
    S05_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S05_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    aclk1 : in STD_LOGIC;
    hbm_aclk : in STD_LOGIC;
    aresetn1 : in STD_LOGIC;
    S05_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S05_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S05_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S05_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S05_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S05_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_25_imp_1DSSZ8B;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_25_imp_1DSSZ8B is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect5_25_0 is
  port (
    aclk : in STD_LOGIC;
    aclk1 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect5_25_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice5_25_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice5_25_0;
  signal interconnect5_25_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal interconnect5_25_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect5_25_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect5_25_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect5_25_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect5_25_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect5_25_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect5_25_M00_AXI_ARREADY : STD_LOGIC;
  signal interconnect5_25_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect5_25_M00_AXI_ARVALID : STD_LOGIC;
  signal interconnect5_25_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal interconnect5_25_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect5_25_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect5_25_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect5_25_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect5_25_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect5_25_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect5_25_M00_AXI_AWREADY : STD_LOGIC;
  signal interconnect5_25_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect5_25_M00_AXI_AWVALID : STD_LOGIC;
  signal interconnect5_25_M00_AXI_BREADY : STD_LOGIC;
  signal interconnect5_25_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect5_25_M00_AXI_BVALID : STD_LOGIC;
  signal interconnect5_25_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal interconnect5_25_M00_AXI_RLAST : STD_LOGIC;
  signal interconnect5_25_M00_AXI_RREADY : STD_LOGIC;
  signal interconnect5_25_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect5_25_M00_AXI_RVALID : STD_LOGIC;
  signal interconnect5_25_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal interconnect5_25_M00_AXI_WLAST : STD_LOGIC;
  signal interconnect5_25_M00_AXI_WREADY : STD_LOGIC;
  signal interconnect5_25_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect5_25_M00_AXI_WVALID : STD_LOGIC;
  signal NLW_slice5_25_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_slice5_25_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of interconnect5_25 : label is "bd_d7fb,Vivado 2020.2";
  attribute X_CORE_INFO of slice5_25 : label is "axi_register_slice_v2_1_22_axi_register_slice,Vivado 2020.2";
begin
interconnect5_25: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect5_25_0
     port map (
      M00_AXI_araddr(32 downto 0) => interconnect5_25_M00_AXI_ARADDR(32 downto 0),
      M00_AXI_arburst(1 downto 0) => interconnect5_25_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => interconnect5_25_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(3 downto 0) => interconnect5_25_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => interconnect5_25_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => interconnect5_25_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => interconnect5_25_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => interconnect5_25_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => interconnect5_25_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => interconnect5_25_M00_AXI_ARVALID,
      M00_AXI_awaddr(32 downto 0) => interconnect5_25_M00_AXI_AWADDR(32 downto 0),
      M00_AXI_awburst(1 downto 0) => interconnect5_25_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => interconnect5_25_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(3 downto 0) => interconnect5_25_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => interconnect5_25_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => interconnect5_25_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => interconnect5_25_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => interconnect5_25_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => interconnect5_25_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => interconnect5_25_M00_AXI_AWVALID,
      M00_AXI_bready => interconnect5_25_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => interconnect5_25_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => interconnect5_25_M00_AXI_BVALID,
      M00_AXI_rdata(255 downto 0) => interconnect5_25_M00_AXI_RDATA(255 downto 0),
      M00_AXI_rlast => interconnect5_25_M00_AXI_RLAST,
      M00_AXI_rready => interconnect5_25_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => interconnect5_25_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => interconnect5_25_M00_AXI_RVALID,
      M00_AXI_wdata(255 downto 0) => interconnect5_25_M00_AXI_WDATA(255 downto 0),
      M00_AXI_wlast => interconnect5_25_M00_AXI_WLAST,
      M00_AXI_wready => interconnect5_25_M00_AXI_WREADY,
      M00_AXI_wstrb(31 downto 0) => interconnect5_25_M00_AXI_WSTRB(31 downto 0),
      M00_AXI_wvalid => interconnect5_25_M00_AXI_WVALID,
      S00_AXI_araddr(63 downto 0) => S05_AXI_araddr(63 downto 0),
      S00_AXI_arburst(1 downto 0) => S05_AXI_arburst(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S05_AXI_arcache(3 downto 0),
      S00_AXI_arlen(7 downto 0) => S05_AXI_arlen(7 downto 0),
      S00_AXI_arlock(0) => S05_AXI_arlock(0),
      S00_AXI_arprot(2 downto 0) => S05_AXI_arprot(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S05_AXI_arqos(3 downto 0),
      S00_AXI_arready => S05_AXI_arready(0),
      S00_AXI_arsize(2 downto 0) => S05_AXI_arsize(2 downto 0),
      S00_AXI_arvalid => S05_AXI_arvalid(0),
      S00_AXI_awaddr(63 downto 0) => S05_AXI_awaddr(63 downto 0),
      S00_AXI_awburst(1 downto 0) => S05_AXI_awburst(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S05_AXI_awcache(3 downto 0),
      S00_AXI_awlen(7 downto 0) => S05_AXI_awlen(7 downto 0),
      S00_AXI_awlock(0) => S05_AXI_awlock(0),
      S00_AXI_awprot(2 downto 0) => S05_AXI_awprot(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S05_AXI_awqos(3 downto 0),
      S00_AXI_awready => S05_AXI_awready(0),
      S00_AXI_awsize(2 downto 0) => S05_AXI_awsize(2 downto 0),
      S00_AXI_awvalid => S05_AXI_awvalid(0),
      S00_AXI_bready => S05_AXI_bready(0),
      S00_AXI_bresp(1 downto 0) => S05_AXI_bresp(1 downto 0),
      S00_AXI_bvalid => S05_AXI_bvalid(0),
      S00_AXI_rdata(31 downto 0) => S05_AXI_rdata(31 downto 0),
      S00_AXI_rlast => S05_AXI_rlast(0),
      S00_AXI_rready => S05_AXI_rready(0),
      S00_AXI_rresp(1 downto 0) => S05_AXI_rresp(1 downto 0),
      S00_AXI_rvalid => S05_AXI_rvalid(0),
      S00_AXI_wdata(31 downto 0) => S05_AXI_wdata(31 downto 0),
      S00_AXI_wlast => S05_AXI_wlast(0),
      S00_AXI_wready => S05_AXI_wready(0),
      S00_AXI_wstrb(3 downto 0) => S05_AXI_wstrb(3 downto 0),
      S00_AXI_wvalid => S05_AXI_wvalid(0),
      aclk => aclk1,
      aclk1 => hbm_aclk,
      aresetn => aresetn1
    );
slice5_25: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice5_25_0
     port map (
      aclk => hbm_aclk,
      aresetn => interconnect_aresetn(0),
      m_axi_araddr(32 downto 0) => M_AXI_araddr(32 downto 0),
      m_axi_arburst(1 downto 0) => M_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => M_AXI_arcache(3 downto 0),
      m_axi_arlen(3 downto 0) => M_AXI_arlen(3 downto 0),
      m_axi_arlock(1 downto 0) => M_AXI_arlock(1 downto 0),
      m_axi_arprot(2 downto 0) => M_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => M_AXI_arqos(3 downto 0),
      m_axi_arready => M_AXI_arready,
      m_axi_arsize(2 downto 0) => NLW_slice5_25_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_arvalid => M_AXI_arvalid,
      m_axi_awaddr(32 downto 0) => M_AXI_awaddr(32 downto 0),
      m_axi_awburst(1 downto 0) => M_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => M_AXI_awcache(3 downto 0),
      m_axi_awlen(3 downto 0) => M_AXI_awlen(3 downto 0),
      m_axi_awlock(1 downto 0) => M_AXI_awlock(1 downto 0),
      m_axi_awprot(2 downto 0) => M_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => M_AXI_awqos(3 downto 0),
      m_axi_awready => M_AXI_awready,
      m_axi_awsize(2 downto 0) => NLW_slice5_25_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awvalid => M_AXI_awvalid,
      m_axi_bready => M_AXI_bready,
      m_axi_bresp(1 downto 0) => M_AXI_bresp(1 downto 0),
      m_axi_bvalid => M_AXI_bvalid,
      m_axi_rdata(255 downto 0) => M_AXI_rdata(255 downto 0),
      m_axi_rlast => M_AXI_rlast,
      m_axi_rready => M_AXI_rready,
      m_axi_rresp(1 downto 0) => M_AXI_rresp(1 downto 0),
      m_axi_rvalid => M_AXI_rvalid,
      m_axi_wdata(255 downto 0) => M_AXI_wdata(255 downto 0),
      m_axi_wlast => M_AXI_wlast,
      m_axi_wready => M_AXI_wready,
      m_axi_wstrb(31 downto 0) => M_AXI_wstrb(31 downto 0),
      m_axi_wvalid => M_AXI_wvalid,
      s_axi_araddr(32 downto 0) => interconnect5_25_M00_AXI_ARADDR(32 downto 0),
      s_axi_arburst(1 downto 0) => interconnect5_25_M00_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => interconnect5_25_M00_AXI_ARCACHE(3 downto 0),
      s_axi_arlen(3 downto 0) => interconnect5_25_M00_AXI_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => interconnect5_25_M00_AXI_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => interconnect5_25_M00_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => interconnect5_25_M00_AXI_ARQOS(3 downto 0),
      s_axi_arready => interconnect5_25_M00_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => interconnect5_25_M00_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => interconnect5_25_M00_AXI_ARVALID,
      s_axi_awaddr(32 downto 0) => interconnect5_25_M00_AXI_AWADDR(32 downto 0),
      s_axi_awburst(1 downto 0) => interconnect5_25_M00_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => interconnect5_25_M00_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(3 downto 0) => interconnect5_25_M00_AXI_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => interconnect5_25_M00_AXI_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => interconnect5_25_M00_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => interconnect5_25_M00_AXI_AWQOS(3 downto 0),
      s_axi_awready => interconnect5_25_M00_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => interconnect5_25_M00_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => interconnect5_25_M00_AXI_AWVALID,
      s_axi_bready => interconnect5_25_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => interconnect5_25_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => interconnect5_25_M00_AXI_BVALID,
      s_axi_rdata(255 downto 0) => interconnect5_25_M00_AXI_RDATA(255 downto 0),
      s_axi_rlast => interconnect5_25_M00_AXI_RLAST,
      s_axi_rready => interconnect5_25_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => interconnect5_25_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => interconnect5_25_M00_AXI_RVALID,
      s_axi_wdata(255 downto 0) => interconnect5_25_M00_AXI_WDATA(255 downto 0),
      s_axi_wlast => interconnect5_25_M00_AXI_WLAST,
      s_axi_wready => interconnect5_25_M00_AXI_WREADY,
      s_axi_wstrb(31 downto 0) => interconnect5_25_M00_AXI_WSTRB(31 downto 0),
      s_axi_wvalid => interconnect5_25_M00_AXI_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_26_imp_H6UVUG is
  port (
    S06_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S06_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S06_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S06_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    aclk1 : in STD_LOGIC;
    hbm_aclk : in STD_LOGIC;
    aresetn1 : in STD_LOGIC;
    S06_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S06_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S06_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S06_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S06_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S06_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S06_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S06_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S06_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S06_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S06_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S06_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S06_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S06_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S06_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S06_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S06_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_26_imp_H6UVUG;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_26_imp_H6UVUG is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect6_26_0 is
  port (
    aclk : in STD_LOGIC;
    aclk1 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect6_26_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice6_26_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice6_26_0;
  signal interconnect6_26_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal interconnect6_26_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect6_26_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect6_26_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect6_26_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect6_26_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect6_26_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect6_26_M00_AXI_ARREADY : STD_LOGIC;
  signal interconnect6_26_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect6_26_M00_AXI_ARVALID : STD_LOGIC;
  signal interconnect6_26_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal interconnect6_26_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect6_26_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect6_26_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect6_26_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect6_26_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect6_26_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect6_26_M00_AXI_AWREADY : STD_LOGIC;
  signal interconnect6_26_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect6_26_M00_AXI_AWVALID : STD_LOGIC;
  signal interconnect6_26_M00_AXI_BREADY : STD_LOGIC;
  signal interconnect6_26_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect6_26_M00_AXI_BVALID : STD_LOGIC;
  signal interconnect6_26_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal interconnect6_26_M00_AXI_RLAST : STD_LOGIC;
  signal interconnect6_26_M00_AXI_RREADY : STD_LOGIC;
  signal interconnect6_26_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect6_26_M00_AXI_RVALID : STD_LOGIC;
  signal interconnect6_26_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal interconnect6_26_M00_AXI_WLAST : STD_LOGIC;
  signal interconnect6_26_M00_AXI_WREADY : STD_LOGIC;
  signal interconnect6_26_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect6_26_M00_AXI_WVALID : STD_LOGIC;
  signal NLW_slice6_26_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_slice6_26_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of interconnect6_26 : label is "bd_e40b,Vivado 2020.2";
  attribute X_CORE_INFO of slice6_26 : label is "axi_register_slice_v2_1_22_axi_register_slice,Vivado 2020.2";
begin
interconnect6_26: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_interconnect6_26_0
     port map (
      M00_AXI_araddr(32 downto 0) => interconnect6_26_M00_AXI_ARADDR(32 downto 0),
      M00_AXI_arburst(1 downto 0) => interconnect6_26_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => interconnect6_26_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(3 downto 0) => interconnect6_26_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => interconnect6_26_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => interconnect6_26_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => interconnect6_26_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => interconnect6_26_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => interconnect6_26_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => interconnect6_26_M00_AXI_ARVALID,
      M00_AXI_awaddr(32 downto 0) => interconnect6_26_M00_AXI_AWADDR(32 downto 0),
      M00_AXI_awburst(1 downto 0) => interconnect6_26_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => interconnect6_26_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(3 downto 0) => interconnect6_26_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => interconnect6_26_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => interconnect6_26_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => interconnect6_26_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => interconnect6_26_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => interconnect6_26_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => interconnect6_26_M00_AXI_AWVALID,
      M00_AXI_bready => interconnect6_26_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => interconnect6_26_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => interconnect6_26_M00_AXI_BVALID,
      M00_AXI_rdata(255 downto 0) => interconnect6_26_M00_AXI_RDATA(255 downto 0),
      M00_AXI_rlast => interconnect6_26_M00_AXI_RLAST,
      M00_AXI_rready => interconnect6_26_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => interconnect6_26_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => interconnect6_26_M00_AXI_RVALID,
      M00_AXI_wdata(255 downto 0) => interconnect6_26_M00_AXI_WDATA(255 downto 0),
      M00_AXI_wlast => interconnect6_26_M00_AXI_WLAST,
      M00_AXI_wready => interconnect6_26_M00_AXI_WREADY,
      M00_AXI_wstrb(31 downto 0) => interconnect6_26_M00_AXI_WSTRB(31 downto 0),
      M00_AXI_wvalid => interconnect6_26_M00_AXI_WVALID,
      S00_AXI_araddr(63 downto 0) => S06_AXI_araddr(63 downto 0),
      S00_AXI_arburst(1 downto 0) => S06_AXI_arburst(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S06_AXI_arcache(3 downto 0),
      S00_AXI_arlen(7 downto 0) => S06_AXI_arlen(7 downto 0),
      S00_AXI_arlock(0) => S06_AXI_arlock(0),
      S00_AXI_arprot(2 downto 0) => S06_AXI_arprot(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S06_AXI_arqos(3 downto 0),
      S00_AXI_arready => S06_AXI_arready(0),
      S00_AXI_arsize(2 downto 0) => S06_AXI_arsize(2 downto 0),
      S00_AXI_arvalid => S06_AXI_arvalid(0),
      S00_AXI_awaddr(63 downto 0) => S06_AXI_awaddr(63 downto 0),
      S00_AXI_awburst(1 downto 0) => S06_AXI_awburst(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S06_AXI_awcache(3 downto 0),
      S00_AXI_awlen(7 downto 0) => S06_AXI_awlen(7 downto 0),
      S00_AXI_awlock(0) => S06_AXI_awlock(0),
      S00_AXI_awprot(2 downto 0) => S06_AXI_awprot(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S06_AXI_awqos(3 downto 0),
      S00_AXI_awready => S06_AXI_awready(0),
      S00_AXI_awsize(2 downto 0) => S06_AXI_awsize(2 downto 0),
      S00_AXI_awvalid => S06_AXI_awvalid(0),
      S00_AXI_bready => S06_AXI_bready(0),
      S00_AXI_bresp(1 downto 0) => S06_AXI_bresp(1 downto 0),
      S00_AXI_bvalid => S06_AXI_bvalid(0),
      S00_AXI_rdata(63 downto 0) => S06_AXI_rdata(63 downto 0),
      S00_AXI_rlast => S06_AXI_rlast(0),
      S00_AXI_rready => S06_AXI_rready(0),
      S00_AXI_rresp(1 downto 0) => S06_AXI_rresp(1 downto 0),
      S00_AXI_rvalid => S06_AXI_rvalid(0),
      S00_AXI_wdata(63 downto 0) => S06_AXI_wdata(63 downto 0),
      S00_AXI_wlast => S06_AXI_wlast(0),
      S00_AXI_wready => S06_AXI_wready(0),
      S00_AXI_wstrb(7 downto 0) => S06_AXI_wstrb(7 downto 0),
      S00_AXI_wvalid => S06_AXI_wvalid(0),
      aclk => aclk1,
      aclk1 => hbm_aclk,
      aresetn => aresetn1
    );
slice6_26: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_slice6_26_0
     port map (
      aclk => hbm_aclk,
      aresetn => interconnect_aresetn(0),
      m_axi_araddr(32 downto 0) => M_AXI_araddr(32 downto 0),
      m_axi_arburst(1 downto 0) => M_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => M_AXI_arcache(3 downto 0),
      m_axi_arlen(3 downto 0) => M_AXI_arlen(3 downto 0),
      m_axi_arlock(1 downto 0) => M_AXI_arlock(1 downto 0),
      m_axi_arprot(2 downto 0) => M_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => M_AXI_arqos(3 downto 0),
      m_axi_arready => M_AXI_arready,
      m_axi_arsize(2 downto 0) => NLW_slice6_26_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_arvalid => M_AXI_arvalid,
      m_axi_awaddr(32 downto 0) => M_AXI_awaddr(32 downto 0),
      m_axi_awburst(1 downto 0) => M_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => M_AXI_awcache(3 downto 0),
      m_axi_awlen(3 downto 0) => M_AXI_awlen(3 downto 0),
      m_axi_awlock(1 downto 0) => M_AXI_awlock(1 downto 0),
      m_axi_awprot(2 downto 0) => M_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => M_AXI_awqos(3 downto 0),
      m_axi_awready => M_AXI_awready,
      m_axi_awsize(2 downto 0) => NLW_slice6_26_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awvalid => M_AXI_awvalid,
      m_axi_bready => M_AXI_bready,
      m_axi_bresp(1 downto 0) => M_AXI_bresp(1 downto 0),
      m_axi_bvalid => M_AXI_bvalid,
      m_axi_rdata(255 downto 0) => M_AXI_rdata(255 downto 0),
      m_axi_rlast => M_AXI_rlast,
      m_axi_rready => M_AXI_rready,
      m_axi_rresp(1 downto 0) => M_AXI_rresp(1 downto 0),
      m_axi_rvalid => M_AXI_rvalid,
      m_axi_wdata(255 downto 0) => M_AXI_wdata(255 downto 0),
      m_axi_wlast => M_AXI_wlast,
      m_axi_wready => M_AXI_wready,
      m_axi_wstrb(31 downto 0) => M_AXI_wstrb(31 downto 0),
      m_axi_wvalid => M_AXI_wvalid,
      s_axi_araddr(32 downto 0) => interconnect6_26_M00_AXI_ARADDR(32 downto 0),
      s_axi_arburst(1 downto 0) => interconnect6_26_M00_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => interconnect6_26_M00_AXI_ARCACHE(3 downto 0),
      s_axi_arlen(3 downto 0) => interconnect6_26_M00_AXI_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => interconnect6_26_M00_AXI_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => interconnect6_26_M00_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => interconnect6_26_M00_AXI_ARQOS(3 downto 0),
      s_axi_arready => interconnect6_26_M00_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => interconnect6_26_M00_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => interconnect6_26_M00_AXI_ARVALID,
      s_axi_awaddr(32 downto 0) => interconnect6_26_M00_AXI_AWADDR(32 downto 0),
      s_axi_awburst(1 downto 0) => interconnect6_26_M00_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => interconnect6_26_M00_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(3 downto 0) => interconnect6_26_M00_AXI_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => interconnect6_26_M00_AXI_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => interconnect6_26_M00_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => interconnect6_26_M00_AXI_AWQOS(3 downto 0),
      s_axi_awready => interconnect6_26_M00_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => interconnect6_26_M00_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => interconnect6_26_M00_AXI_AWVALID,
      s_axi_bready => interconnect6_26_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => interconnect6_26_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => interconnect6_26_M00_AXI_BVALID,
      s_axi_rdata(255 downto 0) => interconnect6_26_M00_AXI_RDATA(255 downto 0),
      s_axi_rlast => interconnect6_26_M00_AXI_RLAST,
      s_axi_rready => interconnect6_26_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => interconnect6_26_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => interconnect6_26_M00_AXI_RVALID,
      s_axi_wdata(255 downto 0) => interconnect6_26_M00_AXI_WDATA(255 downto 0),
      s_axi_wlast => interconnect6_26_M00_AXI_WLAST,
      s_axi_wready => interconnect6_26_M00_AXI_WREADY,
      s_axi_wstrb(31 downto 0) => interconnect6_26_M00_AXI_WSTRB(31 downto 0),
      s_axi_wvalid => interconnect6_26_M00_AXI_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca is
  port (
    DRAM_0_STAT_TEMP : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DRAM_1_STAT_TEMP : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DRAM_STAT_CATTRIP : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S02_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S02_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S02_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S03_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S03_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S03_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S03_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S04_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S04_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S04_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S04_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S05_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S05_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S05_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S05_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S05_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S05_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S06_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S06_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S06_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S06_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S06_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S06_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S06_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S06_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S06_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S06_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S06_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S06_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S06_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S06_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S06_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S06_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S06_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S06_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S06_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_araddr : in STD_LOGIC_VECTOR ( 22 downto 0 );
    S_AXI_CTRL_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_awaddr : in STD_LOGIC_VECTOR ( 22 downto 0 );
    S_AXI_CTRL_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CTRL_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTRL_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CTRL_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTRL_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    aclk1 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aresetn1 : in STD_LOGIC;
    ctrl_aclk : in STD_LOGIC;
    ctrl_aresetn : in STD_LOGIC;
    hbm_aclk : in STD_LOGIC;
    hbm_aresetn : in STD_LOGIC;
    hbm_mc_init_seq_complete : out STD_LOGIC;
    hbm_ref_clk : in STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca : entity is "pfm_dynamic_hmss_0_0.hwdef";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_axi_apb_bridge_inst_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 22 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 22 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_apb_paddr : out STD_LOGIC_VECTOR ( 22 downto 0 );
    m_apb_psel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_apb_penable : out STD_LOGIC;
    m_apb_pwrite : out STD_LOGIC;
    m_apb_pwdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_apb_pready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_apb_prdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_apb_prdata2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_apb_pslverr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_axi_apb_bridge_inst_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_hbm_inst_0 is
  port (
    HBM_REF_CLK_0 : in STD_LOGIC;
    HBM_REF_CLK_1 : in STD_LOGIC;
    AXI_20_ACLK : in STD_LOGIC;
    AXI_20_ARESET_N : in STD_LOGIC;
    AXI_20_ARADDR : in STD_LOGIC_VECTOR ( 32 downto 0 );
    AXI_20_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_20_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_20_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_20_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_20_ARVALID : in STD_LOGIC;
    AXI_20_AWADDR : in STD_LOGIC_VECTOR ( 32 downto 0 );
    AXI_20_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_20_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_20_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_20_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_20_AWVALID : in STD_LOGIC;
    AXI_20_RREADY : in STD_LOGIC;
    AXI_20_BREADY : in STD_LOGIC;
    AXI_20_WDATA : in STD_LOGIC_VECTOR ( 255 downto 0 );
    AXI_20_WLAST : in STD_LOGIC;
    AXI_20_WSTRB : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_20_WDATA_PARITY : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_20_WVALID : in STD_LOGIC;
    AXI_21_ACLK : in STD_LOGIC;
    AXI_21_ARESET_N : in STD_LOGIC;
    AXI_21_ARADDR : in STD_LOGIC_VECTOR ( 32 downto 0 );
    AXI_21_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_21_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_21_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_21_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_21_ARVALID : in STD_LOGIC;
    AXI_21_AWADDR : in STD_LOGIC_VECTOR ( 32 downto 0 );
    AXI_21_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_21_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_21_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_21_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_21_AWVALID : in STD_LOGIC;
    AXI_21_RREADY : in STD_LOGIC;
    AXI_21_BREADY : in STD_LOGIC;
    AXI_21_WDATA : in STD_LOGIC_VECTOR ( 255 downto 0 );
    AXI_21_WLAST : in STD_LOGIC;
    AXI_21_WSTRB : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_21_WDATA_PARITY : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_21_WVALID : in STD_LOGIC;
    AXI_22_ACLK : in STD_LOGIC;
    AXI_22_ARESET_N : in STD_LOGIC;
    AXI_22_ARADDR : in STD_LOGIC_VECTOR ( 32 downto 0 );
    AXI_22_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_22_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_22_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_22_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_22_ARVALID : in STD_LOGIC;
    AXI_22_AWADDR : in STD_LOGIC_VECTOR ( 32 downto 0 );
    AXI_22_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_22_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_22_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_22_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_22_AWVALID : in STD_LOGIC;
    AXI_22_RREADY : in STD_LOGIC;
    AXI_22_BREADY : in STD_LOGIC;
    AXI_22_WDATA : in STD_LOGIC_VECTOR ( 255 downto 0 );
    AXI_22_WLAST : in STD_LOGIC;
    AXI_22_WSTRB : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_22_WDATA_PARITY : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_22_WVALID : in STD_LOGIC;
    AXI_23_ACLK : in STD_LOGIC;
    AXI_23_ARESET_N : in STD_LOGIC;
    AXI_23_ARADDR : in STD_LOGIC_VECTOR ( 32 downto 0 );
    AXI_23_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_23_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_23_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_23_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_23_ARVALID : in STD_LOGIC;
    AXI_23_AWADDR : in STD_LOGIC_VECTOR ( 32 downto 0 );
    AXI_23_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_23_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_23_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_23_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_23_AWVALID : in STD_LOGIC;
    AXI_23_RREADY : in STD_LOGIC;
    AXI_23_BREADY : in STD_LOGIC;
    AXI_23_WDATA : in STD_LOGIC_VECTOR ( 255 downto 0 );
    AXI_23_WLAST : in STD_LOGIC;
    AXI_23_WSTRB : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_23_WDATA_PARITY : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_23_WVALID : in STD_LOGIC;
    AXI_24_ACLK : in STD_LOGIC;
    AXI_24_ARESET_N : in STD_LOGIC;
    AXI_24_ARADDR : in STD_LOGIC_VECTOR ( 32 downto 0 );
    AXI_24_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_24_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_24_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_24_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_24_ARVALID : in STD_LOGIC;
    AXI_24_AWADDR : in STD_LOGIC_VECTOR ( 32 downto 0 );
    AXI_24_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_24_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_24_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_24_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_24_AWVALID : in STD_LOGIC;
    AXI_24_RREADY : in STD_LOGIC;
    AXI_24_BREADY : in STD_LOGIC;
    AXI_24_WDATA : in STD_LOGIC_VECTOR ( 255 downto 0 );
    AXI_24_WLAST : in STD_LOGIC;
    AXI_24_WSTRB : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_24_WDATA_PARITY : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_24_WVALID : in STD_LOGIC;
    AXI_25_ACLK : in STD_LOGIC;
    AXI_25_ARESET_N : in STD_LOGIC;
    AXI_25_ARADDR : in STD_LOGIC_VECTOR ( 32 downto 0 );
    AXI_25_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_25_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_25_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_25_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_25_ARVALID : in STD_LOGIC;
    AXI_25_AWADDR : in STD_LOGIC_VECTOR ( 32 downto 0 );
    AXI_25_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_25_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_25_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_25_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_25_AWVALID : in STD_LOGIC;
    AXI_25_RREADY : in STD_LOGIC;
    AXI_25_BREADY : in STD_LOGIC;
    AXI_25_WDATA : in STD_LOGIC_VECTOR ( 255 downto 0 );
    AXI_25_WLAST : in STD_LOGIC;
    AXI_25_WSTRB : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_25_WDATA_PARITY : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_25_WVALID : in STD_LOGIC;
    AXI_26_ACLK : in STD_LOGIC;
    AXI_26_ARESET_N : in STD_LOGIC;
    AXI_26_ARADDR : in STD_LOGIC_VECTOR ( 32 downto 0 );
    AXI_26_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_26_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_26_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_26_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_26_ARVALID : in STD_LOGIC;
    AXI_26_AWADDR : in STD_LOGIC_VECTOR ( 32 downto 0 );
    AXI_26_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_26_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_26_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_26_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_26_AWVALID : in STD_LOGIC;
    AXI_26_RREADY : in STD_LOGIC;
    AXI_26_BREADY : in STD_LOGIC;
    AXI_26_WDATA : in STD_LOGIC_VECTOR ( 255 downto 0 );
    AXI_26_WLAST : in STD_LOGIC;
    AXI_26_WSTRB : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_26_WDATA_PARITY : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_26_WVALID : in STD_LOGIC;
    APB_0_PWDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    APB_0_PADDR : in STD_LOGIC_VECTOR ( 21 downto 0 );
    APB_0_PCLK : in STD_LOGIC;
    APB_0_PENABLE : in STD_LOGIC;
    APB_0_PRESET_N : in STD_LOGIC;
    APB_0_PSEL : in STD_LOGIC;
    APB_0_PWRITE : in STD_LOGIC;
    APB_1_PWDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    APB_1_PADDR : in STD_LOGIC_VECTOR ( 21 downto 0 );
    APB_1_PCLK : in STD_LOGIC;
    APB_1_PENABLE : in STD_LOGIC;
    APB_1_PRESET_N : in STD_LOGIC;
    APB_1_PSEL : in STD_LOGIC;
    APB_1_PWRITE : in STD_LOGIC;
    AXI_20_ARREADY : out STD_LOGIC;
    AXI_20_AWREADY : out STD_LOGIC;
    AXI_20_RDATA_PARITY : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_20_RDATA : out STD_LOGIC_VECTOR ( 255 downto 0 );
    AXI_20_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_20_RLAST : out STD_LOGIC;
    AXI_20_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_20_RVALID : out STD_LOGIC;
    AXI_20_WREADY : out STD_LOGIC;
    AXI_20_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_20_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_20_BVALID : out STD_LOGIC;
    AXI_21_ARREADY : out STD_LOGIC;
    AXI_21_AWREADY : out STD_LOGIC;
    AXI_21_RDATA_PARITY : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_21_RDATA : out STD_LOGIC_VECTOR ( 255 downto 0 );
    AXI_21_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_21_RLAST : out STD_LOGIC;
    AXI_21_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_21_RVALID : out STD_LOGIC;
    AXI_21_WREADY : out STD_LOGIC;
    AXI_21_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_21_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_21_BVALID : out STD_LOGIC;
    AXI_22_ARREADY : out STD_LOGIC;
    AXI_22_AWREADY : out STD_LOGIC;
    AXI_22_RDATA_PARITY : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_22_RDATA : out STD_LOGIC_VECTOR ( 255 downto 0 );
    AXI_22_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_22_RLAST : out STD_LOGIC;
    AXI_22_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_22_RVALID : out STD_LOGIC;
    AXI_22_WREADY : out STD_LOGIC;
    AXI_22_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_22_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_22_BVALID : out STD_LOGIC;
    AXI_23_ARREADY : out STD_LOGIC;
    AXI_23_AWREADY : out STD_LOGIC;
    AXI_23_RDATA_PARITY : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_23_RDATA : out STD_LOGIC_VECTOR ( 255 downto 0 );
    AXI_23_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_23_RLAST : out STD_LOGIC;
    AXI_23_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_23_RVALID : out STD_LOGIC;
    AXI_23_WREADY : out STD_LOGIC;
    AXI_23_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_23_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_23_BVALID : out STD_LOGIC;
    AXI_24_ARREADY : out STD_LOGIC;
    AXI_24_AWREADY : out STD_LOGIC;
    AXI_24_RDATA_PARITY : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_24_RDATA : out STD_LOGIC_VECTOR ( 255 downto 0 );
    AXI_24_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_24_RLAST : out STD_LOGIC;
    AXI_24_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_24_RVALID : out STD_LOGIC;
    AXI_24_WREADY : out STD_LOGIC;
    AXI_24_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_24_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_24_BVALID : out STD_LOGIC;
    AXI_25_ARREADY : out STD_LOGIC;
    AXI_25_AWREADY : out STD_LOGIC;
    AXI_25_RDATA_PARITY : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_25_RDATA : out STD_LOGIC_VECTOR ( 255 downto 0 );
    AXI_25_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_25_RLAST : out STD_LOGIC;
    AXI_25_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_25_RVALID : out STD_LOGIC;
    AXI_25_WREADY : out STD_LOGIC;
    AXI_25_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_25_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_25_BVALID : out STD_LOGIC;
    AXI_26_ARREADY : out STD_LOGIC;
    AXI_26_AWREADY : out STD_LOGIC;
    AXI_26_RDATA_PARITY : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_26_RDATA : out STD_LOGIC_VECTOR ( 255 downto 0 );
    AXI_26_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_26_RLAST : out STD_LOGIC;
    AXI_26_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_26_RVALID : out STD_LOGIC;
    AXI_26_WREADY : out STD_LOGIC;
    AXI_26_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_26_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_26_BVALID : out STD_LOGIC;
    APB_0_PRDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    APB_0_PREADY : out STD_LOGIC;
    APB_0_PSLVERR : out STD_LOGIC;
    APB_1_PRDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    APB_1_PREADY : out STD_LOGIC;
    APB_1_PSLVERR : out STD_LOGIC;
    apb_complete_0 : out STD_LOGIC;
    apb_complete_1 : out STD_LOGIC;
    DRAM_0_STAT_CATTRIP : out STD_LOGIC;
    DRAM_0_STAT_TEMP : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DRAM_1_STAT_CATTRIP : out STD_LOGIC;
    DRAM_1_STAT_TEMP : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_hbm_inst_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_hbm_reset_sync_SLR0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_hbm_reset_sync_SLR0_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_hbm_reset_sync_SLR2_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_hbm_reset_sync_SLR2_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_util_vector_logic_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_util_vector_logic_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S00_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S00_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S01_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S01_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S02_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S02_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S03_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S03_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S04_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S04_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S05_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S05_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S06_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S06_0;
  signal \^dram_stat_cattrip\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_apb_bridge_inst_APB_M2_PRDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_apb_bridge_inst_APB_M2_PREADY : STD_LOGIC;
  signal axi_apb_bridge_inst_APB_M2_PSEL : STD_LOGIC;
  signal axi_apb_bridge_inst_APB_M2_PSLVERR : STD_LOGIC;
  signal axi_apb_bridge_inst_APB_M_PADDR : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal axi_apb_bridge_inst_APB_M_PENABLE : STD_LOGIC;
  signal axi_apb_bridge_inst_APB_M_PRDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_apb_bridge_inst_APB_M_PREADY : STD_LOGIC;
  signal axi_apb_bridge_inst_APB_M_PSEL : STD_LOGIC;
  signal axi_apb_bridge_inst_APB_M_PSLVERR : STD_LOGIC;
  signal axi_apb_bridge_inst_APB_M_PWDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_apb_bridge_inst_APB_M_PWRITE : STD_LOGIC;
  signal hbm_inst_DRAM_0_STAT_CATTRIP : STD_LOGIC;
  signal hbm_inst_DRAM_1_STAT_CATTRIP : STD_LOGIC;
  signal hbm_inst_apb_complete_0 : STD_LOGIC;
  signal hbm_inst_apb_complete_1 : STD_LOGIC;
  signal hbm_reset_sync_SLR0_interconnect_aresetn : STD_LOGIC;
  signal hbm_reset_sync_SLR2_interconnect_aresetn : STD_LOGIC;
  signal slice0_23_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal slice0_23_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice0_23_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice0_23_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice0_23_M_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice0_23_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slice0_23_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice0_23_M_AXI_ARREADY : STD_LOGIC;
  signal slice0_23_M_AXI_ARVALID : STD_LOGIC;
  signal slice0_23_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal slice0_23_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice0_23_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice0_23_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice0_23_M_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice0_23_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slice0_23_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice0_23_M_AXI_AWREADY : STD_LOGIC;
  signal slice0_23_M_AXI_AWVALID : STD_LOGIC;
  signal slice0_23_M_AXI_BREADY : STD_LOGIC;
  signal slice0_23_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice0_23_M_AXI_BVALID : STD_LOGIC;
  signal slice0_23_M_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal slice0_23_M_AXI_RLAST : STD_LOGIC;
  signal slice0_23_M_AXI_RREADY : STD_LOGIC;
  signal slice0_23_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice0_23_M_AXI_RVALID : STD_LOGIC;
  signal slice0_23_M_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal slice0_23_M_AXI_WLAST : STD_LOGIC;
  signal slice0_23_M_AXI_WREADY : STD_LOGIC;
  signal slice0_23_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slice0_23_M_AXI_WVALID : STD_LOGIC;
  signal slice1_20_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal slice1_20_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice1_20_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice1_20_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice1_20_M_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice1_20_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slice1_20_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice1_20_M_AXI_ARREADY : STD_LOGIC;
  signal slice1_20_M_AXI_ARVALID : STD_LOGIC;
  signal slice1_20_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal slice1_20_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice1_20_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice1_20_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice1_20_M_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice1_20_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slice1_20_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice1_20_M_AXI_AWREADY : STD_LOGIC;
  signal slice1_20_M_AXI_AWVALID : STD_LOGIC;
  signal slice1_20_M_AXI_BREADY : STD_LOGIC;
  signal slice1_20_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice1_20_M_AXI_BVALID : STD_LOGIC;
  signal slice1_20_M_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal slice1_20_M_AXI_RLAST : STD_LOGIC;
  signal slice1_20_M_AXI_RREADY : STD_LOGIC;
  signal slice1_20_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice1_20_M_AXI_RVALID : STD_LOGIC;
  signal slice1_20_M_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal slice1_20_M_AXI_WLAST : STD_LOGIC;
  signal slice1_20_M_AXI_WREADY : STD_LOGIC;
  signal slice1_20_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slice1_20_M_AXI_WVALID : STD_LOGIC;
  signal slice2_21_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal slice2_21_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice2_21_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice2_21_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice2_21_M_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice2_21_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slice2_21_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice2_21_M_AXI_ARREADY : STD_LOGIC;
  signal slice2_21_M_AXI_ARVALID : STD_LOGIC;
  signal slice2_21_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal slice2_21_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice2_21_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice2_21_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice2_21_M_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice2_21_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slice2_21_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice2_21_M_AXI_AWREADY : STD_LOGIC;
  signal slice2_21_M_AXI_AWVALID : STD_LOGIC;
  signal slice2_21_M_AXI_BREADY : STD_LOGIC;
  signal slice2_21_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice2_21_M_AXI_BVALID : STD_LOGIC;
  signal slice2_21_M_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal slice2_21_M_AXI_RLAST : STD_LOGIC;
  signal slice2_21_M_AXI_RREADY : STD_LOGIC;
  signal slice2_21_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice2_21_M_AXI_RVALID : STD_LOGIC;
  signal slice2_21_M_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal slice2_21_M_AXI_WLAST : STD_LOGIC;
  signal slice2_21_M_AXI_WREADY : STD_LOGIC;
  signal slice2_21_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slice2_21_M_AXI_WVALID : STD_LOGIC;
  signal slice3_22_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal slice3_22_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice3_22_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice3_22_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice3_22_M_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice3_22_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slice3_22_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice3_22_M_AXI_ARREADY : STD_LOGIC;
  signal slice3_22_M_AXI_ARVALID : STD_LOGIC;
  signal slice3_22_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal slice3_22_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice3_22_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice3_22_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice3_22_M_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice3_22_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slice3_22_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice3_22_M_AXI_AWREADY : STD_LOGIC;
  signal slice3_22_M_AXI_AWVALID : STD_LOGIC;
  signal slice3_22_M_AXI_BREADY : STD_LOGIC;
  signal slice3_22_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice3_22_M_AXI_BVALID : STD_LOGIC;
  signal slice3_22_M_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal slice3_22_M_AXI_RLAST : STD_LOGIC;
  signal slice3_22_M_AXI_RREADY : STD_LOGIC;
  signal slice3_22_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice3_22_M_AXI_RVALID : STD_LOGIC;
  signal slice3_22_M_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal slice3_22_M_AXI_WLAST : STD_LOGIC;
  signal slice3_22_M_AXI_WREADY : STD_LOGIC;
  signal slice3_22_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slice3_22_M_AXI_WVALID : STD_LOGIC;
  signal slice4_24_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal slice4_24_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice4_24_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice4_24_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice4_24_M_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice4_24_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slice4_24_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice4_24_M_AXI_ARREADY : STD_LOGIC;
  signal slice4_24_M_AXI_ARVALID : STD_LOGIC;
  signal slice4_24_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal slice4_24_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice4_24_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice4_24_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice4_24_M_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice4_24_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slice4_24_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice4_24_M_AXI_AWREADY : STD_LOGIC;
  signal slice4_24_M_AXI_AWVALID : STD_LOGIC;
  signal slice4_24_M_AXI_BREADY : STD_LOGIC;
  signal slice4_24_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice4_24_M_AXI_BVALID : STD_LOGIC;
  signal slice4_24_M_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal slice4_24_M_AXI_RLAST : STD_LOGIC;
  signal slice4_24_M_AXI_RREADY : STD_LOGIC;
  signal slice4_24_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice4_24_M_AXI_RVALID : STD_LOGIC;
  signal slice4_24_M_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal slice4_24_M_AXI_WLAST : STD_LOGIC;
  signal slice4_24_M_AXI_WREADY : STD_LOGIC;
  signal slice4_24_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slice4_24_M_AXI_WVALID : STD_LOGIC;
  signal slice5_25_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal slice5_25_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice5_25_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice5_25_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice5_25_M_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice5_25_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slice5_25_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice5_25_M_AXI_ARREADY : STD_LOGIC;
  signal slice5_25_M_AXI_ARVALID : STD_LOGIC;
  signal slice5_25_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal slice5_25_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice5_25_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice5_25_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice5_25_M_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice5_25_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slice5_25_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice5_25_M_AXI_AWREADY : STD_LOGIC;
  signal slice5_25_M_AXI_AWVALID : STD_LOGIC;
  signal slice5_25_M_AXI_BREADY : STD_LOGIC;
  signal slice5_25_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice5_25_M_AXI_BVALID : STD_LOGIC;
  signal slice5_25_M_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal slice5_25_M_AXI_RLAST : STD_LOGIC;
  signal slice5_25_M_AXI_RREADY : STD_LOGIC;
  signal slice5_25_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice5_25_M_AXI_RVALID : STD_LOGIC;
  signal slice5_25_M_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal slice5_25_M_AXI_WLAST : STD_LOGIC;
  signal slice5_25_M_AXI_WREADY : STD_LOGIC;
  signal slice5_25_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slice5_25_M_AXI_WVALID : STD_LOGIC;
  signal slice6_26_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal slice6_26_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice6_26_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice6_26_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice6_26_M_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice6_26_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slice6_26_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice6_26_M_AXI_ARREADY : STD_LOGIC;
  signal slice6_26_M_AXI_ARVALID : STD_LOGIC;
  signal slice6_26_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal slice6_26_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice6_26_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice6_26_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice6_26_M_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice6_26_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slice6_26_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice6_26_M_AXI_AWREADY : STD_LOGIC;
  signal slice6_26_M_AXI_AWVALID : STD_LOGIC;
  signal slice6_26_M_AXI_BREADY : STD_LOGIC;
  signal slice6_26_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice6_26_M_AXI_BVALID : STD_LOGIC;
  signal slice6_26_M_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal slice6_26_M_AXI_RLAST : STD_LOGIC;
  signal slice6_26_M_AXI_RREADY : STD_LOGIC;
  signal slice6_26_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice6_26_M_AXI_RVALID : STD_LOGIC;
  signal slice6_26_M_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal slice6_26_M_AXI_WLAST : STD_LOGIC;
  signal slice6_26_M_AXI_WREADY : STD_LOGIC;
  signal slice6_26_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slice6_26_M_AXI_WVALID : STD_LOGIC;
  signal vip_S00_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal vip_S00_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S00_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vip_S00_M_AXI_ARREADY : STD_LOGIC;
  signal vip_S00_M_AXI_ARVALID : STD_LOGIC;
  signal vip_S00_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal vip_S00_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S00_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vip_S00_M_AXI_AWREADY : STD_LOGIC;
  signal vip_S00_M_AXI_AWVALID : STD_LOGIC;
  signal vip_S00_M_AXI_BREADY : STD_LOGIC;
  signal vip_S00_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S00_M_AXI_BVALID : STD_LOGIC;
  signal vip_S00_M_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal vip_S00_M_AXI_RLAST : STD_LOGIC;
  signal vip_S00_M_AXI_RREADY : STD_LOGIC;
  signal vip_S00_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S00_M_AXI_RVALID : STD_LOGIC;
  signal vip_S00_M_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal vip_S00_M_AXI_WLAST : STD_LOGIC;
  signal vip_S00_M_AXI_WREADY : STD_LOGIC;
  signal vip_S00_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal vip_S00_M_AXI_WVALID : STD_LOGIC;
  signal vip_S01_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal vip_S01_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S01_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vip_S01_M_AXI_ARREADY : STD_LOGIC;
  signal vip_S01_M_AXI_ARVALID : STD_LOGIC;
  signal vip_S01_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal vip_S01_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S01_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vip_S01_M_AXI_AWREADY : STD_LOGIC;
  signal vip_S01_M_AXI_AWVALID : STD_LOGIC;
  signal vip_S01_M_AXI_BREADY : STD_LOGIC;
  signal vip_S01_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S01_M_AXI_BVALID : STD_LOGIC;
  signal vip_S01_M_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal vip_S01_M_AXI_RLAST : STD_LOGIC;
  signal vip_S01_M_AXI_RREADY : STD_LOGIC;
  signal vip_S01_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S01_M_AXI_RVALID : STD_LOGIC;
  signal vip_S01_M_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal vip_S01_M_AXI_WLAST : STD_LOGIC;
  signal vip_S01_M_AXI_WREADY : STD_LOGIC;
  signal vip_S01_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal vip_S01_M_AXI_WVALID : STD_LOGIC;
  signal vip_S02_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal vip_S02_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S02_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vip_S02_M_AXI_ARREADY : STD_LOGIC;
  signal vip_S02_M_AXI_ARVALID : STD_LOGIC;
  signal vip_S02_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal vip_S02_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S02_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vip_S02_M_AXI_AWREADY : STD_LOGIC;
  signal vip_S02_M_AXI_AWVALID : STD_LOGIC;
  signal vip_S02_M_AXI_BREADY : STD_LOGIC;
  signal vip_S02_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S02_M_AXI_BVALID : STD_LOGIC;
  signal vip_S02_M_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal vip_S02_M_AXI_RLAST : STD_LOGIC;
  signal vip_S02_M_AXI_RREADY : STD_LOGIC;
  signal vip_S02_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S02_M_AXI_RVALID : STD_LOGIC;
  signal vip_S02_M_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal vip_S02_M_AXI_WLAST : STD_LOGIC;
  signal vip_S02_M_AXI_WREADY : STD_LOGIC;
  signal vip_S02_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal vip_S02_M_AXI_WVALID : STD_LOGIC;
  signal vip_S03_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal vip_S03_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S03_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vip_S03_M_AXI_ARREADY : STD_LOGIC;
  signal vip_S03_M_AXI_ARVALID : STD_LOGIC;
  signal vip_S03_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal vip_S03_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S03_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vip_S03_M_AXI_AWREADY : STD_LOGIC;
  signal vip_S03_M_AXI_AWVALID : STD_LOGIC;
  signal vip_S03_M_AXI_BREADY : STD_LOGIC;
  signal vip_S03_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S03_M_AXI_BVALID : STD_LOGIC;
  signal vip_S03_M_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal vip_S03_M_AXI_RLAST : STD_LOGIC;
  signal vip_S03_M_AXI_RREADY : STD_LOGIC;
  signal vip_S03_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S03_M_AXI_RVALID : STD_LOGIC;
  signal vip_S03_M_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal vip_S03_M_AXI_WLAST : STD_LOGIC;
  signal vip_S03_M_AXI_WREADY : STD_LOGIC;
  signal vip_S03_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal vip_S03_M_AXI_WVALID : STD_LOGIC;
  signal vip_S04_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal vip_S04_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S04_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vip_S04_M_AXI_ARREADY : STD_LOGIC;
  signal vip_S04_M_AXI_ARVALID : STD_LOGIC;
  signal vip_S04_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal vip_S04_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S04_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vip_S04_M_AXI_AWREADY : STD_LOGIC;
  signal vip_S04_M_AXI_AWVALID : STD_LOGIC;
  signal vip_S04_M_AXI_BREADY : STD_LOGIC;
  signal vip_S04_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S04_M_AXI_BVALID : STD_LOGIC;
  signal vip_S04_M_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal vip_S04_M_AXI_RLAST : STD_LOGIC;
  signal vip_S04_M_AXI_RREADY : STD_LOGIC;
  signal vip_S04_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S04_M_AXI_RVALID : STD_LOGIC;
  signal vip_S04_M_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal vip_S04_M_AXI_WLAST : STD_LOGIC;
  signal vip_S04_M_AXI_WREADY : STD_LOGIC;
  signal vip_S04_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal vip_S04_M_AXI_WVALID : STD_LOGIC;
  signal vip_S05_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal vip_S05_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S05_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vip_S05_M_AXI_ARREADY : STD_LOGIC;
  signal vip_S05_M_AXI_ARVALID : STD_LOGIC;
  signal vip_S05_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal vip_S05_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S05_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vip_S05_M_AXI_AWREADY : STD_LOGIC;
  signal vip_S05_M_AXI_AWVALID : STD_LOGIC;
  signal vip_S05_M_AXI_BREADY : STD_LOGIC;
  signal vip_S05_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S05_M_AXI_BVALID : STD_LOGIC;
  signal vip_S05_M_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal vip_S05_M_AXI_RLAST : STD_LOGIC;
  signal vip_S05_M_AXI_RREADY : STD_LOGIC;
  signal vip_S05_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S05_M_AXI_RVALID : STD_LOGIC;
  signal vip_S05_M_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal vip_S05_M_AXI_WLAST : STD_LOGIC;
  signal vip_S05_M_AXI_WREADY : STD_LOGIC;
  signal vip_S05_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal vip_S05_M_AXI_WVALID : STD_LOGIC;
  signal vip_S06_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal vip_S06_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S06_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vip_S06_M_AXI_ARREADY : STD_LOGIC;
  signal vip_S06_M_AXI_ARVALID : STD_LOGIC;
  signal vip_S06_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal vip_S06_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S06_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vip_S06_M_AXI_AWREADY : STD_LOGIC;
  signal vip_S06_M_AXI_AWVALID : STD_LOGIC;
  signal vip_S06_M_AXI_BREADY : STD_LOGIC;
  signal vip_S06_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S06_M_AXI_BVALID : STD_LOGIC;
  signal vip_S06_M_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal vip_S06_M_AXI_RLAST : STD_LOGIC;
  signal vip_S06_M_AXI_RREADY : STD_LOGIC;
  signal vip_S06_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S06_M_AXI_RVALID : STD_LOGIC;
  signal vip_S06_M_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal vip_S06_M_AXI_WLAST : STD_LOGIC;
  signal vip_S06_M_AXI_WREADY : STD_LOGIC;
  signal vip_S06_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal vip_S06_M_AXI_WVALID : STD_LOGIC;
  signal NLW_axi_apb_bridge_inst_m_apb_paddr_UNCONNECTED : STD_LOGIC_VECTOR ( 22 to 22 );
  signal NLW_hbm_inst_AXI_20_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_hbm_inst_AXI_20_RDATA_PARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_hbm_inst_AXI_20_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_hbm_inst_AXI_21_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_hbm_inst_AXI_21_RDATA_PARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_hbm_inst_AXI_21_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_hbm_inst_AXI_22_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_hbm_inst_AXI_22_RDATA_PARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_hbm_inst_AXI_22_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_hbm_inst_AXI_23_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_hbm_inst_AXI_23_RDATA_PARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_hbm_inst_AXI_23_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_hbm_inst_AXI_24_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_hbm_inst_AXI_24_RDATA_PARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_hbm_inst_AXI_24_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_hbm_inst_AXI_25_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_hbm_inst_AXI_25_RDATA_PARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_hbm_inst_AXI_25_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_hbm_inst_AXI_26_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_hbm_inst_AXI_26_RDATA_PARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_hbm_inst_AXI_26_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_hbm_reset_sync_SLR0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_hbm_reset_sync_SLR0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_hbm_reset_sync_SLR0_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_hbm_reset_sync_SLR0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_hbm_reset_sync_SLR2_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_hbm_reset_sync_SLR2_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_hbm_reset_sync_SLR2_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_hbm_reset_sync_SLR2_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_vip_S00_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S00_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_vip_S00_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_vip_S00_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S00_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S00_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_vip_S00_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_vip_S00_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S01_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S01_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_vip_S01_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_vip_S01_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S01_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S01_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_vip_S01_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_vip_S01_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S02_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S02_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_vip_S02_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_vip_S02_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S02_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S02_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_vip_S02_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_vip_S02_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S03_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S03_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_vip_S03_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_vip_S03_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S03_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S03_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_vip_S03_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_vip_S03_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S04_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S04_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_vip_S04_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_vip_S04_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S04_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S04_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_vip_S04_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_vip_S04_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S05_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S05_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_vip_S05_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_vip_S05_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S05_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S05_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_vip_S05_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_vip_S05_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S06_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S06_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_vip_S06_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_vip_S06_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S06_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_S06_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_vip_S06_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_vip_S06_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of axi_apb_bridge_inst : label is "axi_apb_bridge,Vivado 2020.2";
  attribute X_CORE_INFO of hbm_inst : label is "hbm_v1_0_9,Vivado 2020.2";
  attribute X_CORE_INFO of hbm_reset_sync_SLR0 : label is "proc_sys_reset,Vivado 2020.2";
  attribute X_CORE_INFO of hbm_reset_sync_SLR2 : label is "proc_sys_reset,Vivado 2020.2";
  attribute X_CORE_INFO of util_vector_logic : label is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.2";
  attribute X_CORE_INFO of vip_S00 : label is "axi_vip_v1_1_8_top,Vivado 2020.2";
  attribute X_CORE_INFO of vip_S01 : label is "axi_vip_v1_1_8_top,Vivado 2020.2";
  attribute X_CORE_INFO of vip_S02 : label is "axi_vip_v1_1_8_top,Vivado 2020.2";
  attribute X_CORE_INFO of vip_S03 : label is "axi_vip_v1_1_8_top,Vivado 2020.2";
  attribute X_CORE_INFO of vip_S04 : label is "axi_vip_v1_1_8_top,Vivado 2020.2";
  attribute X_CORE_INFO of vip_S05 : label is "axi_vip_v1_1_8_top,Vivado 2020.2";
  attribute X_CORE_INFO of vip_S06 : label is "axi_vip_v1_1_8_top,Vivado 2020.2";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_CLKEN m_sc_aclken, CLK_DOMAIN pfm_dynamic_dma_pcie_axi_aclk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of aclk1 : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK1 CLK";
  attribute X_INTERFACE_PARAMETER of aclk1 : signal is "XIL_INTERFACENAME CLK.ACLK1, ASSOCIATED_BUSIF S01_AXI:S02_AXI:S03_AXI:S04_AXI:S05_AXI:S06_AXI, ASSOCIATED_CLKEN m_sc_aclken, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of aresetn1 : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN1 RST";
  attribute X_INTERFACE_PARAMETER of aresetn1 : signal is "XIL_INTERFACENAME RST.ARESETN1, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of ctrl_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.CTRL_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of ctrl_aclk : signal is "XIL_INTERFACENAME CLK.CTRL_ACLK, ASSOCIATED_BUSIF S_AXI_CTRL, ASSOCIATED_RESET ctrl_aresetn, CLK_DOMAIN pfm_dynamic_s_axi_aclk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of ctrl_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.CTRL_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of ctrl_aresetn : signal is "XIL_INTERFACENAME RST.CTRL_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of hbm_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.HBM_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of hbm_aclk : signal is "XIL_INTERFACENAME CLK.HBM_ACLK, ASSOCIATED_CLKEN s_sc_aclken, CLK_DOMAIN pfm_dynamic_clk_out1_pfm_top_clkwiz_hbm_aclk_0, FREQ_HZ 450000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of hbm_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.HBM_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of hbm_aresetn : signal is "XIL_INTERFACENAME RST.HBM_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of hbm_ref_clk : signal is "xilinx.com:signal:clock:1.0 CLK.HBM_REF_CLK CLK";
  attribute X_INTERFACE_PARAMETER of hbm_ref_clk : signal is "XIL_INTERFACENAME CLK.HBM_REF_CLK, CLK_DOMAIN pfm_dynamic_hbm_ref_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of DRAM_STAT_CATTRIP : signal is "xilinx.com:signal:interrupt:1.0 INTR.DRAM_STAT_CATTRIP INTERRUPT";
  attribute X_INTERFACE_PARAMETER of DRAM_STAT_CATTRIP : signal is "XIL_INTERFACENAME INTR.DRAM_STAT_CATTRIP, PortWidth 1, SENSITIVITY LEVEL_HIGH";
  attribute X_INTERFACE_INFO of S00_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of S00_AXI_araddr : signal is "XIL_INTERFACENAME S00_AXI, ADDR_WIDTH 33, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_dma_pcie_axi_aclk, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S00_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST";
  attribute X_INTERFACE_INFO of S00_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE";
  attribute X_INTERFACE_INFO of S00_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN";
  attribute X_INTERFACE_INFO of S00_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK";
  attribute X_INTERFACE_INFO of S00_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of S00_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS";
  attribute X_INTERFACE_INFO of S00_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of S00_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE";
  attribute X_INTERFACE_INFO of S00_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of S00_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of S00_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST";
  attribute X_INTERFACE_INFO of S00_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE";
  attribute X_INTERFACE_INFO of S00_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN";
  attribute X_INTERFACE_INFO of S00_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK";
  attribute X_INTERFACE_INFO of S00_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of S00_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS";
  attribute X_INTERFACE_INFO of S00_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of S00_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE";
  attribute X_INTERFACE_INFO of S00_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of S00_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of S00_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of S00_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of S00_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of S00_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RLAST";
  attribute X_INTERFACE_INFO of S00_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_INFO of S00_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of S00_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of S00_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of S00_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WLAST";
  attribute X_INTERFACE_INFO of S00_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of S00_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  attribute X_INTERFACE_INFO of S00_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of S01_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of S01_AXI_araddr : signal is "XIL_INTERFACENAME S01_AXI, ADDR_WIDTH 33, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, DATA_WIDTH 32, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S01_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARBURST";
  attribute X_INTERFACE_INFO of S01_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE";
  attribute X_INTERFACE_INFO of S01_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARLEN";
  attribute X_INTERFACE_INFO of S01_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK";
  attribute X_INTERFACE_INFO of S01_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARPROT";
  attribute X_INTERFACE_INFO of S01_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARQOS";
  attribute X_INTERFACE_INFO of S01_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARREADY";
  attribute X_INTERFACE_INFO of S01_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARSIZE";
  attribute X_INTERFACE_INFO of S01_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARVALID";
  attribute X_INTERFACE_INFO of S01_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWADDR";
  attribute X_INTERFACE_INFO of S01_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWBURST";
  attribute X_INTERFACE_INFO of S01_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE";
  attribute X_INTERFACE_INFO of S01_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWLEN";
  attribute X_INTERFACE_INFO of S01_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK";
  attribute X_INTERFACE_INFO of S01_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWPROT";
  attribute X_INTERFACE_INFO of S01_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWQOS";
  attribute X_INTERFACE_INFO of S01_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWREADY";
  attribute X_INTERFACE_INFO of S01_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWSIZE";
  attribute X_INTERFACE_INFO of S01_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWVALID";
  attribute X_INTERFACE_INFO of S01_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI BREADY";
  attribute X_INTERFACE_INFO of S01_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S01_AXI BRESP";
  attribute X_INTERFACE_INFO of S01_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI BVALID";
  attribute X_INTERFACE_INFO of S01_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RDATA";
  attribute X_INTERFACE_INFO of S01_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RLAST";
  attribute X_INTERFACE_INFO of S01_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RREADY";
  attribute X_INTERFACE_INFO of S01_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RRESP";
  attribute X_INTERFACE_INFO of S01_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RVALID";
  attribute X_INTERFACE_INFO of S01_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WDATA";
  attribute X_INTERFACE_INFO of S01_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WLAST";
  attribute X_INTERFACE_INFO of S01_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WREADY";
  attribute X_INTERFACE_INFO of S01_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WSTRB";
  attribute X_INTERFACE_INFO of S01_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WVALID";
  attribute X_INTERFACE_INFO of S02_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of S02_AXI_araddr : signal is "XIL_INTERFACENAME S02_AXI, ADDR_WIDTH 33, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, DATA_WIDTH 512, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S02_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARBURST";
  attribute X_INTERFACE_INFO of S02_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARCACHE";
  attribute X_INTERFACE_INFO of S02_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARLEN";
  attribute X_INTERFACE_INFO of S02_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARLOCK";
  attribute X_INTERFACE_INFO of S02_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARPROT";
  attribute X_INTERFACE_INFO of S02_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARQOS";
  attribute X_INTERFACE_INFO of S02_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARREADY";
  attribute X_INTERFACE_INFO of S02_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARSIZE";
  attribute X_INTERFACE_INFO of S02_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARVALID";
  attribute X_INTERFACE_INFO of S02_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWADDR";
  attribute X_INTERFACE_INFO of S02_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWBURST";
  attribute X_INTERFACE_INFO of S02_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWCACHE";
  attribute X_INTERFACE_INFO of S02_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWLEN";
  attribute X_INTERFACE_INFO of S02_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWLOCK";
  attribute X_INTERFACE_INFO of S02_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWPROT";
  attribute X_INTERFACE_INFO of S02_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWQOS";
  attribute X_INTERFACE_INFO of S02_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWREADY";
  attribute X_INTERFACE_INFO of S02_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWSIZE";
  attribute X_INTERFACE_INFO of S02_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWVALID";
  attribute X_INTERFACE_INFO of S02_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S02_AXI BREADY";
  attribute X_INTERFACE_INFO of S02_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S02_AXI BRESP";
  attribute X_INTERFACE_INFO of S02_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI BVALID";
  attribute X_INTERFACE_INFO of S02_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S02_AXI RDATA";
  attribute X_INTERFACE_INFO of S02_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 S02_AXI RLAST";
  attribute X_INTERFACE_INFO of S02_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S02_AXI RREADY";
  attribute X_INTERFACE_INFO of S02_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S02_AXI RRESP";
  attribute X_INTERFACE_INFO of S02_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI RVALID";
  attribute X_INTERFACE_INFO of S02_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S02_AXI WDATA";
  attribute X_INTERFACE_INFO of S02_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 S02_AXI WLAST";
  attribute X_INTERFACE_INFO of S02_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S02_AXI WREADY";
  attribute X_INTERFACE_INFO of S02_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S02_AXI WSTRB";
  attribute X_INTERFACE_INFO of S02_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI WVALID";
  attribute X_INTERFACE_INFO of S03_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S03_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of S03_AXI_araddr : signal is "XIL_INTERFACENAME S03_AXI, ADDR_WIDTH 33, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, DATA_WIDTH 32, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S03_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 S03_AXI ARBURST";
  attribute X_INTERFACE_INFO of S03_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 S03_AXI ARCACHE";
  attribute X_INTERFACE_INFO of S03_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 S03_AXI ARLEN";
  attribute X_INTERFACE_INFO of S03_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 S03_AXI ARLOCK";
  attribute X_INTERFACE_INFO of S03_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S03_AXI ARPROT";
  attribute X_INTERFACE_INFO of S03_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 S03_AXI ARQOS";
  attribute X_INTERFACE_INFO of S03_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S03_AXI ARREADY";
  attribute X_INTERFACE_INFO of S03_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 S03_AXI ARSIZE";
  attribute X_INTERFACE_INFO of S03_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S03_AXI ARVALID";
  attribute X_INTERFACE_INFO of S03_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S03_AXI AWADDR";
  attribute X_INTERFACE_INFO of S03_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 S03_AXI AWBURST";
  attribute X_INTERFACE_INFO of S03_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 S03_AXI AWCACHE";
  attribute X_INTERFACE_INFO of S03_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 S03_AXI AWLEN";
  attribute X_INTERFACE_INFO of S03_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 S03_AXI AWLOCK";
  attribute X_INTERFACE_INFO of S03_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S03_AXI AWPROT";
  attribute X_INTERFACE_INFO of S03_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 S03_AXI AWQOS";
  attribute X_INTERFACE_INFO of S03_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S03_AXI AWREADY";
  attribute X_INTERFACE_INFO of S03_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 S03_AXI AWSIZE";
  attribute X_INTERFACE_INFO of S03_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S03_AXI AWVALID";
  attribute X_INTERFACE_INFO of S03_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S03_AXI BREADY";
  attribute X_INTERFACE_INFO of S03_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S03_AXI BRESP";
  attribute X_INTERFACE_INFO of S03_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S03_AXI BVALID";
  attribute X_INTERFACE_INFO of S03_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S03_AXI RDATA";
  attribute X_INTERFACE_INFO of S03_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 S03_AXI RLAST";
  attribute X_INTERFACE_INFO of S03_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S03_AXI RREADY";
  attribute X_INTERFACE_INFO of S03_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S03_AXI RRESP";
  attribute X_INTERFACE_INFO of S03_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S03_AXI RVALID";
  attribute X_INTERFACE_INFO of S03_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S03_AXI WDATA";
  attribute X_INTERFACE_INFO of S03_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 S03_AXI WLAST";
  attribute X_INTERFACE_INFO of S03_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S03_AXI WREADY";
  attribute X_INTERFACE_INFO of S03_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S03_AXI WSTRB";
  attribute X_INTERFACE_INFO of S03_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S03_AXI WVALID";
  attribute X_INTERFACE_INFO of S04_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S04_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of S04_AXI_araddr : signal is "XIL_INTERFACENAME S04_AXI, ADDR_WIDTH 33, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, DATA_WIDTH 32, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S04_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 S04_AXI ARBURST";
  attribute X_INTERFACE_INFO of S04_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 S04_AXI ARCACHE";
  attribute X_INTERFACE_INFO of S04_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 S04_AXI ARLEN";
  attribute X_INTERFACE_INFO of S04_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 S04_AXI ARLOCK";
  attribute X_INTERFACE_INFO of S04_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S04_AXI ARPROT";
  attribute X_INTERFACE_INFO of S04_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 S04_AXI ARQOS";
  attribute X_INTERFACE_INFO of S04_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S04_AXI ARREADY";
  attribute X_INTERFACE_INFO of S04_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 S04_AXI ARSIZE";
  attribute X_INTERFACE_INFO of S04_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S04_AXI ARVALID";
  attribute X_INTERFACE_INFO of S04_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S04_AXI AWADDR";
  attribute X_INTERFACE_INFO of S04_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 S04_AXI AWBURST";
  attribute X_INTERFACE_INFO of S04_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 S04_AXI AWCACHE";
  attribute X_INTERFACE_INFO of S04_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 S04_AXI AWLEN";
  attribute X_INTERFACE_INFO of S04_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 S04_AXI AWLOCK";
  attribute X_INTERFACE_INFO of S04_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S04_AXI AWPROT";
  attribute X_INTERFACE_INFO of S04_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 S04_AXI AWQOS";
  attribute X_INTERFACE_INFO of S04_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S04_AXI AWREADY";
  attribute X_INTERFACE_INFO of S04_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 S04_AXI AWSIZE";
  attribute X_INTERFACE_INFO of S04_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S04_AXI AWVALID";
  attribute X_INTERFACE_INFO of S04_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S04_AXI BREADY";
  attribute X_INTERFACE_INFO of S04_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S04_AXI BRESP";
  attribute X_INTERFACE_INFO of S04_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S04_AXI BVALID";
  attribute X_INTERFACE_INFO of S04_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S04_AXI RDATA";
  attribute X_INTERFACE_INFO of S04_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 S04_AXI RLAST";
  attribute X_INTERFACE_INFO of S04_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S04_AXI RREADY";
  attribute X_INTERFACE_INFO of S04_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S04_AXI RRESP";
  attribute X_INTERFACE_INFO of S04_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S04_AXI RVALID";
  attribute X_INTERFACE_INFO of S04_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S04_AXI WDATA";
  attribute X_INTERFACE_INFO of S04_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 S04_AXI WLAST";
  attribute X_INTERFACE_INFO of S04_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S04_AXI WREADY";
  attribute X_INTERFACE_INFO of S04_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S04_AXI WSTRB";
  attribute X_INTERFACE_INFO of S04_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S04_AXI WVALID";
  attribute X_INTERFACE_INFO of S05_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S05_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of S05_AXI_araddr : signal is "XIL_INTERFACENAME S05_AXI, ADDR_WIDTH 33, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, DATA_WIDTH 32, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S05_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 S05_AXI ARBURST";
  attribute X_INTERFACE_INFO of S05_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 S05_AXI ARCACHE";
  attribute X_INTERFACE_INFO of S05_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 S05_AXI ARLEN";
  attribute X_INTERFACE_INFO of S05_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 S05_AXI ARLOCK";
  attribute X_INTERFACE_INFO of S05_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S05_AXI ARPROT";
  attribute X_INTERFACE_INFO of S05_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 S05_AXI ARQOS";
  attribute X_INTERFACE_INFO of S05_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S05_AXI ARREADY";
  attribute X_INTERFACE_INFO of S05_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 S05_AXI ARSIZE";
  attribute X_INTERFACE_INFO of S05_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S05_AXI ARVALID";
  attribute X_INTERFACE_INFO of S05_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S05_AXI AWADDR";
  attribute X_INTERFACE_INFO of S05_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 S05_AXI AWBURST";
  attribute X_INTERFACE_INFO of S05_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 S05_AXI AWCACHE";
  attribute X_INTERFACE_INFO of S05_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 S05_AXI AWLEN";
  attribute X_INTERFACE_INFO of S05_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 S05_AXI AWLOCK";
  attribute X_INTERFACE_INFO of S05_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S05_AXI AWPROT";
  attribute X_INTERFACE_INFO of S05_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 S05_AXI AWQOS";
  attribute X_INTERFACE_INFO of S05_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S05_AXI AWREADY";
  attribute X_INTERFACE_INFO of S05_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 S05_AXI AWSIZE";
  attribute X_INTERFACE_INFO of S05_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S05_AXI AWVALID";
  attribute X_INTERFACE_INFO of S05_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S05_AXI BREADY";
  attribute X_INTERFACE_INFO of S05_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S05_AXI BRESP";
  attribute X_INTERFACE_INFO of S05_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S05_AXI BVALID";
  attribute X_INTERFACE_INFO of S05_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S05_AXI RDATA";
  attribute X_INTERFACE_INFO of S05_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 S05_AXI RLAST";
  attribute X_INTERFACE_INFO of S05_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S05_AXI RREADY";
  attribute X_INTERFACE_INFO of S05_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S05_AXI RRESP";
  attribute X_INTERFACE_INFO of S05_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S05_AXI RVALID";
  attribute X_INTERFACE_INFO of S05_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S05_AXI WDATA";
  attribute X_INTERFACE_INFO of S05_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 S05_AXI WLAST";
  attribute X_INTERFACE_INFO of S05_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S05_AXI WREADY";
  attribute X_INTERFACE_INFO of S05_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S05_AXI WSTRB";
  attribute X_INTERFACE_INFO of S05_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S05_AXI WVALID";
  attribute X_INTERFACE_INFO of S06_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S06_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of S06_AXI_araddr : signal is "XIL_INTERFACENAME S06_AXI, ADDR_WIDTH 33, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, DATA_WIDTH 64, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S06_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 S06_AXI ARBURST";
  attribute X_INTERFACE_INFO of S06_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 S06_AXI ARCACHE";
  attribute X_INTERFACE_INFO of S06_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 S06_AXI ARLEN";
  attribute X_INTERFACE_INFO of S06_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 S06_AXI ARLOCK";
  attribute X_INTERFACE_INFO of S06_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S06_AXI ARPROT";
  attribute X_INTERFACE_INFO of S06_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 S06_AXI ARQOS";
  attribute X_INTERFACE_INFO of S06_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S06_AXI ARREADY";
  attribute X_INTERFACE_INFO of S06_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 S06_AXI ARSIZE";
  attribute X_INTERFACE_INFO of S06_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S06_AXI ARVALID";
  attribute X_INTERFACE_INFO of S06_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S06_AXI AWADDR";
  attribute X_INTERFACE_INFO of S06_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 S06_AXI AWBURST";
  attribute X_INTERFACE_INFO of S06_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 S06_AXI AWCACHE";
  attribute X_INTERFACE_INFO of S06_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 S06_AXI AWLEN";
  attribute X_INTERFACE_INFO of S06_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 S06_AXI AWLOCK";
  attribute X_INTERFACE_INFO of S06_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S06_AXI AWPROT";
  attribute X_INTERFACE_INFO of S06_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 S06_AXI AWQOS";
  attribute X_INTERFACE_INFO of S06_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S06_AXI AWREADY";
  attribute X_INTERFACE_INFO of S06_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 S06_AXI AWSIZE";
  attribute X_INTERFACE_INFO of S06_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S06_AXI AWVALID";
  attribute X_INTERFACE_INFO of S06_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S06_AXI BREADY";
  attribute X_INTERFACE_INFO of S06_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S06_AXI BRESP";
  attribute X_INTERFACE_INFO of S06_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S06_AXI BVALID";
  attribute X_INTERFACE_INFO of S06_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S06_AXI RDATA";
  attribute X_INTERFACE_INFO of S06_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 S06_AXI RLAST";
  attribute X_INTERFACE_INFO of S06_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S06_AXI RREADY";
  attribute X_INTERFACE_INFO of S06_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S06_AXI RRESP";
  attribute X_INTERFACE_INFO of S06_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S06_AXI RVALID";
  attribute X_INTERFACE_INFO of S06_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S06_AXI WDATA";
  attribute X_INTERFACE_INFO of S06_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 S06_AXI WLAST";
  attribute X_INTERFACE_INFO of S06_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S06_AXI WREADY";
  attribute X_INTERFACE_INFO of S06_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S06_AXI WSTRB";
  attribute X_INTERFACE_INFO of S06_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S06_AXI WVALID";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARADDR";
  attribute X_INTERFACE_PARAMETER of S_AXI_CTRL_araddr : signal is "XIL_INTERFACENAME S_AXI_CTRL, ADDR_WIDTH 23, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_s_axi_aclk, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 0, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BREADY";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BRESP";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BVALID";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RDATA";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RREADY";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RRESP";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RVALID";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WDATA";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WREADY";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WVALID";
begin
  DRAM_STAT_CATTRIP(0) <= \^dram_stat_cattrip\(0);
axi_apb_bridge_inst: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_axi_apb_bridge_inst_0
     port map (
      m_apb_paddr(22) => NLW_axi_apb_bridge_inst_m_apb_paddr_UNCONNECTED(22),
      m_apb_paddr(21 downto 0) => axi_apb_bridge_inst_APB_M_PADDR(21 downto 0),
      m_apb_penable => axi_apb_bridge_inst_APB_M_PENABLE,
      m_apb_prdata(31 downto 0) => axi_apb_bridge_inst_APB_M_PRDATA(31 downto 0),
      m_apb_prdata2(31 downto 0) => axi_apb_bridge_inst_APB_M2_PRDATA(31 downto 0),
      m_apb_pready(1) => axi_apb_bridge_inst_APB_M2_PREADY,
      m_apb_pready(0) => axi_apb_bridge_inst_APB_M_PREADY,
      m_apb_psel(1) => axi_apb_bridge_inst_APB_M2_PSEL,
      m_apb_psel(0) => axi_apb_bridge_inst_APB_M_PSEL,
      m_apb_pslverr(1) => axi_apb_bridge_inst_APB_M2_PSLVERR,
      m_apb_pslverr(0) => axi_apb_bridge_inst_APB_M_PSLVERR,
      m_apb_pwdata(31 downto 0) => axi_apb_bridge_inst_APB_M_PWDATA(31 downto 0),
      m_apb_pwrite => axi_apb_bridge_inst_APB_M_PWRITE,
      s_axi_aclk => ctrl_aclk,
      s_axi_araddr(22 downto 0) => S_AXI_CTRL_araddr(22 downto 0),
      s_axi_aresetn => ctrl_aresetn,
      s_axi_arready => S_AXI_CTRL_arready(0),
      s_axi_arvalid => S_AXI_CTRL_arvalid(0),
      s_axi_awaddr(22 downto 0) => S_AXI_CTRL_awaddr(22 downto 0),
      s_axi_awready => S_AXI_CTRL_awready(0),
      s_axi_awvalid => S_AXI_CTRL_awvalid(0),
      s_axi_bready => S_AXI_CTRL_bready(0),
      s_axi_bresp(1 downto 0) => S_AXI_CTRL_bresp(1 downto 0),
      s_axi_bvalid => S_AXI_CTRL_bvalid(0),
      s_axi_rdata(31 downto 0) => S_AXI_CTRL_rdata(31 downto 0),
      s_axi_rready => S_AXI_CTRL_rready(0),
      s_axi_rresp(1 downto 0) => S_AXI_CTRL_rresp(1 downto 0),
      s_axi_rvalid => S_AXI_CTRL_rvalid(0),
      s_axi_wdata(31 downto 0) => S_AXI_CTRL_wdata(31 downto 0),
      s_axi_wready => S_AXI_CTRL_wready(0),
      s_axi_wvalid => S_AXI_CTRL_wvalid(0)
    );
hbm_inst: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_hbm_inst_0
     port map (
      APB_0_PADDR(21 downto 0) => axi_apb_bridge_inst_APB_M_PADDR(21 downto 0),
      APB_0_PCLK => ctrl_aclk,
      APB_0_PENABLE => axi_apb_bridge_inst_APB_M_PENABLE,
      APB_0_PRDATA(31 downto 0) => axi_apb_bridge_inst_APB_M_PRDATA(31 downto 0),
      APB_0_PREADY => axi_apb_bridge_inst_APB_M_PREADY,
      APB_0_PRESET_N => ctrl_aresetn,
      APB_0_PSEL => axi_apb_bridge_inst_APB_M_PSEL,
      APB_0_PSLVERR => axi_apb_bridge_inst_APB_M_PSLVERR,
      APB_0_PWDATA(31 downto 0) => axi_apb_bridge_inst_APB_M_PWDATA(31 downto 0),
      APB_0_PWRITE => axi_apb_bridge_inst_APB_M_PWRITE,
      APB_1_PADDR(21 downto 0) => axi_apb_bridge_inst_APB_M_PADDR(21 downto 0),
      APB_1_PCLK => ctrl_aclk,
      APB_1_PENABLE => axi_apb_bridge_inst_APB_M_PENABLE,
      APB_1_PRDATA(31 downto 0) => axi_apb_bridge_inst_APB_M2_PRDATA(31 downto 0),
      APB_1_PREADY => axi_apb_bridge_inst_APB_M2_PREADY,
      APB_1_PRESET_N => ctrl_aresetn,
      APB_1_PSEL => axi_apb_bridge_inst_APB_M2_PSEL,
      APB_1_PSLVERR => axi_apb_bridge_inst_APB_M2_PSLVERR,
      APB_1_PWDATA(31 downto 0) => axi_apb_bridge_inst_APB_M_PWDATA(31 downto 0),
      APB_1_PWRITE => axi_apb_bridge_inst_APB_M_PWRITE,
      AXI_20_ACLK => hbm_aclk,
      AXI_20_ARADDR(32 downto 0) => vip_S01_M_AXI_ARADDR(32 downto 0),
      AXI_20_ARBURST(1 downto 0) => vip_S01_M_AXI_ARBURST(1 downto 0),
      AXI_20_ARESET_N => hbm_reset_sync_SLR0_interconnect_aresetn,
      AXI_20_ARID(5 downto 0) => B"000000",
      AXI_20_ARLEN(3 downto 0) => vip_S01_M_AXI_ARLEN(3 downto 0),
      AXI_20_ARREADY => vip_S01_M_AXI_ARREADY,
      AXI_20_ARSIZE(2 downto 0) => B"101",
      AXI_20_ARVALID => vip_S01_M_AXI_ARVALID,
      AXI_20_AWADDR(32 downto 0) => vip_S01_M_AXI_AWADDR(32 downto 0),
      AXI_20_AWBURST(1 downto 0) => vip_S01_M_AXI_AWBURST(1 downto 0),
      AXI_20_AWID(5 downto 0) => B"000000",
      AXI_20_AWLEN(3 downto 0) => vip_S01_M_AXI_AWLEN(3 downto 0),
      AXI_20_AWREADY => vip_S01_M_AXI_AWREADY,
      AXI_20_AWSIZE(2 downto 0) => B"101",
      AXI_20_AWVALID => vip_S01_M_AXI_AWVALID,
      AXI_20_BID(5 downto 0) => NLW_hbm_inst_AXI_20_BID_UNCONNECTED(5 downto 0),
      AXI_20_BREADY => vip_S01_M_AXI_BREADY,
      AXI_20_BRESP(1 downto 0) => vip_S01_M_AXI_BRESP(1 downto 0),
      AXI_20_BVALID => vip_S01_M_AXI_BVALID,
      AXI_20_RDATA(255 downto 0) => vip_S01_M_AXI_RDATA(255 downto 0),
      AXI_20_RDATA_PARITY(31 downto 0) => NLW_hbm_inst_AXI_20_RDATA_PARITY_UNCONNECTED(31 downto 0),
      AXI_20_RID(5 downto 0) => NLW_hbm_inst_AXI_20_RID_UNCONNECTED(5 downto 0),
      AXI_20_RLAST => vip_S01_M_AXI_RLAST,
      AXI_20_RREADY => vip_S01_M_AXI_RREADY,
      AXI_20_RRESP(1 downto 0) => vip_S01_M_AXI_RRESP(1 downto 0),
      AXI_20_RVALID => vip_S01_M_AXI_RVALID,
      AXI_20_WDATA(255 downto 0) => vip_S01_M_AXI_WDATA(255 downto 0),
      AXI_20_WDATA_PARITY(31 downto 0) => B"00000000000000000000000000000000",
      AXI_20_WLAST => vip_S01_M_AXI_WLAST,
      AXI_20_WREADY => vip_S01_M_AXI_WREADY,
      AXI_20_WSTRB(31 downto 0) => vip_S01_M_AXI_WSTRB(31 downto 0),
      AXI_20_WVALID => vip_S01_M_AXI_WVALID,
      AXI_21_ACLK => hbm_aclk,
      AXI_21_ARADDR(32 downto 0) => vip_S02_M_AXI_ARADDR(32 downto 0),
      AXI_21_ARBURST(1 downto 0) => vip_S02_M_AXI_ARBURST(1 downto 0),
      AXI_21_ARESET_N => hbm_reset_sync_SLR0_interconnect_aresetn,
      AXI_21_ARID(5 downto 0) => B"000000",
      AXI_21_ARLEN(3 downto 0) => vip_S02_M_AXI_ARLEN(3 downto 0),
      AXI_21_ARREADY => vip_S02_M_AXI_ARREADY,
      AXI_21_ARSIZE(2 downto 0) => B"101",
      AXI_21_ARVALID => vip_S02_M_AXI_ARVALID,
      AXI_21_AWADDR(32 downto 0) => vip_S02_M_AXI_AWADDR(32 downto 0),
      AXI_21_AWBURST(1 downto 0) => vip_S02_M_AXI_AWBURST(1 downto 0),
      AXI_21_AWID(5 downto 0) => B"000000",
      AXI_21_AWLEN(3 downto 0) => vip_S02_M_AXI_AWLEN(3 downto 0),
      AXI_21_AWREADY => vip_S02_M_AXI_AWREADY,
      AXI_21_AWSIZE(2 downto 0) => B"101",
      AXI_21_AWVALID => vip_S02_M_AXI_AWVALID,
      AXI_21_BID(5 downto 0) => NLW_hbm_inst_AXI_21_BID_UNCONNECTED(5 downto 0),
      AXI_21_BREADY => vip_S02_M_AXI_BREADY,
      AXI_21_BRESP(1 downto 0) => vip_S02_M_AXI_BRESP(1 downto 0),
      AXI_21_BVALID => vip_S02_M_AXI_BVALID,
      AXI_21_RDATA(255 downto 0) => vip_S02_M_AXI_RDATA(255 downto 0),
      AXI_21_RDATA_PARITY(31 downto 0) => NLW_hbm_inst_AXI_21_RDATA_PARITY_UNCONNECTED(31 downto 0),
      AXI_21_RID(5 downto 0) => NLW_hbm_inst_AXI_21_RID_UNCONNECTED(5 downto 0),
      AXI_21_RLAST => vip_S02_M_AXI_RLAST,
      AXI_21_RREADY => vip_S02_M_AXI_RREADY,
      AXI_21_RRESP(1 downto 0) => vip_S02_M_AXI_RRESP(1 downto 0),
      AXI_21_RVALID => vip_S02_M_AXI_RVALID,
      AXI_21_WDATA(255 downto 0) => vip_S02_M_AXI_WDATA(255 downto 0),
      AXI_21_WDATA_PARITY(31 downto 0) => B"00000000000000000000000000000000",
      AXI_21_WLAST => vip_S02_M_AXI_WLAST,
      AXI_21_WREADY => vip_S02_M_AXI_WREADY,
      AXI_21_WSTRB(31 downto 0) => vip_S02_M_AXI_WSTRB(31 downto 0),
      AXI_21_WVALID => vip_S02_M_AXI_WVALID,
      AXI_22_ACLK => hbm_aclk,
      AXI_22_ARADDR(32 downto 0) => vip_S03_M_AXI_ARADDR(32 downto 0),
      AXI_22_ARBURST(1 downto 0) => vip_S03_M_AXI_ARBURST(1 downto 0),
      AXI_22_ARESET_N => hbm_reset_sync_SLR0_interconnect_aresetn,
      AXI_22_ARID(5 downto 0) => B"000000",
      AXI_22_ARLEN(3 downto 0) => vip_S03_M_AXI_ARLEN(3 downto 0),
      AXI_22_ARREADY => vip_S03_M_AXI_ARREADY,
      AXI_22_ARSIZE(2 downto 0) => B"101",
      AXI_22_ARVALID => vip_S03_M_AXI_ARVALID,
      AXI_22_AWADDR(32 downto 0) => vip_S03_M_AXI_AWADDR(32 downto 0),
      AXI_22_AWBURST(1 downto 0) => vip_S03_M_AXI_AWBURST(1 downto 0),
      AXI_22_AWID(5 downto 0) => B"000000",
      AXI_22_AWLEN(3 downto 0) => vip_S03_M_AXI_AWLEN(3 downto 0),
      AXI_22_AWREADY => vip_S03_M_AXI_AWREADY,
      AXI_22_AWSIZE(2 downto 0) => B"101",
      AXI_22_AWVALID => vip_S03_M_AXI_AWVALID,
      AXI_22_BID(5 downto 0) => NLW_hbm_inst_AXI_22_BID_UNCONNECTED(5 downto 0),
      AXI_22_BREADY => vip_S03_M_AXI_BREADY,
      AXI_22_BRESP(1 downto 0) => vip_S03_M_AXI_BRESP(1 downto 0),
      AXI_22_BVALID => vip_S03_M_AXI_BVALID,
      AXI_22_RDATA(255 downto 0) => vip_S03_M_AXI_RDATA(255 downto 0),
      AXI_22_RDATA_PARITY(31 downto 0) => NLW_hbm_inst_AXI_22_RDATA_PARITY_UNCONNECTED(31 downto 0),
      AXI_22_RID(5 downto 0) => NLW_hbm_inst_AXI_22_RID_UNCONNECTED(5 downto 0),
      AXI_22_RLAST => vip_S03_M_AXI_RLAST,
      AXI_22_RREADY => vip_S03_M_AXI_RREADY,
      AXI_22_RRESP(1 downto 0) => vip_S03_M_AXI_RRESP(1 downto 0),
      AXI_22_RVALID => vip_S03_M_AXI_RVALID,
      AXI_22_WDATA(255 downto 0) => vip_S03_M_AXI_WDATA(255 downto 0),
      AXI_22_WDATA_PARITY(31 downto 0) => B"00000000000000000000000000000000",
      AXI_22_WLAST => vip_S03_M_AXI_WLAST,
      AXI_22_WREADY => vip_S03_M_AXI_WREADY,
      AXI_22_WSTRB(31 downto 0) => vip_S03_M_AXI_WSTRB(31 downto 0),
      AXI_22_WVALID => vip_S03_M_AXI_WVALID,
      AXI_23_ACLK => hbm_aclk,
      AXI_23_ARADDR(32 downto 0) => vip_S00_M_AXI_ARADDR(32 downto 0),
      AXI_23_ARBURST(1 downto 0) => vip_S00_M_AXI_ARBURST(1 downto 0),
      AXI_23_ARESET_N => hbm_reset_sync_SLR0_interconnect_aresetn,
      AXI_23_ARID(5 downto 0) => B"000000",
      AXI_23_ARLEN(3 downto 0) => vip_S00_M_AXI_ARLEN(3 downto 0),
      AXI_23_ARREADY => vip_S00_M_AXI_ARREADY,
      AXI_23_ARSIZE(2 downto 0) => B"101",
      AXI_23_ARVALID => vip_S00_M_AXI_ARVALID,
      AXI_23_AWADDR(32 downto 0) => vip_S00_M_AXI_AWADDR(32 downto 0),
      AXI_23_AWBURST(1 downto 0) => vip_S00_M_AXI_AWBURST(1 downto 0),
      AXI_23_AWID(5 downto 0) => B"000000",
      AXI_23_AWLEN(3 downto 0) => vip_S00_M_AXI_AWLEN(3 downto 0),
      AXI_23_AWREADY => vip_S00_M_AXI_AWREADY,
      AXI_23_AWSIZE(2 downto 0) => B"101",
      AXI_23_AWVALID => vip_S00_M_AXI_AWVALID,
      AXI_23_BID(5 downto 0) => NLW_hbm_inst_AXI_23_BID_UNCONNECTED(5 downto 0),
      AXI_23_BREADY => vip_S00_M_AXI_BREADY,
      AXI_23_BRESP(1 downto 0) => vip_S00_M_AXI_BRESP(1 downto 0),
      AXI_23_BVALID => vip_S00_M_AXI_BVALID,
      AXI_23_RDATA(255 downto 0) => vip_S00_M_AXI_RDATA(255 downto 0),
      AXI_23_RDATA_PARITY(31 downto 0) => NLW_hbm_inst_AXI_23_RDATA_PARITY_UNCONNECTED(31 downto 0),
      AXI_23_RID(5 downto 0) => NLW_hbm_inst_AXI_23_RID_UNCONNECTED(5 downto 0),
      AXI_23_RLAST => vip_S00_M_AXI_RLAST,
      AXI_23_RREADY => vip_S00_M_AXI_RREADY,
      AXI_23_RRESP(1 downto 0) => vip_S00_M_AXI_RRESP(1 downto 0),
      AXI_23_RVALID => vip_S00_M_AXI_RVALID,
      AXI_23_WDATA(255 downto 0) => vip_S00_M_AXI_WDATA(255 downto 0),
      AXI_23_WDATA_PARITY(31 downto 0) => B"00000000000000000000000000000000",
      AXI_23_WLAST => vip_S00_M_AXI_WLAST,
      AXI_23_WREADY => vip_S00_M_AXI_WREADY,
      AXI_23_WSTRB(31 downto 0) => vip_S00_M_AXI_WSTRB(31 downto 0),
      AXI_23_WVALID => vip_S00_M_AXI_WVALID,
      AXI_24_ACLK => hbm_aclk,
      AXI_24_ARADDR(32 downto 0) => vip_S04_M_AXI_ARADDR(32 downto 0),
      AXI_24_ARBURST(1 downto 0) => vip_S04_M_AXI_ARBURST(1 downto 0),
      AXI_24_ARESET_N => hbm_reset_sync_SLR0_interconnect_aresetn,
      AXI_24_ARID(5 downto 0) => B"000000",
      AXI_24_ARLEN(3 downto 0) => vip_S04_M_AXI_ARLEN(3 downto 0),
      AXI_24_ARREADY => vip_S04_M_AXI_ARREADY,
      AXI_24_ARSIZE(2 downto 0) => B"101",
      AXI_24_ARVALID => vip_S04_M_AXI_ARVALID,
      AXI_24_AWADDR(32 downto 0) => vip_S04_M_AXI_AWADDR(32 downto 0),
      AXI_24_AWBURST(1 downto 0) => vip_S04_M_AXI_AWBURST(1 downto 0),
      AXI_24_AWID(5 downto 0) => B"000000",
      AXI_24_AWLEN(3 downto 0) => vip_S04_M_AXI_AWLEN(3 downto 0),
      AXI_24_AWREADY => vip_S04_M_AXI_AWREADY,
      AXI_24_AWSIZE(2 downto 0) => B"101",
      AXI_24_AWVALID => vip_S04_M_AXI_AWVALID,
      AXI_24_BID(5 downto 0) => NLW_hbm_inst_AXI_24_BID_UNCONNECTED(5 downto 0),
      AXI_24_BREADY => vip_S04_M_AXI_BREADY,
      AXI_24_BRESP(1 downto 0) => vip_S04_M_AXI_BRESP(1 downto 0),
      AXI_24_BVALID => vip_S04_M_AXI_BVALID,
      AXI_24_RDATA(255 downto 0) => vip_S04_M_AXI_RDATA(255 downto 0),
      AXI_24_RDATA_PARITY(31 downto 0) => NLW_hbm_inst_AXI_24_RDATA_PARITY_UNCONNECTED(31 downto 0),
      AXI_24_RID(5 downto 0) => NLW_hbm_inst_AXI_24_RID_UNCONNECTED(5 downto 0),
      AXI_24_RLAST => vip_S04_M_AXI_RLAST,
      AXI_24_RREADY => vip_S04_M_AXI_RREADY,
      AXI_24_RRESP(1 downto 0) => vip_S04_M_AXI_RRESP(1 downto 0),
      AXI_24_RVALID => vip_S04_M_AXI_RVALID,
      AXI_24_WDATA(255 downto 0) => vip_S04_M_AXI_WDATA(255 downto 0),
      AXI_24_WDATA_PARITY(31 downto 0) => B"00000000000000000000000000000000",
      AXI_24_WLAST => vip_S04_M_AXI_WLAST,
      AXI_24_WREADY => vip_S04_M_AXI_WREADY,
      AXI_24_WSTRB(31 downto 0) => vip_S04_M_AXI_WSTRB(31 downto 0),
      AXI_24_WVALID => vip_S04_M_AXI_WVALID,
      AXI_25_ACLK => hbm_aclk,
      AXI_25_ARADDR(32 downto 0) => vip_S05_M_AXI_ARADDR(32 downto 0),
      AXI_25_ARBURST(1 downto 0) => vip_S05_M_AXI_ARBURST(1 downto 0),
      AXI_25_ARESET_N => hbm_reset_sync_SLR0_interconnect_aresetn,
      AXI_25_ARID(5 downto 0) => B"000000",
      AXI_25_ARLEN(3 downto 0) => vip_S05_M_AXI_ARLEN(3 downto 0),
      AXI_25_ARREADY => vip_S05_M_AXI_ARREADY,
      AXI_25_ARSIZE(2 downto 0) => B"101",
      AXI_25_ARVALID => vip_S05_M_AXI_ARVALID,
      AXI_25_AWADDR(32 downto 0) => vip_S05_M_AXI_AWADDR(32 downto 0),
      AXI_25_AWBURST(1 downto 0) => vip_S05_M_AXI_AWBURST(1 downto 0),
      AXI_25_AWID(5 downto 0) => B"000000",
      AXI_25_AWLEN(3 downto 0) => vip_S05_M_AXI_AWLEN(3 downto 0),
      AXI_25_AWREADY => vip_S05_M_AXI_AWREADY,
      AXI_25_AWSIZE(2 downto 0) => B"101",
      AXI_25_AWVALID => vip_S05_M_AXI_AWVALID,
      AXI_25_BID(5 downto 0) => NLW_hbm_inst_AXI_25_BID_UNCONNECTED(5 downto 0),
      AXI_25_BREADY => vip_S05_M_AXI_BREADY,
      AXI_25_BRESP(1 downto 0) => vip_S05_M_AXI_BRESP(1 downto 0),
      AXI_25_BVALID => vip_S05_M_AXI_BVALID,
      AXI_25_RDATA(255 downto 0) => vip_S05_M_AXI_RDATA(255 downto 0),
      AXI_25_RDATA_PARITY(31 downto 0) => NLW_hbm_inst_AXI_25_RDATA_PARITY_UNCONNECTED(31 downto 0),
      AXI_25_RID(5 downto 0) => NLW_hbm_inst_AXI_25_RID_UNCONNECTED(5 downto 0),
      AXI_25_RLAST => vip_S05_M_AXI_RLAST,
      AXI_25_RREADY => vip_S05_M_AXI_RREADY,
      AXI_25_RRESP(1 downto 0) => vip_S05_M_AXI_RRESP(1 downto 0),
      AXI_25_RVALID => vip_S05_M_AXI_RVALID,
      AXI_25_WDATA(255 downto 0) => vip_S05_M_AXI_WDATA(255 downto 0),
      AXI_25_WDATA_PARITY(31 downto 0) => B"00000000000000000000000000000000",
      AXI_25_WLAST => vip_S05_M_AXI_WLAST,
      AXI_25_WREADY => vip_S05_M_AXI_WREADY,
      AXI_25_WSTRB(31 downto 0) => vip_S05_M_AXI_WSTRB(31 downto 0),
      AXI_25_WVALID => vip_S05_M_AXI_WVALID,
      AXI_26_ACLK => hbm_aclk,
      AXI_26_ARADDR(32 downto 0) => vip_S06_M_AXI_ARADDR(32 downto 0),
      AXI_26_ARBURST(1 downto 0) => vip_S06_M_AXI_ARBURST(1 downto 0),
      AXI_26_ARESET_N => hbm_reset_sync_SLR0_interconnect_aresetn,
      AXI_26_ARID(5 downto 0) => B"000000",
      AXI_26_ARLEN(3 downto 0) => vip_S06_M_AXI_ARLEN(3 downto 0),
      AXI_26_ARREADY => vip_S06_M_AXI_ARREADY,
      AXI_26_ARSIZE(2 downto 0) => B"101",
      AXI_26_ARVALID => vip_S06_M_AXI_ARVALID,
      AXI_26_AWADDR(32 downto 0) => vip_S06_M_AXI_AWADDR(32 downto 0),
      AXI_26_AWBURST(1 downto 0) => vip_S06_M_AXI_AWBURST(1 downto 0),
      AXI_26_AWID(5 downto 0) => B"000000",
      AXI_26_AWLEN(3 downto 0) => vip_S06_M_AXI_AWLEN(3 downto 0),
      AXI_26_AWREADY => vip_S06_M_AXI_AWREADY,
      AXI_26_AWSIZE(2 downto 0) => B"101",
      AXI_26_AWVALID => vip_S06_M_AXI_AWVALID,
      AXI_26_BID(5 downto 0) => NLW_hbm_inst_AXI_26_BID_UNCONNECTED(5 downto 0),
      AXI_26_BREADY => vip_S06_M_AXI_BREADY,
      AXI_26_BRESP(1 downto 0) => vip_S06_M_AXI_BRESP(1 downto 0),
      AXI_26_BVALID => vip_S06_M_AXI_BVALID,
      AXI_26_RDATA(255 downto 0) => vip_S06_M_AXI_RDATA(255 downto 0),
      AXI_26_RDATA_PARITY(31 downto 0) => NLW_hbm_inst_AXI_26_RDATA_PARITY_UNCONNECTED(31 downto 0),
      AXI_26_RID(5 downto 0) => NLW_hbm_inst_AXI_26_RID_UNCONNECTED(5 downto 0),
      AXI_26_RLAST => vip_S06_M_AXI_RLAST,
      AXI_26_RREADY => vip_S06_M_AXI_RREADY,
      AXI_26_RRESP(1 downto 0) => vip_S06_M_AXI_RRESP(1 downto 0),
      AXI_26_RVALID => vip_S06_M_AXI_RVALID,
      AXI_26_WDATA(255 downto 0) => vip_S06_M_AXI_WDATA(255 downto 0),
      AXI_26_WDATA_PARITY(31 downto 0) => B"00000000000000000000000000000000",
      AXI_26_WLAST => vip_S06_M_AXI_WLAST,
      AXI_26_WREADY => vip_S06_M_AXI_WREADY,
      AXI_26_WSTRB(31 downto 0) => vip_S06_M_AXI_WSTRB(31 downto 0),
      AXI_26_WVALID => vip_S06_M_AXI_WVALID,
      DRAM_0_STAT_CATTRIP => hbm_inst_DRAM_0_STAT_CATTRIP,
      DRAM_0_STAT_TEMP(6 downto 0) => DRAM_0_STAT_TEMP(6 downto 0),
      DRAM_1_STAT_CATTRIP => hbm_inst_DRAM_1_STAT_CATTRIP,
      DRAM_1_STAT_TEMP(6 downto 0) => DRAM_1_STAT_TEMP(6 downto 0),
      HBM_REF_CLK_0 => hbm_ref_clk,
      HBM_REF_CLK_1 => hbm_ref_clk,
      apb_complete_0 => hbm_inst_apb_complete_0,
      apb_complete_1 => hbm_inst_apb_complete_1
    );
hbm_reset_sync_SLR0: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_hbm_reset_sync_SLR0_0
     port map (
      aux_reset_in => \^dram_stat_cattrip\(0),
      bus_struct_reset(0) => NLW_hbm_reset_sync_SLR0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => hbm_aresetn,
      interconnect_aresetn(0) => hbm_reset_sync_SLR0_interconnect_aresetn,
      mb_debug_sys_rst => '0',
      mb_reset => NLW_hbm_reset_sync_SLR0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_hbm_reset_sync_SLR0_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_hbm_reset_sync_SLR0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => hbm_aclk
    );
hbm_reset_sync_SLR2: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_hbm_reset_sync_SLR2_0
     port map (
      aux_reset_in => \^dram_stat_cattrip\(0),
      bus_struct_reset(0) => NLW_hbm_reset_sync_SLR2_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => hbm_aresetn,
      interconnect_aresetn(0) => hbm_reset_sync_SLR2_interconnect_aresetn,
      mb_debug_sys_rst => '0',
      mb_reset => NLW_hbm_reset_sync_SLR2_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_hbm_reset_sync_SLR2_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_hbm_reset_sync_SLR2_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => hbm_aclk
    );
init_logic: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_init_logic_imp_156LN22
     port map (
      In0(0) => hbm_inst_apb_complete_0,
      In1(0) => hbm_inst_apb_complete_1,
      hbm_mc_init_seq_complete => hbm_mc_init_seq_complete
    );
path_20: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_20_imp_1XT8RPB
     port map (
      M_AXI_araddr(32 downto 0) => slice1_20_M_AXI_ARADDR(32 downto 0),
      M_AXI_arburst(1 downto 0) => slice1_20_M_AXI_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => slice1_20_M_AXI_ARCACHE(3 downto 0),
      M_AXI_arlen(3 downto 0) => slice1_20_M_AXI_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => slice1_20_M_AXI_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => slice1_20_M_AXI_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => slice1_20_M_AXI_ARQOS(3 downto 0),
      M_AXI_arready => slice1_20_M_AXI_ARREADY,
      M_AXI_arvalid => slice1_20_M_AXI_ARVALID,
      M_AXI_awaddr(32 downto 0) => slice1_20_M_AXI_AWADDR(32 downto 0),
      M_AXI_awburst(1 downto 0) => slice1_20_M_AXI_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => slice1_20_M_AXI_AWCACHE(3 downto 0),
      M_AXI_awlen(3 downto 0) => slice1_20_M_AXI_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => slice1_20_M_AXI_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => slice1_20_M_AXI_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => slice1_20_M_AXI_AWQOS(3 downto 0),
      M_AXI_awready => slice1_20_M_AXI_AWREADY,
      M_AXI_awvalid => slice1_20_M_AXI_AWVALID,
      M_AXI_bready => slice1_20_M_AXI_BREADY,
      M_AXI_bresp(1 downto 0) => slice1_20_M_AXI_BRESP(1 downto 0),
      M_AXI_bvalid => slice1_20_M_AXI_BVALID,
      M_AXI_rdata(255 downto 0) => slice1_20_M_AXI_RDATA(255 downto 0),
      M_AXI_rlast => slice1_20_M_AXI_RLAST,
      M_AXI_rready => slice1_20_M_AXI_RREADY,
      M_AXI_rresp(1 downto 0) => slice1_20_M_AXI_RRESP(1 downto 0),
      M_AXI_rvalid => slice1_20_M_AXI_RVALID,
      M_AXI_wdata(255 downto 0) => slice1_20_M_AXI_WDATA(255 downto 0),
      M_AXI_wlast => slice1_20_M_AXI_WLAST,
      M_AXI_wready => slice1_20_M_AXI_WREADY,
      M_AXI_wstrb(31 downto 0) => slice1_20_M_AXI_WSTRB(31 downto 0),
      M_AXI_wvalid => slice1_20_M_AXI_WVALID,
      S01_AXI_araddr(63 downto 0) => S01_AXI_araddr(63 downto 0),
      S01_AXI_arburst(1 downto 0) => S01_AXI_arburst(1 downto 0),
      S01_AXI_arcache(3 downto 0) => S01_AXI_arcache(3 downto 0),
      S01_AXI_arlen(7 downto 0) => S01_AXI_arlen(7 downto 0),
      S01_AXI_arlock(0) => S01_AXI_arlock(0),
      S01_AXI_arprot(2 downto 0) => S01_AXI_arprot(2 downto 0),
      S01_AXI_arqos(3 downto 0) => S01_AXI_arqos(3 downto 0),
      S01_AXI_arready(0) => S01_AXI_arready(0),
      S01_AXI_arsize(2 downto 0) => S01_AXI_arsize(2 downto 0),
      S01_AXI_arvalid(0) => S01_AXI_arvalid(0),
      S01_AXI_awaddr(63 downto 0) => S01_AXI_awaddr(63 downto 0),
      S01_AXI_awburst(1 downto 0) => S01_AXI_awburst(1 downto 0),
      S01_AXI_awcache(3 downto 0) => S01_AXI_awcache(3 downto 0),
      S01_AXI_awlen(7 downto 0) => S01_AXI_awlen(7 downto 0),
      S01_AXI_awlock(0) => S01_AXI_awlock(0),
      S01_AXI_awprot(2 downto 0) => S01_AXI_awprot(2 downto 0),
      S01_AXI_awqos(3 downto 0) => S01_AXI_awqos(3 downto 0),
      S01_AXI_awready(0) => S01_AXI_awready(0),
      S01_AXI_awsize(2 downto 0) => S01_AXI_awsize(2 downto 0),
      S01_AXI_awvalid(0) => S01_AXI_awvalid(0),
      S01_AXI_bready(0) => S01_AXI_bready(0),
      S01_AXI_bresp(1 downto 0) => S01_AXI_bresp(1 downto 0),
      S01_AXI_bvalid(0) => S01_AXI_bvalid(0),
      S01_AXI_rdata(31 downto 0) => S01_AXI_rdata(31 downto 0),
      S01_AXI_rlast(0) => S01_AXI_rlast(0),
      S01_AXI_rready(0) => S01_AXI_rready(0),
      S01_AXI_rresp(1 downto 0) => S01_AXI_rresp(1 downto 0),
      S01_AXI_rvalid(0) => S01_AXI_rvalid(0),
      S01_AXI_wdata(31 downto 0) => S01_AXI_wdata(31 downto 0),
      S01_AXI_wlast(0) => S01_AXI_wlast(0),
      S01_AXI_wready(0) => S01_AXI_wready(0),
      S01_AXI_wstrb(3 downto 0) => S01_AXI_wstrb(3 downto 0),
      S01_AXI_wvalid(0) => S01_AXI_wvalid(0),
      aclk1 => aclk1,
      aresetn => hbm_reset_sync_SLR0_interconnect_aresetn,
      aresetn1 => aresetn1,
      hbm_aclk => hbm_aclk
    );
path_21: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_21_imp_FBBGKH
     port map (
      M_AXI_araddr(32 downto 0) => slice2_21_M_AXI_ARADDR(32 downto 0),
      M_AXI_arburst(1 downto 0) => slice2_21_M_AXI_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => slice2_21_M_AXI_ARCACHE(3 downto 0),
      M_AXI_arlen(3 downto 0) => slice2_21_M_AXI_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => slice2_21_M_AXI_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => slice2_21_M_AXI_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => slice2_21_M_AXI_ARQOS(3 downto 0),
      M_AXI_arready => slice2_21_M_AXI_ARREADY,
      M_AXI_arvalid => slice2_21_M_AXI_ARVALID,
      M_AXI_awaddr(32 downto 0) => slice2_21_M_AXI_AWADDR(32 downto 0),
      M_AXI_awburst(1 downto 0) => slice2_21_M_AXI_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => slice2_21_M_AXI_AWCACHE(3 downto 0),
      M_AXI_awlen(3 downto 0) => slice2_21_M_AXI_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => slice2_21_M_AXI_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => slice2_21_M_AXI_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => slice2_21_M_AXI_AWQOS(3 downto 0),
      M_AXI_awready => slice2_21_M_AXI_AWREADY,
      M_AXI_awvalid => slice2_21_M_AXI_AWVALID,
      M_AXI_bready => slice2_21_M_AXI_BREADY,
      M_AXI_bresp(1 downto 0) => slice2_21_M_AXI_BRESP(1 downto 0),
      M_AXI_bvalid => slice2_21_M_AXI_BVALID,
      M_AXI_rdata(255 downto 0) => slice2_21_M_AXI_RDATA(255 downto 0),
      M_AXI_rlast => slice2_21_M_AXI_RLAST,
      M_AXI_rready => slice2_21_M_AXI_RREADY,
      M_AXI_rresp(1 downto 0) => slice2_21_M_AXI_RRESP(1 downto 0),
      M_AXI_rvalid => slice2_21_M_AXI_RVALID,
      M_AXI_wdata(255 downto 0) => slice2_21_M_AXI_WDATA(255 downto 0),
      M_AXI_wlast => slice2_21_M_AXI_WLAST,
      M_AXI_wready => slice2_21_M_AXI_WREADY,
      M_AXI_wstrb(31 downto 0) => slice2_21_M_AXI_WSTRB(31 downto 0),
      M_AXI_wvalid => slice2_21_M_AXI_WVALID,
      S02_AXI_araddr(63 downto 0) => S02_AXI_araddr(63 downto 0),
      S02_AXI_arburst(1 downto 0) => S02_AXI_arburst(1 downto 0),
      S02_AXI_arcache(3 downto 0) => S02_AXI_arcache(3 downto 0),
      S02_AXI_arlen(7 downto 0) => S02_AXI_arlen(7 downto 0),
      S02_AXI_arlock(0) => S02_AXI_arlock(0),
      S02_AXI_arprot(2 downto 0) => S02_AXI_arprot(2 downto 0),
      S02_AXI_arqos(3 downto 0) => S02_AXI_arqos(3 downto 0),
      S02_AXI_arready(0) => S02_AXI_arready(0),
      S02_AXI_arsize(2 downto 0) => S02_AXI_arsize(2 downto 0),
      S02_AXI_arvalid(0) => S02_AXI_arvalid(0),
      S02_AXI_awaddr(63 downto 0) => S02_AXI_awaddr(63 downto 0),
      S02_AXI_awburst(1 downto 0) => S02_AXI_awburst(1 downto 0),
      S02_AXI_awcache(3 downto 0) => S02_AXI_awcache(3 downto 0),
      S02_AXI_awlen(7 downto 0) => S02_AXI_awlen(7 downto 0),
      S02_AXI_awlock(0) => S02_AXI_awlock(0),
      S02_AXI_awprot(2 downto 0) => S02_AXI_awprot(2 downto 0),
      S02_AXI_awqos(3 downto 0) => S02_AXI_awqos(3 downto 0),
      S02_AXI_awready(0) => S02_AXI_awready(0),
      S02_AXI_awsize(2 downto 0) => S02_AXI_awsize(2 downto 0),
      S02_AXI_awvalid(0) => S02_AXI_awvalid(0),
      S02_AXI_bready(0) => S02_AXI_bready(0),
      S02_AXI_bresp(1 downto 0) => S02_AXI_bresp(1 downto 0),
      S02_AXI_bvalid(0) => S02_AXI_bvalid(0),
      S02_AXI_rdata(511 downto 0) => S02_AXI_rdata(511 downto 0),
      S02_AXI_rlast(0) => S02_AXI_rlast(0),
      S02_AXI_rready(0) => S02_AXI_rready(0),
      S02_AXI_rresp(1 downto 0) => S02_AXI_rresp(1 downto 0),
      S02_AXI_rvalid(0) => S02_AXI_rvalid(0),
      S02_AXI_wdata(511 downto 0) => S02_AXI_wdata(511 downto 0),
      S02_AXI_wlast(0) => S02_AXI_wlast(0),
      S02_AXI_wready(0) => S02_AXI_wready(0),
      S02_AXI_wstrb(63 downto 0) => S02_AXI_wstrb(63 downto 0),
      S02_AXI_wvalid(0) => S02_AXI_wvalid(0),
      aclk1 => aclk1,
      aresetn => hbm_reset_sync_SLR0_interconnect_aresetn,
      aresetn1 => aresetn1,
      hbm_aclk => hbm_aclk
    );
path_22: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_22_imp_1FJCOXU
     port map (
      M_AXI_araddr(32 downto 0) => slice3_22_M_AXI_ARADDR(32 downto 0),
      M_AXI_arburst(1 downto 0) => slice3_22_M_AXI_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => slice3_22_M_AXI_ARCACHE(3 downto 0),
      M_AXI_arlen(3 downto 0) => slice3_22_M_AXI_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => slice3_22_M_AXI_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => slice3_22_M_AXI_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => slice3_22_M_AXI_ARQOS(3 downto 0),
      M_AXI_arready => slice3_22_M_AXI_ARREADY,
      M_AXI_arvalid => slice3_22_M_AXI_ARVALID,
      M_AXI_awaddr(32 downto 0) => slice3_22_M_AXI_AWADDR(32 downto 0),
      M_AXI_awburst(1 downto 0) => slice3_22_M_AXI_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => slice3_22_M_AXI_AWCACHE(3 downto 0),
      M_AXI_awlen(3 downto 0) => slice3_22_M_AXI_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => slice3_22_M_AXI_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => slice3_22_M_AXI_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => slice3_22_M_AXI_AWQOS(3 downto 0),
      M_AXI_awready => slice3_22_M_AXI_AWREADY,
      M_AXI_awvalid => slice3_22_M_AXI_AWVALID,
      M_AXI_bready => slice3_22_M_AXI_BREADY,
      M_AXI_bresp(1 downto 0) => slice3_22_M_AXI_BRESP(1 downto 0),
      M_AXI_bvalid => slice3_22_M_AXI_BVALID,
      M_AXI_rdata(255 downto 0) => slice3_22_M_AXI_RDATA(255 downto 0),
      M_AXI_rlast => slice3_22_M_AXI_RLAST,
      M_AXI_rready => slice3_22_M_AXI_RREADY,
      M_AXI_rresp(1 downto 0) => slice3_22_M_AXI_RRESP(1 downto 0),
      M_AXI_rvalid => slice3_22_M_AXI_RVALID,
      M_AXI_wdata(255 downto 0) => slice3_22_M_AXI_WDATA(255 downto 0),
      M_AXI_wlast => slice3_22_M_AXI_WLAST,
      M_AXI_wready => slice3_22_M_AXI_WREADY,
      M_AXI_wstrb(31 downto 0) => slice3_22_M_AXI_WSTRB(31 downto 0),
      M_AXI_wvalid => slice3_22_M_AXI_WVALID,
      S03_AXI_araddr(63 downto 0) => S03_AXI_araddr(63 downto 0),
      S03_AXI_arburst(1 downto 0) => S03_AXI_arburst(1 downto 0),
      S03_AXI_arcache(3 downto 0) => S03_AXI_arcache(3 downto 0),
      S03_AXI_arlen(7 downto 0) => S03_AXI_arlen(7 downto 0),
      S03_AXI_arlock(0) => S03_AXI_arlock(0),
      S03_AXI_arprot(2 downto 0) => S03_AXI_arprot(2 downto 0),
      S03_AXI_arqos(3 downto 0) => S03_AXI_arqos(3 downto 0),
      S03_AXI_arready(0) => S03_AXI_arready(0),
      S03_AXI_arsize(2 downto 0) => S03_AXI_arsize(2 downto 0),
      S03_AXI_arvalid(0) => S03_AXI_arvalid(0),
      S03_AXI_awaddr(63 downto 0) => S03_AXI_awaddr(63 downto 0),
      S03_AXI_awburst(1 downto 0) => S03_AXI_awburst(1 downto 0),
      S03_AXI_awcache(3 downto 0) => S03_AXI_awcache(3 downto 0),
      S03_AXI_awlen(7 downto 0) => S03_AXI_awlen(7 downto 0),
      S03_AXI_awlock(0) => S03_AXI_awlock(0),
      S03_AXI_awprot(2 downto 0) => S03_AXI_awprot(2 downto 0),
      S03_AXI_awqos(3 downto 0) => S03_AXI_awqos(3 downto 0),
      S03_AXI_awready(0) => S03_AXI_awready(0),
      S03_AXI_awsize(2 downto 0) => S03_AXI_awsize(2 downto 0),
      S03_AXI_awvalid(0) => S03_AXI_awvalid(0),
      S03_AXI_bready(0) => S03_AXI_bready(0),
      S03_AXI_bresp(1 downto 0) => S03_AXI_bresp(1 downto 0),
      S03_AXI_bvalid(0) => S03_AXI_bvalid(0),
      S03_AXI_rdata(31 downto 0) => S03_AXI_rdata(31 downto 0),
      S03_AXI_rlast(0) => S03_AXI_rlast(0),
      S03_AXI_rready(0) => S03_AXI_rready(0),
      S03_AXI_rresp(1 downto 0) => S03_AXI_rresp(1 downto 0),
      S03_AXI_rvalid(0) => S03_AXI_rvalid(0),
      S03_AXI_wdata(31 downto 0) => S03_AXI_wdata(31 downto 0),
      S03_AXI_wlast(0) => S03_AXI_wlast(0),
      S03_AXI_wready(0) => S03_AXI_wready(0),
      S03_AXI_wstrb(3 downto 0) => S03_AXI_wstrb(3 downto 0),
      S03_AXI_wvalid(0) => S03_AXI_wvalid(0),
      aclk1 => aclk1,
      aresetn => hbm_reset_sync_SLR0_interconnect_aresetn,
      aresetn1 => aresetn1,
      hbm_aclk => hbm_aclk
    );
path_23: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_23_imp_WHHIHO
     port map (
      M_AXI_araddr(32 downto 0) => slice0_23_M_AXI_ARADDR(32 downto 0),
      M_AXI_arburst(1 downto 0) => slice0_23_M_AXI_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => slice0_23_M_AXI_ARCACHE(3 downto 0),
      M_AXI_arlen(3 downto 0) => slice0_23_M_AXI_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => slice0_23_M_AXI_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => slice0_23_M_AXI_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => slice0_23_M_AXI_ARQOS(3 downto 0),
      M_AXI_arready => slice0_23_M_AXI_ARREADY,
      M_AXI_arvalid => slice0_23_M_AXI_ARVALID,
      M_AXI_awaddr(32 downto 0) => slice0_23_M_AXI_AWADDR(32 downto 0),
      M_AXI_awburst(1 downto 0) => slice0_23_M_AXI_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => slice0_23_M_AXI_AWCACHE(3 downto 0),
      M_AXI_awlen(3 downto 0) => slice0_23_M_AXI_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => slice0_23_M_AXI_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => slice0_23_M_AXI_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => slice0_23_M_AXI_AWQOS(3 downto 0),
      M_AXI_awready => slice0_23_M_AXI_AWREADY,
      M_AXI_awvalid => slice0_23_M_AXI_AWVALID,
      M_AXI_bready => slice0_23_M_AXI_BREADY,
      M_AXI_bresp(1 downto 0) => slice0_23_M_AXI_BRESP(1 downto 0),
      M_AXI_bvalid => slice0_23_M_AXI_BVALID,
      M_AXI_rdata(255 downto 0) => slice0_23_M_AXI_RDATA(255 downto 0),
      M_AXI_rlast => slice0_23_M_AXI_RLAST,
      M_AXI_rready => slice0_23_M_AXI_RREADY,
      M_AXI_rresp(1 downto 0) => slice0_23_M_AXI_RRESP(1 downto 0),
      M_AXI_rvalid => slice0_23_M_AXI_RVALID,
      M_AXI_wdata(255 downto 0) => slice0_23_M_AXI_WDATA(255 downto 0),
      M_AXI_wlast => slice0_23_M_AXI_WLAST,
      M_AXI_wready => slice0_23_M_AXI_WREADY,
      M_AXI_wstrb(31 downto 0) => slice0_23_M_AXI_WSTRB(31 downto 0),
      M_AXI_wvalid => slice0_23_M_AXI_WVALID,
      S00_AXI_araddr(32 downto 0) => S00_AXI_araddr(32 downto 0),
      S00_AXI_arburst(1 downto 0) => S00_AXI_arburst(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S00_AXI_arcache(3 downto 0),
      S00_AXI_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      S00_AXI_arlock(0) => S00_AXI_arlock(0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S00_AXI_arqos(3 downto 0),
      S00_AXI_arready(0) => S00_AXI_arready(0),
      S00_AXI_arsize(2 downto 0) => S00_AXI_arsize(2 downto 0),
      S00_AXI_arvalid(0) => S00_AXI_arvalid(0),
      S00_AXI_awaddr(32 downto 0) => S00_AXI_awaddr(32 downto 0),
      S00_AXI_awburst(1 downto 0) => S00_AXI_awburst(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S00_AXI_awcache(3 downto 0),
      S00_AXI_awlen(7 downto 0) => S00_AXI_awlen(7 downto 0),
      S00_AXI_awlock(0) => S00_AXI_awlock(0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S00_AXI_awqos(3 downto 0),
      S00_AXI_awready(0) => S00_AXI_awready(0),
      S00_AXI_awsize(2 downto 0) => S00_AXI_awsize(2 downto 0),
      S00_AXI_awvalid(0) => S00_AXI_awvalid(0),
      S00_AXI_bready(0) => S00_AXI_bready(0),
      S00_AXI_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      S00_AXI_bvalid(0) => S00_AXI_bvalid(0),
      S00_AXI_rdata(511 downto 0) => S00_AXI_rdata(511 downto 0),
      S00_AXI_rlast(0) => S00_AXI_rlast(0),
      S00_AXI_rready(0) => S00_AXI_rready(0),
      S00_AXI_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      S00_AXI_rvalid(0) => S00_AXI_rvalid(0),
      S00_AXI_wdata(511 downto 0) => S00_AXI_wdata(511 downto 0),
      S00_AXI_wlast(0) => S00_AXI_wlast(0),
      S00_AXI_wready(0) => S00_AXI_wready(0),
      S00_AXI_wstrb(63 downto 0) => S00_AXI_wstrb(63 downto 0),
      S00_AXI_wvalid(0) => S00_AXI_wvalid(0),
      aclk => aclk,
      aresetn => aresetn,
      aresetn1 => hbm_reset_sync_SLR2_interconnect_aresetn,
      hbm_aclk => hbm_aclk
    );
path_24: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_24_imp_ZGQW91
     port map (
      M_AXI_araddr(32 downto 0) => slice4_24_M_AXI_ARADDR(32 downto 0),
      M_AXI_arburst(1 downto 0) => slice4_24_M_AXI_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => slice4_24_M_AXI_ARCACHE(3 downto 0),
      M_AXI_arlen(3 downto 0) => slice4_24_M_AXI_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => slice4_24_M_AXI_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => slice4_24_M_AXI_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => slice4_24_M_AXI_ARQOS(3 downto 0),
      M_AXI_arready => slice4_24_M_AXI_ARREADY,
      M_AXI_arvalid => slice4_24_M_AXI_ARVALID,
      M_AXI_awaddr(32 downto 0) => slice4_24_M_AXI_AWADDR(32 downto 0),
      M_AXI_awburst(1 downto 0) => slice4_24_M_AXI_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => slice4_24_M_AXI_AWCACHE(3 downto 0),
      M_AXI_awlen(3 downto 0) => slice4_24_M_AXI_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => slice4_24_M_AXI_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => slice4_24_M_AXI_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => slice4_24_M_AXI_AWQOS(3 downto 0),
      M_AXI_awready => slice4_24_M_AXI_AWREADY,
      M_AXI_awvalid => slice4_24_M_AXI_AWVALID,
      M_AXI_bready => slice4_24_M_AXI_BREADY,
      M_AXI_bresp(1 downto 0) => slice4_24_M_AXI_BRESP(1 downto 0),
      M_AXI_bvalid => slice4_24_M_AXI_BVALID,
      M_AXI_rdata(255 downto 0) => slice4_24_M_AXI_RDATA(255 downto 0),
      M_AXI_rlast => slice4_24_M_AXI_RLAST,
      M_AXI_rready => slice4_24_M_AXI_RREADY,
      M_AXI_rresp(1 downto 0) => slice4_24_M_AXI_RRESP(1 downto 0),
      M_AXI_rvalid => slice4_24_M_AXI_RVALID,
      M_AXI_wdata(255 downto 0) => slice4_24_M_AXI_WDATA(255 downto 0),
      M_AXI_wlast => slice4_24_M_AXI_WLAST,
      M_AXI_wready => slice4_24_M_AXI_WREADY,
      M_AXI_wstrb(31 downto 0) => slice4_24_M_AXI_WSTRB(31 downto 0),
      M_AXI_wvalid => slice4_24_M_AXI_WVALID,
      S04_AXI_araddr(63 downto 0) => S04_AXI_araddr(63 downto 0),
      S04_AXI_arburst(1 downto 0) => S04_AXI_arburst(1 downto 0),
      S04_AXI_arcache(3 downto 0) => S04_AXI_arcache(3 downto 0),
      S04_AXI_arlen(7 downto 0) => S04_AXI_arlen(7 downto 0),
      S04_AXI_arlock(0) => S04_AXI_arlock(0),
      S04_AXI_arprot(2 downto 0) => S04_AXI_arprot(2 downto 0),
      S04_AXI_arqos(3 downto 0) => S04_AXI_arqos(3 downto 0),
      S04_AXI_arready(0) => S04_AXI_arready(0),
      S04_AXI_arsize(2 downto 0) => S04_AXI_arsize(2 downto 0),
      S04_AXI_arvalid(0) => S04_AXI_arvalid(0),
      S04_AXI_awaddr(63 downto 0) => S04_AXI_awaddr(63 downto 0),
      S04_AXI_awburst(1 downto 0) => S04_AXI_awburst(1 downto 0),
      S04_AXI_awcache(3 downto 0) => S04_AXI_awcache(3 downto 0),
      S04_AXI_awlen(7 downto 0) => S04_AXI_awlen(7 downto 0),
      S04_AXI_awlock(0) => S04_AXI_awlock(0),
      S04_AXI_awprot(2 downto 0) => S04_AXI_awprot(2 downto 0),
      S04_AXI_awqos(3 downto 0) => S04_AXI_awqos(3 downto 0),
      S04_AXI_awready(0) => S04_AXI_awready(0),
      S04_AXI_awsize(2 downto 0) => S04_AXI_awsize(2 downto 0),
      S04_AXI_awvalid(0) => S04_AXI_awvalid(0),
      S04_AXI_bready(0) => S04_AXI_bready(0),
      S04_AXI_bresp(1 downto 0) => S04_AXI_bresp(1 downto 0),
      S04_AXI_bvalid(0) => S04_AXI_bvalid(0),
      S04_AXI_rdata(31 downto 0) => S04_AXI_rdata(31 downto 0),
      S04_AXI_rlast(0) => S04_AXI_rlast(0),
      S04_AXI_rready(0) => S04_AXI_rready(0),
      S04_AXI_rresp(1 downto 0) => S04_AXI_rresp(1 downto 0),
      S04_AXI_rvalid(0) => S04_AXI_rvalid(0),
      S04_AXI_wdata(31 downto 0) => S04_AXI_wdata(31 downto 0),
      S04_AXI_wlast(0) => S04_AXI_wlast(0),
      S04_AXI_wready(0) => S04_AXI_wready(0),
      S04_AXI_wstrb(3 downto 0) => S04_AXI_wstrb(3 downto 0),
      S04_AXI_wvalid(0) => S04_AXI_wvalid(0),
      aclk1 => aclk1,
      aresetn1 => aresetn1,
      hbm_aclk => hbm_aclk,
      interconnect_aresetn(0) => hbm_reset_sync_SLR0_interconnect_aresetn
    );
path_25: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_25_imp_1DSSZ8B
     port map (
      M_AXI_araddr(32 downto 0) => slice5_25_M_AXI_ARADDR(32 downto 0),
      M_AXI_arburst(1 downto 0) => slice5_25_M_AXI_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => slice5_25_M_AXI_ARCACHE(3 downto 0),
      M_AXI_arlen(3 downto 0) => slice5_25_M_AXI_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => slice5_25_M_AXI_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => slice5_25_M_AXI_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => slice5_25_M_AXI_ARQOS(3 downto 0),
      M_AXI_arready => slice5_25_M_AXI_ARREADY,
      M_AXI_arvalid => slice5_25_M_AXI_ARVALID,
      M_AXI_awaddr(32 downto 0) => slice5_25_M_AXI_AWADDR(32 downto 0),
      M_AXI_awburst(1 downto 0) => slice5_25_M_AXI_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => slice5_25_M_AXI_AWCACHE(3 downto 0),
      M_AXI_awlen(3 downto 0) => slice5_25_M_AXI_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => slice5_25_M_AXI_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => slice5_25_M_AXI_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => slice5_25_M_AXI_AWQOS(3 downto 0),
      M_AXI_awready => slice5_25_M_AXI_AWREADY,
      M_AXI_awvalid => slice5_25_M_AXI_AWVALID,
      M_AXI_bready => slice5_25_M_AXI_BREADY,
      M_AXI_bresp(1 downto 0) => slice5_25_M_AXI_BRESP(1 downto 0),
      M_AXI_bvalid => slice5_25_M_AXI_BVALID,
      M_AXI_rdata(255 downto 0) => slice5_25_M_AXI_RDATA(255 downto 0),
      M_AXI_rlast => slice5_25_M_AXI_RLAST,
      M_AXI_rready => slice5_25_M_AXI_RREADY,
      M_AXI_rresp(1 downto 0) => slice5_25_M_AXI_RRESP(1 downto 0),
      M_AXI_rvalid => slice5_25_M_AXI_RVALID,
      M_AXI_wdata(255 downto 0) => slice5_25_M_AXI_WDATA(255 downto 0),
      M_AXI_wlast => slice5_25_M_AXI_WLAST,
      M_AXI_wready => slice5_25_M_AXI_WREADY,
      M_AXI_wstrb(31 downto 0) => slice5_25_M_AXI_WSTRB(31 downto 0),
      M_AXI_wvalid => slice5_25_M_AXI_WVALID,
      S05_AXI_araddr(63 downto 0) => S05_AXI_araddr(63 downto 0),
      S05_AXI_arburst(1 downto 0) => S05_AXI_arburst(1 downto 0),
      S05_AXI_arcache(3 downto 0) => S05_AXI_arcache(3 downto 0),
      S05_AXI_arlen(7 downto 0) => S05_AXI_arlen(7 downto 0),
      S05_AXI_arlock(0) => S05_AXI_arlock(0),
      S05_AXI_arprot(2 downto 0) => S05_AXI_arprot(2 downto 0),
      S05_AXI_arqos(3 downto 0) => S05_AXI_arqos(3 downto 0),
      S05_AXI_arready(0) => S05_AXI_arready(0),
      S05_AXI_arsize(2 downto 0) => S05_AXI_arsize(2 downto 0),
      S05_AXI_arvalid(0) => S05_AXI_arvalid(0),
      S05_AXI_awaddr(63 downto 0) => S05_AXI_awaddr(63 downto 0),
      S05_AXI_awburst(1 downto 0) => S05_AXI_awburst(1 downto 0),
      S05_AXI_awcache(3 downto 0) => S05_AXI_awcache(3 downto 0),
      S05_AXI_awlen(7 downto 0) => S05_AXI_awlen(7 downto 0),
      S05_AXI_awlock(0) => S05_AXI_awlock(0),
      S05_AXI_awprot(2 downto 0) => S05_AXI_awprot(2 downto 0),
      S05_AXI_awqos(3 downto 0) => S05_AXI_awqos(3 downto 0),
      S05_AXI_awready(0) => S05_AXI_awready(0),
      S05_AXI_awsize(2 downto 0) => S05_AXI_awsize(2 downto 0),
      S05_AXI_awvalid(0) => S05_AXI_awvalid(0),
      S05_AXI_bready(0) => S05_AXI_bready(0),
      S05_AXI_bresp(1 downto 0) => S05_AXI_bresp(1 downto 0),
      S05_AXI_bvalid(0) => S05_AXI_bvalid(0),
      S05_AXI_rdata(31 downto 0) => S05_AXI_rdata(31 downto 0),
      S05_AXI_rlast(0) => S05_AXI_rlast(0),
      S05_AXI_rready(0) => S05_AXI_rready(0),
      S05_AXI_rresp(1 downto 0) => S05_AXI_rresp(1 downto 0),
      S05_AXI_rvalid(0) => S05_AXI_rvalid(0),
      S05_AXI_wdata(31 downto 0) => S05_AXI_wdata(31 downto 0),
      S05_AXI_wlast(0) => S05_AXI_wlast(0),
      S05_AXI_wready(0) => S05_AXI_wready(0),
      S05_AXI_wstrb(3 downto 0) => S05_AXI_wstrb(3 downto 0),
      S05_AXI_wvalid(0) => S05_AXI_wvalid(0),
      aclk1 => aclk1,
      aresetn1 => aresetn1,
      hbm_aclk => hbm_aclk,
      interconnect_aresetn(0) => hbm_reset_sync_SLR0_interconnect_aresetn
    );
path_26: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_path_26_imp_H6UVUG
     port map (
      M_AXI_araddr(32 downto 0) => slice6_26_M_AXI_ARADDR(32 downto 0),
      M_AXI_arburst(1 downto 0) => slice6_26_M_AXI_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => slice6_26_M_AXI_ARCACHE(3 downto 0),
      M_AXI_arlen(3 downto 0) => slice6_26_M_AXI_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => slice6_26_M_AXI_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => slice6_26_M_AXI_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => slice6_26_M_AXI_ARQOS(3 downto 0),
      M_AXI_arready => slice6_26_M_AXI_ARREADY,
      M_AXI_arvalid => slice6_26_M_AXI_ARVALID,
      M_AXI_awaddr(32 downto 0) => slice6_26_M_AXI_AWADDR(32 downto 0),
      M_AXI_awburst(1 downto 0) => slice6_26_M_AXI_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => slice6_26_M_AXI_AWCACHE(3 downto 0),
      M_AXI_awlen(3 downto 0) => slice6_26_M_AXI_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => slice6_26_M_AXI_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => slice6_26_M_AXI_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => slice6_26_M_AXI_AWQOS(3 downto 0),
      M_AXI_awready => slice6_26_M_AXI_AWREADY,
      M_AXI_awvalid => slice6_26_M_AXI_AWVALID,
      M_AXI_bready => slice6_26_M_AXI_BREADY,
      M_AXI_bresp(1 downto 0) => slice6_26_M_AXI_BRESP(1 downto 0),
      M_AXI_bvalid => slice6_26_M_AXI_BVALID,
      M_AXI_rdata(255 downto 0) => slice6_26_M_AXI_RDATA(255 downto 0),
      M_AXI_rlast => slice6_26_M_AXI_RLAST,
      M_AXI_rready => slice6_26_M_AXI_RREADY,
      M_AXI_rresp(1 downto 0) => slice6_26_M_AXI_RRESP(1 downto 0),
      M_AXI_rvalid => slice6_26_M_AXI_RVALID,
      M_AXI_wdata(255 downto 0) => slice6_26_M_AXI_WDATA(255 downto 0),
      M_AXI_wlast => slice6_26_M_AXI_WLAST,
      M_AXI_wready => slice6_26_M_AXI_WREADY,
      M_AXI_wstrb(31 downto 0) => slice6_26_M_AXI_WSTRB(31 downto 0),
      M_AXI_wvalid => slice6_26_M_AXI_WVALID,
      S06_AXI_araddr(63 downto 0) => S06_AXI_araddr(63 downto 0),
      S06_AXI_arburst(1 downto 0) => S06_AXI_arburst(1 downto 0),
      S06_AXI_arcache(3 downto 0) => S06_AXI_arcache(3 downto 0),
      S06_AXI_arlen(7 downto 0) => S06_AXI_arlen(7 downto 0),
      S06_AXI_arlock(0) => S06_AXI_arlock(0),
      S06_AXI_arprot(2 downto 0) => S06_AXI_arprot(2 downto 0),
      S06_AXI_arqos(3 downto 0) => S06_AXI_arqos(3 downto 0),
      S06_AXI_arready(0) => S06_AXI_arready(0),
      S06_AXI_arsize(2 downto 0) => S06_AXI_arsize(2 downto 0),
      S06_AXI_arvalid(0) => S06_AXI_arvalid(0),
      S06_AXI_awaddr(63 downto 0) => S06_AXI_awaddr(63 downto 0),
      S06_AXI_awburst(1 downto 0) => S06_AXI_awburst(1 downto 0),
      S06_AXI_awcache(3 downto 0) => S06_AXI_awcache(3 downto 0),
      S06_AXI_awlen(7 downto 0) => S06_AXI_awlen(7 downto 0),
      S06_AXI_awlock(0) => S06_AXI_awlock(0),
      S06_AXI_awprot(2 downto 0) => S06_AXI_awprot(2 downto 0),
      S06_AXI_awqos(3 downto 0) => S06_AXI_awqos(3 downto 0),
      S06_AXI_awready(0) => S06_AXI_awready(0),
      S06_AXI_awsize(2 downto 0) => S06_AXI_awsize(2 downto 0),
      S06_AXI_awvalid(0) => S06_AXI_awvalid(0),
      S06_AXI_bready(0) => S06_AXI_bready(0),
      S06_AXI_bresp(1 downto 0) => S06_AXI_bresp(1 downto 0),
      S06_AXI_bvalid(0) => S06_AXI_bvalid(0),
      S06_AXI_rdata(63 downto 0) => S06_AXI_rdata(63 downto 0),
      S06_AXI_rlast(0) => S06_AXI_rlast(0),
      S06_AXI_rready(0) => S06_AXI_rready(0),
      S06_AXI_rresp(1 downto 0) => S06_AXI_rresp(1 downto 0),
      S06_AXI_rvalid(0) => S06_AXI_rvalid(0),
      S06_AXI_wdata(63 downto 0) => S06_AXI_wdata(63 downto 0),
      S06_AXI_wlast(0) => S06_AXI_wlast(0),
      S06_AXI_wready(0) => S06_AXI_wready(0),
      S06_AXI_wstrb(7 downto 0) => S06_AXI_wstrb(7 downto 0),
      S06_AXI_wvalid(0) => S06_AXI_wvalid(0),
      aclk1 => aclk1,
      aresetn1 => aresetn1,
      hbm_aclk => hbm_aclk,
      interconnect_aresetn(0) => hbm_reset_sync_SLR0_interconnect_aresetn
    );
util_vector_logic: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_util_vector_logic_0
     port map (
      Op1(0) => hbm_inst_DRAM_0_STAT_CATTRIP,
      Op2(0) => hbm_inst_DRAM_1_STAT_CATTRIP,
      Res(0) => \^dram_stat_cattrip\(0)
    );
vip_S00: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S00_0
     port map (
      aclk => hbm_aclk,
      aresetn => hbm_reset_sync_SLR2_interconnect_aresetn,
      m_axi_araddr(32 downto 0) => vip_S00_M_AXI_ARADDR(32 downto 0),
      m_axi_arburst(1 downto 0) => vip_S00_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_vip_S00_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arlen(3 downto 0) => vip_S00_M_AXI_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => NLW_vip_S00_m_axi_arlock_UNCONNECTED(1 downto 0),
      m_axi_arprot(2 downto 0) => NLW_vip_S00_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_vip_S00_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => vip_S00_M_AXI_ARREADY,
      m_axi_arvalid => vip_S00_M_AXI_ARVALID,
      m_axi_awaddr(32 downto 0) => vip_S00_M_AXI_AWADDR(32 downto 0),
      m_axi_awburst(1 downto 0) => vip_S00_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_vip_S00_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awlen(3 downto 0) => vip_S00_M_AXI_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => NLW_vip_S00_m_axi_awlock_UNCONNECTED(1 downto 0),
      m_axi_awprot(2 downto 0) => NLW_vip_S00_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_vip_S00_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => vip_S00_M_AXI_AWREADY,
      m_axi_awvalid => vip_S00_M_AXI_AWVALID,
      m_axi_bready => vip_S00_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => vip_S00_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => vip_S00_M_AXI_BVALID,
      m_axi_rdata(255 downto 0) => vip_S00_M_AXI_RDATA(255 downto 0),
      m_axi_rlast => vip_S00_M_AXI_RLAST,
      m_axi_rready => vip_S00_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => vip_S00_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => vip_S00_M_AXI_RVALID,
      m_axi_wdata(255 downto 0) => vip_S00_M_AXI_WDATA(255 downto 0),
      m_axi_wlast => vip_S00_M_AXI_WLAST,
      m_axi_wready => vip_S00_M_AXI_WREADY,
      m_axi_wstrb(31 downto 0) => vip_S00_M_AXI_WSTRB(31 downto 0),
      m_axi_wvalid => vip_S00_M_AXI_WVALID,
      s_axi_araddr(32 downto 0) => slice0_23_M_AXI_ARADDR(32 downto 0),
      s_axi_arburst(1 downto 0) => slice0_23_M_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => slice0_23_M_AXI_ARCACHE(3 downto 0),
      s_axi_arlen(3 downto 0) => slice0_23_M_AXI_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => slice0_23_M_AXI_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => slice0_23_M_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => slice0_23_M_AXI_ARQOS(3 downto 0),
      s_axi_arready => slice0_23_M_AXI_ARREADY,
      s_axi_arvalid => slice0_23_M_AXI_ARVALID,
      s_axi_awaddr(32 downto 0) => slice0_23_M_AXI_AWADDR(32 downto 0),
      s_axi_awburst(1 downto 0) => slice0_23_M_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => slice0_23_M_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(3 downto 0) => slice0_23_M_AXI_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => slice0_23_M_AXI_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => slice0_23_M_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => slice0_23_M_AXI_AWQOS(3 downto 0),
      s_axi_awready => slice0_23_M_AXI_AWREADY,
      s_axi_awvalid => slice0_23_M_AXI_AWVALID,
      s_axi_bready => slice0_23_M_AXI_BREADY,
      s_axi_bresp(1 downto 0) => slice0_23_M_AXI_BRESP(1 downto 0),
      s_axi_bvalid => slice0_23_M_AXI_BVALID,
      s_axi_rdata(255 downto 0) => slice0_23_M_AXI_RDATA(255 downto 0),
      s_axi_rlast => slice0_23_M_AXI_RLAST,
      s_axi_rready => slice0_23_M_AXI_RREADY,
      s_axi_rresp(1 downto 0) => slice0_23_M_AXI_RRESP(1 downto 0),
      s_axi_rvalid => slice0_23_M_AXI_RVALID,
      s_axi_wdata(255 downto 0) => slice0_23_M_AXI_WDATA(255 downto 0),
      s_axi_wlast => slice0_23_M_AXI_WLAST,
      s_axi_wready => slice0_23_M_AXI_WREADY,
      s_axi_wstrb(31 downto 0) => slice0_23_M_AXI_WSTRB(31 downto 0),
      s_axi_wvalid => slice0_23_M_AXI_WVALID
    );
vip_S01: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S01_0
     port map (
      aclk => hbm_aclk,
      aresetn => hbm_reset_sync_SLR0_interconnect_aresetn,
      m_axi_araddr(32 downto 0) => vip_S01_M_AXI_ARADDR(32 downto 0),
      m_axi_arburst(1 downto 0) => vip_S01_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_vip_S01_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arlen(3 downto 0) => vip_S01_M_AXI_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => NLW_vip_S01_m_axi_arlock_UNCONNECTED(1 downto 0),
      m_axi_arprot(2 downto 0) => NLW_vip_S01_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_vip_S01_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => vip_S01_M_AXI_ARREADY,
      m_axi_arvalid => vip_S01_M_AXI_ARVALID,
      m_axi_awaddr(32 downto 0) => vip_S01_M_AXI_AWADDR(32 downto 0),
      m_axi_awburst(1 downto 0) => vip_S01_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_vip_S01_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awlen(3 downto 0) => vip_S01_M_AXI_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => NLW_vip_S01_m_axi_awlock_UNCONNECTED(1 downto 0),
      m_axi_awprot(2 downto 0) => NLW_vip_S01_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_vip_S01_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => vip_S01_M_AXI_AWREADY,
      m_axi_awvalid => vip_S01_M_AXI_AWVALID,
      m_axi_bready => vip_S01_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => vip_S01_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => vip_S01_M_AXI_BVALID,
      m_axi_rdata(255 downto 0) => vip_S01_M_AXI_RDATA(255 downto 0),
      m_axi_rlast => vip_S01_M_AXI_RLAST,
      m_axi_rready => vip_S01_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => vip_S01_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => vip_S01_M_AXI_RVALID,
      m_axi_wdata(255 downto 0) => vip_S01_M_AXI_WDATA(255 downto 0),
      m_axi_wlast => vip_S01_M_AXI_WLAST,
      m_axi_wready => vip_S01_M_AXI_WREADY,
      m_axi_wstrb(31 downto 0) => vip_S01_M_AXI_WSTRB(31 downto 0),
      m_axi_wvalid => vip_S01_M_AXI_WVALID,
      s_axi_araddr(32 downto 0) => slice1_20_M_AXI_ARADDR(32 downto 0),
      s_axi_arburst(1 downto 0) => slice1_20_M_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => slice1_20_M_AXI_ARCACHE(3 downto 0),
      s_axi_arlen(3 downto 0) => slice1_20_M_AXI_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => slice1_20_M_AXI_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => slice1_20_M_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => slice1_20_M_AXI_ARQOS(3 downto 0),
      s_axi_arready => slice1_20_M_AXI_ARREADY,
      s_axi_arvalid => slice1_20_M_AXI_ARVALID,
      s_axi_awaddr(32 downto 0) => slice1_20_M_AXI_AWADDR(32 downto 0),
      s_axi_awburst(1 downto 0) => slice1_20_M_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => slice1_20_M_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(3 downto 0) => slice1_20_M_AXI_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => slice1_20_M_AXI_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => slice1_20_M_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => slice1_20_M_AXI_AWQOS(3 downto 0),
      s_axi_awready => slice1_20_M_AXI_AWREADY,
      s_axi_awvalid => slice1_20_M_AXI_AWVALID,
      s_axi_bready => slice1_20_M_AXI_BREADY,
      s_axi_bresp(1 downto 0) => slice1_20_M_AXI_BRESP(1 downto 0),
      s_axi_bvalid => slice1_20_M_AXI_BVALID,
      s_axi_rdata(255 downto 0) => slice1_20_M_AXI_RDATA(255 downto 0),
      s_axi_rlast => slice1_20_M_AXI_RLAST,
      s_axi_rready => slice1_20_M_AXI_RREADY,
      s_axi_rresp(1 downto 0) => slice1_20_M_AXI_RRESP(1 downto 0),
      s_axi_rvalid => slice1_20_M_AXI_RVALID,
      s_axi_wdata(255 downto 0) => slice1_20_M_AXI_WDATA(255 downto 0),
      s_axi_wlast => slice1_20_M_AXI_WLAST,
      s_axi_wready => slice1_20_M_AXI_WREADY,
      s_axi_wstrb(31 downto 0) => slice1_20_M_AXI_WSTRB(31 downto 0),
      s_axi_wvalid => slice1_20_M_AXI_WVALID
    );
vip_S02: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S02_0
     port map (
      aclk => hbm_aclk,
      aresetn => hbm_reset_sync_SLR0_interconnect_aresetn,
      m_axi_araddr(32 downto 0) => vip_S02_M_AXI_ARADDR(32 downto 0),
      m_axi_arburst(1 downto 0) => vip_S02_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_vip_S02_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arlen(3 downto 0) => vip_S02_M_AXI_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => NLW_vip_S02_m_axi_arlock_UNCONNECTED(1 downto 0),
      m_axi_arprot(2 downto 0) => NLW_vip_S02_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_vip_S02_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => vip_S02_M_AXI_ARREADY,
      m_axi_arvalid => vip_S02_M_AXI_ARVALID,
      m_axi_awaddr(32 downto 0) => vip_S02_M_AXI_AWADDR(32 downto 0),
      m_axi_awburst(1 downto 0) => vip_S02_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_vip_S02_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awlen(3 downto 0) => vip_S02_M_AXI_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => NLW_vip_S02_m_axi_awlock_UNCONNECTED(1 downto 0),
      m_axi_awprot(2 downto 0) => NLW_vip_S02_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_vip_S02_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => vip_S02_M_AXI_AWREADY,
      m_axi_awvalid => vip_S02_M_AXI_AWVALID,
      m_axi_bready => vip_S02_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => vip_S02_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => vip_S02_M_AXI_BVALID,
      m_axi_rdata(255 downto 0) => vip_S02_M_AXI_RDATA(255 downto 0),
      m_axi_rlast => vip_S02_M_AXI_RLAST,
      m_axi_rready => vip_S02_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => vip_S02_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => vip_S02_M_AXI_RVALID,
      m_axi_wdata(255 downto 0) => vip_S02_M_AXI_WDATA(255 downto 0),
      m_axi_wlast => vip_S02_M_AXI_WLAST,
      m_axi_wready => vip_S02_M_AXI_WREADY,
      m_axi_wstrb(31 downto 0) => vip_S02_M_AXI_WSTRB(31 downto 0),
      m_axi_wvalid => vip_S02_M_AXI_WVALID,
      s_axi_araddr(32 downto 0) => slice2_21_M_AXI_ARADDR(32 downto 0),
      s_axi_arburst(1 downto 0) => slice2_21_M_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => slice2_21_M_AXI_ARCACHE(3 downto 0),
      s_axi_arlen(3 downto 0) => slice2_21_M_AXI_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => slice2_21_M_AXI_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => slice2_21_M_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => slice2_21_M_AXI_ARQOS(3 downto 0),
      s_axi_arready => slice2_21_M_AXI_ARREADY,
      s_axi_arvalid => slice2_21_M_AXI_ARVALID,
      s_axi_awaddr(32 downto 0) => slice2_21_M_AXI_AWADDR(32 downto 0),
      s_axi_awburst(1 downto 0) => slice2_21_M_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => slice2_21_M_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(3 downto 0) => slice2_21_M_AXI_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => slice2_21_M_AXI_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => slice2_21_M_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => slice2_21_M_AXI_AWQOS(3 downto 0),
      s_axi_awready => slice2_21_M_AXI_AWREADY,
      s_axi_awvalid => slice2_21_M_AXI_AWVALID,
      s_axi_bready => slice2_21_M_AXI_BREADY,
      s_axi_bresp(1 downto 0) => slice2_21_M_AXI_BRESP(1 downto 0),
      s_axi_bvalid => slice2_21_M_AXI_BVALID,
      s_axi_rdata(255 downto 0) => slice2_21_M_AXI_RDATA(255 downto 0),
      s_axi_rlast => slice2_21_M_AXI_RLAST,
      s_axi_rready => slice2_21_M_AXI_RREADY,
      s_axi_rresp(1 downto 0) => slice2_21_M_AXI_RRESP(1 downto 0),
      s_axi_rvalid => slice2_21_M_AXI_RVALID,
      s_axi_wdata(255 downto 0) => slice2_21_M_AXI_WDATA(255 downto 0),
      s_axi_wlast => slice2_21_M_AXI_WLAST,
      s_axi_wready => slice2_21_M_AXI_WREADY,
      s_axi_wstrb(31 downto 0) => slice2_21_M_AXI_WSTRB(31 downto 0),
      s_axi_wvalid => slice2_21_M_AXI_WVALID
    );
vip_S03: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S03_0
     port map (
      aclk => hbm_aclk,
      aresetn => hbm_reset_sync_SLR0_interconnect_aresetn,
      m_axi_araddr(32 downto 0) => vip_S03_M_AXI_ARADDR(32 downto 0),
      m_axi_arburst(1 downto 0) => vip_S03_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_vip_S03_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arlen(3 downto 0) => vip_S03_M_AXI_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => NLW_vip_S03_m_axi_arlock_UNCONNECTED(1 downto 0),
      m_axi_arprot(2 downto 0) => NLW_vip_S03_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_vip_S03_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => vip_S03_M_AXI_ARREADY,
      m_axi_arvalid => vip_S03_M_AXI_ARVALID,
      m_axi_awaddr(32 downto 0) => vip_S03_M_AXI_AWADDR(32 downto 0),
      m_axi_awburst(1 downto 0) => vip_S03_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_vip_S03_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awlen(3 downto 0) => vip_S03_M_AXI_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => NLW_vip_S03_m_axi_awlock_UNCONNECTED(1 downto 0),
      m_axi_awprot(2 downto 0) => NLW_vip_S03_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_vip_S03_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => vip_S03_M_AXI_AWREADY,
      m_axi_awvalid => vip_S03_M_AXI_AWVALID,
      m_axi_bready => vip_S03_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => vip_S03_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => vip_S03_M_AXI_BVALID,
      m_axi_rdata(255 downto 0) => vip_S03_M_AXI_RDATA(255 downto 0),
      m_axi_rlast => vip_S03_M_AXI_RLAST,
      m_axi_rready => vip_S03_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => vip_S03_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => vip_S03_M_AXI_RVALID,
      m_axi_wdata(255 downto 0) => vip_S03_M_AXI_WDATA(255 downto 0),
      m_axi_wlast => vip_S03_M_AXI_WLAST,
      m_axi_wready => vip_S03_M_AXI_WREADY,
      m_axi_wstrb(31 downto 0) => vip_S03_M_AXI_WSTRB(31 downto 0),
      m_axi_wvalid => vip_S03_M_AXI_WVALID,
      s_axi_araddr(32 downto 0) => slice3_22_M_AXI_ARADDR(32 downto 0),
      s_axi_arburst(1 downto 0) => slice3_22_M_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => slice3_22_M_AXI_ARCACHE(3 downto 0),
      s_axi_arlen(3 downto 0) => slice3_22_M_AXI_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => slice3_22_M_AXI_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => slice3_22_M_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => slice3_22_M_AXI_ARQOS(3 downto 0),
      s_axi_arready => slice3_22_M_AXI_ARREADY,
      s_axi_arvalid => slice3_22_M_AXI_ARVALID,
      s_axi_awaddr(32 downto 0) => slice3_22_M_AXI_AWADDR(32 downto 0),
      s_axi_awburst(1 downto 0) => slice3_22_M_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => slice3_22_M_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(3 downto 0) => slice3_22_M_AXI_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => slice3_22_M_AXI_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => slice3_22_M_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => slice3_22_M_AXI_AWQOS(3 downto 0),
      s_axi_awready => slice3_22_M_AXI_AWREADY,
      s_axi_awvalid => slice3_22_M_AXI_AWVALID,
      s_axi_bready => slice3_22_M_AXI_BREADY,
      s_axi_bresp(1 downto 0) => slice3_22_M_AXI_BRESP(1 downto 0),
      s_axi_bvalid => slice3_22_M_AXI_BVALID,
      s_axi_rdata(255 downto 0) => slice3_22_M_AXI_RDATA(255 downto 0),
      s_axi_rlast => slice3_22_M_AXI_RLAST,
      s_axi_rready => slice3_22_M_AXI_RREADY,
      s_axi_rresp(1 downto 0) => slice3_22_M_AXI_RRESP(1 downto 0),
      s_axi_rvalid => slice3_22_M_AXI_RVALID,
      s_axi_wdata(255 downto 0) => slice3_22_M_AXI_WDATA(255 downto 0),
      s_axi_wlast => slice3_22_M_AXI_WLAST,
      s_axi_wready => slice3_22_M_AXI_WREADY,
      s_axi_wstrb(31 downto 0) => slice3_22_M_AXI_WSTRB(31 downto 0),
      s_axi_wvalid => slice3_22_M_AXI_WVALID
    );
vip_S04: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S04_0
     port map (
      aclk => hbm_aclk,
      aresetn => hbm_reset_sync_SLR0_interconnect_aresetn,
      m_axi_araddr(32 downto 0) => vip_S04_M_AXI_ARADDR(32 downto 0),
      m_axi_arburst(1 downto 0) => vip_S04_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_vip_S04_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arlen(3 downto 0) => vip_S04_M_AXI_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => NLW_vip_S04_m_axi_arlock_UNCONNECTED(1 downto 0),
      m_axi_arprot(2 downto 0) => NLW_vip_S04_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_vip_S04_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => vip_S04_M_AXI_ARREADY,
      m_axi_arvalid => vip_S04_M_AXI_ARVALID,
      m_axi_awaddr(32 downto 0) => vip_S04_M_AXI_AWADDR(32 downto 0),
      m_axi_awburst(1 downto 0) => vip_S04_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_vip_S04_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awlen(3 downto 0) => vip_S04_M_AXI_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => NLW_vip_S04_m_axi_awlock_UNCONNECTED(1 downto 0),
      m_axi_awprot(2 downto 0) => NLW_vip_S04_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_vip_S04_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => vip_S04_M_AXI_AWREADY,
      m_axi_awvalid => vip_S04_M_AXI_AWVALID,
      m_axi_bready => vip_S04_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => vip_S04_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => vip_S04_M_AXI_BVALID,
      m_axi_rdata(255 downto 0) => vip_S04_M_AXI_RDATA(255 downto 0),
      m_axi_rlast => vip_S04_M_AXI_RLAST,
      m_axi_rready => vip_S04_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => vip_S04_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => vip_S04_M_AXI_RVALID,
      m_axi_wdata(255 downto 0) => vip_S04_M_AXI_WDATA(255 downto 0),
      m_axi_wlast => vip_S04_M_AXI_WLAST,
      m_axi_wready => vip_S04_M_AXI_WREADY,
      m_axi_wstrb(31 downto 0) => vip_S04_M_AXI_WSTRB(31 downto 0),
      m_axi_wvalid => vip_S04_M_AXI_WVALID,
      s_axi_araddr(32 downto 0) => slice4_24_M_AXI_ARADDR(32 downto 0),
      s_axi_arburst(1 downto 0) => slice4_24_M_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => slice4_24_M_AXI_ARCACHE(3 downto 0),
      s_axi_arlen(3 downto 0) => slice4_24_M_AXI_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => slice4_24_M_AXI_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => slice4_24_M_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => slice4_24_M_AXI_ARQOS(3 downto 0),
      s_axi_arready => slice4_24_M_AXI_ARREADY,
      s_axi_arvalid => slice4_24_M_AXI_ARVALID,
      s_axi_awaddr(32 downto 0) => slice4_24_M_AXI_AWADDR(32 downto 0),
      s_axi_awburst(1 downto 0) => slice4_24_M_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => slice4_24_M_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(3 downto 0) => slice4_24_M_AXI_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => slice4_24_M_AXI_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => slice4_24_M_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => slice4_24_M_AXI_AWQOS(3 downto 0),
      s_axi_awready => slice4_24_M_AXI_AWREADY,
      s_axi_awvalid => slice4_24_M_AXI_AWVALID,
      s_axi_bready => slice4_24_M_AXI_BREADY,
      s_axi_bresp(1 downto 0) => slice4_24_M_AXI_BRESP(1 downto 0),
      s_axi_bvalid => slice4_24_M_AXI_BVALID,
      s_axi_rdata(255 downto 0) => slice4_24_M_AXI_RDATA(255 downto 0),
      s_axi_rlast => slice4_24_M_AXI_RLAST,
      s_axi_rready => slice4_24_M_AXI_RREADY,
      s_axi_rresp(1 downto 0) => slice4_24_M_AXI_RRESP(1 downto 0),
      s_axi_rvalid => slice4_24_M_AXI_RVALID,
      s_axi_wdata(255 downto 0) => slice4_24_M_AXI_WDATA(255 downto 0),
      s_axi_wlast => slice4_24_M_AXI_WLAST,
      s_axi_wready => slice4_24_M_AXI_WREADY,
      s_axi_wstrb(31 downto 0) => slice4_24_M_AXI_WSTRB(31 downto 0),
      s_axi_wvalid => slice4_24_M_AXI_WVALID
    );
vip_S05: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S05_0
     port map (
      aclk => hbm_aclk,
      aresetn => hbm_reset_sync_SLR0_interconnect_aresetn,
      m_axi_araddr(32 downto 0) => vip_S05_M_AXI_ARADDR(32 downto 0),
      m_axi_arburst(1 downto 0) => vip_S05_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_vip_S05_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arlen(3 downto 0) => vip_S05_M_AXI_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => NLW_vip_S05_m_axi_arlock_UNCONNECTED(1 downto 0),
      m_axi_arprot(2 downto 0) => NLW_vip_S05_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_vip_S05_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => vip_S05_M_AXI_ARREADY,
      m_axi_arvalid => vip_S05_M_AXI_ARVALID,
      m_axi_awaddr(32 downto 0) => vip_S05_M_AXI_AWADDR(32 downto 0),
      m_axi_awburst(1 downto 0) => vip_S05_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_vip_S05_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awlen(3 downto 0) => vip_S05_M_AXI_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => NLW_vip_S05_m_axi_awlock_UNCONNECTED(1 downto 0),
      m_axi_awprot(2 downto 0) => NLW_vip_S05_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_vip_S05_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => vip_S05_M_AXI_AWREADY,
      m_axi_awvalid => vip_S05_M_AXI_AWVALID,
      m_axi_bready => vip_S05_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => vip_S05_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => vip_S05_M_AXI_BVALID,
      m_axi_rdata(255 downto 0) => vip_S05_M_AXI_RDATA(255 downto 0),
      m_axi_rlast => vip_S05_M_AXI_RLAST,
      m_axi_rready => vip_S05_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => vip_S05_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => vip_S05_M_AXI_RVALID,
      m_axi_wdata(255 downto 0) => vip_S05_M_AXI_WDATA(255 downto 0),
      m_axi_wlast => vip_S05_M_AXI_WLAST,
      m_axi_wready => vip_S05_M_AXI_WREADY,
      m_axi_wstrb(31 downto 0) => vip_S05_M_AXI_WSTRB(31 downto 0),
      m_axi_wvalid => vip_S05_M_AXI_WVALID,
      s_axi_araddr(32 downto 0) => slice5_25_M_AXI_ARADDR(32 downto 0),
      s_axi_arburst(1 downto 0) => slice5_25_M_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => slice5_25_M_AXI_ARCACHE(3 downto 0),
      s_axi_arlen(3 downto 0) => slice5_25_M_AXI_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => slice5_25_M_AXI_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => slice5_25_M_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => slice5_25_M_AXI_ARQOS(3 downto 0),
      s_axi_arready => slice5_25_M_AXI_ARREADY,
      s_axi_arvalid => slice5_25_M_AXI_ARVALID,
      s_axi_awaddr(32 downto 0) => slice5_25_M_AXI_AWADDR(32 downto 0),
      s_axi_awburst(1 downto 0) => slice5_25_M_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => slice5_25_M_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(3 downto 0) => slice5_25_M_AXI_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => slice5_25_M_AXI_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => slice5_25_M_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => slice5_25_M_AXI_AWQOS(3 downto 0),
      s_axi_awready => slice5_25_M_AXI_AWREADY,
      s_axi_awvalid => slice5_25_M_AXI_AWVALID,
      s_axi_bready => slice5_25_M_AXI_BREADY,
      s_axi_bresp(1 downto 0) => slice5_25_M_AXI_BRESP(1 downto 0),
      s_axi_bvalid => slice5_25_M_AXI_BVALID,
      s_axi_rdata(255 downto 0) => slice5_25_M_AXI_RDATA(255 downto 0),
      s_axi_rlast => slice5_25_M_AXI_RLAST,
      s_axi_rready => slice5_25_M_AXI_RREADY,
      s_axi_rresp(1 downto 0) => slice5_25_M_AXI_RRESP(1 downto 0),
      s_axi_rvalid => slice5_25_M_AXI_RVALID,
      s_axi_wdata(255 downto 0) => slice5_25_M_AXI_WDATA(255 downto 0),
      s_axi_wlast => slice5_25_M_AXI_WLAST,
      s_axi_wready => slice5_25_M_AXI_WREADY,
      s_axi_wstrb(31 downto 0) => slice5_25_M_AXI_WSTRB(31 downto 0),
      s_axi_wvalid => slice5_25_M_AXI_WVALID
    );
vip_S06: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca_vip_S06_0
     port map (
      aclk => hbm_aclk,
      aresetn => hbm_reset_sync_SLR0_interconnect_aresetn,
      m_axi_araddr(32 downto 0) => vip_S06_M_AXI_ARADDR(32 downto 0),
      m_axi_arburst(1 downto 0) => vip_S06_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_vip_S06_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arlen(3 downto 0) => vip_S06_M_AXI_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => NLW_vip_S06_m_axi_arlock_UNCONNECTED(1 downto 0),
      m_axi_arprot(2 downto 0) => NLW_vip_S06_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_vip_S06_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => vip_S06_M_AXI_ARREADY,
      m_axi_arvalid => vip_S06_M_AXI_ARVALID,
      m_axi_awaddr(32 downto 0) => vip_S06_M_AXI_AWADDR(32 downto 0),
      m_axi_awburst(1 downto 0) => vip_S06_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_vip_S06_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awlen(3 downto 0) => vip_S06_M_AXI_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => NLW_vip_S06_m_axi_awlock_UNCONNECTED(1 downto 0),
      m_axi_awprot(2 downto 0) => NLW_vip_S06_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_vip_S06_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => vip_S06_M_AXI_AWREADY,
      m_axi_awvalid => vip_S06_M_AXI_AWVALID,
      m_axi_bready => vip_S06_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => vip_S06_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => vip_S06_M_AXI_BVALID,
      m_axi_rdata(255 downto 0) => vip_S06_M_AXI_RDATA(255 downto 0),
      m_axi_rlast => vip_S06_M_AXI_RLAST,
      m_axi_rready => vip_S06_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => vip_S06_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => vip_S06_M_AXI_RVALID,
      m_axi_wdata(255 downto 0) => vip_S06_M_AXI_WDATA(255 downto 0),
      m_axi_wlast => vip_S06_M_AXI_WLAST,
      m_axi_wready => vip_S06_M_AXI_WREADY,
      m_axi_wstrb(31 downto 0) => vip_S06_M_AXI_WSTRB(31 downto 0),
      m_axi_wvalid => vip_S06_M_AXI_WVALID,
      s_axi_araddr(32 downto 0) => slice6_26_M_AXI_ARADDR(32 downto 0),
      s_axi_arburst(1 downto 0) => slice6_26_M_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => slice6_26_M_AXI_ARCACHE(3 downto 0),
      s_axi_arlen(3 downto 0) => slice6_26_M_AXI_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => slice6_26_M_AXI_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => slice6_26_M_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => slice6_26_M_AXI_ARQOS(3 downto 0),
      s_axi_arready => slice6_26_M_AXI_ARREADY,
      s_axi_arvalid => slice6_26_M_AXI_ARVALID,
      s_axi_awaddr(32 downto 0) => slice6_26_M_AXI_AWADDR(32 downto 0),
      s_axi_awburst(1 downto 0) => slice6_26_M_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => slice6_26_M_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(3 downto 0) => slice6_26_M_AXI_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => slice6_26_M_AXI_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => slice6_26_M_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => slice6_26_M_AXI_AWQOS(3 downto 0),
      s_axi_awready => slice6_26_M_AXI_AWREADY,
      s_axi_awvalid => slice6_26_M_AXI_AWVALID,
      s_axi_bready => slice6_26_M_AXI_BREADY,
      s_axi_bresp(1 downto 0) => slice6_26_M_AXI_BRESP(1 downto 0),
      s_axi_bvalid => slice6_26_M_AXI_BVALID,
      s_axi_rdata(255 downto 0) => slice6_26_M_AXI_RDATA(255 downto 0),
      s_axi_rlast => slice6_26_M_AXI_RLAST,
      s_axi_rready => slice6_26_M_AXI_RREADY,
      s_axi_rresp(1 downto 0) => slice6_26_M_AXI_RRESP(1 downto 0),
      s_axi_rvalid => slice6_26_M_AXI_RVALID,
      s_axi_wdata(255 downto 0) => slice6_26_M_AXI_WDATA(255 downto 0),
      s_axi_wlast => slice6_26_M_AXI_WLAST,
      s_axi_wready => slice6_26_M_AXI_WREADY,
      s_axi_wstrb(31 downto 0) => slice6_26_M_AXI_WSTRB(31 downto 0),
      s_axi_wvalid => slice6_26_M_AXI_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    hbm_aclk : in STD_LOGIC;
    hbm_aresetn : in STD_LOGIC;
    hbm_ref_clk : in STD_LOGIC;
    hbm_mc_init_seq_complete : out STD_LOGIC;
    DRAM_0_STAT_TEMP : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DRAM_1_STAT_TEMP : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DRAM_STAT_CATTRIP : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_awaddr : in STD_LOGIC_VECTOR ( 22 downto 0 );
    S_AXI_CTRL_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTRL_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CTRL_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_araddr : in STD_LOGIC_VECTOR ( 22 downto 0 );
    S_AXI_CTRL_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTRL_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CTRL_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    ctrl_aclk : in STD_LOGIC;
    ctrl_aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    aclk1 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aresetn1 : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S02_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S03_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S03_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S03_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S03_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S04_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S04_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S04_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S04_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S05_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S05_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S05_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S05_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S05_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S05_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S06_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S06_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S06_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S06_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S06_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S06_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S06_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S06_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S06_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S06_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S06_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S06_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S06_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S06_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S06_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S06_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S06_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S06_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S06_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "pfm_dynamic_hmss_0_0,bd_5dca,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_5dca,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "pfm_dynamic_hmss_0_0.hwdef";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLK.aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLK.aclk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN pfm_dynamic_dma_pcie_axi_aclk, ASSOCIATED_BUSIF S00_AXI, INSERT_VIP 0, ASSOCIATED_CLKEN m_sc_aclken";
  attribute X_INTERFACE_INFO of aclk1 : signal is "xilinx.com:signal:clock:1.0 CLK.aclk1 CLK";
  attribute X_INTERFACE_PARAMETER of aclk1 : signal is "XIL_INTERFACENAME CLK.aclk1, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, ASSOCIATED_BUSIF S01_AXI:S02_AXI:S03_AXI:S04_AXI:S05_AXI:S06_AXI, INSERT_VIP 0, ASSOCIATED_CLKEN m_sc_aclken";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST.aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST.aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn1 : signal is "xilinx.com:signal:reset:1.0 RST.aresetn1 RST";
  attribute X_INTERFACE_PARAMETER of aresetn1 : signal is "XIL_INTERFACENAME RST.aresetn1, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ctrl_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.ctrl_aclk CLK";
  attribute X_INTERFACE_PARAMETER of ctrl_aclk : signal is "XIL_INTERFACENAME CLK.ctrl_aclk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN pfm_dynamic_s_axi_aclk, ASSOCIATED_BUSIF S_AXI_CTRL, ASSOCIATED_RESET ctrl_aresetn, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ctrl_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.ctrl_aresetn RST";
  attribute X_INTERFACE_PARAMETER of ctrl_aresetn : signal is "XIL_INTERFACENAME RST.ctrl_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of hbm_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.hbm_aclk CLK";
  attribute X_INTERFACE_PARAMETER of hbm_aclk : signal is "XIL_INTERFACENAME CLK.hbm_aclk, FREQ_HZ 450000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clk_out1_pfm_top_clkwiz_hbm_aclk_0, INSERT_VIP 0, ASSOCIATED_CLKEN s_sc_aclken";
  attribute X_INTERFACE_INFO of hbm_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.hbm_aresetn RST";
  attribute X_INTERFACE_PARAMETER of hbm_aresetn : signal is "XIL_INTERFACENAME RST.hbm_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of hbm_ref_clk : signal is "xilinx.com:signal:clock:1.0 CLK.hbm_ref_clk CLK";
  attribute X_INTERFACE_PARAMETER of hbm_ref_clk : signal is "XIL_INTERFACENAME CLK.hbm_ref_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN pfm_dynamic_hbm_ref_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of DRAM_STAT_CATTRIP : signal is "xilinx.com:signal:interrupt:1.0 INTR.DRAM_STAT_CATTRIP INTERRUPT";
  attribute X_INTERFACE_PARAMETER of DRAM_STAT_CATTRIP : signal is "XIL_INTERFACENAME INTR.DRAM_STAT_CATTRIP, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of S00_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of S00_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST";
  attribute X_INTERFACE_INFO of S00_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE";
  attribute X_INTERFACE_INFO of S00_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN";
  attribute X_INTERFACE_INFO of S00_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK";
  attribute X_INTERFACE_INFO of S00_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of S00_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS";
  attribute X_INTERFACE_INFO of S00_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of S00_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE";
  attribute X_INTERFACE_INFO of S00_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of S00_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of S00_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST";
  attribute X_INTERFACE_INFO of S00_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE";
  attribute X_INTERFACE_INFO of S00_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN";
  attribute X_INTERFACE_INFO of S00_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK";
  attribute X_INTERFACE_INFO of S00_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of S00_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS";
  attribute X_INTERFACE_INFO of S00_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of S00_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE";
  attribute X_INTERFACE_INFO of S00_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of S00_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of S00_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of S00_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of S00_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of S00_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RLAST";
  attribute X_INTERFACE_INFO of S00_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of S00_AXI_rready : signal is "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 33, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN pfm_dynamic_dma_pcie_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S00_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of S00_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of S00_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of S00_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WLAST";
  attribute X_INTERFACE_INFO of S00_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of S00_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  attribute X_INTERFACE_INFO of S00_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of S01_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARADDR";
  attribute X_INTERFACE_INFO of S01_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARBURST";
  attribute X_INTERFACE_INFO of S01_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE";
  attribute X_INTERFACE_INFO of S01_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARLEN";
  attribute X_INTERFACE_INFO of S01_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK";
  attribute X_INTERFACE_INFO of S01_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARPROT";
  attribute X_INTERFACE_INFO of S01_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARQOS";
  attribute X_INTERFACE_INFO of S01_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARREADY";
  attribute X_INTERFACE_INFO of S01_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARSIZE";
  attribute X_INTERFACE_INFO of S01_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARVALID";
  attribute X_INTERFACE_INFO of S01_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWADDR";
  attribute X_INTERFACE_INFO of S01_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWBURST";
  attribute X_INTERFACE_INFO of S01_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE";
  attribute X_INTERFACE_INFO of S01_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWLEN";
  attribute X_INTERFACE_INFO of S01_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK";
  attribute X_INTERFACE_INFO of S01_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWPROT";
  attribute X_INTERFACE_INFO of S01_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWQOS";
  attribute X_INTERFACE_INFO of S01_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWREADY";
  attribute X_INTERFACE_INFO of S01_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWSIZE";
  attribute X_INTERFACE_INFO of S01_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWVALID";
  attribute X_INTERFACE_INFO of S01_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI BREADY";
  attribute X_INTERFACE_INFO of S01_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S01_AXI BRESP";
  attribute X_INTERFACE_INFO of S01_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI BVALID";
  attribute X_INTERFACE_INFO of S01_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RDATA";
  attribute X_INTERFACE_INFO of S01_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RLAST";
  attribute X_INTERFACE_INFO of S01_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of S01_AXI_rready : signal is "XIL_INTERFACENAME S01_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 33, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S01_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RRESP";
  attribute X_INTERFACE_INFO of S01_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RVALID";
  attribute X_INTERFACE_INFO of S01_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WDATA";
  attribute X_INTERFACE_INFO of S01_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WLAST";
  attribute X_INTERFACE_INFO of S01_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WREADY";
  attribute X_INTERFACE_INFO of S01_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WSTRB";
  attribute X_INTERFACE_INFO of S01_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WVALID";
  attribute X_INTERFACE_INFO of S02_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARADDR";
  attribute X_INTERFACE_INFO of S02_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARBURST";
  attribute X_INTERFACE_INFO of S02_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARCACHE";
  attribute X_INTERFACE_INFO of S02_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARLEN";
  attribute X_INTERFACE_INFO of S02_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARLOCK";
  attribute X_INTERFACE_INFO of S02_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARPROT";
  attribute X_INTERFACE_INFO of S02_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARQOS";
  attribute X_INTERFACE_INFO of S02_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARREADY";
  attribute X_INTERFACE_INFO of S02_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARSIZE";
  attribute X_INTERFACE_INFO of S02_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARVALID";
  attribute X_INTERFACE_INFO of S02_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWADDR";
  attribute X_INTERFACE_INFO of S02_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWBURST";
  attribute X_INTERFACE_INFO of S02_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWCACHE";
  attribute X_INTERFACE_INFO of S02_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWLEN";
  attribute X_INTERFACE_INFO of S02_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWLOCK";
  attribute X_INTERFACE_INFO of S02_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWPROT";
  attribute X_INTERFACE_INFO of S02_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWQOS";
  attribute X_INTERFACE_INFO of S02_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWREADY";
  attribute X_INTERFACE_INFO of S02_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWSIZE";
  attribute X_INTERFACE_INFO of S02_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWVALID";
  attribute X_INTERFACE_INFO of S02_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S02_AXI BREADY";
  attribute X_INTERFACE_INFO of S02_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S02_AXI BRESP";
  attribute X_INTERFACE_INFO of S02_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI BVALID";
  attribute X_INTERFACE_INFO of S02_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S02_AXI RDATA";
  attribute X_INTERFACE_INFO of S02_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 S02_AXI RLAST";
  attribute X_INTERFACE_INFO of S02_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S02_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of S02_AXI_rready : signal is "XIL_INTERFACENAME S02_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 33, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S02_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S02_AXI RRESP";
  attribute X_INTERFACE_INFO of S02_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI RVALID";
  attribute X_INTERFACE_INFO of S02_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S02_AXI WDATA";
  attribute X_INTERFACE_INFO of S02_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 S02_AXI WLAST";
  attribute X_INTERFACE_INFO of S02_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S02_AXI WREADY";
  attribute X_INTERFACE_INFO of S02_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S02_AXI WSTRB";
  attribute X_INTERFACE_INFO of S02_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI WVALID";
  attribute X_INTERFACE_INFO of S03_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S03_AXI ARADDR";
  attribute X_INTERFACE_INFO of S03_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 S03_AXI ARBURST";
  attribute X_INTERFACE_INFO of S03_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 S03_AXI ARCACHE";
  attribute X_INTERFACE_INFO of S03_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 S03_AXI ARLEN";
  attribute X_INTERFACE_INFO of S03_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 S03_AXI ARLOCK";
  attribute X_INTERFACE_INFO of S03_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S03_AXI ARPROT";
  attribute X_INTERFACE_INFO of S03_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 S03_AXI ARQOS";
  attribute X_INTERFACE_INFO of S03_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S03_AXI ARREADY";
  attribute X_INTERFACE_INFO of S03_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 S03_AXI ARSIZE";
  attribute X_INTERFACE_INFO of S03_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S03_AXI ARVALID";
  attribute X_INTERFACE_INFO of S03_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S03_AXI AWADDR";
  attribute X_INTERFACE_INFO of S03_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 S03_AXI AWBURST";
  attribute X_INTERFACE_INFO of S03_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 S03_AXI AWCACHE";
  attribute X_INTERFACE_INFO of S03_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 S03_AXI AWLEN";
  attribute X_INTERFACE_INFO of S03_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 S03_AXI AWLOCK";
  attribute X_INTERFACE_INFO of S03_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S03_AXI AWPROT";
  attribute X_INTERFACE_INFO of S03_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 S03_AXI AWQOS";
  attribute X_INTERFACE_INFO of S03_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S03_AXI AWREADY";
  attribute X_INTERFACE_INFO of S03_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 S03_AXI AWSIZE";
  attribute X_INTERFACE_INFO of S03_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S03_AXI AWVALID";
  attribute X_INTERFACE_INFO of S03_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S03_AXI BREADY";
  attribute X_INTERFACE_INFO of S03_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S03_AXI BRESP";
  attribute X_INTERFACE_INFO of S03_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S03_AXI BVALID";
  attribute X_INTERFACE_INFO of S03_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S03_AXI RDATA";
  attribute X_INTERFACE_INFO of S03_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 S03_AXI RLAST";
  attribute X_INTERFACE_INFO of S03_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S03_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of S03_AXI_rready : signal is "XIL_INTERFACENAME S03_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 33, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S03_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S03_AXI RRESP";
  attribute X_INTERFACE_INFO of S03_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S03_AXI RVALID";
  attribute X_INTERFACE_INFO of S03_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S03_AXI WDATA";
  attribute X_INTERFACE_INFO of S03_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 S03_AXI WLAST";
  attribute X_INTERFACE_INFO of S03_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S03_AXI WREADY";
  attribute X_INTERFACE_INFO of S03_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S03_AXI WSTRB";
  attribute X_INTERFACE_INFO of S03_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S03_AXI WVALID";
  attribute X_INTERFACE_INFO of S04_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S04_AXI ARADDR";
  attribute X_INTERFACE_INFO of S04_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 S04_AXI ARBURST";
  attribute X_INTERFACE_INFO of S04_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 S04_AXI ARCACHE";
  attribute X_INTERFACE_INFO of S04_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 S04_AXI ARLEN";
  attribute X_INTERFACE_INFO of S04_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 S04_AXI ARLOCK";
  attribute X_INTERFACE_INFO of S04_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S04_AXI ARPROT";
  attribute X_INTERFACE_INFO of S04_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 S04_AXI ARQOS";
  attribute X_INTERFACE_INFO of S04_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S04_AXI ARREADY";
  attribute X_INTERFACE_INFO of S04_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 S04_AXI ARSIZE";
  attribute X_INTERFACE_INFO of S04_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S04_AXI ARVALID";
  attribute X_INTERFACE_INFO of S04_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S04_AXI AWADDR";
  attribute X_INTERFACE_INFO of S04_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 S04_AXI AWBURST";
  attribute X_INTERFACE_INFO of S04_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 S04_AXI AWCACHE";
  attribute X_INTERFACE_INFO of S04_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 S04_AXI AWLEN";
  attribute X_INTERFACE_INFO of S04_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 S04_AXI AWLOCK";
  attribute X_INTERFACE_INFO of S04_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S04_AXI AWPROT";
  attribute X_INTERFACE_INFO of S04_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 S04_AXI AWQOS";
  attribute X_INTERFACE_INFO of S04_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S04_AXI AWREADY";
  attribute X_INTERFACE_INFO of S04_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 S04_AXI AWSIZE";
  attribute X_INTERFACE_INFO of S04_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S04_AXI AWVALID";
  attribute X_INTERFACE_INFO of S04_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S04_AXI BREADY";
  attribute X_INTERFACE_INFO of S04_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S04_AXI BRESP";
  attribute X_INTERFACE_INFO of S04_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S04_AXI BVALID";
  attribute X_INTERFACE_INFO of S04_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S04_AXI RDATA";
  attribute X_INTERFACE_INFO of S04_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 S04_AXI RLAST";
  attribute X_INTERFACE_INFO of S04_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S04_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of S04_AXI_rready : signal is "XIL_INTERFACENAME S04_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 33, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S04_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S04_AXI RRESP";
  attribute X_INTERFACE_INFO of S04_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S04_AXI RVALID";
  attribute X_INTERFACE_INFO of S04_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S04_AXI WDATA";
  attribute X_INTERFACE_INFO of S04_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 S04_AXI WLAST";
  attribute X_INTERFACE_INFO of S04_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S04_AXI WREADY";
  attribute X_INTERFACE_INFO of S04_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S04_AXI WSTRB";
  attribute X_INTERFACE_INFO of S04_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S04_AXI WVALID";
  attribute X_INTERFACE_INFO of S05_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S05_AXI ARADDR";
  attribute X_INTERFACE_INFO of S05_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 S05_AXI ARBURST";
  attribute X_INTERFACE_INFO of S05_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 S05_AXI ARCACHE";
  attribute X_INTERFACE_INFO of S05_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 S05_AXI ARLEN";
  attribute X_INTERFACE_INFO of S05_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 S05_AXI ARLOCK";
  attribute X_INTERFACE_INFO of S05_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S05_AXI ARPROT";
  attribute X_INTERFACE_INFO of S05_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 S05_AXI ARQOS";
  attribute X_INTERFACE_INFO of S05_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S05_AXI ARREADY";
  attribute X_INTERFACE_INFO of S05_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 S05_AXI ARSIZE";
  attribute X_INTERFACE_INFO of S05_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S05_AXI ARVALID";
  attribute X_INTERFACE_INFO of S05_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S05_AXI AWADDR";
  attribute X_INTERFACE_INFO of S05_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 S05_AXI AWBURST";
  attribute X_INTERFACE_INFO of S05_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 S05_AXI AWCACHE";
  attribute X_INTERFACE_INFO of S05_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 S05_AXI AWLEN";
  attribute X_INTERFACE_INFO of S05_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 S05_AXI AWLOCK";
  attribute X_INTERFACE_INFO of S05_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S05_AXI AWPROT";
  attribute X_INTERFACE_INFO of S05_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 S05_AXI AWQOS";
  attribute X_INTERFACE_INFO of S05_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S05_AXI AWREADY";
  attribute X_INTERFACE_INFO of S05_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 S05_AXI AWSIZE";
  attribute X_INTERFACE_INFO of S05_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S05_AXI AWVALID";
  attribute X_INTERFACE_INFO of S05_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S05_AXI BREADY";
  attribute X_INTERFACE_INFO of S05_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S05_AXI BRESP";
  attribute X_INTERFACE_INFO of S05_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S05_AXI BVALID";
  attribute X_INTERFACE_INFO of S05_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S05_AXI RDATA";
  attribute X_INTERFACE_INFO of S05_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 S05_AXI RLAST";
  attribute X_INTERFACE_INFO of S05_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S05_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of S05_AXI_rready : signal is "XIL_INTERFACENAME S05_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 33, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S05_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S05_AXI RRESP";
  attribute X_INTERFACE_INFO of S05_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S05_AXI RVALID";
  attribute X_INTERFACE_INFO of S05_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S05_AXI WDATA";
  attribute X_INTERFACE_INFO of S05_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 S05_AXI WLAST";
  attribute X_INTERFACE_INFO of S05_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S05_AXI WREADY";
  attribute X_INTERFACE_INFO of S05_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S05_AXI WSTRB";
  attribute X_INTERFACE_INFO of S05_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S05_AXI WVALID";
  attribute X_INTERFACE_INFO of S06_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S06_AXI ARADDR";
  attribute X_INTERFACE_INFO of S06_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 S06_AXI ARBURST";
  attribute X_INTERFACE_INFO of S06_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 S06_AXI ARCACHE";
  attribute X_INTERFACE_INFO of S06_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 S06_AXI ARLEN";
  attribute X_INTERFACE_INFO of S06_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 S06_AXI ARLOCK";
  attribute X_INTERFACE_INFO of S06_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S06_AXI ARPROT";
  attribute X_INTERFACE_INFO of S06_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 S06_AXI ARQOS";
  attribute X_INTERFACE_INFO of S06_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S06_AXI ARREADY";
  attribute X_INTERFACE_INFO of S06_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 S06_AXI ARSIZE";
  attribute X_INTERFACE_INFO of S06_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S06_AXI ARVALID";
  attribute X_INTERFACE_INFO of S06_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S06_AXI AWADDR";
  attribute X_INTERFACE_INFO of S06_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 S06_AXI AWBURST";
  attribute X_INTERFACE_INFO of S06_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 S06_AXI AWCACHE";
  attribute X_INTERFACE_INFO of S06_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 S06_AXI AWLEN";
  attribute X_INTERFACE_INFO of S06_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 S06_AXI AWLOCK";
  attribute X_INTERFACE_INFO of S06_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S06_AXI AWPROT";
  attribute X_INTERFACE_INFO of S06_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 S06_AXI AWQOS";
  attribute X_INTERFACE_INFO of S06_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S06_AXI AWREADY";
  attribute X_INTERFACE_INFO of S06_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 S06_AXI AWSIZE";
  attribute X_INTERFACE_INFO of S06_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S06_AXI AWVALID";
  attribute X_INTERFACE_INFO of S06_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S06_AXI BREADY";
  attribute X_INTERFACE_INFO of S06_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S06_AXI BRESP";
  attribute X_INTERFACE_INFO of S06_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S06_AXI BVALID";
  attribute X_INTERFACE_INFO of S06_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S06_AXI RDATA";
  attribute X_INTERFACE_INFO of S06_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 S06_AXI RLAST";
  attribute X_INTERFACE_INFO of S06_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S06_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of S06_AXI_rready : signal is "XIL_INTERFACENAME S06_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 33, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S06_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S06_AXI RRESP";
  attribute X_INTERFACE_INFO of S06_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S06_AXI RVALID";
  attribute X_INTERFACE_INFO of S06_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S06_AXI WDATA";
  attribute X_INTERFACE_INFO of S06_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 S06_AXI WLAST";
  attribute X_INTERFACE_INFO of S06_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S06_AXI WREADY";
  attribute X_INTERFACE_INFO of S06_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S06_AXI WSTRB";
  attribute X_INTERFACE_INFO of S06_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S06_AXI WVALID";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BREADY";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BRESP";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BVALID";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RDATA";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RREADY";
  attribute X_INTERFACE_PARAMETER of S_AXI_CTRL_rready : signal is "XIL_INTERFACENAME S_AXI_CTRL, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 23, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN pfm_dynamic_s_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RRESP";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RVALID";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WDATA";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WREADY";
  attribute X_INTERFACE_INFO of S_AXI_CTRL_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WVALID";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_5dca
     port map (
      DRAM_0_STAT_TEMP(6 downto 0) => DRAM_0_STAT_TEMP(6 downto 0),
      DRAM_1_STAT_TEMP(6 downto 0) => DRAM_1_STAT_TEMP(6 downto 0),
      DRAM_STAT_CATTRIP(0) => DRAM_STAT_CATTRIP(0),
      S00_AXI_araddr(32 downto 0) => S00_AXI_araddr(32 downto 0),
      S00_AXI_arburst(1 downto 0) => S00_AXI_arburst(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S00_AXI_arcache(3 downto 0),
      S00_AXI_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      S00_AXI_arlock(0) => S00_AXI_arlock(0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S00_AXI_arqos(3 downto 0),
      S00_AXI_arready(0) => S00_AXI_arready(0),
      S00_AXI_arsize(2 downto 0) => S00_AXI_arsize(2 downto 0),
      S00_AXI_arvalid(0) => S00_AXI_arvalid(0),
      S00_AXI_awaddr(32 downto 0) => S00_AXI_awaddr(32 downto 0),
      S00_AXI_awburst(1 downto 0) => S00_AXI_awburst(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S00_AXI_awcache(3 downto 0),
      S00_AXI_awlen(7 downto 0) => S00_AXI_awlen(7 downto 0),
      S00_AXI_awlock(0) => S00_AXI_awlock(0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S00_AXI_awqos(3 downto 0),
      S00_AXI_awready(0) => S00_AXI_awready(0),
      S00_AXI_awsize(2 downto 0) => S00_AXI_awsize(2 downto 0),
      S00_AXI_awvalid(0) => S00_AXI_awvalid(0),
      S00_AXI_bready(0) => S00_AXI_bready(0),
      S00_AXI_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      S00_AXI_bvalid(0) => S00_AXI_bvalid(0),
      S00_AXI_rdata(511 downto 0) => S00_AXI_rdata(511 downto 0),
      S00_AXI_rlast(0) => S00_AXI_rlast(0),
      S00_AXI_rready(0) => S00_AXI_rready(0),
      S00_AXI_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      S00_AXI_rvalid(0) => S00_AXI_rvalid(0),
      S00_AXI_wdata(511 downto 0) => S00_AXI_wdata(511 downto 0),
      S00_AXI_wlast(0) => S00_AXI_wlast(0),
      S00_AXI_wready(0) => S00_AXI_wready(0),
      S00_AXI_wstrb(63 downto 0) => S00_AXI_wstrb(63 downto 0),
      S00_AXI_wvalid(0) => S00_AXI_wvalid(0),
      S01_AXI_araddr(63 downto 0) => S01_AXI_araddr(63 downto 0),
      S01_AXI_arburst(1 downto 0) => S01_AXI_arburst(1 downto 0),
      S01_AXI_arcache(3 downto 0) => S01_AXI_arcache(3 downto 0),
      S01_AXI_arlen(7 downto 0) => S01_AXI_arlen(7 downto 0),
      S01_AXI_arlock(0) => S01_AXI_arlock(0),
      S01_AXI_arprot(2 downto 0) => S01_AXI_arprot(2 downto 0),
      S01_AXI_arqos(3 downto 0) => S01_AXI_arqos(3 downto 0),
      S01_AXI_arready(0) => S01_AXI_arready(0),
      S01_AXI_arsize(2 downto 0) => S01_AXI_arsize(2 downto 0),
      S01_AXI_arvalid(0) => S01_AXI_arvalid(0),
      S01_AXI_awaddr(63 downto 0) => S01_AXI_awaddr(63 downto 0),
      S01_AXI_awburst(1 downto 0) => S01_AXI_awburst(1 downto 0),
      S01_AXI_awcache(3 downto 0) => S01_AXI_awcache(3 downto 0),
      S01_AXI_awlen(7 downto 0) => S01_AXI_awlen(7 downto 0),
      S01_AXI_awlock(0) => S01_AXI_awlock(0),
      S01_AXI_awprot(2 downto 0) => S01_AXI_awprot(2 downto 0),
      S01_AXI_awqos(3 downto 0) => S01_AXI_awqos(3 downto 0),
      S01_AXI_awready(0) => S01_AXI_awready(0),
      S01_AXI_awsize(2 downto 0) => S01_AXI_awsize(2 downto 0),
      S01_AXI_awvalid(0) => S01_AXI_awvalid(0),
      S01_AXI_bready(0) => S01_AXI_bready(0),
      S01_AXI_bresp(1 downto 0) => S01_AXI_bresp(1 downto 0),
      S01_AXI_bvalid(0) => S01_AXI_bvalid(0),
      S01_AXI_rdata(31 downto 0) => S01_AXI_rdata(31 downto 0),
      S01_AXI_rlast(0) => S01_AXI_rlast(0),
      S01_AXI_rready(0) => S01_AXI_rready(0),
      S01_AXI_rresp(1 downto 0) => S01_AXI_rresp(1 downto 0),
      S01_AXI_rvalid(0) => S01_AXI_rvalid(0),
      S01_AXI_wdata(31 downto 0) => S01_AXI_wdata(31 downto 0),
      S01_AXI_wlast(0) => S01_AXI_wlast(0),
      S01_AXI_wready(0) => S01_AXI_wready(0),
      S01_AXI_wstrb(3 downto 0) => S01_AXI_wstrb(3 downto 0),
      S01_AXI_wvalid(0) => S01_AXI_wvalid(0),
      S02_AXI_araddr(63 downto 0) => S02_AXI_araddr(63 downto 0),
      S02_AXI_arburst(1 downto 0) => S02_AXI_arburst(1 downto 0),
      S02_AXI_arcache(3 downto 0) => S02_AXI_arcache(3 downto 0),
      S02_AXI_arlen(7 downto 0) => S02_AXI_arlen(7 downto 0),
      S02_AXI_arlock(0) => S02_AXI_arlock(0),
      S02_AXI_arprot(2 downto 0) => S02_AXI_arprot(2 downto 0),
      S02_AXI_arqos(3 downto 0) => S02_AXI_arqos(3 downto 0),
      S02_AXI_arready(0) => S02_AXI_arready(0),
      S02_AXI_arsize(2 downto 0) => S02_AXI_arsize(2 downto 0),
      S02_AXI_arvalid(0) => S02_AXI_arvalid(0),
      S02_AXI_awaddr(63 downto 0) => S02_AXI_awaddr(63 downto 0),
      S02_AXI_awburst(1 downto 0) => S02_AXI_awburst(1 downto 0),
      S02_AXI_awcache(3 downto 0) => S02_AXI_awcache(3 downto 0),
      S02_AXI_awlen(7 downto 0) => S02_AXI_awlen(7 downto 0),
      S02_AXI_awlock(0) => S02_AXI_awlock(0),
      S02_AXI_awprot(2 downto 0) => S02_AXI_awprot(2 downto 0),
      S02_AXI_awqos(3 downto 0) => S02_AXI_awqos(3 downto 0),
      S02_AXI_awready(0) => S02_AXI_awready(0),
      S02_AXI_awsize(2 downto 0) => S02_AXI_awsize(2 downto 0),
      S02_AXI_awvalid(0) => S02_AXI_awvalid(0),
      S02_AXI_bready(0) => S02_AXI_bready(0),
      S02_AXI_bresp(1 downto 0) => S02_AXI_bresp(1 downto 0),
      S02_AXI_bvalid(0) => S02_AXI_bvalid(0),
      S02_AXI_rdata(511 downto 0) => S02_AXI_rdata(511 downto 0),
      S02_AXI_rlast(0) => S02_AXI_rlast(0),
      S02_AXI_rready(0) => S02_AXI_rready(0),
      S02_AXI_rresp(1 downto 0) => S02_AXI_rresp(1 downto 0),
      S02_AXI_rvalid(0) => S02_AXI_rvalid(0),
      S02_AXI_wdata(511 downto 0) => S02_AXI_wdata(511 downto 0),
      S02_AXI_wlast(0) => S02_AXI_wlast(0),
      S02_AXI_wready(0) => S02_AXI_wready(0),
      S02_AXI_wstrb(63 downto 0) => S02_AXI_wstrb(63 downto 0),
      S02_AXI_wvalid(0) => S02_AXI_wvalid(0),
      S03_AXI_araddr(63 downto 0) => S03_AXI_araddr(63 downto 0),
      S03_AXI_arburst(1 downto 0) => S03_AXI_arburst(1 downto 0),
      S03_AXI_arcache(3 downto 0) => S03_AXI_arcache(3 downto 0),
      S03_AXI_arlen(7 downto 0) => S03_AXI_arlen(7 downto 0),
      S03_AXI_arlock(0) => S03_AXI_arlock(0),
      S03_AXI_arprot(2 downto 0) => S03_AXI_arprot(2 downto 0),
      S03_AXI_arqos(3 downto 0) => S03_AXI_arqos(3 downto 0),
      S03_AXI_arready(0) => S03_AXI_arready(0),
      S03_AXI_arsize(2 downto 0) => S03_AXI_arsize(2 downto 0),
      S03_AXI_arvalid(0) => S03_AXI_arvalid(0),
      S03_AXI_awaddr(63 downto 0) => S03_AXI_awaddr(63 downto 0),
      S03_AXI_awburst(1 downto 0) => S03_AXI_awburst(1 downto 0),
      S03_AXI_awcache(3 downto 0) => S03_AXI_awcache(3 downto 0),
      S03_AXI_awlen(7 downto 0) => S03_AXI_awlen(7 downto 0),
      S03_AXI_awlock(0) => S03_AXI_awlock(0),
      S03_AXI_awprot(2 downto 0) => S03_AXI_awprot(2 downto 0),
      S03_AXI_awqos(3 downto 0) => S03_AXI_awqos(3 downto 0),
      S03_AXI_awready(0) => S03_AXI_awready(0),
      S03_AXI_awsize(2 downto 0) => S03_AXI_awsize(2 downto 0),
      S03_AXI_awvalid(0) => S03_AXI_awvalid(0),
      S03_AXI_bready(0) => S03_AXI_bready(0),
      S03_AXI_bresp(1 downto 0) => S03_AXI_bresp(1 downto 0),
      S03_AXI_bvalid(0) => S03_AXI_bvalid(0),
      S03_AXI_rdata(31 downto 0) => S03_AXI_rdata(31 downto 0),
      S03_AXI_rlast(0) => S03_AXI_rlast(0),
      S03_AXI_rready(0) => S03_AXI_rready(0),
      S03_AXI_rresp(1 downto 0) => S03_AXI_rresp(1 downto 0),
      S03_AXI_rvalid(0) => S03_AXI_rvalid(0),
      S03_AXI_wdata(31 downto 0) => S03_AXI_wdata(31 downto 0),
      S03_AXI_wlast(0) => S03_AXI_wlast(0),
      S03_AXI_wready(0) => S03_AXI_wready(0),
      S03_AXI_wstrb(3 downto 0) => S03_AXI_wstrb(3 downto 0),
      S03_AXI_wvalid(0) => S03_AXI_wvalid(0),
      S04_AXI_araddr(63 downto 0) => S04_AXI_araddr(63 downto 0),
      S04_AXI_arburst(1 downto 0) => S04_AXI_arburst(1 downto 0),
      S04_AXI_arcache(3 downto 0) => S04_AXI_arcache(3 downto 0),
      S04_AXI_arlen(7 downto 0) => S04_AXI_arlen(7 downto 0),
      S04_AXI_arlock(0) => S04_AXI_arlock(0),
      S04_AXI_arprot(2 downto 0) => S04_AXI_arprot(2 downto 0),
      S04_AXI_arqos(3 downto 0) => S04_AXI_arqos(3 downto 0),
      S04_AXI_arready(0) => S04_AXI_arready(0),
      S04_AXI_arsize(2 downto 0) => S04_AXI_arsize(2 downto 0),
      S04_AXI_arvalid(0) => S04_AXI_arvalid(0),
      S04_AXI_awaddr(63 downto 0) => S04_AXI_awaddr(63 downto 0),
      S04_AXI_awburst(1 downto 0) => S04_AXI_awburst(1 downto 0),
      S04_AXI_awcache(3 downto 0) => S04_AXI_awcache(3 downto 0),
      S04_AXI_awlen(7 downto 0) => S04_AXI_awlen(7 downto 0),
      S04_AXI_awlock(0) => S04_AXI_awlock(0),
      S04_AXI_awprot(2 downto 0) => S04_AXI_awprot(2 downto 0),
      S04_AXI_awqos(3 downto 0) => S04_AXI_awqos(3 downto 0),
      S04_AXI_awready(0) => S04_AXI_awready(0),
      S04_AXI_awsize(2 downto 0) => S04_AXI_awsize(2 downto 0),
      S04_AXI_awvalid(0) => S04_AXI_awvalid(0),
      S04_AXI_bready(0) => S04_AXI_bready(0),
      S04_AXI_bresp(1 downto 0) => S04_AXI_bresp(1 downto 0),
      S04_AXI_bvalid(0) => S04_AXI_bvalid(0),
      S04_AXI_rdata(31 downto 0) => S04_AXI_rdata(31 downto 0),
      S04_AXI_rlast(0) => S04_AXI_rlast(0),
      S04_AXI_rready(0) => S04_AXI_rready(0),
      S04_AXI_rresp(1 downto 0) => S04_AXI_rresp(1 downto 0),
      S04_AXI_rvalid(0) => S04_AXI_rvalid(0),
      S04_AXI_wdata(31 downto 0) => S04_AXI_wdata(31 downto 0),
      S04_AXI_wlast(0) => S04_AXI_wlast(0),
      S04_AXI_wready(0) => S04_AXI_wready(0),
      S04_AXI_wstrb(3 downto 0) => S04_AXI_wstrb(3 downto 0),
      S04_AXI_wvalid(0) => S04_AXI_wvalid(0),
      S05_AXI_araddr(63 downto 0) => S05_AXI_araddr(63 downto 0),
      S05_AXI_arburst(1 downto 0) => S05_AXI_arburst(1 downto 0),
      S05_AXI_arcache(3 downto 0) => S05_AXI_arcache(3 downto 0),
      S05_AXI_arlen(7 downto 0) => S05_AXI_arlen(7 downto 0),
      S05_AXI_arlock(0) => S05_AXI_arlock(0),
      S05_AXI_arprot(2 downto 0) => S05_AXI_arprot(2 downto 0),
      S05_AXI_arqos(3 downto 0) => S05_AXI_arqos(3 downto 0),
      S05_AXI_arready(0) => S05_AXI_arready(0),
      S05_AXI_arsize(2 downto 0) => S05_AXI_arsize(2 downto 0),
      S05_AXI_arvalid(0) => S05_AXI_arvalid(0),
      S05_AXI_awaddr(63 downto 0) => S05_AXI_awaddr(63 downto 0),
      S05_AXI_awburst(1 downto 0) => S05_AXI_awburst(1 downto 0),
      S05_AXI_awcache(3 downto 0) => S05_AXI_awcache(3 downto 0),
      S05_AXI_awlen(7 downto 0) => S05_AXI_awlen(7 downto 0),
      S05_AXI_awlock(0) => S05_AXI_awlock(0),
      S05_AXI_awprot(2 downto 0) => S05_AXI_awprot(2 downto 0),
      S05_AXI_awqos(3 downto 0) => S05_AXI_awqos(3 downto 0),
      S05_AXI_awready(0) => S05_AXI_awready(0),
      S05_AXI_awsize(2 downto 0) => S05_AXI_awsize(2 downto 0),
      S05_AXI_awvalid(0) => S05_AXI_awvalid(0),
      S05_AXI_bready(0) => S05_AXI_bready(0),
      S05_AXI_bresp(1 downto 0) => S05_AXI_bresp(1 downto 0),
      S05_AXI_bvalid(0) => S05_AXI_bvalid(0),
      S05_AXI_rdata(31 downto 0) => S05_AXI_rdata(31 downto 0),
      S05_AXI_rlast(0) => S05_AXI_rlast(0),
      S05_AXI_rready(0) => S05_AXI_rready(0),
      S05_AXI_rresp(1 downto 0) => S05_AXI_rresp(1 downto 0),
      S05_AXI_rvalid(0) => S05_AXI_rvalid(0),
      S05_AXI_wdata(31 downto 0) => S05_AXI_wdata(31 downto 0),
      S05_AXI_wlast(0) => S05_AXI_wlast(0),
      S05_AXI_wready(0) => S05_AXI_wready(0),
      S05_AXI_wstrb(3 downto 0) => S05_AXI_wstrb(3 downto 0),
      S05_AXI_wvalid(0) => S05_AXI_wvalid(0),
      S06_AXI_araddr(63 downto 0) => S06_AXI_araddr(63 downto 0),
      S06_AXI_arburst(1 downto 0) => S06_AXI_arburst(1 downto 0),
      S06_AXI_arcache(3 downto 0) => S06_AXI_arcache(3 downto 0),
      S06_AXI_arlen(7 downto 0) => S06_AXI_arlen(7 downto 0),
      S06_AXI_arlock(0) => S06_AXI_arlock(0),
      S06_AXI_arprot(2 downto 0) => S06_AXI_arprot(2 downto 0),
      S06_AXI_arqos(3 downto 0) => S06_AXI_arqos(3 downto 0),
      S06_AXI_arready(0) => S06_AXI_arready(0),
      S06_AXI_arsize(2 downto 0) => S06_AXI_arsize(2 downto 0),
      S06_AXI_arvalid(0) => S06_AXI_arvalid(0),
      S06_AXI_awaddr(63 downto 0) => S06_AXI_awaddr(63 downto 0),
      S06_AXI_awburst(1 downto 0) => S06_AXI_awburst(1 downto 0),
      S06_AXI_awcache(3 downto 0) => S06_AXI_awcache(3 downto 0),
      S06_AXI_awlen(7 downto 0) => S06_AXI_awlen(7 downto 0),
      S06_AXI_awlock(0) => S06_AXI_awlock(0),
      S06_AXI_awprot(2 downto 0) => S06_AXI_awprot(2 downto 0),
      S06_AXI_awqos(3 downto 0) => S06_AXI_awqos(3 downto 0),
      S06_AXI_awready(0) => S06_AXI_awready(0),
      S06_AXI_awsize(2 downto 0) => S06_AXI_awsize(2 downto 0),
      S06_AXI_awvalid(0) => S06_AXI_awvalid(0),
      S06_AXI_bready(0) => S06_AXI_bready(0),
      S06_AXI_bresp(1 downto 0) => S06_AXI_bresp(1 downto 0),
      S06_AXI_bvalid(0) => S06_AXI_bvalid(0),
      S06_AXI_rdata(63 downto 0) => S06_AXI_rdata(63 downto 0),
      S06_AXI_rlast(0) => S06_AXI_rlast(0),
      S06_AXI_rready(0) => S06_AXI_rready(0),
      S06_AXI_rresp(1 downto 0) => S06_AXI_rresp(1 downto 0),
      S06_AXI_rvalid(0) => S06_AXI_rvalid(0),
      S06_AXI_wdata(63 downto 0) => S06_AXI_wdata(63 downto 0),
      S06_AXI_wlast(0) => S06_AXI_wlast(0),
      S06_AXI_wready(0) => S06_AXI_wready(0),
      S06_AXI_wstrb(7 downto 0) => S06_AXI_wstrb(7 downto 0),
      S06_AXI_wvalid(0) => S06_AXI_wvalid(0),
      S_AXI_CTRL_araddr(22 downto 0) => S_AXI_CTRL_araddr(22 downto 0),
      S_AXI_CTRL_arready(0) => S_AXI_CTRL_arready(0),
      S_AXI_CTRL_arvalid(0) => S_AXI_CTRL_arvalid(0),
      S_AXI_CTRL_awaddr(22 downto 0) => S_AXI_CTRL_awaddr(22 downto 0),
      S_AXI_CTRL_awready(0) => S_AXI_CTRL_awready(0),
      S_AXI_CTRL_awvalid(0) => S_AXI_CTRL_awvalid(0),
      S_AXI_CTRL_bready(0) => S_AXI_CTRL_bready(0),
      S_AXI_CTRL_bresp(1 downto 0) => S_AXI_CTRL_bresp(1 downto 0),
      S_AXI_CTRL_bvalid(0) => S_AXI_CTRL_bvalid(0),
      S_AXI_CTRL_rdata(31 downto 0) => S_AXI_CTRL_rdata(31 downto 0),
      S_AXI_CTRL_rready(0) => S_AXI_CTRL_rready(0),
      S_AXI_CTRL_rresp(1 downto 0) => S_AXI_CTRL_rresp(1 downto 0),
      S_AXI_CTRL_rvalid(0) => S_AXI_CTRL_rvalid(0),
      S_AXI_CTRL_wdata(31 downto 0) => S_AXI_CTRL_wdata(31 downto 0),
      S_AXI_CTRL_wready(0) => S_AXI_CTRL_wready(0),
      S_AXI_CTRL_wvalid(0) => S_AXI_CTRL_wvalid(0),
      aclk => aclk,
      aclk1 => aclk1,
      aresetn => aresetn,
      aresetn1 => aresetn1,
      ctrl_aclk => ctrl_aclk,
      ctrl_aresetn => ctrl_aresetn,
      hbm_aclk => hbm_aclk,
      hbm_aresetn => hbm_aresetn,
      hbm_mc_init_seq_complete => hbm_mc_init_seq_complete,
      hbm_ref_clk => hbm_ref_clk
    );
end STRUCTURE;
