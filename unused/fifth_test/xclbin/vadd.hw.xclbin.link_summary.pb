
∏
v++_link_vadd.hw$ba825923-2874-46aa-9535-8c4ca0e953d82UM/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/.tlog/v++_link_vadd.hw.xtl 2RJ/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/xclbin/vadd.hw.xclbin.link_summary 2SM/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/xclbin/vadd.hw.xclbin.link_summary.pb M/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/xclbin/vadd.hw.xclbin.link_summary.pb"Thu Oct 29 23:21:31 2020(± Œ≥◊.b¶
$e392460d-abd7-4936-b73f-eaa5427776d7v++F/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/link.steps.log"£/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++  --xp "vivado_prop:run.__KERNEL__.{STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS}={-directive sdx_optimization_effort_high}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_route_design_summary steps {route_design} runs {impl_1} options {-max_paths 10}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_post_route_phys_opt_design_summary steps {post_route_phys_opt_design} runs {impl_1} options {-max_paths 10}" -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *-t*hw*--config*
design.cfg*--save-temps*--report*estimate*
--temp_dir*./_x.hw/vadd*-l*--profile_kernel*data:all:all:all:all*-oxclbin/vadd.hw.xclbin*xclbin/vadd.hw.xo2ÿ
2/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/design.cfg°platform=xilinx_u280_xdma_201920_3
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
sp=vadd_1.table_HBM28:HBM[28]
sp=vadd_1.table_HBM29:HBM[29]
sp=vadd_1.table_HBM30:HBM[30]
sp=vadd_1.table_HBM31:HBM[31]
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
"Thu Oct 29 23:21:31 2020(≥ Œ≥◊.r(
$e392460d-abd7-4936-b73f-eaa5427776d7"Thu Oct 29 23:21:42 2020(˘úœ≥◊.Z˛
xilinx_u280_xdma_201920_3.xpfmxilinx_u280_xdma_201920_3.xsa//opt/xilinx/platforms/xilinx_u280_xdma_201920_3"OpenCL*Linux08BJ
Hvadd.hw=/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/xclbin/vadd.hw.xclbinJ¨
Cvadd9/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/xclbin/vadd.hw.xo]/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cppvadd_1"Thu Oct 29 23:21:42 2020(¬üœ≥◊.bÙ
$5eb9ec5f-290e-402a-b1b2-31fc54770b77system_link"ûsystem_link --xo /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/xclbin/vadd.hw.xo -keep --config /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/syslinkConfig.ini --xpfm /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --target hw --output_dir /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/sys_link*--xo*9/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/xclbin/vadd.hw.xo*-keep*--config*M/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/syslinkConfig.ini*--xpfm*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--target*hw*--output_dir*;/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int*
--temp_dir*@/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/sys_link"Thu Oct 29 23:21:42 2020(√üœ≥◊.r(
$5eb9ec5f-290e-402a-b1b2-31fc54770b77"Thu Oct 29 23:22:09 2020(«Ú–≥◊.r(
$5eb9ec5f-290e-402a-b1b2-31fc54770b77"Thu Oct 29 23:22:09 2020(œÚ–≥◊.b≥
$87dd445d-711d-481b-954f-a204f93379cdcf2sw"¿cf2sw -sdsl /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/sdsl.dat -rtd /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/cf2sw.rtd -xclbin /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/xclbin_orig.xml -o /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/xclbin_orig.1.xml*-sdsl*D/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/sdsl.dat*-rtd*E/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/cf2sw.rtd*-xclbin*K/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/xclbin_orig.xml*-o*M/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/xclbin_orig.1.xml"Thu Oct 29 23:22:09 2020(—Ú–≥◊.r(
$87dd445d-711d-481b-954f-a204f93379cd"Thu Oct 29 23:22:13 2020(·ç—≥◊.r(
$87dd445d-711d-481b-954f-a204f93379cd"Thu Oct 29 23:22:13 2020(Èç—≥◊.bú
$f0b719e0-983a-42a9-92b7-af50dd6ffd21rtd2_system_diagram"≠rtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/cf2sw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/systemDiagramModel.json --platformFilePath /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --generatedByName v++ --generatedByVersion 2019.2 --generatedByChangeList 2708876 --generatedByTimeStamp Wed Nov  6 21:39:14 MST 2019 --generatedByOptions /opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo  --generatedByXclbinName vadd.hw --kernelInfoDataFileName /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/kernel_info.dat*--rtdJsonFileName*E/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/cf2sw.rtd*--diagramJsonFileName*S/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/systemDiagramModel.json*--platformFilePath*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--generatedByName*v++*--generatedByVersion*2019.2*--generatedByChangeList*2708876*--generatedByTimeStamp*Wed Nov  6 21:39:14 MST 2019*--generatedByOptions*◊/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *--generatedByXclbinName*vadd.hw*--kernelInfoDataFileName*K/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/kernel_info.dat"Thu Oct 29 23:22:13 2020(Îç—≥◊.r(
$f0b719e0-983a-42a9-92b7-af50dd6ffd21"Thu Oct 29 23:22:14 2020(–õ—≥◊.jY
S/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/systemDiagramModel.json !"Thu Oct 29 23:22:15 2020(‡õ—≥◊.r(
$f0b719e0-983a-42a9-92b7-af50dd6ffd21"Thu Oct 29 23:22:15 2020(Íõ—≥◊.bç
$1880af5a-b4d1-4d59-9e2d-ed2c10c5a75dvpl"°vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 140 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/dr.bd.tcl*-t*hw*-f*xilinx_u280_xdma_201920_3*-g*--kernel_frequency*140*--profile_kernel*data:all:all:all:all*-s*--output_dir*;/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int*	--log_dir*</mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/logs/link*--report_dir*?/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/reports/link*--config*I/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/vplConfig.ini*-k*K/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/kernel_info.dat*--webtalk_flag*Vitis*
--temp_dir*7/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link*	--no-info*
--tlog_dir*I/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/.tlog/v++_link_vadd.hw*--iprepo*^/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0*--messageDb*G/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/run_link/vpl.pb*E/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/dr.bd.tcl"Thu Oct 29 23:22:15 2020(Ïõ—≥◊.r(
$1880af5a-b4d1-4d59-9e2d-ed2c10c5a75d"Thu Oct 29 23:22:16 2020(–®—≥◊.b«
$61dbd411-3692-471f-ad58-622dea2f064bvplF/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/link.steps.log"—/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 140 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/int/dr.bd.tcl "Thu Oct 29 23:22:16 2020(—®—≥◊.r(
$61dbd411-3692-471f-ad58-622dea2f064b"Thu Oct 29 23:23:18 2020(Êâ’≥◊.bø
$096ac834-3b57-408a-bfad-8cecc21d48c2vivadoM/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.hw/vadd/link/vivado/vpl/vivado.log"]vivado -log vivado.log -applog -m64 -messageDb vivado.pb -mode batch -source vpl.tcl -notrace*-log*
vivado.log*-applog* -m64*
-messageDb*	vivado.pb*-mode*batch*-source*vpl.tcl*-notrace"Thu Oct 29 23:23:18 2020(Ëâ’≥◊.r(
$096ac834-3b57-408a-bfad-8cecc21d48c2