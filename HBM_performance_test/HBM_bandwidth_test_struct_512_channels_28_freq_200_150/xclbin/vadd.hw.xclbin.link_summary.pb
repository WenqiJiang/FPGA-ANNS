
°
v++_link_vadd.hw$4696697f-92af-415a-952e-54f5c30a91972}u/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/.tlog/v++_link_vadd.hw.xtl 2zr/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/xclbin/vadd.hw.xclbin.link_summary 2{u/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/xclbin/vadd.hw.xclbin.link_summary.pb u/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/xclbin/vadd.hw.xclbin.link_summary.pb"Tue Nov  3 19:49:37 2020(ûİÅûØ.bş
$bb663c5f-262b-4a11-98f3-bc4080a113bav++n/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/link.steps.log"£/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++  --xp "vivado_prop:run.__KERNEL__.{STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS}={-directive sdx_optimization_effort_high}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_route_design_summary steps {route_design} runs {impl_1} options {-max_paths 10}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_post_route_phys_opt_design_summary steps {post_route_phys_opt_design} runs {impl_1} options {-max_paths 10}" -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *-t*hw*--config*
design.cfg*--save-temps*--report*estimate*
--temp_dir*./_x.hw/vadd*-l*--profile_kernel*data:all:all:all:all*-oxclbin/vadd.hw.xclbin*xclbin/vadd.hw.xo2ˆ
Z/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/design.cfg©platform=xilinx_u280_xdma_201920_3
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
"Tue Nov  3 19:49:37 2020(ıİÅûØ.r(
$bb663c5f-262b-4a11-98f3-bc4080a113ba"Tue Nov  3 19:49:46 2020(§ÆûØ.Z÷
xilinx_u280_xdma_201920_3.xpfmxilinx_u280_xdma_201920_3.xsa//opt/xilinx/platforms/xilinx_u280_xdma_201920_3"OpenCL*Linux08Br
pvadd.hwe/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/xclbin/vadd.hw.xclbinJı
kvadda/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/xclbin/vadd.hw.xo…/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cppvadd_1"Tue Nov  3 19:49:46 2020(ù¨ÆûØ.b´	
$9d47591f-e54d-4f0e-8d94-3b4b75a13053system_link"¾system_link --xo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/xclbin/vadd.hw.xo -keep --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/syslinkConfig.ini --xpfm /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --target hw --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/sys_link*--xo*a/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/xclbin/vadd.hw.xo*-keep*--config*u/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/syslinkConfig.ini*--xpfm*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--target*hw*--output_dir*c/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int*
--temp_dir*h/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/sys_link"Tue Nov  3 19:49:46 2020(ú¨ÆûØ.r(
$9d47591f-e54d-4f0e-8d94-3b4b75a13053"Tue Nov  3 19:50:12 2020(èğÇûØ.r(
$9d47591f-e54d-4f0e-8d94-3b4b75a13053"Tue Nov  3 19:50:12 2020(ğğÇûØ.bó
$5cc402a9-926a-4bb6-8a6d-e758df3a28bccf2sw"àcf2sw -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/sdsl.dat -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/cf2sw.rtd -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/xclbin_orig.xml -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/xclbin_orig.1.xml*-sdsl*l/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/sdsl.dat*-rtd*m/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/cf2sw.rtd*-xclbin*s/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/xclbin_orig.xml*-o*u/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/xclbin_orig.1.xml"Tue Nov  3 19:50:12 2020(ñğÇûØ.r(
$5cc402a9-926a-4bb6-8a6d-e758df3a28bc"Tue Nov  3 19:50:15 2020(•ŠÈûØ.r(
$5cc402a9-926a-4bb6-8a6d-e758df3a28bc"Tue Nov  3 19:50:15 2020(ŠÈûØ.bŒ
$d688ad6e-5277-4cfa-97d0-0943b39c8cccrtd2_system_diagram"¥rtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/cf2sw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/systemDiagramModel.json --platformFilePath /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --generatedByName v++ --generatedByVersion 2019.2 --generatedByChangeList 2708876 --generatedByTimeStamp Wed Nov  6 21:39:14 MST 2019 --generatedByOptions /opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo  --generatedByXclbinName vadd.hw --kernelInfoDataFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/kernel_info.dat*--rtdJsonFileName*m/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/cf2sw.rtd*--diagramJsonFileName*{/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/systemDiagramModel.json*--platformFilePath*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--generatedByName*v++*--generatedByVersion*2019.2*--generatedByChangeList*2708876*--generatedByTimeStamp*Wed Nov  6 21:39:14 MST 2019*--generatedByOptions*×/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *--generatedByXclbinName*vadd.hw*--kernelInfoDataFileName*s/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/kernel_info.dat"Tue Nov  3 19:50:15 2020(ŸŠÈûØ.r(
$d688ad6e-5277-4cfa-97d0-0943b39c8ccc"Tue Nov  3 19:50:17 2020(ª—ÈûØ.j
{/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/systemDiagramModel.json !"Tue Nov  3 19:50:17 2020(¼—ÈûØ.r(
$d688ad6e-5277-4cfa-97d0-0943b39c8ccc"Tue Nov  3 19:50:17 2020(Æ—ÈûØ.b®
$3639dedc-d716-4c0b-b0f4-d29b847d789evpl"±
vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 200 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/dr.bd.tcl*-t*hw*-f*xilinx_u280_xdma_201920_3*-g*--kernel_frequency*200*--profile_kernel*data:all:all:all:all*-s*--output_dir*c/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int*	--log_dir*d/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/logs/link*--report_dir*g/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link*--config*q/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/vplConfig.ini*-k*s/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/kernel_info.dat*--webtalk_flag*Vitis*
--temp_dir*_/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link*	--no-info*
--tlog_dir*q/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/.tlog/v++_link_vadd.hw*--iprepo*†/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0*--messageDb*o/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/run_link/vpl.pb*m/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/dr.bd.tcl"Tue Nov  3 19:50:17 2020(È—ÈûØ.r(
$3639dedc-d716-4c0b-b0f4-d29b847d789e"Tue Nov  3 19:50:19 2020(š¤ÈûØ.bÿ
$737e5c2b-5bca-4444-a542-d2de10ad07f2vpln/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/link.steps.log"á
/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 200 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/dr.bd.tcl "Tue Nov  3 19:50:19 2020(›¤ÈûØ.r(
$737e5c2b-5bca-4444-a542-d2de10ad07f2"Tue Nov  3 19:51:18 2020(¹õËûØ.bç
$ab93c494-4638-46c6-837d-939f855ad318vivadou/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/vivado/vpl/vivado.log"]vivado -log vivado.log -applog -m64 -messageDb vivado.pb -mode batch -source vpl.tcl -notrace*-log*
vivado.log*-applog* -m64*
-messageDb*	vivado.pb*-mode*batch*-source*vpl.tcl*-notrace"Tue Nov  3 19:51:18 2020(»õËûØ.r(
$ab93c494-4638-46c6-837d-939f855ad318"Tue Nov  3 21:58:46 2020(íÚÿØ.j˜
‘/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_synthed.json $"Tue Nov  3 23:14:20 2020(İ¹³Ù.j—
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_placed.json $"Wed Nov  4 06:23:10 2020(–îÕÙ.j—
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_routed.json $"Wed Nov  4 07:09:10 2020(­¨şÙ.r(
$ab93c494-4638-46c6-837d-939f855ad318"Wed Nov  4 07:09:11 2020(İ´şÙ.jŒ
…/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/imp/kernel_util_synthed.xutil "Wed Nov  4 07:09:11 2020(å´şÙ.j‹
„/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/imp/kernel_util_placed.xutil "Wed Nov  4 07:09:11 2020(ë´şÙ.j‹
„/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/imp/kernel_util_routed.xutil "Wed Nov  4 07:09:11 2020(ñ´şÙ.j‰
‚/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/imp/kernel_util_routed.rpt "Wed Nov  4 07:09:11 2020(ø´şÙ.j‰
‚/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/imp/kernel_util_placed.rpt "Wed Nov  4 07:09:13 2020(Ø¾şÙ.j
–/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_hmss_0_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(à¾şÙ.j§
 /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_memory_subsystem_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(æ¾şÙ.j£
–/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_vadd_1_0_utilization_synth.rptvadd "Wed Nov  4 07:09:13 2020(í¾şÙ.j›
”/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_4_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(ó¾şÙ.j›
”/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_2_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(ú¾şÙ.j›
”/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_6_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(€¿şÙ.j
—/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_hub_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(‡¿şÙ.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon10_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(¿şÙ.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon11_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(”¿şÙ.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon12_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(š¿şÙ.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon13_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020( ¿şÙ.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon14_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(§¿şÙ.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon15_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(­¿şÙ.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon16_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(´¿şÙ.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon17_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(»¿şÙ.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon18_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(Á¿şÙ.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon19_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(Ç¿şÙ.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon20_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(Î¿şÙ.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon21_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(Ô¿şÙ.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon22_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(Ú¿şÙ.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon23_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(á¿şÙ.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon24_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(ç¿şÙ.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon25_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(í¿şÙ.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon26_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(ó¿şÙ.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon27_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(ú¿şÙ.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon28_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(€ÀşÙ.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon29_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(‡ÀşÙ.jŸ
˜/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon5_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(ÀşÙ.jŸ
˜/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon6_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(”ÀşÙ.jŸ
˜/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon7_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(šÀşÙ.jŸ
˜/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon8_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(¡ÀşÙ.jŸ
˜/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon9_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(§ÀşÙ.j£
œ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_0_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(­ÀşÙ.j£
œ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_1_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(´ÀşÙ.j£
œ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_2_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(ºÀşÙ.j£
œ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_3_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(ÀÀşÙ.j¢
›/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect4_3_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(ÆÀşÙ.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_m01_regslice_11_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(ÍÀşÙ.j
—/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/pfm_dynamic_auto_cc_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(ÓÀşÙ.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect15_14_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(ÙÀşÙ.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect11_10_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(ßÀşÙ.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect13_12_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(åÀşÙ.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect14_13_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(ìÀşÙ.j¢
›/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect5_4_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(òÀşÙ.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect12_11_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(øÀşÙ.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect16_15_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(ÿÀşÙ.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect17_16_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(…ÁşÙ.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect18_17_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(‹ÁşÙ.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect19_18_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(‘ÁşÙ.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect20_19_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(—ÁşÙ.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect21_20_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(ÁşÙ.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect22_21_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(¤ÁşÙ.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect23_22_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(ªÁşÙ.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect24_23_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(°ÁşÙ.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect25_24_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(¶ÁşÙ.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect26_25_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(¼ÁşÙ.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect27_26_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(ÂÁşÙ.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect28_27_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(ÉÁşÙ.j£
œ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect0_28_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(ÏÁşÙ.j£
œ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect10_9_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(ÕÁşÙ.j¢
›/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect9_8_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(ÛÁşÙ.j¢
›/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect3_2_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(àÁşÙ.j¢
›/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect2_1_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(çÁşÙ.j¢
›/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect8_7_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(íÁşÙ.j¢
›/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect6_5_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(óÁşÙ.j¢
›/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect7_6_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(ùÁşÙ.j›
”/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_5dca_hbm_inst_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(ÿÁşÙ.j«
¤/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/syn/bd_d216_interconnect_PLRAM_MEM00_0_utilization_synth.rpt "Wed Nov  4 07:09:13 2020(ÄÂşÙ.j°
©/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/imp/xilinx_u280_xdma_201920_3_bb_locked_timing_summary_routed.rpt "Wed Nov  4 07:09:13 2020(„ÃşÙ.j½
¶/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/imp/xilinx_u280_xdma_201920_3_bb_locked_timing_summary_postroute_physopted.rpt "Wed Nov  4 07:09:14 2020(˜ÆşÙ.r(
$737e5c2b-5bca-4444-a542-d2de10ad07f2"Wed Nov  4 07:09:14 2020(ÌÆşÙ.r(
$3639dedc-d716-4c0b-b0f4-d29b847d789e"Wed Nov  4 07:09:14 2020(İÆşÙ.b6
$5db14e1a-5a6a-4843-a901-85dc8e5682c6rtdgen"rtdgen"Wed Nov  4 07:09:14 2020(ßÆşÙ.r(
$5db14e1a-5a6a-4843-a901-85dc8e5682c6"Wed Nov  4 07:09:14 2020(íÆşÙ.jy
s/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/vadd.hw_xml.rtd %"Wed Nov  4 07:09:14 2020(ùÆşÙ.bÛ	
$e0248e97-4211-4bd1-bbd2-476e1b8fe9bccf2sw"Ócf2sw -a /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/address_map.xml -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/sdsl.dat -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/xclbin_orig.xml -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/vadd.hw.rtd -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/vadd.hw.xml*-a*s/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/address_map.xml*-sdsl*l/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/sdsl.dat*-xclbin*s/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/xclbin_orig.xml*-rtd*o/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/vadd.hw.rtd*-o*o/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/vadd.hw.xml"Wed Nov  4 07:09:14 2020(úÆşÙ.r(
$e0248e97-4211-4bd1-bbd2-476e1b8fe9bc"Wed Nov  4 07:09:17 2020(»äşÙ.r(
$e0248e97-4211-4bd1-bbd2-476e1b8fe9bc"Wed Nov  4 07:09:17 2020(ÀäşÙ.b
$75790e18-6789-4a57-9f87-b82c26ba0561rtd2_system_diagram"ærtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/vadd.hw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/systemDiagramModel_resource_use.json --diagramWithAddressesAndSlrsJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json*--rtdJsonFileName*o/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/vadd.hw.rtd*--diagramJsonFileName*ˆ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/systemDiagramModel_resource_use.json*)--diagramWithAddressesAndSlrsJsonFileName*‰/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json"Wed Nov  4 07:09:17 2020(ÂäşÙ.r(
$75790e18-6789-4a57-9f87-b82c26ba0561"Wed Nov  4 07:09:19 2020(ğşÙ.j
‰/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json $"Wed Nov  4 07:09:19 2020(¢ğşÙ.r(
$75790e18-6789-4a57-9f87-b82c26ba0561"Wed Nov  4 07:09:19 2020(¨ğşÙ.r(
$5db14e1a-5a6a-4843-a901-85dc8e5682c6"Wed Nov  4 07:09:19 2020(±ğşÙ.bí
$2cc20403-f459-475e-9978-fcab25d6f492
xclbinutil"Ô
xclbinutil --add-section DEBUG_IP_LAYOUT:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/debug_ip_layout.rtd --add-section BITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/partial.bit --force --key-value SYS:mode:hw_pr --add-section :JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/vadd.hw.rtd --append-section :JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/appendSection.rtd --add-section CLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/vadd.hw_xml.rtd --add-section BUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/vadd.hw_build.rtd --add-section EMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/vadd.hw.xml --add-section SYSTEM_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json --output /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/vadd.hw.xclbin*--add-section*ŒDEBUG_IP_LAYOUT:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/debug_ip_layout.rtd*--add-section*}BITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/partial.bit*--force*--key-value*SYS:mode:hw_pr*--add-section*u:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/vadd.hw.rtd*--append-section*{:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/appendSection.rtd*--add-section*ŒCLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/vadd.hw_xml.rtd*--add-section*‰BUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/vadd.hw_build.rtd*--add-section*…EMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/vadd.hw.xml*--add-section*SYSTEM_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json*--output*r/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/vadd.hw.xclbin"Wed Nov  4 07:09:19 2020(³ğşÙ.r(
$2cc20403-f459-475e-9978-fcab25d6f492"Wed Nov  4 07:09:19 2020(ÑòşÙ.r(
$2cc20403-f459-475e-9978-fcab25d6f492"Wed Nov  4 07:09:19 2020(ÚòşÙ.bÌ
$d0f4a66e-1b24-4049-a521-343a0f3fac10xclbinutilinfo"Œxclbinutil --quiet --info /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/vadd.hw.xclbin.info --input /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/vadd.hw.xclbin*--quiet*--info*w/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/vadd.hw.xclbin.info*--input*r/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/int/vadd.hw.xclbin"Wed Nov  4 07:09:19 2020(ÛòşÙ.r(
$d0f4a66e-1b24-4049-a521-343a0f3fac10"Wed Nov  4 07:09:20 2020(öşÙ.r(
$d0f4a66e-1b24-4049-a521-343a0f3fac10"Wed Nov  4 07:09:20 2020(ÎöşÙ.j‹
„/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/system_estimate_vadd.hw.xtxt "Wed Nov  4 07:09:20 2020(¾øşÙ.j
†/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/reports/link/v++_link_vadd.hw_guidance.html "Wed Nov  4 07:09:20 2020(ÀøşÙ.j}
w/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/v++_link_vadd.hw_guidance.pb "Wed Nov  4 07:10:05 2020(€×Ù.jx
r/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/logs/optraceViewer.html ""Wed Nov  4 07:10:05 2020(‹×Ù.r(
$bb663c5f-262b-4a11-98f3-bc4080a113ba