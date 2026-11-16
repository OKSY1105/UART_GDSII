########################################
# CTS & Optimization
########################################

#restoreDesign uart_pad_PlaceOpt.dat
setDontUse BUFX2 true
file mkdir uart_pad_reports/timing/postCTS uart_pad_reports/clock
# Target about skew
set_ccopt_property target_skew 0.01  

create_ccopt_clock_tree_spec
# CTS and report all timing WNS, TNS results
ccopt_design

# Propagated Clock
set_interactive_constraint_modes [all_constraint_modes -active] ;# set_propagated_clock command needs the existing mode is active  :: Mode is named FUNC and you can check with the command 'all_constraint_modes command'
set_propagated_clock [all_clocks]

# Check right-after CTS
timeDesign -postCTS -outDir uart_pad_reports/timing/postCTS
report_ccopt_clock_trees -file uart_pad_reports/clock/clock_trees.rpt
report_ccopt_skew_groups -file uart_pad_reports/clock/skew_groups.rpt
report_clock_timing -type skew -nworst 5 > uart_pad_reports/clock/skew.rpt

# Optimization of my design after CTS
optDesign -postCTS 	; # Setup/DRV concurrently
# Inputs without pads have no pin location, so optDesign cannot add hold
# buffers on their nets. Put one buffer in front of each net's flip-flops;
# the new net is fully placed, so optDesign -postCTS -hold can then fix it.
set idx 0
foreach {n cell} {i_rst_n BUFX12 i_thr_wdata[0] BUFX4 i_thr_wdata[1] BUFX4 i_thr_wdata[2] BUFX4 i_thr_wdata[3] BUFX4 i_thr_wdata[4] BUFX4 i_thr_wdata[5] BUFX4 i_thr_wdata[6] BUFX4 i_thr_wdata[7] BUFX4} {
    set its [dbGet [dbGet -p top.nets.name [string map {[ \[ ] \]} $n]].instTerms]
    set sx 0.0; set sy 0.0
    foreach it $its {
        set p [lindex [dbGet $it.pt] 0]
        set sx [expr {$sx + [lindex $p 0]}]; set sy [expr {$sy + [lindex $p 1]}]
    }
    set loc [list [format %.2f [expr {$sx / [llength $its]}]] [format %.2f [expr {$sy / [llength $its]}]]]
    ecoAddRepeater -term [dbGet $its.name] -cell $cell -loc $loc -name HOLD_IN_BUF_$idx
    incr idx
}
refinePlace
optDesign -postCTS -hold ;# Only for hold violation
optDesign -postCTS -hold ;# Second pass: finishes the remaining i_rst_n paths
timeDesign -postCTS -outDir uart_pad_reports/timing/postCTS
timeDesign -postCTS -hold -outDir uart_pad_reports/timing/postCTS

# If there is no error, Save Design
saveDesign -def uart_pad_PostCTSopt

#exit
