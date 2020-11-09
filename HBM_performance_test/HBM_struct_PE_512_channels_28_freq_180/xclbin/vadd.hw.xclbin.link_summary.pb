
Œ
v++_link_vadd.hw$3a572d20-a238-4d07-829e-ea439f40c34e2Ü~/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/.tlog/v++_link_vadd.hw.xtl 2É{/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/xclbin/vadd.hw.xclbin.link_summary 2Ñ~/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/xclbin/vadd.hw.xclbin.link_summary.pb ~/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/xclbin/vadd.hw.xclbin.link_summary.pb"Wed Nov  4 22:02:34 2020(Ãã∆®Ÿ.bê
$a8acbbc1-2c0c-4721-961d-1bc643e6971fv++w/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/link.steps.log"£/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++  --xp "vivado_prop:run.__KERNEL__.{STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS}={-directive sdx_optimization_effort_high}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_route_design_summary steps {route_design} runs {impl_1} options {-max_paths 10}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_post_route_phys_opt_design_summary steps {post_route_phys_opt_design} runs {impl_1} options {-max_paths 10}" -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *-t*hw*--config*
design.cfg*--save-temps*--report*estimate*
--temp_dir*./_x.hw/vadd*-l*--profile_kernel*data:all:all:all:all*-oxclbin/vadd.hw.xclbin*xclbin/vadd.hw.xo2ë
c/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/design.cfg©platform=xilinx_u280_xdma_201920_3
profile_kernel=data:all:all:all
kernel_frequency=180
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
"Wed Nov  4 22:02:34 2020(Œã∆®Ÿ.r(
$a8acbbc1-2c0c-4721-961d-1bc643e6971f"Wed Nov  4 22:02:44 2020(∑’∆®Ÿ.Zí
xilinx_u280_xdma_201920_3.xpfmxilinx_u280_xdma_201920_3.xsa//opt/xilinx/platforms/xilinx_u280_xdma_201920_3"OpenCL*Linux08B{
yvadd.hwn/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/xclbin/vadd.hw.xclbinJè
tvaddj/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/xclbin/vadd.hw.xoé/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cppvadd_1"Wed Nov  4 22:02:44 2020(∑◊∆®Ÿ.b¸	
$9848d6fb-04d8-4c7e-b81d-b04ca7b187e4system_link"‚system_link --xo /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/xclbin/vadd.hw.xo -keep --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/syslinkConfig.ini --xpfm /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --target hw --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/sys_link*--xo*j/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/xclbin/vadd.hw.xo*-keep*--config*~/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/syslinkConfig.ini*--xpfm*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--target*hw*--output_dir*l/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int*
--temp_dir*q/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/sys_link"Wed Nov  4 22:02:44 2020(∏◊∆®Ÿ.r(
$9848d6fb-04d8-4c7e-b81d-b04ca7b187e4"Wed Nov  4 22:03:09 2020(Ïñ»®Ÿ.r(
$9848d6fb-04d8-4c7e-b81d-b04ca7b187e4"Wed Nov  4 22:03:09 2020(ıñ»®Ÿ.bª
$cb5e0fb5-7fea-4432-af48-4667154ffac4cf2sw"Ñcf2sw -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/sdsl.dat -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/cf2sw.rtd -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/xclbin_orig.xml -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/xclbin_orig.1.xml*-sdsl*u/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/sdsl.dat*-rtd*v/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/cf2sw.rtd*-xclbin*|/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/xclbin_orig.xml*-o*~/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/xclbin_orig.1.xml"Wed Nov  4 22:03:09 2020(ˆñ»®Ÿ.r(
$cb5e0fb5-7fea-4432-af48-4667154ffac4"Wed Nov  4 22:03:12 2020(‰Ø»®Ÿ.r(
$cb5e0fb5-7fea-4432-af48-4667154ffac4"Wed Nov  4 22:03:12 2020(ÌØ»®Ÿ.b√
$3cadef39-c287-40f6-b5a9-c460469c3fcbrtd2_system_diagram"¿rtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/cf2sw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/systemDiagramModel.json --platformFilePath /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --generatedByName v++ --generatedByVersion 2019.2 --generatedByChangeList 2708876 --generatedByTimeStamp Wed Nov  6 21:39:14 MST 2019 --generatedByOptions /opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo  --generatedByXclbinName vadd.hw --kernelInfoDataFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/kernel_info.dat*--rtdJsonFileName*v/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/cf2sw.rtd*--diagramJsonFileName*Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/systemDiagramModel.json*--platformFilePath*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--generatedByName*v++*--generatedByVersion*2019.2*--generatedByChangeList*2708876*--generatedByTimeStamp*Wed Nov  6 21:39:14 MST 2019*--generatedByOptions*◊/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *--generatedByXclbinName*vadd.hw*--kernelInfoDataFileName*|/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/kernel_info.dat"Wed Nov  4 22:03:12 2020(ÔØ»®Ÿ.r(
$3cadef39-c287-40f6-b5a9-c460469c3fcb"Wed Nov  4 22:03:14 2020(˙º»®Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/systemDiagramModel.json !"Wed Nov  4 22:03:14 2020(êΩ»®Ÿ.r(
$3cadef39-c287-40f6-b5a9-c460469c3fcb"Wed Nov  4 22:03:14 2020(õΩ»®Ÿ.b‚
$b241b878-c27b-45cd-8817-ef4c2588d389vpl"ãvpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 180 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/dr.bd.tcl*-t*hw*-f*xilinx_u280_xdma_201920_3*-g*--kernel_frequency*180*--profile_kernel*data:all:all:all:all*-s*--output_dir*l/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int*	--log_dir*m/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/logs/link*--report_dir*p/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/reports/link*--config*z/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/vplConfig.ini*-k*|/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/kernel_info.dat*--webtalk_flag*Vitis*
--temp_dir*h/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link*	--no-info*
--tlog_dir*z/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/.tlog/v++_link_vadd.hw*--iprepo*è/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0*--messageDb*x/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/run_link/vpl.pb*v/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/dr.bd.tcl"Wed Nov  4 22:03:14 2020(úΩ»®Ÿ.r(
$b241b878-c27b-45cd-8817-ef4c2588d389"Wed Nov  4 22:03:15 2020(® »®Ÿ.b‚
$67b669ac-da62-4560-a5f9-1d2064988bf5vplw/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/link.steps.log"ª/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 180 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/int/dr.bd.tcl "Wed Nov  4 22:03:15 2020(™ »®Ÿ.r(
$67b669ac-da62-4560-a5f9-1d2064988bf5"Wed Nov  4 22:04:12 2020(êÜÃ®Ÿ.b
$86a0573a-da8e-49d8-aee2-ab93da47c090vivado~/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.hw/vadd/link/vivado/vpl/vivado.log"]vivado -log vivado.log -applog -m64 -messageDb vivado.pb -mode batch -source vpl.tcl -notrace*-log*
vivado.log*-applog* -m64*
-messageDb*	vivado.pb*-mode*batch*-source*vpl.tcl*-notrace"Wed Nov  4 22:04:12 2020(íÜÃ®Ÿ.r(
$86a0573a-da8e-49d8-aee2-ab93da47c090