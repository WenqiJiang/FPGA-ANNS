
°
v++_link_vadd.hw$9cc18846-f157-4fb1-92f4-00f9c99c8b842}u/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/.tlog/v++_link_vadd.hw.xtl 2zr/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/xclbin/vadd.hw.xclbin.link_summary 2{u/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/xclbin/vadd.hw.xclbin.link_summary.pb u/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/xclbin/vadd.hw.xclbin.link_summary.pb"Tue Nov  3 19:40:04 2020(Âß¢ûØ.bş
$97781e0d-324a-482c-8bc5-a2c07ff550eev++n/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/link.steps.log"£/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++  --xp "vivado_prop:run.__KERNEL__.{STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS}={-directive sdx_optimization_effort_high}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_route_design_summary steps {route_design} runs {impl_1} options {-max_paths 10}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_post_route_phys_opt_design_summary steps {post_route_phys_opt_design} runs {impl_1} options {-max_paths 10}" -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *-t*hw*--config*
design.cfg*--save-temps*--report*estimate*
--temp_dir*./_x.hw/vadd*-l*--profile_kernel*data:all:all:all:all*-oxclbin/vadd.hw.xclbin*xclbin/vadd.hw.xo2ˆ
Z/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/design.cfg©platform=xilinx_u280_xdma_201920_3
profile_kernel=data:all:all:all
kernel_frequency=220
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
"Tue Nov  3 19:40:04 2020(Äß¢ûØ.r(
$97781e0d-324a-482c-8bc5-a2c07ff550ee"Tue Nov  3 19:40:13 2020(¯¨£ûØ.Z÷
xilinx_u280_xdma_201920_3.xpfmxilinx_u280_xdma_201920_3.xsa//opt/xilinx/platforms/xilinx_u280_xdma_201920_3"OpenCL*Linux08Br
pvadd.hwe/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/xclbin/vadd.hw.xclbinJı
kvadda/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/xclbin/vadd.hw.xo…/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cppvadd_1"Tue Nov  3 19:40:13 2020(¥ª£ûØ.b´	
$e21c92b5-8c1d-49fb-a682-005be156e0ecsystem_link"¾system_link --xo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/xclbin/vadd.hw.xo -keep --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/syslinkConfig.ini --xpfm /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --target hw --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/sys_link*--xo*a/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/xclbin/vadd.hw.xo*-keep*--config*u/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/syslinkConfig.ini*--xpfm*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--target*hw*--output_dir*c/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int*
--temp_dir*h/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/sys_link"Tue Nov  3 19:40:13 2020(¦ª£ûØ.r(
$e21c92b5-8c1d-49fb-a682-005be156e0ec"Tue Nov  3 19:40:38 2020(áê¤ûØ.r(
$e21c92b5-8c1d-49fb-a682-005be156e0ec"Tue Nov  3 19:40:38 2020(òê¤ûØ.bó
$fea9c200-fa70-4502-a4bf-745dcea5a98dcf2sw"àcf2sw -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/sdsl.dat -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/cf2sw.rtd -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/xclbin_orig.xml -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/xclbin_orig.1.xml*-sdsl*l/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/sdsl.dat*-rtd*m/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/cf2sw.rtd*-xclbin*s/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/xclbin_orig.xml*-o*u/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/xclbin_orig.1.xml"Tue Nov  3 19:40:38 2020(ôê¤ûØ.r(
$fea9c200-fa70-4502-a4bf-745dcea5a98d"Tue Nov  3 19:40:42 2020(˜Š¥ûØ.r(
$fea9c200-fa70-4502-a4bf-745dcea5a98d"Tue Nov  3 19:40:42 2020(¡Š¥ûØ.bŒ
$43c4719c-7a99-487a-bf96-32cf6ea4ffebrtd2_system_diagram"¥rtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/cf2sw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/systemDiagramModel.json --platformFilePath /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --generatedByName v++ --generatedByVersion 2019.2 --generatedByChangeList 2708876 --generatedByTimeStamp Wed Nov  6 21:39:14 MST 2019 --generatedByOptions /opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo  --generatedByXclbinName vadd.hw --kernelInfoDataFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/kernel_info.dat*--rtdJsonFileName*m/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/cf2sw.rtd*--diagramJsonFileName*{/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/systemDiagramModel.json*--platformFilePath*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--generatedByName*v++*--generatedByVersion*2019.2*--generatedByChangeList*2708876*--generatedByTimeStamp*Wed Nov  6 21:39:14 MST 2019*--generatedByOptions*×/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *--generatedByXclbinName*vadd.hw*--kernelInfoDataFileName*s/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/kernel_info.dat"Tue Nov  3 19:40:42 2020(¢Š¥ûØ.r(
$43c4719c-7a99-487a-bf96-32cf6ea4ffeb"Tue Nov  3 19:40:43 2020(°—¥ûØ.j
{/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/systemDiagramModel.json !"Tue Nov  3 19:40:43 2020(¼—¥ûØ.r(
$43c4719c-7a99-487a-bf96-32cf6ea4ffeb"Tue Nov  3 19:40:43 2020(Ç—¥ûØ.b®
$a7895642-39dd-4c00-98ae-bb218337a918vpl"±
vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 220 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/dr.bd.tcl*-t*hw*-f*xilinx_u280_xdma_201920_3*-g*--kernel_frequency*220*--profile_kernel*data:all:all:all:all*-s*--output_dir*c/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int*	--log_dir*d/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/logs/link*--report_dir*g/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link*--config*q/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/vplConfig.ini*-k*s/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/kernel_info.dat*--webtalk_flag*Vitis*
--temp_dir*_/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link*	--no-info*
--tlog_dir*q/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/.tlog/v++_link_vadd.hw*--iprepo*†/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0*--messageDb*o/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/run_link/vpl.pb*m/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/dr.bd.tcl"Tue Nov  3 19:40:43 2020(É—¥ûØ.r(
$a7895642-39dd-4c00-98ae-bb218337a918"Tue Nov  3 19:40:45 2020(©¤¥ûØ.bÿ
$82a7e160-982e-4551-9ec6-700203e66788vpln/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/link.steps.log"á
/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 220 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/dr.bd.tcl "Tue Nov  3 19:40:45 2020(ª¤¥ûØ.r(
$82a7e160-982e-4551-9ec6-700203e66788"Tue Nov  3 19:41:44 2020(‰ó¨ûØ.bç
$7b0f0f66-8603-4bca-be04-1654f8f91fb1vivadou/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/vivado/vpl/vivado.log"]vivado -log vivado.log -applog -m64 -messageDb vivado.pb -mode batch -source vpl.tcl -notrace*-log*
vivado.log*-applog* -m64*
-messageDb*	vivado.pb*-mode*batch*-source*vpl.tcl*-notrace"Tue Nov  3 19:41:44 2020(‹ó¨ûØ.r(
$7b0f0f66-8603-4bca-be04-1654f8f91fb1"Tue Nov  3 21:55:01 2020(ûÿØ.j˜
‘/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_synthed.json $"Tue Nov  3 23:09:27 2020(ÓÉ¡Ù.j—
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_placed.json $"Wed Nov  4 06:48:47 2020(ÉÛ³Ù.j—
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_routed.json $"Wed Nov  4 07:33:33 2020(ÏÓ×Ù.r(
$7b0f0f66-8603-4bca-be04-1654f8f91fb1"Wed Nov  4 07:33:36 2020(¤ç×Ù.j‹
„/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/imp/kernel_util_routed.xutil "Wed Nov  4 07:33:36 2020(«ç×Ù.j‰
‚/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/imp/kernel_util_placed.rpt "Wed Nov  4 07:33:36 2020(²ç×Ù.j‹
„/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/imp/kernel_util_placed.xutil "Wed Nov  4 07:33:36 2020(½ç×Ù.jŒ
…/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/imp/kernel_util_synthed.xutil "Wed Nov  4 07:33:36 2020(Ãç×Ù.j‰
‚/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/imp/kernel_util_routed.rpt "Wed Nov  4 07:33:36 2020(Ğç×Ù.j
–/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_hmss_0_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(Öç×Ù.j§
 /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_memory_subsystem_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(Üç×Ù.j£
–/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_vadd_1_0_utilization_synth.rptvadd "Wed Nov  4 07:33:36 2020(âç×Ù.j›
”/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_4_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(èç×Ù.j›
”/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_2_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(îç×Ù.j›
”/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_6_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(ôç×Ù.j
—/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_hub_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(úç×Ù.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon10_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(€è×Ù.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon11_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(†è×Ù.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon12_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(è×Ù.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon13_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(•è×Ù.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon14_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(œè×Ù.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon15_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(£è×Ù.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon16_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(ªè×Ù.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon17_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(°è×Ù.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon18_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(¶è×Ù.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon19_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(½è×Ù.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon20_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(Äè×Ù.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon21_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(Êè×Ù.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon22_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(Ñè×Ù.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon23_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(×è×Ù.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon24_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(Şè×Ù.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon25_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(äè×Ù.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon26_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(êè×Ù.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon27_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(ğè×Ù.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon28_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(÷è×Ù.j 
™/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon29_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(ıè×Ù.jŸ
˜/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon5_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(ƒé×Ù.jŸ
˜/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon6_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(Šé×Ù.jŸ
˜/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon7_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(é×Ù.jŸ
˜/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon8_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(—é×Ù.jŸ
˜/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon9_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(é×Ù.j£
œ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_0_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(£é×Ù.j£
œ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_1_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(ªé×Ù.j£
œ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_2_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(°é×Ù.j£
œ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_3_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(¶é×Ù.j¢
›/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect4_3_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(¼é×Ù.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect15_14_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(Ãé×Ù.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect11_10_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(Éé×Ù.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect13_12_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(Ğé×Ù.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect14_13_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(Öé×Ù.j¢
›/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect5_4_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(İé×Ù.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect12_11_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(äé×Ù.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect16_15_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(ëé×Ù.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect17_16_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(ñé×Ù.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect18_17_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(øé×Ù.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect19_18_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(şé×Ù.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect20_19_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(„ê×Ù.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect21_20_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(Šê×Ù.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect22_21_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(‘ê×Ù.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect23_22_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(—ê×Ù.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect24_23_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(ê×Ù.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect25_24_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(¤ê×Ù.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect26_25_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(«ê×Ù.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect27_26_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(±ê×Ù.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect28_27_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(·ê×Ù.j£
œ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect0_28_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(¾ê×Ù.j£
œ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect10_9_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(Äê×Ù.j¢
›/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect9_8_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(Ëê×Ù.j¢
›/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect3_2_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(Ñê×Ù.j¢
›/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect2_1_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(Øê×Ù.j¢
›/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect8_7_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(Şê×Ù.j¢
›/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect6_5_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(åê×Ù.j¢
›/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect7_6_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(ëê×Ù.j¤
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_m01_regslice_11_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(òê×Ù.j
—/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/pfm_dynamic_auto_cc_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(øê×Ù.j›
”/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_5dca_hbm_inst_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(şê×Ù.j«
¤/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/syn/bd_d216_interconnect_PLRAM_MEM00_0_utilization_synth.rpt "Wed Nov  4 07:33:36 2020(Ãë×Ù.j°
©/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/imp/xilinx_u280_xdma_201920_3_bb_locked_timing_summary_routed.rpt "Wed Nov  4 07:33:37 2020(Šì×Ù.j½
¶/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/imp/xilinx_u280_xdma_201920_3_bb_locked_timing_summary_postroute_physopted.rpt "Wed Nov  4 07:33:37 2020(®ñ×Ù.r(
$82a7e160-982e-4551-9ec6-700203e66788"Wed Nov  4 07:33:37 2020(úñ×Ù.r(
$a7895642-39dd-4c00-98ae-bb218337a918"Wed Nov  4 07:33:37 2020(ò×Ù.b6
$257b2f35-c80a-47c3-8f53-d6cb2ea8f059rtdgen"rtdgen"Wed Nov  4 07:33:37 2020(ò×Ù.r(
$257b2f35-c80a-47c3-8f53-d6cb2ea8f059"Wed Nov  4 07:33:37 2020(œò×Ù.jy
s/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/vadd.hw_xml.rtd %"Wed Nov  4 07:33:37 2020(©ò×Ù.bÛ	
$198bf064-125d-43ee-bf8d-3472d87e6cf7cf2sw"Ócf2sw -a /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/address_map.xml -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/sdsl.dat -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/xclbin_orig.xml -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/vadd.hw.rtd -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/vadd.hw.xml*-a*s/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/address_map.xml*-sdsl*l/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/sdsl.dat*-xclbin*s/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/xclbin_orig.xml*-rtd*o/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/vadd.hw.rtd*-o*o/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/vadd.hw.xml"Wed Nov  4 07:33:37 2020(ªò×Ù.r(
$198bf064-125d-43ee-bf8d-3472d87e6cf7"Wed Nov  4 07:33:41 2020(¼ØÙ.r(
$198bf064-125d-43ee-bf8d-3472d87e6cf7"Wed Nov  4 07:33:41 2020(ÂØÙ.b
$1da1a781-ea24-4e29-9e41-04be003b4372rtd2_system_diagram"ærtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/vadd.hw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/systemDiagramModel_resource_use.json --diagramWithAddressesAndSlrsJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json*--rtdJsonFileName*o/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/vadd.hw.rtd*--diagramJsonFileName*ˆ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/systemDiagramModel_resource_use.json*)--diagramWithAddressesAndSlrsJsonFileName*‰/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json"Wed Nov  4 07:33:41 2020(ÄØÙ.r(
$1da1a781-ea24-4e29-9e41-04be003b4372"Wed Nov  4 07:33:42 2020(ñ™ØÙ.j
‰/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json $"Wed Nov  4 07:33:42 2020(„šØÙ.r(
$1da1a781-ea24-4e29-9e41-04be003b4372"Wed Nov  4 07:33:42 2020(‰šØÙ.r(
$257b2f35-c80a-47c3-8f53-d6cb2ea8f059"Wed Nov  4 07:33:42 2020(“šØÙ.bí
$b0dd3b76-4b80-4ec2-92ef-dbac25f3ad96
xclbinutil"Ô
xclbinutil --add-section DEBUG_IP_LAYOUT:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/debug_ip_layout.rtd --add-section BITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/partial.bit --force --key-value SYS:mode:hw_pr --add-section :JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/vadd.hw.rtd --append-section :JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/appendSection.rtd --add-section CLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/vadd.hw_xml.rtd --add-section BUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/vadd.hw_build.rtd --add-section EMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/vadd.hw.xml --add-section SYSTEM_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json --output /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/vadd.hw.xclbin*--add-section*ŒDEBUG_IP_LAYOUT:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/debug_ip_layout.rtd*--add-section*}BITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/partial.bit*--force*--key-value*SYS:mode:hw_pr*--add-section*u:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/vadd.hw.rtd*--append-section*{:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/appendSection.rtd*--add-section*ŒCLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/vadd.hw_xml.rtd*--add-section*‰BUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/vadd.hw_build.rtd*--add-section*…EMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/vadd.hw.xml*--add-section*SYSTEM_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json*--output*r/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/vadd.hw.xclbin"Wed Nov  4 07:33:42 2020(•šØÙ.r(
$b0dd3b76-4b80-4ec2-92ef-dbac25f3ad96"Wed Nov  4 07:33:43 2020(¦œØÙ.r(
$b0dd3b76-4b80-4ec2-92ef-dbac25f3ad96"Wed Nov  4 07:33:43 2020(®œØÙ.bÌ
$f99f740d-1b39-4631-a9af-fbabfa5da845xclbinutilinfo"Œxclbinutil --quiet --info /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/vadd.hw.xclbin.info --input /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/vadd.hw.xclbin*--quiet*--info*w/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/vadd.hw.xclbin.info*--input*r/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/link/int/vadd.hw.xclbin"Wed Nov  4 07:33:43 2020(°œØÙ.r(
$f99f740d-1b39-4631-a9af-fbabfa5da845"Wed Nov  4 07:33:43 2020(êŸØÙ.r(
$f99f740d-1b39-4631-a9af-fbabfa5da845"Wed Nov  4 07:33:43 2020(› ØÙ.j‹
„/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/system_estimate_vadd.hw.xtxt "Wed Nov  4 07:33:43 2020(´¢ØÙ.j
†/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/reports/link/v++_link_vadd.hw_guidance.html "Wed Nov  4 07:33:43 2020(µ¢ØÙ.j}
w/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/v++_link_vadd.hw_guidance.pb "Wed Nov  4 07:34:34 2020(ö¬ÛÙ.jx
r/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_220/_x.hw/vadd/logs/optraceViewer.html ""Wed Nov  4 07:34:34 2020(ÿ¬ÛÙ.r(
$97781e0d-324a-482c-8bc5-a2c07ff550ee