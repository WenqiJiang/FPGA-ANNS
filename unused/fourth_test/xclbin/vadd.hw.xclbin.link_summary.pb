
»
v++_link_vadd.hw$92432b79-c1ba-4af5-8491-0e72d117de662VN/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/.tlog/v++_link_vadd.hw.xtl 2SK/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/xclbin/vadd.hw.xclbin.link_summary 2TN/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/xclbin/vadd.hw.xclbin.link_summary.pb N/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/xclbin/vadd.hw.xclbin.link_summary.pb"Thu Oct 29 16:17:43 2020(¸É¾§×.b¤
$ef8e06ad-3b06-419f-a961-4d1cbc08deddv++G/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/link.steps.log"£/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++  --xp "vivado_prop:run.__KERNEL__.{STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS}={-directive sdx_optimization_effort_high}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_route_design_summary steps {route_design} runs {impl_1} options {-max_paths 10}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_post_route_phys_opt_design_summary steps {post_route_phys_opt_design} runs {impl_1} options {-max_paths 10}" -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *-t*hw*--config*
design.cfg*--save-temps*--report*estimate*
--temp_dir*./_x.hw/vadd*-l*--profile_kernel*data:all:all:all:all*-oxclbin/vadd.hw.xclbin*xclbin/vadd.hw.xo2Õ
3/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/design.cfgplatform=xilinx_u280_xdma_201920_3
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
sp=vadd_1.table_DDR0:DDR[0]
sp=vadd_1.table_DDR1:DDR[1]
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
"Thu Oct 29 16:17:43 2020(ºÉ¾§×.r(
$ef8e06ad-3b06-419f-a961-4d1cbc08dedd"Thu Oct 29 16:17:53 2020(‘–¿§×.Z
xilinx_u280_xdma_201920_3.xpfmxilinx_u280_xdma_201920_3.xsa//opt/xilinx/platforms/xilinx_u280_xdma_201920_3"OpenCL*Linux08BK
Ivadd.hw>/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/xclbin/vadd.hw.xclbinJ®
Dvadd:/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/xclbin/vadd.hw.xo^/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cppvadd_1"Thu Oct 29 16:17:53 2020(ï˜¿§×.bü
$f961d525-0de5-4fc0-8b70-22ad141bbc61system_link"¢system_link --xo /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/xclbin/vadd.hw.xo -keep --config /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/syslinkConfig.ini --xpfm /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --target hw --output_dir /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/sys_link*--xo*:/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/xclbin/vadd.hw.xo*-keep*--config*N/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/syslinkConfig.ini*--xpfm*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--target*hw*--output_dir*</mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int*
--temp_dir*A/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/sys_link"Thu Oct 29 16:17:53 2020(ñ˜¿§×.r(
$f961d525-0de5-4fc0-8b70-22ad141bbc61"Thu Oct 29 16:18:19 2020(ÊáÀ§×.r(
$f961d525-0de5-4fc0-8b70-22ad141bbc61"Thu Oct 29 16:18:19 2020(ÖáÀ§×.b»
$c089ab9a-e426-4369-aedc-4559fdf17333cf2sw"Äcf2sw -sdsl /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/sdsl.dat -rtd /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/cf2sw.rtd -xclbin /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/xclbin_orig.xml -o /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/xclbin_orig.1.xml*-sdsl*E/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/sdsl.dat*-rtd*F/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/cf2sw.rtd*-xclbin*L/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/xclbin_orig.xml*-o*N/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/xclbin_orig.1.xml"Thu Oct 29 16:18:19 2020(×áÀ§×.r(
$c089ab9a-e426-4369-aedc-4559fdf17333"Thu Oct 29 16:18:23 2020(ÉÁ§×.r(
$c089ab9a-e426-4369-aedc-4559fdf17333"Thu Oct 29 16:18:23 2020(ÑÁ§×.b¢
$466de2f4-9ae3-474f-8571-090bf8fbaddbrtd2_system_diagram"°rtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/cf2sw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/systemDiagramModel.json --platformFilePath /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --generatedByName v++ --generatedByVersion 2019.2 --generatedByChangeList 2708876 --generatedByTimeStamp Wed Nov  6 21:39:14 MST 2019 --generatedByOptions /opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo  --generatedByXclbinName vadd.hw --kernelInfoDataFileName /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/kernel_info.dat*--rtdJsonFileName*F/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/cf2sw.rtd*--diagramJsonFileName*T/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/systemDiagramModel.json*--platformFilePath*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--generatedByName*v++*--generatedByVersion*2019.2*--generatedByChangeList*2708876*--generatedByTimeStamp*Wed Nov  6 21:39:14 MST 2019*--generatedByOptions*×/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *--generatedByXclbinName*vadd.hw*--kernelInfoDataFileName*L/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/kernel_info.dat"Thu Oct 29 16:18:23 2020(ÓÁ§×.r(
$466de2f4-9ae3-474f-8571-090bf8fbaddb"Thu Oct 29 16:18:25 2020(øŽÁ§×.jZ
T/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/systemDiagramModel.json !"Thu Oct 29 16:18:25 2020(„Á§×.r(
$466de2f4-9ae3-474f-8571-090bf8fbaddb"Thu Oct 29 16:18:25 2020(Á§×.b¡
$659912c8-dd56-4a78-b93e-9a6459ff6ef3vpl"«vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 140 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/dr.bd.tcl*-t*hw*-f*xilinx_u280_xdma_201920_3*-g*--kernel_frequency*140*--profile_kernel*data:all:all:all:all*-s*--output_dir*</mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int*	--log_dir*=/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/logs/link*--report_dir*@/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/reports/link*--config*J/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/vplConfig.ini*-k*L/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/kernel_info.dat*--webtalk_flag*Vitis*
--temp_dir*8/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link*	--no-info*
--tlog_dir*J/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/.tlog/v++_link_vadd.hw*--iprepo*_/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0*--messageDb*H/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/run_link/vpl.pb*F/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/dr.bd.tcl"Thu Oct 29 16:18:25 2020(’Á§×.r(
$659912c8-dd56-4a78-b93e-9a6459ff6ef3"Thu Oct 29 16:18:27 2020(Þ›Á§×.bÒ
$647f013c-4d63-4ddf-a615-3f8bb7cb03f4vplG/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/link.steps.log"Û/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 140 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/int/dr.bd.tcl "Thu Oct 29 16:18:27 2020(à›Á§×.r(
$647f013c-4d63-4ddf-a615-3f8bb7cb03f4"Thu Oct 29 16:19:27 2020(¡ðÄ§×.bÀ
$2103fc18-4736-484f-b35f-f0096205c7e5vivadoN/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/link/vivado/vpl/vivado.log"]vivado -log vivado.log -applog -m64 -messageDb vivado.pb -mode batch -source vpl.tcl -notrace*-log*
vivado.log*-applog* -m64*
-messageDb*	vivado.pb*-mode*batch*-source*vpl.tcl*-notrace"Thu Oct 29 16:19:27 2020(£ðÄ§×.r(
$2103fc18-4736-484f-b35f-f0096205c7e5"Fri Oct 30 05:15:23 2020(ö½Þ½×.r(
$2103fc18-4736-484f-b35f-f0096205c7e5"Fri Oct 30 05:18:05 2020(Ù©è½×.r(
$647f013c-4d63-4ddf-a615-3f8bb7cb03f4"Fri Oct 30 05:18:05 2020(Ý«è½×.r(
$659912c8-dd56-4a78-b93e-9a6459ff6ef3"Fri Oct 30 05:18:16 2020(õÿè½×.je
_/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/reports/link/v++_link_vadd.hw_guidance.html "Fri Oct 30 05:18:16 2020(úÿè½×.jV
P/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/v++_link_vadd.hw_guidance.pb "Fri Oct 30 05:19:14 2020(×Æì½×.jQ
K/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.hw/vadd/logs/optraceViewer.html ""Fri Oct 30 05:19:14 2020(ãÆì½×.r(
$ef8e06ad-3b06-419f-a961-4d1cbc08dedd