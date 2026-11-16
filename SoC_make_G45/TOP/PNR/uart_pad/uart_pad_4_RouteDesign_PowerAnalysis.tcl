##############
# Route
##############

restoreDesign uart_pad_PostCTSopt.dat
setDontUse BUFX2 true
file mkdir uart_pad_reports/power uart_pad_reports/timing/postRoute

# Signal Pads (ECO before routing) : the 28 ports below have no pad (standalone chip).
# Without pads these ports sit at (0,0), post-route RC adds a virtual wire from (0,0)
# and max_tran fails; optDesign cannot fix it (IMPOPT-665: net has unplaced terms).
# Inputs use the middle slots (near the core); outputs use the corner slots.
# Ring slots: die 1748, pads 60 wide; existing pads keep their places.
set padList {
  i_clk          PADDI w 764   i_rst_n        PADDI w 564   i_rhr_re       PADDI w 964
  i_thr_we       PADDI w 1164  o_rhr_rdata[0] PADDO w 300   o_rhr_rdata[1] PADDO w 370
  o_rhr_rdata[2] PADDO w 1364
  i_thr_wdata[5] PADDI s 664   i_thr_wdata[6] PADDI s 864   i_thr_wdata[7] PADDI s 1064
  o_rhr_rdata[3] PADDO s 300   o_rhr_rdata[4] PADDO s 400   o_lsr_dr       PADDO s 1264
  o_lsr_thre     PADDO s 1364
  i_thr_wdata[0] PADDI e 564   i_thr_wdata[1] PADDI e 764   i_thr_wdata[2] PADDI e 964
  i_thr_wdata[3] PADDI e 1164  o_rhr_rdata[5] PADDO e 300   o_rhr_rdata[6] PADDO e 370
  o_rhr_rdata[7] PADDO e 1364
  i_thr_wdata[4] PADDI n 664   o_lsr_temt     PADDO n 300   o_lsr_fe       PADDO n 400
  o_lsr_pe       PADDO n 864   o_lsr_oe       PADDO n 1064  o_tx_fifo_full PADDO n 1264
  o_rx_fifo_full PADDO n 1364
}
set D [lindex [dbGet top.fPlan.box] 0 2]
deleteIoFiller
foreach {port cell side off} $padList {
    set nm [string map {[ _ ] {}} $port]
    set inst u_pad_$nm
    set w w_pad_$nm
    switch $side {
        w {set x 0; set y $off; set ori R270}
        e {set x [expr {$D - 240}]; set y $off; set ori R90}
        n {set x $off; set y [expr {$D - 240}]; set ori R180}
        s {set x $off; set y 0; set ori R0}
    }
    set net [dbGet -p top.nets.name [string map {[ \[ ] \]} $port]]
    if {[dbGet $net.wires] ne "0x0"} {editDelete -net $port}
    set its [dbGet $net.instTerms]
    addNet $w
    foreach it $its {
        set i [lindex [dbGet $it.inst.name] 0]; set t [lindex [dbGet $it.cellTerm.name] 0]
        detachTerm $i $t
        attachTerm $i $t $w
    }
    addInst -cell $cell -inst $inst
    placeInstance $inst $x $y $ori -fixed
    if {$cell eq "PADDI"} {attachTerm $inst PAD $port; attachTerm $inst Y $w} else {attachTerm $inst A $w; attachTerm $inst PAD $port}
}
# The clock pad is about 630 um from the clock tree buffers, so put a root
# clock buffer at the core edge next to the pad.
ecoAddRepeater -net w_pad_i_clk -cell CLKBUFX8 -loc {642 796} -name u_clk_pad_buf
foreach side {n s w e} {
    addIoFiller -cell padIORINGFEED60 padIORINGFEED10 padIORINGFEED5 padIORINGFEED3 padIORINGFEED1 -prefix UART_PAD_FILLER -side $side
}
globalNetConnect VDD -type pgpin -pin VDD -instanceBasename *
globalNetConnect VSS -type pgpin -pin VSS -instanceBasename *
globalNetConnect VDDIOR -type pgpin -pin VDDIOR -instanceBasename *
globalNetConnect VSSIOR -type pgpin -pin VSSIOR -instanceBasename *

# Route Auto : To Detail
setNanoRouteMode -quiet -drouteFixAntenna 1
setNanoRouteMode -quiet -routeInsertAntennaDiode 0
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeWithEco 0
setNanoRouteMode -quiet -routeWithLithoDriven 0
setNanoRouteMode -quiet -droutePostRouteLithoRepair 0
setNanoRouteMode -quiet -routeWithSiDriven 1
setNanoRouteMode -quiet -routeTdrEffort 8
setNanoRouteMode -quiet -drouteAutoStop 0
setNanoRouteMode -quiet -routeSelectedNetOnly 0
setNanoRouteMode -quiet -routeTopRoutingLayer 11
setNanoRouteMode -quiet -routeBottomRoutingLayer 1
setNanoRouteMode -quiet -drouteEndIteration 5
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
routeDesign -globalDetail

# DRC
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report uart_pad_reports/uart_top.drc.rpt -limit 1000

verify_drc
set_verify_drc_mode -area {0 0 0 0}

# Auto DRC Fix
setAnalysisMode -analysisType onChipVariation
optDesign -postRoute -drv ; # auto DRC Fix

# LVS : Connectivity 
# The library abstract gives the IO ring rail pins no supply connection, so
# exclude them. PADVDD:VDD and PADVSS:VSS (inner supply pins) stay checked.
set ioRingPgPins {PADVDD:VSS PADVDD:VDDIOR PADVDD:VSSIOR PADVSS:VDD PADVSS:VDDIOR PADVSS:VSSIOR}
foreach cell {PADDI PADDO PADVDDIOR PADVSSIOR padIORINGCORNER} {
    foreach pin {VDD VSS VDDIOR VSSIOR} {lappend ioRingPgPins $cell:$pin}
}
foreach cell {padIORINGFEED60 padIORINGFEED10 padIORINGFEED5 padIORINGFEED3 padIORINGFEED1} {
    foreach pin {VDD VSS} {lappend ioRingPgPins $cell:$pin}
}
verifyConnectivity -type all -geomConnect -error 1000 -warning 50 -ignorePGPin $ioRingPgPins

# Violation Browser
# GUI violation browser omitted in batch mode.

# Net Parasitic RC Extraction
extractRC

# Timing optimization
# smkcow
# Upper side, I suggest the below command to do auto fix DRC
# setAnalysisMode -analysisType onChipVariation 
#
# After that, I used the below <optDesign> command to make the design free about timing violations
# optDesign -postRoute -setup; # Optimization and resolve the Setup Violation 
# 
# However, optDesign command didn't do well so I decided to change analysisType to single 
# It was more helpful to make the design better

setDelayCalMode -SIAware false ; # Delete SI effect -> base delay is only used
setAnalysisMode -analysisType single -checkType setup ; # After change to single mode
optDesign -postRoute -setup; # 0 : Optimization and resolve the Setup Violation 

setAnalysisMode -analysisType single -checkType hold
optDesign -postRoute -hold; # 1 : Optimization and resolve the Hold Violation 
optDesign -postRoute -hold ;# Second pass: fixes the remaining hold path

timeDesign -postRoute -outDir uart_pad_reports/timing/postRoute ; # Setup
timeDesign -postRoute -hold -outDir uart_pad_reports/timing/postRoute ; # Hold

# Recheck geometry and connectivity after timing optimization.
verify_drc
verifyConnectivity -type all -geomConnect -error 1000 -warning 50 -ignorePGPin $ioRingPgPins

# If there is no error, save Design
# option1 : innovus and tempus : It is useful to read design easily in Tempus
saveDesign -rc -def uart_pad_RouteDesign

# option2 : tempus -stylus
#saveDesign -rc -mmmc2 RouteDesign_mmmc2

#The current design in memory uses the MMMC1 format, and Stylus write_db can only save an MMMC2 format DB.  You should either use saveDesign -mmmc2 to save and convert it to MMMC2, or use Stylus read_db to auto-convert the MMMC1 DB to an MMMC2 DB when reading it into Stylus.

# without -stylus option : MMMC1 format
# with -stylus option : MMMC2 format
# Below command is for stylus 
#write_db -rc_extract postRoute


##################
# Power Analysis
##################

set_power_analysis_mode -reset

# You can switch some options :: analysis_view, corner
set_power_analysis_mode -method static -analysis_view FUNC_SS_WORST -corner max -create_binary_db true -write_static_currents true -honor_negative_energy true -ignore_control_signals true

## Once again : Global Net Connection
globalNetConnect VDD -type pgpin -pin VDD -instanceBasename *
globalNetConnect VSS -type pgpin -pin VSS -instanceBasename *
globalNetConnect VDD -type tiehi -instanceBasename *
globalNetConnect VSS -type tielo -instanceBasename *

set_power_output_dir -reset
set_power_output_dir ./uart_pad_reports/power ; 		#You can define the folder name
set_dynamic_power_simulation -reset ; 	# If you want to do the static power simulation
set_default_switching_activity -reset
set_default_switching_activity -input_activity 0.2 -period 10.0 ;# 8ns operation
read_activity_file -reset ; 		#If you don't have fsdb or vcd file, reset at here
set_power -reset
set_powerup_analysis -reset
report_power -rail_analysis_format VS -outfile ./uart_pad_reports/power/uart_top.rpt

########################
# Rail IR-DROP Analysis
########################
# There are Some Errors during Rail IR-drop report
# Skip This step 
# Alternatively, Use Voltus to Anlyze 
########################

exit
