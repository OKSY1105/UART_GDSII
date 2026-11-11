# CPU8 block synthesis based on the UART GPDK045 flow.
# Execute via SYN/run_cpu8_synthesis.sh; all outputs stay in CPU8_SYN_RUN_DIR.
if {![info exists ::env(CPU8_TOP_DIR)] || ![info exists ::env(CPU8_SYN_RUN_DIR)]} {
    error "Use SYN/run_cpu8_synthesis.sh to set the top and run directories"
}
set top_dir [file normalize $::env(CPU8_TOP_DIR)]
set run_dir [file normalize $::env(CPU8_SYN_RUN_DIR)]
set cpu_dir [file join $top_dir RTL cpu8]
set syn_dir [file join $top_dir SYN]
set rpt_dir [file join $run_dir report]
set unmapped_dir [file join $run_dir unmapped]
set mapped_dir [file join $run_dir mapped]
file mkdir $rpt_dir $unmapped_dir $mapped_dir

set pdk /GPDK045/digital
set std_base [file join $pdk gsclib045_all_v4.4]
set std_dir [file join $std_base gsclib045 timing]
set fast_lib [file join $std_dir fast_vdd1v0_basicCells.lib]
set slow_lib [file join $std_dir slow_vdd1v0_basicCells.lib]
set lefs [list \
    [file join $std_base gsclib045_tech lef gsclib045_tech.lef] \
    [file join $std_base gsclib045 lef gsclib045_macro.lef]]
set qrc [file join $std_base gsclib045 qrc qx gpdk045.tch]
set sources [list \
    [file join $cpu_dir cpu8_alu.v] \
    [file join $cpu_dir cpu8_decoder.v] \
    [file join $cpu_dir cpu8_regfile.v] \
    [file join $cpu_dir cpu8_top.v]]
set sdc [file join $syn_dir cons cpu8_top.sdc]
set dont_use [file join $syn_dir cons dont_use_45nm.tcl]
foreach f [concat $sources [list [file join $cpu_dir cpu8_isa.vh] \
    $fast_lib $slow_lib $qrc $sdc $dont_use] $lefs] {
    if {![file isfile $f]} {error "Missing CPU synthesis input: $f"}
}

set_db auto_ungroup none
set_db max_cpus_per_server 2
set_db syn_generic_effort high
set_db syn_map_effort high
set_db syn_opt_effort high
set_db init_lib_search_path [list $std_dir]
set_db init_hdl_search_path [list $cpu_dir]
read_libs [list $fast_lib $slow_lib]
read_physical -lef $lefs
read_qrc $qrc
set_db hdl_array_naming_style %s_%d
read_hdl {*}$sources
elaborate cpu8_top
uniquify -verbose cpu8_top
check_design > [file join $rpt_dir 00_check_design.rpt]
check_design -unresolved >> [file join $rpt_dir 00_check_design.rpt]
source $sdc
source $dont_use
check_timing_intent -verbose > [file join $rpt_dir 01_check_timing_intent.rpt]

syn_generic
write_snapshot -outdir $rpt_dir -tag syn_generic
write_db -to_file [file join $unmapped_dir cpu8_top_generic.db]
syn_map
write_snapshot -outdir $rpt_dir -tag syn_map
write_db -to_file [file join $mapped_dir syn_map.db]
syn_opt
write_snapshot -outdir $rpt_dir -tag syn_opt
write_db -to_file [file join $mapped_dir syn_opt.db]
report_area > [file join $rpt_dir area.rpt]
report_qor > [file join $rpt_dir qor.rpt]
report_timing -nworst 100 -net > [file join $rpt_dir timing.rpt]
report_messages -all > [file join $rpt_dir messages.rpt]
write_design -basename [file join $mapped_dir cpu8_top_mapped]
write_hdl > [file join $mapped_dir cpu8_top_syn_final.v]
write_sdc > [file join $mapped_dir cpu8_top_syn_final.sdc]
write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge -setuphold split > [file join $mapped_dir cpu8_top_delays.sdf]
puts "CPU8_SYN_OUTPUT=$run_dir"
quit
