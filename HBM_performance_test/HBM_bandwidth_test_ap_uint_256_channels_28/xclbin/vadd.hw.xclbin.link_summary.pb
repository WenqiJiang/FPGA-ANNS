
å
v++_link_vadd.hw$5935f38a-b04e-4874-990f-e6662099ed5d2qi/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/.tlog/v++_link_vadd.hw.xtl 2nf/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/xclbin/vadd.hw.xclbin.link_summary 2oi/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/xclbin/vadd.hw.xclbin.link_summary.pb i/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/xclbin/vadd.hw.xclbin.link_summary.pb"Sun Nov  1 08:44:03 2020(ö¬çñÿ.bÊ
$ca9226d9-c46d-427e-b257-c6962ce09298v++b/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/link.steps.log"£/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++  --xp "vivado_prop:run.__KERNEL__.{STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS}={-directive sdx_optimization_effort_high}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_route_design_summary steps {route_design} runs {impl_1} options {-max_paths 10}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_post_route_phys_opt_design_summary steps {post_route_phys_opt_design} runs {impl_1} options {-max_paths 10}" -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *-t*hw*--config*
design.cfg*--save-temps*--report*estimate*
--temp_dir*./_x.hw/vadd*-l*--profile_kernel*data:all:all:all:all*-oxclbin/vadd.hw.xclbin*xclbin/vadd.hw.xo2¸
N/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/design.cfg©platform=xilinx_u280_xdma_201920_3
profile_kernel=data:all:all:all
kernel_frequency=140
debug=1

[connectivity]
nk=vadd:1:vadd_1
# slr=vadd_1:SLR0
sp=vadd_1.table_HBM0:HBM[0]
sp=vadd_1.table_HBM1:HBM[1]
sp=vadd_1.table_HBM2:HBM[2]
sp=vadd_1.table_HBM3:HBM[3]
sp=vadd_1.table_HBM4:HBM[4]
sp=vadd_1.table_HBM5:HBM[5]
sp=vadd_1.table_HBM6:HBM[6]
sp=vadd_1.table_HBM7:HBM[7]
sp=vadd_1.table_HBM8:HBM[8]
sp=vadd_1.table_HBM9:HBM[9]
sp=vadd_1.table_HBM10:HBM[10]
sp=vadd_1.table_HBM11:HBM[11]
sp=vadd_1.table_HBM12:HBM[12]
sp=vadd_1.table_HBM13:HBM[13]
sp=vadd_1.table_HBM14:HBM[14]
sp=vadd_1.table_HBM15:HBM[15]
sp=vadd_1.table_HBM16:HBM[16]
sp=vadd_1.table_HBM17:HBM[17]
sp=vadd_1.table_HBM18:HBM[18]
sp=vadd_1.table_HBM19:HBM[19]
sp=vadd_1.table_HBM20:HBM[20]
sp=vadd_1.table_HBM21:HBM[21]
sp=vadd_1.table_HBM22:HBM[22]
sp=vadd_1.table_HBM23:HBM[23]
sp=vadd_1.table_HBM24:HBM[24]
sp=vadd_1.table_HBM25:HBM[25]
sp=vadd_1.table_HBM26:HBM[26]
sp=vadd_1.table_HBM27:HBM[27]
# sp=vadd_1.table_HBM28:HBM[28]
# sp=vadd_1.table_HBM29:HBM[29]
# sp=vadd_1.table_HBM30:HBM[30]
# sp=vadd_1.table_HBM31:HBM[31]
# sp=vadd_1.table_DDR0:DDR[0]
# sp=vadd_1.table_DDR1:DDR[1]
sp=vadd_1.out_PLRAM:PLRAM[0]

[vivado] 
#param=compiler.userPreSysLinkTcl=$(PWD)/tcl/plram.tcl 
param=route.enableGlobalHoldIter=true
param=project.writeIntermediateCheckpoints=true
# prop=run.impl_1.STEPS.PLACE_DESIGN.ARGS.DIRECTIVE=SSI_SpreadLogic_high
# prop=run.impl_1.{STEPS.PLACE_DESIGN.ARGS.MORE OPTIONS}={-post_place_opt}
prop=run.impl_1.{STEPS.PHYS_OPT_DESIGN.IS_ENABLED}=true 
# prop=run.impl_1.STEPS.PHYS_OPT_DESIGN.ARGS.DIRECTIVE=ExploreWithHoldFix
# prop=run.impl_1.{STEPS.PHYS_OPT_DESIGN.ARGS.MORE OPTIONS}={-fanout_opt -critical_cell_opt -rewire -slr_crossing_opt -tns_cleanup -hold_fix -sll_reg_hold_fix -retime}
prop=run.impl_1.{STEPS.PHYS_OPT_DESIGN.ARGS.MORE OPTIONS}={-slr_crossing_opt -tns_cleanup}
#prop=run.impl_1.{STEPS.PHYS_OPT_DESIGN.ARGS.MORE OPTIONS}={-hold_fix -slr_crossing_opt}
prop=run.impl_1.STEPS.ROUTE_DESIGN.ARGS.DIRECTIVE=AlternateCLBRouting
#prop=run.impl_1.{STEPS.PHYS_OPT_DESIGN.ARGS.MORE OPTIONS}={-hold_fix}
prop=run.impl_1.{STEPS.POST_ROUTE_PHYS_OPT_DESIGN.IS_ENABLED}=true 
prop=run.impl_1.{STEPS.POST_ROUTE_PHYS_OPT_DESIGN.ARGS.MORE OPTIONS}={-critical_cell_opt -rewire -hold_fix -sll_reg_hold_fix -retime}
#prop=run.impl_1.{STEPS.POST_ROUTE_PHYS_OPT_DESIGN.ARGS.MORE OPTIONS}={-critical_cell_opt -rewire -slr_crossing_opt -tns_cleanup -hold_fix -sll_reg_hold_fix -retime}
"Sun Nov  1 08:44:03 2020(ú¬çñÿ.r(
$ca9226d9-c46d-427e-b257-c6962ce09298"Sun Nov  1 08:44:12 2020(∏àéñÿ.Z“
xilinx_u280_xdma_201920_3.xpfmxilinx_u280_xdma_201920_3.xsa//opt/xilinx/platforms/xilinx_u280_xdma_201920_3"OpenCL*Linux08Bf
dvadd.hwY/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/xclbin/vadd.hw.xclbinJ‰
_vaddU/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/xclbin/vadd.hw.xoy/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cppvadd_1"Sun Nov  1 08:44:13 2020(´äéñÿ.b‘
$df96ba86-3327-4f73-a2c0-fe02278c90d7system_link"ésystem_link --xo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/xclbin/vadd.hw.xo -keep --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/syslinkConfig.ini --xpfm /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --target hw --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/sys_link*--xo*U/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/xclbin/vadd.hw.xo*-keep*--config*i/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/syslinkConfig.ini*--xpfm*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--target*hw*--output_dir*W/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int*
--temp_dir*\/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/sys_link"Sun Nov  1 08:44:13 2020(¨äéñÿ.r(
$df96ba86-3327-4f73-a2c0-fe02278c90d7"Sun Nov  1 08:44:36 2020(ù√èñÿ.r(
$df96ba86-3327-4f73-a2c0-fe02278c90d7"Sun Nov  1 08:44:36 2020(¶√èñÿ.bì
$fc38cc19-1de9-4373-bbed-23c934040141cf2sw"∞cf2sw -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/sdsl.dat -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/cf2sw.rtd -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/xclbin_orig.xml -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/xclbin_orig.1.xml*-sdsl*`/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/sdsl.dat*-rtd*a/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/cf2sw.rtd*-xclbin*g/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/xclbin_orig.xml*-o*i/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/xclbin_orig.1.xml"Sun Nov  1 08:44:36 2020(®√èñÿ.r(
$fc38cc19-1de9-4373-bbed-23c934040141"Sun Nov  1 08:44:39 2020(Ó€èñÿ.r(
$fc38cc19-1de9-4373-bbed-23c934040141"Sun Nov  1 08:44:39 2020(ˆ€èñÿ.bƒ
$dbcd27b7-ec8c-4a06-8cae-93b9b5708ba0rtd2_system_diagram"Årtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/cf2sw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/systemDiagramModel.json --platformFilePath /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --generatedByName v++ --generatedByVersion 2019.2 --generatedByChangeList 2708876 --generatedByTimeStamp Wed Nov  6 21:39:14 MST 2019 --generatedByOptions /opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo  --generatedByXclbinName vadd.hw --kernelInfoDataFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/kernel_info.dat*--rtdJsonFileName*a/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/cf2sw.rtd*--diagramJsonFileName*o/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/systemDiagramModel.json*--platformFilePath*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--generatedByName*v++*--generatedByVersion*2019.2*--generatedByChangeList*2708876*--generatedByTimeStamp*Wed Nov  6 21:39:14 MST 2019*--generatedByOptions*◊/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *--generatedByXclbinName*vadd.hw*--kernelInfoDataFileName*g/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/kernel_info.dat"Sun Nov  1 08:44:39 2020(˜€èñÿ.r(
$dbcd27b7-ec8c-4a06-8cae-93b9b5708ba0"Sun Nov  1 08:44:41 2020(∏Ëèñÿ.ju
o/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/systemDiagramModel.json !"Sun Nov  1 08:44:41 2020(≈Ëèñÿ.r(
$dbcd27b7-ec8c-4a06-8cae-93b9b5708ba0"Sun Nov  1 08:44:41 2020(œËèñÿ.bΩ
$b213911f-b91d-4fa0-8c7f-f0ffa33f2f62vpl"π	vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 140 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/dr.bd.tcl*-t*hw*-f*xilinx_u280_xdma_201920_3*-g*--kernel_frequency*140*--profile_kernel*data:all:all:all:all*-s*--output_dir*W/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int*	--log_dir*X/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/logs/link*--report_dir*[/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link*--config*e/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/vplConfig.ini*-k*g/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/kernel_info.dat*--webtalk_flag*Vitis*
--temp_dir*S/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link*	--no-info*
--tlog_dir*e/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/.tlog/v++_link_vadd.hw*--iprepo*z/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0*--messageDb*c/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/run_link/vpl.pb*a/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/dr.bd.tcl"Sun Nov  1 08:44:41 2020(–Ëèñÿ.r(
$b213911f-b91d-4fa0-8c7f-f0ffa33f2f62"Sun Nov  1 08:44:44 2020(≤Åêñÿ.b˚

$69da756e-b91b-4044-95b0-cb8b0125ad44vplb/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/link.steps.log"È	/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 140 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/dr.bd.tcl "Sun Nov  1 08:44:44 2020(¥Åêñÿ.r(
$69da756e-b91b-4044-95b0-cb8b0125ad44"Sun Nov  1 08:45:45 2020(ø‹ìñÿ.b€
$f40062cb-5f05-4468-930b-9859e20e25a3vivadoi/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/vivado/vpl/vivado.log"]vivado -log vivado.log -applog -m64 -messageDb vivado.pb -mode batch -source vpl.tcl -notrace*-log*
vivado.log*-applog* -m64*
-messageDb*	vivado.pb*-mode*batch*-source*vpl.tcl*-notrace"Sun Nov  1 08:45:45 2020(¡‹ìñÿ.r(
$f40062cb-5f05-4468-930b-9859e20e25a3"Sun Nov  1 12:20:08 2020(ˇÈ§úÿ.jå
Ö/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_synthed.json $"Sun Nov  1 13:02:23 2020(˙≈øùÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_placed.json $"Sun Nov  1 13:37:44 2020(‚Ä¡ûÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_routed.json $"Sun Nov  1 14:04:59 2020(ûÁ§üÿ.r(
$f40062cb-5f05-4468-930b-9859e20e25a3"Sun Nov  1 14:05:00 2020(ë§üÿ.j|
v/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/imp/kernel_util_placed.rpt "Sun Nov  1 14:05:00 2020(ü§üÿ.j
y/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/imp/kernel_util_synthed.xutil "Sun Nov  1 14:05:00 2020(´§üÿ.j~
x/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/imp/kernel_util_routed.xutil "Sun Nov  1 14:05:00 2020(π§üÿ.j~
x/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/imp/kernel_util_placed.xutil "Sun Nov  1 14:05:00 2020(«§üÿ.j|
v/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/imp/kernel_util_routed.rpt "Sun Nov  1 14:05:57 2020(£®®üÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_memory_subsystem_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(∞®®üÿ.jë
ä/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_hmss_0_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(∫®®üÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_6_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(»®®üÿ.jó
ä/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_vadd_1_0_utilization_synth.rptvadd "Sun Nov  1 14:05:57 2020(÷®®üÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_4_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(„®®üÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_2_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(Ò®®üÿ.jí
ã/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_hub_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(¸®®üÿ.jì
å/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon1_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(á©®üÿ.jî
ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon10_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(ñ©®üÿ.jî
ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon11_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(§©®üÿ.jî
ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon12_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(Ø©®üÿ.jî
ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon13_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(æ©®üÿ.jî
ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon14_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(À©®üÿ.jî
ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon15_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(÷©®üÿ.jî
ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon16_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(Ê©®üÿ.jî
ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon17_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(©®üÿ.jî
ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon18_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(˚©®üÿ.jî
ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon19_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(à™®üÿ.jì
å/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon2_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(ô™®üÿ.jî
ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon20_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(®™®üÿ.jî
ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon21_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(¥™®üÿ.jî
ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon22_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(√™®üÿ.jî
ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon23_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(“™®üÿ.jî
ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon24_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(ﬁ™®üÿ.jî
ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon25_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(Ï™®üÿ.jî
ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon26_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(¯™®üÿ.jî
ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon27_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(Ñ´®üÿ.jî
ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon28_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(ê´®üÿ.jî
ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon29_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(õ´®üÿ.jì
å/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon3_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(•´®üÿ.jì
å/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon4_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(±´®üÿ.jì
å/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon5_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(¡´®üÿ.jì
å/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon6_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(Õ´®üÿ.jì
å/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon7_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(ÿ´®üÿ.jì
å/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon8_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(Ë´®üÿ.jì
å/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon9_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(¯´®üÿ.jò
ë/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect26_25_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(à¨®üÿ.jò
ë/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect27_26_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(î¨®üÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect10_9_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(°¨®üÿ.jò
ë/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect28_27_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(≤¨®üÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect0_28_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(ø¨®üÿ.jü
ò/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_d216_interconnect_PLRAM_MEM00_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020( ¨®üÿ.jñ
è/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect9_8_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(⁄¨®üÿ.jò
ë/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect16_15_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(Ê¨®üÿ.jò
ë/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect11_10_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(¯¨®üÿ.jñ
è/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect1_0_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(â≠®üÿ.jò
ë/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect22_21_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(ö≠®üÿ.jò
ë/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect13_12_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(´≠®üÿ.jñ
è/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect5_4_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(∂≠®üÿ.jò
ë/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect23_22_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(»≠®üÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_0_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(‘≠®üÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_1_0_utilization_synth.rpt "Sun Nov  1 14:05:57 2020(‚≠®üÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_2_0_utilization_synth.rpt "Sun Nov  1 14:05:58 2020(≠®üÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_3_0_utilization_synth.rpt "Sun Nov  1 14:05:58 2020(ˇ≠®üÿ.jñ
è/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect8_7_0_utilization_synth.rpt "Sun Nov  1 14:05:58 2020(åÆ®üÿ.jò
ë/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect17_16_0_utilization_synth.rpt "Sun Nov  1 14:05:58 2020(òÆ®üÿ.jñ
è/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect3_2_0_utilization_synth.rpt "Sun Nov  1 14:05:58 2020(¶Æ®üÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_hbm_inst_0_utilization_synth.rpt "Sun Nov  1 14:05:58 2020(±Æ®üÿ.jò
ë/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_m01_regslice_11_utilization_synth.rpt "Sun Nov  1 14:05:58 2020(¬Æ®üÿ.jí
ã/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_auto_cc_0_utilization_synth.rpt "Sun Nov  1 14:05:58 2020(”Æ®üÿ.jò
ë/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect15_14_0_utilization_synth.rpt "Sun Nov  1 14:05:58 2020(‰Æ®üÿ.jò
ë/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect14_13_0_utilization_synth.rpt "Sun Nov  1 14:05:58 2020(ÓÆ®üÿ.jñ
è/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect4_3_0_utilization_synth.rpt "Sun Nov  1 14:05:58 2020(˛Æ®üÿ.jò
ë/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect12_11_0_utilization_synth.rpt "Sun Nov  1 14:05:58 2020(êØ®üÿ.jñ
è/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect2_1_0_utilization_synth.rpt "Sun Nov  1 14:05:58 2020(õØ®üÿ.jò
ë/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect21_20_0_utilization_synth.rpt "Sun Nov  1 14:05:58 2020(¨Ø®üÿ.jò
ë/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect18_17_0_utilization_synth.rpt "Sun Nov  1 14:05:58 2020(∫Ø®üÿ.jò
ë/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect20_19_0_utilization_synth.rpt "Sun Nov  1 14:05:58 2020(∆Ø®üÿ.jò
ë/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect19_18_0_utilization_synth.rpt "Sun Nov  1 14:05:58 2020(ÿØ®üÿ.jò
ë/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect24_23_0_utilization_synth.rpt "Sun Nov  1 14:05:58 2020(„Ø®üÿ.jò
ë/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect25_24_0_utilization_synth.rpt "Sun Nov  1 14:05:58 2020(ıØ®üÿ.jñ
è/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect7_6_0_utilization_synth.rpt "Sun Nov  1 14:05:58 2020(Ç∞®üÿ.jñ
è/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect6_5_0_utilization_synth.rpt "Sun Nov  1 14:05:58 2020(Ë∞®üÿ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/imp/xilinx_u280_xdma_201920_3_bb_locked_timing_summary_routed.rpt "Sun Nov  1 14:05:58 2020(¬±®üÿ.j±
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/imp/xilinx_u280_xdma_201920_3_bb_locked_timing_summary_postroute_physopted.rpt "Sun Nov  1 14:05:59 2020(‚µ®üÿ.r(
$69da756e-b91b-4044-95b0-cb8b0125ad44"Sun Nov  1 14:05:59 2020(ò∂®üÿ.r(
$b213911f-b91d-4fa0-8c7f-f0ffa33f2f62"Sun Nov  1 14:05:59 2020(«∂®üÿ.b6
$4ad7fc26-9292-412f-8d4d-dbf30736a13frtdgen"rtdgen"Sun Nov  1 14:05:59 2020(»∂®üÿ.r(
$4ad7fc26-9292-412f-8d4d-dbf30736a13f"Sun Nov  1 14:05:59 2020(„∂®üÿ.jm
g/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/vadd.hw_xml.rtd %"Sun Nov  1 14:05:59 2020(ı∂®üÿ.b„
$c4fce5c9-ebdd-4152-99e4-6077b391cb22cf2sw"ócf2sw -a /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/address_map.xml -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/sdsl.dat -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/xclbin_orig.xml -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/vadd.hw.rtd -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/vadd.hw.xml*-a*g/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/address_map.xml*-sdsl*`/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/sdsl.dat*-xclbin*g/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/xclbin_orig.xml*-rtd*c/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/vadd.hw.rtd*-o*c/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/vadd.hw.xml"Sun Nov  1 14:05:59 2020(˜∂®üÿ.r(
$c4fce5c9-ebdd-4152-99e4-6077b391cb22"Sun Nov  1 14:06:02 2020(ª”®üÿ.r(
$c4fce5c9-ebdd-4152-99e4-6077b391cb22"Sun Nov  1 14:06:02 2020(¿”®üÿ.b∑
$589f35d5-5106-47ab-94d9-a1a4231ac30artd2_system_diagram"¬rtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/vadd.hw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/systemDiagramModel_resource_use.json --diagramWithAddressesAndSlrsJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json*--rtdJsonFileName*c/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/vadd.hw.rtd*--diagramJsonFileName*|/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/systemDiagramModel_resource_use.json*)--diagramWithAddressesAndSlrsJsonFileName*}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json"Sun Nov  1 14:06:02 2020(¡”®üÿ.r(
$589f35d5-5106-47ab-94d9-a1a4231ac30a"Sun Nov  1 14:06:04 2020(Œﬁ®üÿ.jÉ
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json $"Sun Nov  1 14:06:04 2020(Ÿﬁ®üÿ.r(
$589f35d5-5106-47ab-94d9-a1a4231ac30a"Sun Nov  1 14:06:04 2020(‰ﬁ®üÿ.r(
$4ad7fc26-9292-412f-8d4d-dbf30736a13f"Sun Nov  1 14:06:04 2020(ˆﬁ®üÿ.bì
$1e7dbffa-faef-4327-b9f5-70be0c47a3da
xclbinutil"Ë	xclbinutil --add-section DEBUG_IP_LAYOUT:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/debug_ip_layout.rtd --add-section BITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/partial.bit --force --key-value SYS:mode:hw_pr --add-section :JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/vadd.hw.rtd --append-section :JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/appendSection.rtd --add-section CLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/vadd.hw_xml.rtd --add-section BUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/vadd.hw_build.rtd --add-section EMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/vadd.hw.xml --add-section SYSTEM_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json --output /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/vadd.hw.xclbin*--add-section*ÄDEBUG_IP_LAYOUT:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/debug_ip_layout.rtd*--add-section*qBITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/partial.bit*--force*--key-value*SYS:mode:hw_pr*--add-section*i:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/vadd.hw.rtd*--append-section*o:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/appendSection.rtd*--add-section*ÄCLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/vadd.hw_xml.rtd*--add-section*}BUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/vadd.hw_build.rtd*--add-section*yEMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/vadd.hw.xml*--add-section*ëSYSTEM_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json*--output*f/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/vadd.hw.xclbin"Sun Nov  1 14:06:04 2020(˜ﬁ®üÿ.r(
$1e7dbffa-faef-4327-b9f5-70be0c47a3da"Sun Nov  1 14:06:04 2020(¥‚®üÿ.r(
$1e7dbffa-faef-4327-b9f5-70be0c47a3da"Sun Nov  1 14:06:04 2020(¬‚®üÿ.bú
$22e35cb1-cb99-4c86-8f18-b9838b08c49exclbinutilinfo"Ùxclbinutil --quiet --info /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/vadd.hw.xclbin.info --input /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/vadd.hw.xclbin*--quiet*--info*k/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/vadd.hw.xclbin.info*--input*f/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/link/int/vadd.hw.xclbin"Sun Nov  1 14:06:04 2020(√‚®üÿ.r(
$22e35cb1-cb99-4c86-8f18-b9838b08c49e"Sun Nov  1 14:06:05 2020(éÊ®üÿ.r(
$22e35cb1-cb99-4c86-8f18-b9838b08c49e"Sun Nov  1 14:06:05 2020(“Ê®üÿ.j~
x/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/system_estimate_vadd.hw.xtxt "Sun Nov  1 14:06:05 2020(ëÎ®üÿ.jÄ
z/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/reports/link/v++_link_vadd.hw_guidance.html "Sun Nov  1 14:06:05 2020(íÎ®üÿ.jq
k/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/v++_link_vadd.hw_guidance.pb "Sun Nov  1 14:07:02 2020(®¢¨üÿ.jl
f/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_256_channels_28/_x.hw/vadd/logs/optraceViewer.html ""Sun Nov  1 14:07:02 2020(∏¢¨üÿ.r(
$ca9226d9-c46d-427e-b257-c6962ce09298