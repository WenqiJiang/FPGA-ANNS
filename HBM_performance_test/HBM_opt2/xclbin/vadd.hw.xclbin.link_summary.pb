
Ò
v++_link_vadd.hw$738a7f80-520a-4997-a4d3-183d44cf02d72h`/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/.tlog/v++_link_vadd.hw.xtl 2e]/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/xclbin/vadd.hw.xclbin.link_summary 2f`/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/xclbin/vadd.hw.xclbin.link_summary.pb `/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/xclbin/vadd.hw.xclbin.link_summary.pb"Thu Nov  5 09:36:11 2020(‘ñ≤ºŸ.b‘
$86b00226-fef9-45b6-b5b4-51c3bfc56596v++Y/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/link.steps.log"£/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++  --xp "vivado_prop:run.__KERNEL__.{STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS}={-directive sdx_optimization_effort_high}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_route_design_summary steps {route_design} runs {impl_1} options {-max_paths 10}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_post_route_phys_opt_design_summary steps {post_route_phys_opt_design} runs {impl_1} options {-max_paths 10}" -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *-t*hw*--config*
design.cfg*--save-temps*--report*estimate*
--temp_dir*./_x.hw/vadd*-l*--profile_kernel*data:all:all:all:all*-oxclbin/vadd.hw.xclbin*xclbin/vadd.hw.xo2Û
E/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/design.cfg©platform=xilinx_u280_xdma_201920_3
profile_kernel=data:all:all:all
kernel_frequency=200
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
"Thu Nov  5 09:36:11 2020(÷ñ≤ºŸ.r(
$86b00226-fef9-45b6-b5b4-51c3bfc56596"Thu Nov  5 09:36:21 2020(¸‰≤ºŸ.Z∑
xilinx_u280_xdma_201920_3.xpfmxilinx_u280_xdma_201920_3.xsa//opt/xilinx/platforms/xilinx_u280_xdma_201920_3"OpenCL*Linux08B]
[vadd.hwP/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/xclbin/vadd.hw.xclbinJ“
VvaddL/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/xclbin/vadd.hw.xop/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cppvadd_1"Thu Nov  5 09:36:22 2020(ªÁ≤ºŸ.bå
$97c367f0-b5a8-441e-9f48-8890309f3234system_link"Ísystem_link --xo /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/xclbin/vadd.hw.xo -keep --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/syslinkConfig.ini --xpfm /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --target hw --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/sys_link*--xo*L/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/xclbin/vadd.hw.xo*-keep*--config*`/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/syslinkConfig.ini*--xpfm*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--target*hw*--output_dir*N/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int*
--temp_dir*S/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/sys_link"Thu Nov  5 09:36:22 2020(ºÁ≤ºŸ.r(
$97c367f0-b5a8-441e-9f48-8890309f3234"Thu Nov  5 09:36:47 2020(†≠¥ºŸ.r(
$97c367f0-b5a8-441e-9f48-8890309f3234"Thu Nov  5 09:36:47 2020(©≠¥ºŸ.bÀ
$94177769-2277-4691-805a-05691065515ccf2sw"åcf2sw -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/sdsl.dat -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/cf2sw.rtd -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/xclbin_orig.xml -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/xclbin_orig.1.xml*-sdsl*W/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/sdsl.dat*-rtd*X/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/cf2sw.rtd*-xclbin*^/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/xclbin_orig.xml*-o*`/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/xclbin_orig.1.xml"Thu Nov  5 09:36:47 2020(™≠¥ºŸ.r(
$94177769-2277-4691-805a-05691065515c"Thu Nov  5 09:36:50 2020(˙≈¥ºŸ.r(
$94177769-2277-4691-805a-05691065515c"Thu Nov  5 09:36:50 2020(Ñ∆¥ºŸ.bé
$33d7f5e9-1106-4392-b08b-145add985a14rtd2_system_diagram"Êrtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/cf2sw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/systemDiagramModel.json --platformFilePath /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --generatedByName v++ --generatedByVersion 2019.2 --generatedByChangeList 2708876 --generatedByTimeStamp Wed Nov  6 21:39:14 MST 2019 --generatedByOptions /opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo  --generatedByXclbinName vadd.hw --kernelInfoDataFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/kernel_info.dat*--rtdJsonFileName*X/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/cf2sw.rtd*--diagramJsonFileName*f/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/systemDiagramModel.json*--platformFilePath*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--generatedByName*v++*--generatedByVersion*2019.2*--generatedByChangeList*2708876*--generatedByTimeStamp*Wed Nov  6 21:39:14 MST 2019*--generatedByOptions*◊/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *--generatedByXclbinName*vadd.hw*--kernelInfoDataFileName*^/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/kernel_info.dat"Thu Nov  5 09:36:50 2020(Ü∆¥ºŸ.r(
$33d7f5e9-1106-4392-b08b-145add985a14"Thu Nov  5 09:36:52 2020(ë”¥ºŸ.jl
f/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/systemDiagramModel.json !"Thu Nov  5 09:36:52 2020(û”¥ºŸ.r(
$33d7f5e9-1106-4392-b08b-145add985a14"Thu Nov  5 09:36:52 2020(®”¥ºŸ.bâ
$6e7dd82d-9e01-4631-8839-611ac4677f7avpl"ﬂvpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 200 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/dr.bd.tcl*-t*hw*-f*xilinx_u280_xdma_201920_3*-g*--kernel_frequency*200*--profile_kernel*data:all:all:all:all*-s*--output_dir*N/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int*	--log_dir*O/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/logs/link*--report_dir*R/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link*--config*\/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/vplConfig.ini*-k*^/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/kernel_info.dat*--webtalk_flag*Vitis*
--temp_dir*J/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link*	--no-info*
--tlog_dir*\/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/.tlog/v++_link_vadd.hw*--iprepo*q/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0*--messageDb*Z/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/run_link/vpl.pb*X/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/dr.bd.tcl"Thu Nov  5 09:36:52 2020(™”¥ºŸ.r(
$6e7dd82d-9e01-4631-8839-611ac4677f7a"Thu Nov  5 09:36:53 2020(Áﬂ¥ºŸ.bò

$1294ebd1-1fd2-4660-a9c8-e0a192a19ea4vplY/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/link.steps.log"è	/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 200 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/dr.bd.tcl "Thu Nov  5 09:36:53 2020(Èﬂ¥ºŸ.r(
$1294ebd1-1fd2-4660-a9c8-e0a192a19ea4"Thu Nov  5 09:37:50 2020(’ú∏ºŸ.b“
$dfca46af-5f1a-4615-be3b-f5a0bd79b5e7vivado`/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/vivado/vpl/vivado.log"]vivado -log vivado.log -applog -m64 -messageDb vivado.pb -mode batch -source vpl.tcl -notrace*-log*
vivado.log*-applog* -m64*
-messageDb*	vivado.pb*-mode*batch*-source*vpl.tcl*-notrace"Thu Nov  5 09:37:50 2020(◊ú∏ºŸ.r(
$dfca46af-5f1a-4615-be3b-f5a0bd79b5e7"Thu Nov  5 11:40:37 2020(÷˘øŸ.jÇ
|/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_synthed.json $"Thu Nov  5 12:53:45 2020(º’Ö¬Ÿ.jÅ
{/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_placed.json $"Thu Nov  5 17:06:10 2020(÷Ç¢…Ÿ.jÅ
{/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_routed.json $"Thu Nov  5 17:42:25 2020(›Ë¶ Ÿ.r(
$dfca46af-5f1a-4615-be3b-f5a0bd79b5e7"Thu Nov  5 17:42:26 2020(…Ó¶ Ÿ.js
m/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/imp/kernel_util_placed.rpt "Thu Nov  5 17:42:26 2020(—Ó¶ Ÿ.jv
p/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/imp/kernel_util_synthed.xutil "Thu Nov  5 17:42:26 2020(ÿÓ¶ Ÿ.ju
o/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/imp/kernel_util_placed.xutil "Thu Nov  5 17:42:26 2020(ﬁÓ¶ Ÿ.js
m/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/imp/kernel_util_routed.rpt "Thu Nov  5 17:42:26 2020(ÍÓ¶ Ÿ.ju
o/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/imp/kernel_util_routed.xutil "Thu Nov  5 17:42:28 2020(ëÄß Ÿ.jÖ
/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_2_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(ôÄß Ÿ.jí
ã/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_memory_subsystem_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(†Äß Ÿ.jà
Å/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_hmss_0_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(¶Äß Ÿ.jÖ
/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_4_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(≠Äß Ÿ.jÖ
/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_6_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(≥Äß Ÿ.jé
Å/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_vadd_1_0_utilization_synth.rptvadd "Thu Nov  5 17:42:28 2020(∫Äß Ÿ.jâ
Ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_hub_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(¬Äß Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon10_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(…Äß Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon11_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(–Äß Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon12_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(◊Äß Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon13_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(ﬁÄß Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon14_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(ÂÄß Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon15_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(ÏÄß Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon16_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(ˆÄß Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon17_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(ÄÅß Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon18_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(ÜÅß Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon19_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(ëÅß Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon20_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(òÅß Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon21_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(üÅß Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon22_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(¶Åß Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon23_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(≠Åß Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon24_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(¥Åß Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon25_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(ºÅß Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon26_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(¬Åß Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon27_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020( Åß Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon28_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(—Åß Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon29_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(ÿÅß Ÿ.jä
É/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon5_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(ﬂÅß Ÿ.jä
É/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon6_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(ÊÅß Ÿ.jä
É/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon7_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(ÌÅß Ÿ.jä
É/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon8_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(ÛÅß Ÿ.jä
É/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon9_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(˙Åß Ÿ.jé
á/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect10_9_0_utilization_synth.rpt "Thu Nov  5 17:42:28 2020(ÅÇß Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect23_22_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(àÇß Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect12_11_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(êÇß Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect11_10_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(öÇß Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect25_24_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(¢Çß Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect26_25_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(©Çß Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect16_15_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(∞Çß Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect24_23_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(∂Çß Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_m01_regslice_11_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(æÇß Ÿ.jâ
Ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_auto_cc_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(«Çß Ÿ.jé
á/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_0_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(ŒÇß Ÿ.jé
á/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_1_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(÷Çß Ÿ.jé
á/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_2_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(›Çß Ÿ.jé
á/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_3_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(‰Çß Ÿ.jÖ
/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_hbm_inst_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(ÍÇß Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect18_17_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(Çß Ÿ.jç
Ü/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect3_2_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(ˆÇß Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect19_18_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(¸Çß Ÿ.jé
á/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect0_28_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(ÇÉß Ÿ.jñ
è/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_d216_interconnect_PLRAM_MEM00_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(âÉß Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect15_14_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(èÉß Ÿ.jç
Ü/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect4_3_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(ïÉß Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect14_13_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(úÉß Ÿ.jç
Ü/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect2_1_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(£Éß Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect13_12_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(™Éß Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect22_21_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(∞Éß Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect21_20_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(∑Éß Ÿ.jç
Ü/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect9_8_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(æÉß Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect20_19_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(≈Éß Ÿ.jç
Ü/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect8_7_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(ÃÉß Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect27_26_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(”Éß Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect28_27_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(ŸÉß Ÿ.jç
Ü/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect7_6_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(‡Éß Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect17_16_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(ÊÉß Ÿ.jç
Ü/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect6_5_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(ÌÉß Ÿ.jç
Ü/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect5_4_0_utilization_synth.rpt "Thu Nov  5 17:42:29 2020(Äâß Ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/imp/xilinx_u280_xdma_201920_3_bb_locked_timing_summary_routed.rpt "Thu Nov  5 17:42:29 2020(Ãâß Ÿ.j®
°/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/imp/xilinx_u280_xdma_201920_3_bb_locked_timing_summary_postroute_physopted.rpt "Thu Nov  5 17:42:30 2020(Éçß Ÿ.r(
$1294ebd1-1fd2-4660-a9c8-e0a192a19ea4"Thu Nov  5 17:42:30 2020(¥çß Ÿ.r(
$6e7dd82d-9e01-4631-8839-611ac4677f7a"Thu Nov  5 17:42:30 2020( çß Ÿ.b6
$c5009acf-b10e-49a7-84fc-266f430a1db7rtdgen"rtdgen"Thu Nov  5 17:42:30 2020(Àçß Ÿ.r(
$c5009acf-b10e-49a7-84fc-266f430a1db7"Thu Nov  5 17:42:30 2020(€çß Ÿ.jd
^/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/vadd.hw_xml.rtd %"Thu Nov  5 17:42:30 2020(Áçß Ÿ.bâ
$7e4a96e4-be2b-49fe-98b3-2cbb521104bdcf2sw"Ícf2sw -a /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/address_map.xml -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/sdsl.dat -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/xclbin_orig.xml -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/vadd.hw.rtd -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/vadd.hw.xml*-a*^/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/address_map.xml*-sdsl*W/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/sdsl.dat*-xclbin*^/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/xclbin_orig.xml*-rtd*Z/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/vadd.hw.rtd*-o*Z/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/vadd.hw.xml"Thu Nov  5 17:42:30 2020(Ëçß Ÿ.r(
$7e4a96e4-be2b-49fe-98b3-2cbb521104bd"Thu Nov  5 17:42:34 2020(À™ß Ÿ.r(
$7e4a96e4-be2b-49fe-98b3-2cbb521104bd"Thu Nov  5 17:42:34 2020(–™ß Ÿ.bÅ
$31e75d6d-ac8a-4fdc-b96c-3a617dec4c3crtd2_system_diagram"ßrtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/vadd.hw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/systemDiagramModel_resource_use.json --diagramWithAddressesAndSlrsJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json*--rtdJsonFileName*Z/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/vadd.hw.rtd*--diagramJsonFileName*s/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/systemDiagramModel_resource_use.json*)--diagramWithAddressesAndSlrsJsonFileName*t/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json"Thu Nov  5 17:42:34 2020(—™ß Ÿ.r(
$31e75d6d-ac8a-4fdc-b96c-3a617dec4c3c"Thu Nov  5 17:42:35 2020(Òµß Ÿ.jz
t/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json $"Thu Nov  5 17:42:35 2020(¸µß Ÿ.r(
$31e75d6d-ac8a-4fdc-b96c-3a617dec4c3c"Thu Nov  5 17:42:35 2020(Å∂ß Ÿ.r(
$c5009acf-b10e-49a7-84fc-266f430a1db7"Thu Nov  5 17:42:35 2020(ã∂ß Ÿ.bÔ
$4cca2563-0cff-4bbe-8e26-0dd38c34788e
xclbinutil"ó	xclbinutil --add-section DEBUG_IP_LAYOUT:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/debug_ip_layout.rtd --add-section BITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/partial.bit --force --key-value SYS:mode:hw_pr --add-section :JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/vadd.hw.rtd --append-section :JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/appendSection.rtd --add-section CLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/vadd.hw_xml.rtd --add-section BUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/vadd.hw_build.rtd --add-section EMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/vadd.hw.xml --add-section SYSTEM_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json --output /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/vadd.hw.xclbin*--add-section*wDEBUG_IP_LAYOUT:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/debug_ip_layout.rtd*--add-section*hBITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/partial.bit*--force*--key-value*SYS:mode:hw_pr*--add-section*`:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/vadd.hw.rtd*--append-section*f:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/appendSection.rtd*--add-section*wCLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/vadd.hw_xml.rtd*--add-section*tBUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/vadd.hw_build.rtd*--add-section*pEMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/vadd.hw.xml*--add-section*àSYSTEM_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json*--output*]/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/vadd.hw.xclbin"Thu Nov  5 17:42:35 2020(å∂ß Ÿ.r(
$4cca2563-0cff-4bbe-8e26-0dd38c34788e"Thu Nov  5 17:42:35 2020(ß∏ß Ÿ.r(
$4cca2563-0cff-4bbe-8e26-0dd38c34788e"Thu Nov  5 17:42:35 2020(≤∏ß Ÿ.b¯
$ee9c020f-b754-46bd-a3c5-4e77d1323330xclbinutilinfo"‚xclbinutil --quiet --info /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/vadd.hw.xclbin.info --input /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/vadd.hw.xclbin*--quiet*--info*b/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/vadd.hw.xclbin.info*--input*]/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/link/int/vadd.hw.xclbin"Thu Nov  5 17:42:35 2020(≥∏ß Ÿ.r(
$ee9c020f-b754-46bd-a3c5-4e77d1323330"Thu Nov  5 17:42:36 2020(Ïªß Ÿ.r(
$ee9c020f-b754-46bd-a3c5-4e77d1323330"Thu Nov  5 17:42:36 2020(∞ºß Ÿ.ju
o/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/system_estimate_vadd.hw.xtxt "Thu Nov  5 17:42:36 2020(œæß Ÿ.jw
q/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/reports/link/v++_link_vadd.hw_guidance.html "Thu Nov  5 17:42:36 2020(–æß Ÿ.jh
b/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/v++_link_vadd.hw_guidance.pb "Thu Nov  5 17:43:30 2020(ﬁ™ Ÿ.jc
]/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt2/_x.hw/vadd/logs/optraceViewer.html ""Thu Nov  5 17:43:30 2020(ñﬂ™ Ÿ.r(
$86b00226-fef9-45b6-b5b4-51c3bfc56596