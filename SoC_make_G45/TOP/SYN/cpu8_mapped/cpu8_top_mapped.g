######################################################################

# Created by Genus(TM) Synthesis Solution 22.17-s071_1 on Wed Nov 11 21:02:26 KST 2026

# This file contains the Genus script for design:cpu8_top

######################################################################

set_db -quiet init_lib_search_path /GPDK045/digital/gsclib045_all_v4.4/gsclib045/timing
set_db -quiet operating_conditions_min PVT_1P1V_0C
set_db -quiet operating_conditions_min_library library:default_emulate_libset_max/fast_vdd1v0
set_db -quiet operating_conditions_library_given true
set_db -quiet design_mode_process 60.0
set_db -quiet phys_assume_met_fill 0.0
set_db -quiet map_placed_for_route_early_global false
set_db -quiet phys_use_invs_extraction true
set_db -quiet phys_route_time_out 120.0
set_db -quiet db_units 2000
set_db -quiet capacitance_per_unit_length_mmmc {}
set_db -quiet resistance_per_unit_length_mmmc {}
set_db -quiet runtime_by_stage {{PBS_Generic-Start 0 18 0.0 17.978794} {to_generic 11 29 11 30} {first_condense 7 38 9 40} {PBS_Generic_Opt-Post 21 39 20.360255000000002 39.339049} {{PBS_Generic-Postgen HBO Optimizations} 0 39 0.0 39.339049} {PBS_TechMap-Start 0 42 0.0 41.279595} {{PBS_TechMap-Premap HBO Optimizations} 0 42 0.0 41.279595} {second_condense 4 46 4 48} {reify 8 54 11 59} {global_incr_map 2 56 1 61} {{PBS_Techmap-Global Mapping} 14 56 13.712930999999998 54.992526} {{PBS_TechMap-Datapath Postmap Operations} 2 58 2.9769740000000056 57.969500000000004} {{PBS_TechMap-Postmap HBO Optimizations} 0 58 -0.015263000000004467 57.954237} {{PBS_TechMap-Postmap Clock Gating} 1 59 0.0 57.954237} {{PBS_TechMap-Postmap Cleanup} 0 59 -0.02281200000000183 57.931425} {PBS_Techmap-Post_MBCI 0 59 1.0 58.931425} {incr_opt 3 64 2 68} }
set_db -quiet timing_adjust_tns_of_complex_flops false
set_db -quiet hdl_array_naming_style %s_%d
set_db -quiet tinfo_tstamp_file .rs_hah010.tstamp
set_db -quiet metric_enable true
set_db -quiet auto_ungroup none
set_db -quiet max_cpus_per_server 2
set_db -quiet syn_generic_effort high
set_db -quiet use_area_from_lef true
set_db -quiet phys_use_segment_parasitics true
set_db -quiet probabilistic_extraction true
set_db -quiet ple_correlation_factors {1.9000 2.0000}
set_db -quiet maximum_interval_of_vias inf
set_db -quiet layer_aware_buffer true
set_db -quiet ple_mode global
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/ANTENNA .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY1X1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY1X4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY2X1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY2X4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY3X1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY3X4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY4X1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY4X4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/HOLDX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFNSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFNSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFNSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFNSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFQXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFTRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFTRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFTRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFTRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TIEHI .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TIELO .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX12 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX16 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX20 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX3 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX6 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX12 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX16 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX20 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX3 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX6 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/ANTENNA .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY1X1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY1X4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY2X1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY2X4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY3X1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY3X4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY4X1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY4X4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/HOLDX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFNSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFNSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFNSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFNSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFQXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFTRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFTRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFTRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFTRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TIEHI .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TIELO .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX12 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX16 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX20 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX3 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX6 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX12 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX16 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX20 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX3 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX6 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATXL .avoid true
set_db -quiet operating_conditions operating_condition:default_emulate_libset_max/slow_vdd1v0/PVT_0P9V_125C
set_db -quiet wireload_selection none
set_db -quiet operating_condition:default_emulate_libset_max/fast_vdd1v0/PVT_1P1V_0C .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/fast_vdd1v0/_nominal_ .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/slow_vdd1v0/PVT_0P9V_125C .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/slow_vdd1v0/_nominal_ .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/fast_vdd1v0/PVT_1P1V_0C .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/fast_vdd1v0/_nominal_ .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/slow_vdd1v0/PVT_0P9V_125C .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/slow_vdd1v0/_nominal_ .tree_type balanced_tree
# BEGIN MSV SECTION
# END MSV SECTION
define_clock -name CPU8_CLK -domain domain_1 -period 10000.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -remove -design design:cpu8_top port:cpu8_top/i_clk
set_db -quiet clock:cpu8_top/CPU8_CLK .slew {100.0 100.0 100.0 100.0}
set_db -quiet clock:cpu8_top/CPU8_CLK .clock_network_late_latency {200.0 200.0 200.0 200.0}
set_db -quiet clock:cpu8_top/CPU8_CLK .clock_source_late_latency {200.0 200.0 200.0 200.0}
set_db -quiet clock:cpu8_top/CPU8_CLK .clock_setup_uncertainty {100.0 100.0}
define_cost_group -design design:cpu8_top -name CPU8_CLK
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock clock:cpu8_top/CPU8_CLK -name create_clock_delay_domain_1_CPU8_CLK_R_0 port:cpu8_top/i_clk
set_db -quiet external_delay:cpu8_top/create_clock_delay_domain_1_CPU8_CLK_R_0 .clock_network_latency_included true
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock clock:cpu8_top/CPU8_CLK -edge_fall -name create_clock_delay_domain_1_CPU8_CLK_F_0 port:cpu8_top/i_clk
set_db -quiet external_delay:cpu8_top/create_clock_delay_domain_1_CPU8_CLK_F_0 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del {{port:cpu8_top/i_i_hrdata[15]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_1_1 {{port:cpu8_top/i_i_hrdata[14]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_2_1 {{port:cpu8_top/i_i_hrdata[13]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_3_1 {{port:cpu8_top/i_i_hrdata[12]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_4_1 {{port:cpu8_top/i_i_hrdata[11]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_5_1 {{port:cpu8_top/i_i_hrdata[10]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_6_1 {{port:cpu8_top/i_i_hrdata[9]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_7_1 {{port:cpu8_top/i_i_hrdata[8]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_8_1 {{port:cpu8_top/i_i_hrdata[7]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_9_1 {{port:cpu8_top/i_i_hrdata[6]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_10_1 {{port:cpu8_top/i_i_hrdata[5]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_11_1 {{port:cpu8_top/i_i_hrdata[4]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_12_1 {{port:cpu8_top/i_i_hrdata[3]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_13_1 {{port:cpu8_top/i_i_hrdata[2]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_14_1 {{port:cpu8_top/i_i_hrdata[1]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_15_1 {{port:cpu8_top/i_i_hrdata[0]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_16_1 port:cpu8_top/i_i_hready
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_17_1 port:cpu8_top/i_i_hresp
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_18_1 {{port:cpu8_top/i_d_hrdata[7]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_19_1 {{port:cpu8_top/i_d_hrdata[6]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_20_1 {{port:cpu8_top/i_d_hrdata[5]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_21_1 {{port:cpu8_top/i_d_hrdata[4]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_22_1 {{port:cpu8_top/i_d_hrdata[3]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_23_1 {{port:cpu8_top/i_d_hrdata[2]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_24_1 {{port:cpu8_top/i_d_hrdata[1]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_25_1 {{port:cpu8_top/i_d_hrdata[0]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_26_1 port:cpu8_top/i_d_hready
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_27_1 port:cpu8_top/i_d_hresp
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name in_del_28_1 port:cpu8_top/i_irq
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_29_1 {{port:cpu8_top/i_i_hrdata[15]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_30_1 {{port:cpu8_top/i_i_hrdata[14]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_31_1 {{port:cpu8_top/i_i_hrdata[13]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_32_1 {{port:cpu8_top/i_i_hrdata[12]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_33_1 {{port:cpu8_top/i_i_hrdata[11]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_34_1 {{port:cpu8_top/i_i_hrdata[10]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_35_1 {{port:cpu8_top/i_i_hrdata[9]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_36_1 {{port:cpu8_top/i_i_hrdata[8]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_37_1 {{port:cpu8_top/i_i_hrdata[7]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_38_1 {{port:cpu8_top/i_i_hrdata[6]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_39_1 {{port:cpu8_top/i_i_hrdata[5]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_40_1 {{port:cpu8_top/i_i_hrdata[4]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_41_1 {{port:cpu8_top/i_i_hrdata[3]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_42_1 {{port:cpu8_top/i_i_hrdata[2]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_43_1 {{port:cpu8_top/i_i_hrdata[1]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_44_1 {{port:cpu8_top/i_i_hrdata[0]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_45_1 port:cpu8_top/i_i_hready
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_46_1 port:cpu8_top/i_i_hresp
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_47_1 {{port:cpu8_top/i_d_hrdata[7]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_48_1 {{port:cpu8_top/i_d_hrdata[6]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_49_1 {{port:cpu8_top/i_d_hrdata[5]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_50_1 {{port:cpu8_top/i_d_hrdata[4]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_51_1 {{port:cpu8_top/i_d_hrdata[3]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_52_1 {{port:cpu8_top/i_d_hrdata[2]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_53_1 {{port:cpu8_top/i_d_hrdata[1]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_54_1 {{port:cpu8_top/i_d_hrdata[0]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_55_1 port:cpu8_top/i_d_hready
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_56_1 port:cpu8_top/i_d_hresp
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name in_del_57_1 port:cpu8_top/i_irq
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del {{port:cpu8_top/o_i_haddr[16]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_57_1 {{port:cpu8_top/o_i_haddr[15]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_58_1 {{port:cpu8_top/o_i_haddr[14]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_59_1 {{port:cpu8_top/o_i_haddr[13]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_60_1 {{port:cpu8_top/o_i_haddr[12]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_61_1 {{port:cpu8_top/o_i_haddr[11]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_62_1 {{port:cpu8_top/o_i_haddr[10]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_63_1 {{port:cpu8_top/o_i_haddr[9]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_64_1 {{port:cpu8_top/o_i_haddr[8]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_65_1 {{port:cpu8_top/o_i_haddr[7]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_66_1 {{port:cpu8_top/o_i_haddr[6]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_67_1 {{port:cpu8_top/o_i_haddr[5]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_68_1 {{port:cpu8_top/o_i_haddr[4]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_69_1 {{port:cpu8_top/o_i_haddr[3]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_70_1 {{port:cpu8_top/o_i_haddr[2]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_71_1 {{port:cpu8_top/o_i_haddr[1]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_72_1 {{port:cpu8_top/o_i_haddr[0]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_73_1 {{port:cpu8_top/o_i_htrans[1]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_74_1 {{port:cpu8_top/o_i_htrans[0]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_75_1 {{port:cpu8_top/o_i_hsize[2]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_76_1 {{port:cpu8_top/o_i_hsize[1]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_77_1 {{port:cpu8_top/o_i_hsize[0]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_78_1 {{port:cpu8_top/o_i_hburst[2]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_79_1 {{port:cpu8_top/o_i_hburst[1]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_80_1 {{port:cpu8_top/o_i_hburst[0]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_81_1 {{port:cpu8_top/o_i_hprot[3]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_82_1 {{port:cpu8_top/o_i_hprot[2]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_83_1 {{port:cpu8_top/o_i_hprot[1]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_84_1 {{port:cpu8_top/o_i_hprot[0]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_85_1 port:cpu8_top/o_i_hwrite
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_86_1 port:cpu8_top/o_i_hmastlock
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_87_1 {{port:cpu8_top/o_d_haddr[15]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_88_1 {{port:cpu8_top/o_d_haddr[14]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_89_1 {{port:cpu8_top/o_d_haddr[13]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_90_1 {{port:cpu8_top/o_d_haddr[12]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_91_1 {{port:cpu8_top/o_d_haddr[11]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_92_1 {{port:cpu8_top/o_d_haddr[10]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_93_1 {{port:cpu8_top/o_d_haddr[9]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_94_1 {{port:cpu8_top/o_d_haddr[8]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_95_1 {{port:cpu8_top/o_d_haddr[7]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_96_1 {{port:cpu8_top/o_d_haddr[6]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_97_1 {{port:cpu8_top/o_d_haddr[5]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_98_1 {{port:cpu8_top/o_d_haddr[4]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_99_1 {{port:cpu8_top/o_d_haddr[3]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_100_1 {{port:cpu8_top/o_d_haddr[2]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_101_1 {{port:cpu8_top/o_d_haddr[1]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_102_1 {{port:cpu8_top/o_d_haddr[0]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_103_1 {{port:cpu8_top/o_d_htrans[1]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_104_1 {{port:cpu8_top/o_d_htrans[0]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_105_1 {{port:cpu8_top/o_d_hsize[2]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_106_1 {{port:cpu8_top/o_d_hsize[1]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_107_1 {{port:cpu8_top/o_d_hsize[0]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_108_1 {{port:cpu8_top/o_d_hburst[2]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_109_1 {{port:cpu8_top/o_d_hburst[1]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_110_1 {{port:cpu8_top/o_d_hburst[0]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_111_1 {{port:cpu8_top/o_d_hprot[3]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_112_1 {{port:cpu8_top/o_d_hprot[2]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_113_1 {{port:cpu8_top/o_d_hprot[1]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_114_1 {{port:cpu8_top/o_d_hprot[0]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_115_1 port:cpu8_top/o_d_hwrite
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_116_1 port:cpu8_top/o_d_hmastlock
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_117_1 {{port:cpu8_top/o_d_hwdata[7]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_118_1 {{port:cpu8_top/o_d_hwdata[6]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_119_1 {{port:cpu8_top/o_d_hwdata[5]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_120_1 {{port:cpu8_top/o_d_hwdata[4]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_121_1 {{port:cpu8_top/o_d_hwdata[3]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_122_1 {{port:cpu8_top/o_d_hwdata[2]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_123_1 {{port:cpu8_top/o_d_hwdata[1]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_124_1 {{port:cpu8_top/o_d_hwdata[0]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_125_1 port:cpu8_top/o_halted
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_126_1 port:cpu8_top/o_fault
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_127_1 {{port:cpu8_top/o_fault_code[2]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_128_1 {{port:cpu8_top/o_fault_code[1]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_129_1 {{port:cpu8_top/o_fault_code[0]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_130_1 {{port:cpu8_top/o_pc[15]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_131_1 {{port:cpu8_top/o_pc[14]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_132_1 {{port:cpu8_top/o_pc[13]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_133_1 {{port:cpu8_top/o_pc[12]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_134_1 {{port:cpu8_top/o_pc[11]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_135_1 {{port:cpu8_top/o_pc[10]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_136_1 {{port:cpu8_top/o_pc[9]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_137_1 {{port:cpu8_top/o_pc[8]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_138_1 {{port:cpu8_top/o_pc[7]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_139_1 {{port:cpu8_top/o_pc[6]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_140_1 {{port:cpu8_top/o_pc[5]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_141_1 {{port:cpu8_top/o_pc[4]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_142_1 {{port:cpu8_top/o_pc[3]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_143_1 {{port:cpu8_top/o_pc[2]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_144_1 {{port:cpu8_top/o_pc[1]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_145_1 {{port:cpu8_top/o_pc[0]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_146_1 {{port:cpu8_top/o_x[15]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_147_1 {{port:cpu8_top/o_x[14]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_148_1 {{port:cpu8_top/o_x[13]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_149_1 {{port:cpu8_top/o_x[12]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_150_1 {{port:cpu8_top/o_x[11]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_151_1 {{port:cpu8_top/o_x[10]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_152_1 {{port:cpu8_top/o_x[9]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_153_1 {{port:cpu8_top/o_x[8]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_154_1 {{port:cpu8_top/o_x[7]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_155_1 {{port:cpu8_top/o_x[6]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_156_1 {{port:cpu8_top/o_x[5]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_157_1 {{port:cpu8_top/o_x[4]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_158_1 {{port:cpu8_top/o_x[3]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_159_1 {{port:cpu8_top/o_x[2]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_160_1 {{port:cpu8_top/o_x[1]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_161_1 {{port:cpu8_top/o_x[0]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_162_1 {{port:cpu8_top/o_flags[3]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_163_1 {{port:cpu8_top/o_flags[2]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_164_1 {{port:cpu8_top/o_flags[1]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_165_1 {{port:cpu8_top/o_flags[0]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_166_1 {{port:cpu8_top/o_registers[31]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_167_1 {{port:cpu8_top/o_registers[30]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_168_1 {{port:cpu8_top/o_registers[29]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_169_1 {{port:cpu8_top/o_registers[28]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_170_1 {{port:cpu8_top/o_registers[27]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_171_1 {{port:cpu8_top/o_registers[26]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_172_1 {{port:cpu8_top/o_registers[25]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_173_1 {{port:cpu8_top/o_registers[24]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_174_1 {{port:cpu8_top/o_registers[23]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_175_1 {{port:cpu8_top/o_registers[22]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_176_1 {{port:cpu8_top/o_registers[21]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_177_1 {{port:cpu8_top/o_registers[20]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_178_1 {{port:cpu8_top/o_registers[19]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_179_1 {{port:cpu8_top/o_registers[18]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_180_1 {{port:cpu8_top/o_registers[17]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_181_1 {{port:cpu8_top/o_registers[16]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_182_1 {{port:cpu8_top/o_registers[15]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_183_1 {{port:cpu8_top/o_registers[14]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_184_1 {{port:cpu8_top/o_registers[13]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_185_1 {{port:cpu8_top/o_registers[12]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_186_1 {{port:cpu8_top/o_registers[11]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_187_1 {{port:cpu8_top/o_registers[10]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_188_1 {{port:cpu8_top/o_registers[9]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_189_1 {{port:cpu8_top/o_registers[8]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_190_1 {{port:cpu8_top/o_registers[7]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_191_1 {{port:cpu8_top/o_registers[6]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_192_1 {{port:cpu8_top/o_registers[5]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_193_1 {{port:cpu8_top/o_registers[4]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_194_1 {{port:cpu8_top/o_registers[3]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_195_1 {{port:cpu8_top/o_registers[2]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_196_1 {{port:cpu8_top/o_registers[1]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_197_1 {{port:cpu8_top/o_registers[0]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_198_1 port:cpu8_top/o_stall
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_199_1 {{port:cpu8_top/o_stage_valid[2]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_200_1 {{port:cpu8_top/o_stage_valid[1]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_201_1 {{port:cpu8_top/o_stage_valid[0]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_202_1 port:cpu8_top/o_retire_valid
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_203_1 {{port:cpu8_top/o_retire_pc[15]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_204_1 {{port:cpu8_top/o_retire_pc[14]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_205_1 {{port:cpu8_top/o_retire_pc[13]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_206_1 {{port:cpu8_top/o_retire_pc[12]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_207_1 {{port:cpu8_top/o_retire_pc[11]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_208_1 {{port:cpu8_top/o_retire_pc[10]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_209_1 {{port:cpu8_top/o_retire_pc[9]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_210_1 {{port:cpu8_top/o_retire_pc[8]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_211_1 {{port:cpu8_top/o_retire_pc[7]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_212_1 {{port:cpu8_top/o_retire_pc[6]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_213_1 {{port:cpu8_top/o_retire_pc[5]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_214_1 {{port:cpu8_top/o_retire_pc[4]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_215_1 {{port:cpu8_top/o_retire_pc[3]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_216_1 {{port:cpu8_top/o_retire_pc[2]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_217_1 {{port:cpu8_top/o_retire_pc[1]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_218_1 {{port:cpu8_top/o_retire_pc[0]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_219_1 {{port:cpu8_top/o_retire_instruction[15]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_220_1 {{port:cpu8_top/o_retire_instruction[14]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_221_1 {{port:cpu8_top/o_retire_instruction[13]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_222_1 {{port:cpu8_top/o_retire_instruction[12]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_223_1 {{port:cpu8_top/o_retire_instruction[11]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_224_1 {{port:cpu8_top/o_retire_instruction[10]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_225_1 {{port:cpu8_top/o_retire_instruction[9]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_226_1 {{port:cpu8_top/o_retire_instruction[8]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_227_1 {{port:cpu8_top/o_retire_instruction[7]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_228_1 {{port:cpu8_top/o_retire_instruction[6]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_229_1 {{port:cpu8_top/o_retire_instruction[5]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_230_1 {{port:cpu8_top/o_retire_instruction[4]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_231_1 {{port:cpu8_top/o_retire_instruction[3]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_232_1 {{port:cpu8_top/o_retire_instruction[2]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_233_1 {{port:cpu8_top/o_retire_instruction[1]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_234_1 {{port:cpu8_top/o_retire_instruction[0]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_235_1 port:cpu8_top/o_retire_reg_write
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_236_1 {{port:cpu8_top/o_retire_rd[1]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_237_1 {{port:cpu8_top/o_retire_rd[0]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_238_1 {{port:cpu8_top/o_retire_data[7]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_239_1 {{port:cpu8_top/o_retire_data[6]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_240_1 {{port:cpu8_top/o_retire_data[5]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_241_1 {{port:cpu8_top/o_retire_data[4]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_242_1 {{port:cpu8_top/o_retire_data[3]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_243_1 {{port:cpu8_top/o_retire_data[2]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_244_1 {{port:cpu8_top/o_retire_data[1]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_245_1 {{port:cpu8_top/o_retire_data[0]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_246_1 port:cpu8_top/o_retire_bank
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:cpu8_top/CPU8_CLK -name ou_del_247_1 port:cpu8_top/o_irq_active
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_248_1 {{port:cpu8_top/o_i_haddr[16]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_249_1 {{port:cpu8_top/o_i_haddr[15]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_250_1 {{port:cpu8_top/o_i_haddr[14]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_251_1 {{port:cpu8_top/o_i_haddr[13]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_252_1 {{port:cpu8_top/o_i_haddr[12]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_253_1 {{port:cpu8_top/o_i_haddr[11]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_254_1 {{port:cpu8_top/o_i_haddr[10]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_255_1 {{port:cpu8_top/o_i_haddr[9]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_256_1 {{port:cpu8_top/o_i_haddr[8]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_257_1 {{port:cpu8_top/o_i_haddr[7]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_258_1 {{port:cpu8_top/o_i_haddr[6]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_259_1 {{port:cpu8_top/o_i_haddr[5]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_260_1 {{port:cpu8_top/o_i_haddr[4]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_261_1 {{port:cpu8_top/o_i_haddr[3]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_262_1 {{port:cpu8_top/o_i_haddr[2]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_263_1 {{port:cpu8_top/o_i_haddr[1]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_264_1 {{port:cpu8_top/o_i_haddr[0]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_265_1 {{port:cpu8_top/o_i_htrans[1]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_266_1 {{port:cpu8_top/o_i_htrans[0]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_267_1 {{port:cpu8_top/o_i_hsize[2]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_268_1 {{port:cpu8_top/o_i_hsize[1]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_269_1 {{port:cpu8_top/o_i_hsize[0]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_270_1 {{port:cpu8_top/o_i_hburst[2]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_271_1 {{port:cpu8_top/o_i_hburst[1]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_272_1 {{port:cpu8_top/o_i_hburst[0]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_273_1 {{port:cpu8_top/o_i_hprot[3]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_274_1 {{port:cpu8_top/o_i_hprot[2]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_275_1 {{port:cpu8_top/o_i_hprot[1]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_276_1 {{port:cpu8_top/o_i_hprot[0]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_277_1 port:cpu8_top/o_i_hwrite
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_278_1 port:cpu8_top/o_i_hmastlock
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_279_1 {{port:cpu8_top/o_d_haddr[15]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_280_1 {{port:cpu8_top/o_d_haddr[14]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_281_1 {{port:cpu8_top/o_d_haddr[13]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_282_1 {{port:cpu8_top/o_d_haddr[12]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_283_1 {{port:cpu8_top/o_d_haddr[11]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_284_1 {{port:cpu8_top/o_d_haddr[10]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_285_1 {{port:cpu8_top/o_d_haddr[9]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_286_1 {{port:cpu8_top/o_d_haddr[8]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_287_1 {{port:cpu8_top/o_d_haddr[7]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_288_1 {{port:cpu8_top/o_d_haddr[6]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_289_1 {{port:cpu8_top/o_d_haddr[5]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_290_1 {{port:cpu8_top/o_d_haddr[4]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_291_1 {{port:cpu8_top/o_d_haddr[3]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_292_1 {{port:cpu8_top/o_d_haddr[2]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_293_1 {{port:cpu8_top/o_d_haddr[1]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_294_1 {{port:cpu8_top/o_d_haddr[0]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_295_1 {{port:cpu8_top/o_d_htrans[1]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_296_1 {{port:cpu8_top/o_d_htrans[0]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_297_1 {{port:cpu8_top/o_d_hsize[2]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_298_1 {{port:cpu8_top/o_d_hsize[1]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_299_1 {{port:cpu8_top/o_d_hsize[0]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_300_1 {{port:cpu8_top/o_d_hburst[2]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_301_1 {{port:cpu8_top/o_d_hburst[1]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_302_1 {{port:cpu8_top/o_d_hburst[0]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_303_1 {{port:cpu8_top/o_d_hprot[3]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_304_1 {{port:cpu8_top/o_d_hprot[2]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_305_1 {{port:cpu8_top/o_d_hprot[1]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_306_1 {{port:cpu8_top/o_d_hprot[0]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_307_1 port:cpu8_top/o_d_hwrite
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_308_1 port:cpu8_top/o_d_hmastlock
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_309_1 {{port:cpu8_top/o_d_hwdata[7]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_310_1 {{port:cpu8_top/o_d_hwdata[6]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_311_1 {{port:cpu8_top/o_d_hwdata[5]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_312_1 {{port:cpu8_top/o_d_hwdata[4]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_313_1 {{port:cpu8_top/o_d_hwdata[3]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_314_1 {{port:cpu8_top/o_d_hwdata[2]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_315_1 {{port:cpu8_top/o_d_hwdata[1]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_316_1 {{port:cpu8_top/o_d_hwdata[0]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_317_1 port:cpu8_top/o_halted
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_318_1 port:cpu8_top/o_fault
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_319_1 {{port:cpu8_top/o_fault_code[2]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_320_1 {{port:cpu8_top/o_fault_code[1]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_321_1 {{port:cpu8_top/o_fault_code[0]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_322_1 {{port:cpu8_top/o_pc[15]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_323_1 {{port:cpu8_top/o_pc[14]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_324_1 {{port:cpu8_top/o_pc[13]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_325_1 {{port:cpu8_top/o_pc[12]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_326_1 {{port:cpu8_top/o_pc[11]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_327_1 {{port:cpu8_top/o_pc[10]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_328_1 {{port:cpu8_top/o_pc[9]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_329_1 {{port:cpu8_top/o_pc[8]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_330_1 {{port:cpu8_top/o_pc[7]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_331_1 {{port:cpu8_top/o_pc[6]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_332_1 {{port:cpu8_top/o_pc[5]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_333_1 {{port:cpu8_top/o_pc[4]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_334_1 {{port:cpu8_top/o_pc[3]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_335_1 {{port:cpu8_top/o_pc[2]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_336_1 {{port:cpu8_top/o_pc[1]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_337_1 {{port:cpu8_top/o_pc[0]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_338_1 {{port:cpu8_top/o_x[15]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_339_1 {{port:cpu8_top/o_x[14]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_340_1 {{port:cpu8_top/o_x[13]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_341_1 {{port:cpu8_top/o_x[12]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_342_1 {{port:cpu8_top/o_x[11]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_343_1 {{port:cpu8_top/o_x[10]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_344_1 {{port:cpu8_top/o_x[9]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_345_1 {{port:cpu8_top/o_x[8]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_346_1 {{port:cpu8_top/o_x[7]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_347_1 {{port:cpu8_top/o_x[6]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_348_1 {{port:cpu8_top/o_x[5]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_349_1 {{port:cpu8_top/o_x[4]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_350_1 {{port:cpu8_top/o_x[3]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_351_1 {{port:cpu8_top/o_x[2]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_352_1 {{port:cpu8_top/o_x[1]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_353_1 {{port:cpu8_top/o_x[0]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_354_1 {{port:cpu8_top/o_flags[3]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_355_1 {{port:cpu8_top/o_flags[2]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_356_1 {{port:cpu8_top/o_flags[1]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_357_1 {{port:cpu8_top/o_flags[0]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_358_1 {{port:cpu8_top/o_registers[31]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_359_1 {{port:cpu8_top/o_registers[30]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_360_1 {{port:cpu8_top/o_registers[29]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_361_1 {{port:cpu8_top/o_registers[28]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_362_1 {{port:cpu8_top/o_registers[27]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_363_1 {{port:cpu8_top/o_registers[26]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_364_1 {{port:cpu8_top/o_registers[25]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_365_1 {{port:cpu8_top/o_registers[24]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_366_1 {{port:cpu8_top/o_registers[23]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_367_1 {{port:cpu8_top/o_registers[22]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_368_1 {{port:cpu8_top/o_registers[21]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_369_1 {{port:cpu8_top/o_registers[20]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_370_1 {{port:cpu8_top/o_registers[19]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_371_1 {{port:cpu8_top/o_registers[18]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_372_1 {{port:cpu8_top/o_registers[17]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_373_1 {{port:cpu8_top/o_registers[16]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_374_1 {{port:cpu8_top/o_registers[15]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_375_1 {{port:cpu8_top/o_registers[14]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_376_1 {{port:cpu8_top/o_registers[13]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_377_1 {{port:cpu8_top/o_registers[12]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_378_1 {{port:cpu8_top/o_registers[11]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_379_1 {{port:cpu8_top/o_registers[10]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_380_1 {{port:cpu8_top/o_registers[9]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_381_1 {{port:cpu8_top/o_registers[8]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_382_1 {{port:cpu8_top/o_registers[7]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_383_1 {{port:cpu8_top/o_registers[6]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_384_1 {{port:cpu8_top/o_registers[5]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_385_1 {{port:cpu8_top/o_registers[4]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_386_1 {{port:cpu8_top/o_registers[3]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_387_1 {{port:cpu8_top/o_registers[2]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_388_1 {{port:cpu8_top/o_registers[1]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_389_1 {{port:cpu8_top/o_registers[0]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_390_1 port:cpu8_top/o_stall
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_391_1 {{port:cpu8_top/o_stage_valid[2]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_392_1 {{port:cpu8_top/o_stage_valid[1]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_393_1 {{port:cpu8_top/o_stage_valid[0]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_394_1 port:cpu8_top/o_retire_valid
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_395_1 {{port:cpu8_top/o_retire_pc[15]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_396_1 {{port:cpu8_top/o_retire_pc[14]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_397_1 {{port:cpu8_top/o_retire_pc[13]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_398_1 {{port:cpu8_top/o_retire_pc[12]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_399_1 {{port:cpu8_top/o_retire_pc[11]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_400_1 {{port:cpu8_top/o_retire_pc[10]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_401_1 {{port:cpu8_top/o_retire_pc[9]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_402_1 {{port:cpu8_top/o_retire_pc[8]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_403_1 {{port:cpu8_top/o_retire_pc[7]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_404_1 {{port:cpu8_top/o_retire_pc[6]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_405_1 {{port:cpu8_top/o_retire_pc[5]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_406_1 {{port:cpu8_top/o_retire_pc[4]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_407_1 {{port:cpu8_top/o_retire_pc[3]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_408_1 {{port:cpu8_top/o_retire_pc[2]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_409_1 {{port:cpu8_top/o_retire_pc[1]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_410_1 {{port:cpu8_top/o_retire_pc[0]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_411_1 {{port:cpu8_top/o_retire_instruction[15]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_412_1 {{port:cpu8_top/o_retire_instruction[14]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_413_1 {{port:cpu8_top/o_retire_instruction[13]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_414_1 {{port:cpu8_top/o_retire_instruction[12]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_415_1 {{port:cpu8_top/o_retire_instruction[11]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_416_1 {{port:cpu8_top/o_retire_instruction[10]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_417_1 {{port:cpu8_top/o_retire_instruction[9]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_418_1 {{port:cpu8_top/o_retire_instruction[8]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_419_1 {{port:cpu8_top/o_retire_instruction[7]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_420_1 {{port:cpu8_top/o_retire_instruction[6]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_421_1 {{port:cpu8_top/o_retire_instruction[5]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_422_1 {{port:cpu8_top/o_retire_instruction[4]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_423_1 {{port:cpu8_top/o_retire_instruction[3]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_424_1 {{port:cpu8_top/o_retire_instruction[2]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_425_1 {{port:cpu8_top/o_retire_instruction[1]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_426_1 {{port:cpu8_top/o_retire_instruction[0]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_427_1 port:cpu8_top/o_retire_reg_write
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_428_1 {{port:cpu8_top/o_retire_rd[1]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_429_1 {{port:cpu8_top/o_retire_rd[0]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_430_1 {{port:cpu8_top/o_retire_data[7]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_431_1 {{port:cpu8_top/o_retire_data[6]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_432_1 {{port:cpu8_top/o_retire_data[5]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_433_1 {{port:cpu8_top/o_retire_data[4]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_434_1 {{port:cpu8_top/o_retire_data[3]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_435_1 {{port:cpu8_top/o_retire_data[2]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_436_1 {{port:cpu8_top/o_retire_data[1]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_437_1 {{port:cpu8_top/o_retire_data[0]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_438_1 port:cpu8_top/o_retire_bank
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:cpu8_top/CPU8_CLK -name ou_del_439_1 port:cpu8_top/o_irq_active
path_group -paths [specify_paths -lenient -to clock:cpu8_top/CPU8_CLK]  -name CPU8_CLK -group cost_group:cpu8_top/CPU8_CLK -user_priority -1047552
# BEGIN DFT SECTION
set_db -quiet dft_scan_style muxed_scan
set_db -quiet dft_scanbit_waveform_analysis false
# END DFT SECTION
set_db -quiet design:cpu8_top .seq_reason_deleted_internal {{r_flags1_reg_0 unloaded {r_flags1[0]}} {r_flags1_reg_2 unloaded {r_flags1[2]}} {r_m_fault_code_reg_2 {{constant 0}} {r_m_fault_code[2]}} {o_fault_code_reg_2 {{constant 0}} {o_fault_code[2]}} {r_m_rd_reg_0 {{merged with r_m_instruction_reg_8}} {r_m_rd[0]} {r_m_instruction[8]}} {r_m_rd_reg_1 {{merged with r_m_instruction_reg_9}} {r_m_rd[1]} {r_m_instruction[9]}} {o_retire_rd_reg_0 {{merged with o_retire_instruction_reg_8}} {o_retire_rd[0]} {o_retire_instruction[8]}} {o_retire_rd_reg_1 {{merged with o_retire_instruction_reg_9}} {o_retire_rd[1]} {o_retire_instruction[9]}}}
set_db -quiet design:cpu8_top .qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 9840} {cell_count 2204} {utilization  0.00} {runtime 11 29 11 30} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 9469} {cell_count 2724} {utilization  0.00} {runtime 7 38 9 40} }{second_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 9470} {cell_count 2725} {utilization  0.00} {runtime 4 46 4 48} }{reify {wns 7927} {tns 0} {vep 0} {area 4700} {cell_count 1671} {utilization  0.00} {runtime 8 54 11 59} }{global_incr_map {wns 7874} {tns 0} {vep 0} {area 4466} {cell_count 1574} {utilization  0.00} {runtime 2 56 1 61} }{incr_opt {wns 214748365} {tns 0} {vep 0} {area 4455} {cell_count 1568} {utilization  0.00} {runtime 3 64 2 68} }}
set_db -quiet design:cpu8_top .seq_mbci_coverage 0.0
set_db -quiet design:cpu8_top .hdl_filelist {{default -v2001 {SYNTHESIS} {/home/hah010/UART_GDSII/SoC_make_G45/TOP/RTL/cpu8/cpu8_alu.v /home/hah010/UART_GDSII/SoC_make_G45/TOP/RTL/cpu8/cpu8_decoder.v /home/hah010/UART_GDSII/SoC_make_G45/TOP/RTL/cpu8/cpu8_regfile.v /home/hah010/UART_GDSII/SoC_make_G45/TOP/RTL/cpu8/cpu8_top.v} {/home/hah010/UART_GDSII/SoC_make_G45/TOP/RTL/cpu8} {}}}
set_db -quiet design:cpu8_top .seq_reason_deleted {{r_flags1_reg_0 unloaded} {r_flags1_reg_2 unloaded} {r_m_fault_code_reg_2 {{constant 0}}} {o_fault_code_reg_2 {{constant 0}}} {r_m_rd_reg_0 {{merged with r_m_instruction_reg_8}}} {r_m_rd_reg_1 {{merged with r_m_instruction_reg_9}}} {o_retire_rd_reg_0 {{merged with o_retire_instruction_reg_8}}} {o_retire_rd_reg_1 {{merged with o_retire_instruction_reg_9}}}}
set_db -quiet design:cpu8_top .verification_directory fv/cpu8_top
set_db -quiet port:cpu8_top/i_clk .original_name i_clk
set_db -quiet port:cpu8_top/i_rst_n .is_ideal_network true
set_db -quiet port:cpu8_top/i_rst_n .original_name i_rst_n
set_db -quiet port:cpu8_top/i_rst_n .ideal_network true
set_db -quiet {port:cpu8_top/i_i_hrdata[15]} .input_slew_max_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[15]} .input_slew_max_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[15]} .input_slew_min_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[15]} .input_slew_min_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[15]} .original_name {i_i_hrdata[15]}
set_db -quiet {port:cpu8_top/i_i_hrdata[14]} .input_slew_max_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[14]} .input_slew_max_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[14]} .input_slew_min_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[14]} .input_slew_min_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[14]} .original_name {i_i_hrdata[14]}
set_db -quiet {port:cpu8_top/i_i_hrdata[13]} .input_slew_max_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[13]} .input_slew_max_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[13]} .input_slew_min_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[13]} .input_slew_min_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[13]} .original_name {i_i_hrdata[13]}
set_db -quiet {port:cpu8_top/i_i_hrdata[12]} .input_slew_max_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[12]} .input_slew_max_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[12]} .input_slew_min_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[12]} .input_slew_min_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[12]} .original_name {i_i_hrdata[12]}
set_db -quiet {port:cpu8_top/i_i_hrdata[11]} .input_slew_max_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[11]} .input_slew_max_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[11]} .input_slew_min_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[11]} .input_slew_min_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[11]} .original_name {i_i_hrdata[11]}
set_db -quiet {port:cpu8_top/i_i_hrdata[10]} .input_slew_max_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[10]} .input_slew_max_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[10]} .input_slew_min_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[10]} .input_slew_min_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[10]} .original_name {i_i_hrdata[10]}
set_db -quiet {port:cpu8_top/i_i_hrdata[9]} .input_slew_max_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[9]} .input_slew_max_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[9]} .input_slew_min_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[9]} .input_slew_min_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[9]} .original_name {i_i_hrdata[9]}
set_db -quiet {port:cpu8_top/i_i_hrdata[8]} .input_slew_max_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[8]} .input_slew_max_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[8]} .input_slew_min_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[8]} .input_slew_min_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[8]} .original_name {i_i_hrdata[8]}
set_db -quiet {port:cpu8_top/i_i_hrdata[7]} .input_slew_max_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[7]} .input_slew_max_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[7]} .input_slew_min_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[7]} .input_slew_min_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[7]} .original_name {i_i_hrdata[7]}
set_db -quiet {port:cpu8_top/i_i_hrdata[6]} .input_slew_max_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[6]} .input_slew_max_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[6]} .input_slew_min_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[6]} .input_slew_min_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[6]} .original_name {i_i_hrdata[6]}
set_db -quiet {port:cpu8_top/i_i_hrdata[5]} .input_slew_max_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[5]} .input_slew_max_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[5]} .input_slew_min_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[5]} .input_slew_min_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[5]} .original_name {i_i_hrdata[5]}
set_db -quiet {port:cpu8_top/i_i_hrdata[4]} .input_slew_max_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[4]} .input_slew_max_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[4]} .input_slew_min_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[4]} .input_slew_min_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[4]} .original_name {i_i_hrdata[4]}
set_db -quiet {port:cpu8_top/i_i_hrdata[3]} .input_slew_max_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[3]} .input_slew_max_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[3]} .input_slew_min_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[3]} .input_slew_min_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[3]} .original_name {i_i_hrdata[3]}
set_db -quiet {port:cpu8_top/i_i_hrdata[2]} .input_slew_max_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[2]} .input_slew_max_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[2]} .input_slew_min_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[2]} .input_slew_min_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[2]} .original_name {i_i_hrdata[2]}
set_db -quiet {port:cpu8_top/i_i_hrdata[1]} .input_slew_max_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[1]} .input_slew_max_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[1]} .input_slew_min_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[1]} .input_slew_min_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[1]} .original_name {i_i_hrdata[1]}
set_db -quiet {port:cpu8_top/i_i_hrdata[0]} .input_slew_max_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[0]} .input_slew_max_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[0]} .input_slew_min_rise 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[0]} .input_slew_min_fall 100.0
set_db -quiet {port:cpu8_top/i_i_hrdata[0]} .original_name {i_i_hrdata[0]}
set_db -quiet port:cpu8_top/i_i_hready .input_slew_max_rise 100.0
set_db -quiet port:cpu8_top/i_i_hready .input_slew_max_fall 100.0
set_db -quiet port:cpu8_top/i_i_hready .input_slew_min_rise 100.0
set_db -quiet port:cpu8_top/i_i_hready .input_slew_min_fall 100.0
set_db -quiet port:cpu8_top/i_i_hready .original_name i_i_hready
set_db -quiet port:cpu8_top/i_i_hresp .input_slew_max_rise 100.0
set_db -quiet port:cpu8_top/i_i_hresp .input_slew_max_fall 100.0
set_db -quiet port:cpu8_top/i_i_hresp .input_slew_min_rise 100.0
set_db -quiet port:cpu8_top/i_i_hresp .input_slew_min_fall 100.0
set_db -quiet port:cpu8_top/i_i_hresp .original_name i_i_hresp
set_db -quiet {port:cpu8_top/i_d_hrdata[7]} .input_slew_max_rise 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[7]} .input_slew_max_fall 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[7]} .input_slew_min_rise 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[7]} .input_slew_min_fall 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[7]} .original_name {i_d_hrdata[7]}
set_db -quiet {port:cpu8_top/i_d_hrdata[6]} .input_slew_max_rise 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[6]} .input_slew_max_fall 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[6]} .input_slew_min_rise 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[6]} .input_slew_min_fall 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[6]} .original_name {i_d_hrdata[6]}
set_db -quiet {port:cpu8_top/i_d_hrdata[5]} .input_slew_max_rise 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[5]} .input_slew_max_fall 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[5]} .input_slew_min_rise 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[5]} .input_slew_min_fall 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[5]} .original_name {i_d_hrdata[5]}
set_db -quiet {port:cpu8_top/i_d_hrdata[4]} .input_slew_max_rise 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[4]} .input_slew_max_fall 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[4]} .input_slew_min_rise 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[4]} .input_slew_min_fall 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[4]} .original_name {i_d_hrdata[4]}
set_db -quiet {port:cpu8_top/i_d_hrdata[3]} .input_slew_max_rise 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[3]} .input_slew_max_fall 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[3]} .input_slew_min_rise 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[3]} .input_slew_min_fall 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[3]} .original_name {i_d_hrdata[3]}
set_db -quiet {port:cpu8_top/i_d_hrdata[2]} .input_slew_max_rise 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[2]} .input_slew_max_fall 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[2]} .input_slew_min_rise 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[2]} .input_slew_min_fall 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[2]} .original_name {i_d_hrdata[2]}
set_db -quiet {port:cpu8_top/i_d_hrdata[1]} .input_slew_max_rise 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[1]} .input_slew_max_fall 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[1]} .input_slew_min_rise 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[1]} .input_slew_min_fall 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[1]} .original_name {i_d_hrdata[1]}
set_db -quiet {port:cpu8_top/i_d_hrdata[0]} .input_slew_max_rise 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[0]} .input_slew_max_fall 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[0]} .input_slew_min_rise 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[0]} .input_slew_min_fall 100.0
set_db -quiet {port:cpu8_top/i_d_hrdata[0]} .original_name {i_d_hrdata[0]}
set_db -quiet port:cpu8_top/i_d_hready .input_slew_max_rise 100.0
set_db -quiet port:cpu8_top/i_d_hready .input_slew_max_fall 100.0
set_db -quiet port:cpu8_top/i_d_hready .input_slew_min_rise 100.0
set_db -quiet port:cpu8_top/i_d_hready .input_slew_min_fall 100.0
set_db -quiet port:cpu8_top/i_d_hready .original_name i_d_hready
set_db -quiet port:cpu8_top/i_d_hresp .input_slew_max_rise 100.0
set_db -quiet port:cpu8_top/i_d_hresp .input_slew_max_fall 100.0
set_db -quiet port:cpu8_top/i_d_hresp .input_slew_min_rise 100.0
set_db -quiet port:cpu8_top/i_d_hresp .input_slew_min_fall 100.0
set_db -quiet port:cpu8_top/i_d_hresp .original_name i_d_hresp
set_db -quiet port:cpu8_top/i_irq .input_slew_max_rise 100.0
set_db -quiet port:cpu8_top/i_irq .input_slew_max_fall 100.0
set_db -quiet port:cpu8_top/i_irq .input_slew_min_rise 100.0
set_db -quiet port:cpu8_top/i_irq .input_slew_min_fall 100.0
set_db -quiet port:cpu8_top/i_irq .original_name i_irq
set_db -quiet {port:cpu8_top/o_i_haddr[16]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[16]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[16]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[16]} .original_name {o_i_haddr[16]}
set_db -quiet {port:cpu8_top/o_i_haddr[16]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[15]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[15]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[15]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[15]} .original_name {o_i_haddr[15]}
set_db -quiet {port:cpu8_top/o_i_haddr[15]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[14]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[14]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[14]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[14]} .original_name {o_i_haddr[14]}
set_db -quiet {port:cpu8_top/o_i_haddr[14]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[13]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[13]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[13]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[13]} .original_name {o_i_haddr[13]}
set_db -quiet {port:cpu8_top/o_i_haddr[13]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[12]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[12]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[12]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[12]} .original_name {o_i_haddr[12]}
set_db -quiet {port:cpu8_top/o_i_haddr[12]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[11]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[11]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[11]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[11]} .original_name {o_i_haddr[11]}
set_db -quiet {port:cpu8_top/o_i_haddr[11]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[10]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[10]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[10]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[10]} .original_name {o_i_haddr[10]}
set_db -quiet {port:cpu8_top/o_i_haddr[10]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[9]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[9]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[9]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[9]} .original_name {o_i_haddr[9]}
set_db -quiet {port:cpu8_top/o_i_haddr[9]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[8]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[8]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[8]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[8]} .original_name {o_i_haddr[8]}
set_db -quiet {port:cpu8_top/o_i_haddr[8]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[7]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[7]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[7]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[7]} .original_name {o_i_haddr[7]}
set_db -quiet {port:cpu8_top/o_i_haddr[7]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[6]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[6]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[6]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[6]} .original_name {o_i_haddr[6]}
set_db -quiet {port:cpu8_top/o_i_haddr[6]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[5]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[5]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[5]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[5]} .original_name {o_i_haddr[5]}
set_db -quiet {port:cpu8_top/o_i_haddr[5]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[4]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[4]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[4]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[4]} .original_name {o_i_haddr[4]}
set_db -quiet {port:cpu8_top/o_i_haddr[4]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[3]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[3]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[3]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[3]} .original_name {o_i_haddr[3]}
set_db -quiet {port:cpu8_top/o_i_haddr[3]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[2]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[2]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[2]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[2]} .original_name {o_i_haddr[2]}
set_db -quiet {port:cpu8_top/o_i_haddr[2]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[1]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[1]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[1]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[1]} .original_name {o_i_haddr[1]}
set_db -quiet {port:cpu8_top/o_i_haddr[1]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[0]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[0]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_haddr[0]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_haddr[0]} .original_name {o_i_haddr[0]}
set_db -quiet {port:cpu8_top/o_i_haddr[0]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_htrans[1]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_htrans[1]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_htrans[1]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_htrans[1]} .original_name {o_i_htrans[1]}
set_db -quiet {port:cpu8_top/o_i_htrans[1]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_htrans[0]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_htrans[0]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_htrans[0]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_htrans[0]} .original_name {o_i_htrans[0]}
set_db -quiet {port:cpu8_top/o_i_htrans[0]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_hsize[2]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_hsize[2]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_hsize[2]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_hsize[2]} .original_name {o_i_hsize[2]}
set_db -quiet {port:cpu8_top/o_i_hsize[2]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_hsize[1]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_hsize[1]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_hsize[1]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_hsize[1]} .original_name {o_i_hsize[1]}
set_db -quiet {port:cpu8_top/o_i_hsize[1]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_hsize[0]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_hsize[0]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_hsize[0]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_hsize[0]} .original_name {o_i_hsize[0]}
set_db -quiet {port:cpu8_top/o_i_hsize[0]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_hburst[2]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_hburst[2]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_hburst[2]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_hburst[2]} .original_name {o_i_hburst[2]}
set_db -quiet {port:cpu8_top/o_i_hburst[2]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_hburst[1]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_hburst[1]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_hburst[1]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_hburst[1]} .original_name {o_i_hburst[1]}
set_db -quiet {port:cpu8_top/o_i_hburst[1]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_hburst[0]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_hburst[0]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_hburst[0]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_hburst[0]} .original_name {o_i_hburst[0]}
set_db -quiet {port:cpu8_top/o_i_hburst[0]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_hprot[3]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_hprot[3]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_hprot[3]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_hprot[3]} .original_name {o_i_hprot[3]}
set_db -quiet {port:cpu8_top/o_i_hprot[3]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_hprot[2]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_hprot[2]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_hprot[2]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_hprot[2]} .original_name {o_i_hprot[2]}
set_db -quiet {port:cpu8_top/o_i_hprot[2]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_hprot[1]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_hprot[1]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_hprot[1]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_hprot[1]} .original_name {o_i_hprot[1]}
set_db -quiet {port:cpu8_top/o_i_hprot[1]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_hprot[0]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_i_hprot[0]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_i_hprot[0]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_i_hprot[0]} .original_name {o_i_hprot[0]}
set_db -quiet {port:cpu8_top/o_i_hprot[0]} .external_pin_cap {10.0 10.0}
set_db -quiet port:cpu8_top/o_i_hwrite .external_pin_cap_min 10.0
set_db -quiet port:cpu8_top/o_i_hwrite .external_capacitance_max {10.0 10.0}
set_db -quiet port:cpu8_top/o_i_hwrite .external_capacitance_min 10.0
set_db -quiet port:cpu8_top/o_i_hwrite .original_name o_i_hwrite
set_db -quiet port:cpu8_top/o_i_hwrite .external_pin_cap {10.0 10.0}
set_db -quiet port:cpu8_top/o_i_hmastlock .external_pin_cap_min 10.0
set_db -quiet port:cpu8_top/o_i_hmastlock .external_capacitance_max {10.0 10.0}
set_db -quiet port:cpu8_top/o_i_hmastlock .external_capacitance_min 10.0
set_db -quiet port:cpu8_top/o_i_hmastlock .original_name o_i_hmastlock
set_db -quiet port:cpu8_top/o_i_hmastlock .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[15]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[15]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[15]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[15]} .original_name {o_d_haddr[15]}
set_db -quiet {port:cpu8_top/o_d_haddr[15]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[14]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[14]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[14]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[14]} .original_name {o_d_haddr[14]}
set_db -quiet {port:cpu8_top/o_d_haddr[14]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[13]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[13]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[13]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[13]} .original_name {o_d_haddr[13]}
set_db -quiet {port:cpu8_top/o_d_haddr[13]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[12]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[12]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[12]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[12]} .original_name {o_d_haddr[12]}
set_db -quiet {port:cpu8_top/o_d_haddr[12]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[11]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[11]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[11]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[11]} .original_name {o_d_haddr[11]}
set_db -quiet {port:cpu8_top/o_d_haddr[11]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[10]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[10]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[10]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[10]} .original_name {o_d_haddr[10]}
set_db -quiet {port:cpu8_top/o_d_haddr[10]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[9]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[9]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[9]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[9]} .original_name {o_d_haddr[9]}
set_db -quiet {port:cpu8_top/o_d_haddr[9]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[8]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[8]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[8]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[8]} .original_name {o_d_haddr[8]}
set_db -quiet {port:cpu8_top/o_d_haddr[8]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[7]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[7]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[7]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[7]} .original_name {o_d_haddr[7]}
set_db -quiet {port:cpu8_top/o_d_haddr[7]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[6]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[6]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[6]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[6]} .original_name {o_d_haddr[6]}
set_db -quiet {port:cpu8_top/o_d_haddr[6]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[5]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[5]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[5]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[5]} .original_name {o_d_haddr[5]}
set_db -quiet {port:cpu8_top/o_d_haddr[5]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[4]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[4]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[4]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[4]} .original_name {o_d_haddr[4]}
set_db -quiet {port:cpu8_top/o_d_haddr[4]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[3]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[3]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[3]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[3]} .original_name {o_d_haddr[3]}
set_db -quiet {port:cpu8_top/o_d_haddr[3]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[2]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[2]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[2]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[2]} .original_name {o_d_haddr[2]}
set_db -quiet {port:cpu8_top/o_d_haddr[2]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[1]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[1]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[1]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[1]} .original_name {o_d_haddr[1]}
set_db -quiet {port:cpu8_top/o_d_haddr[1]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[0]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[0]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_haddr[0]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_haddr[0]} .original_name {o_d_haddr[0]}
set_db -quiet {port:cpu8_top/o_d_haddr[0]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_htrans[1]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_htrans[1]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_htrans[1]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_htrans[1]} .original_name {o_d_htrans[1]}
set_db -quiet {port:cpu8_top/o_d_htrans[1]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_htrans[0]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_htrans[0]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_htrans[0]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_htrans[0]} .original_name {o_d_htrans[0]}
set_db -quiet {port:cpu8_top/o_d_htrans[0]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hsize[2]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_hsize[2]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hsize[2]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_hsize[2]} .original_name {o_d_hsize[2]}
set_db -quiet {port:cpu8_top/o_d_hsize[2]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hsize[1]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_hsize[1]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hsize[1]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_hsize[1]} .original_name {o_d_hsize[1]}
set_db -quiet {port:cpu8_top/o_d_hsize[1]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hsize[0]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_hsize[0]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hsize[0]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_hsize[0]} .original_name {o_d_hsize[0]}
set_db -quiet {port:cpu8_top/o_d_hsize[0]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hburst[2]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_hburst[2]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hburst[2]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_hburst[2]} .original_name {o_d_hburst[2]}
set_db -quiet {port:cpu8_top/o_d_hburst[2]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hburst[1]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_hburst[1]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hburst[1]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_hburst[1]} .original_name {o_d_hburst[1]}
set_db -quiet {port:cpu8_top/o_d_hburst[1]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hburst[0]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_hburst[0]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hburst[0]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_hburst[0]} .original_name {o_d_hburst[0]}
set_db -quiet {port:cpu8_top/o_d_hburst[0]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hprot[3]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_hprot[3]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hprot[3]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_hprot[3]} .original_name {o_d_hprot[3]}
set_db -quiet {port:cpu8_top/o_d_hprot[3]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hprot[2]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_hprot[2]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hprot[2]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_hprot[2]} .original_name {o_d_hprot[2]}
set_db -quiet {port:cpu8_top/o_d_hprot[2]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hprot[1]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_hprot[1]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hprot[1]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_hprot[1]} .original_name {o_d_hprot[1]}
set_db -quiet {port:cpu8_top/o_d_hprot[1]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hprot[0]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_hprot[0]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hprot[0]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_hprot[0]} .original_name {o_d_hprot[0]}
set_db -quiet {port:cpu8_top/o_d_hprot[0]} .external_pin_cap {10.0 10.0}
set_db -quiet port:cpu8_top/o_d_hwrite .external_pin_cap_min 10.0
set_db -quiet port:cpu8_top/o_d_hwrite .external_capacitance_max {10.0 10.0}
set_db -quiet port:cpu8_top/o_d_hwrite .external_capacitance_min 10.0
set_db -quiet port:cpu8_top/o_d_hwrite .original_name o_d_hwrite
set_db -quiet port:cpu8_top/o_d_hwrite .external_pin_cap {10.0 10.0}
set_db -quiet port:cpu8_top/o_d_hmastlock .external_pin_cap_min 10.0
set_db -quiet port:cpu8_top/o_d_hmastlock .external_capacitance_max {10.0 10.0}
set_db -quiet port:cpu8_top/o_d_hmastlock .external_capacitance_min 10.0
set_db -quiet port:cpu8_top/o_d_hmastlock .original_name o_d_hmastlock
set_db -quiet port:cpu8_top/o_d_hmastlock .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hwdata[7]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_hwdata[7]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hwdata[7]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_hwdata[7]} .original_name {o_d_hwdata[7]}
set_db -quiet {port:cpu8_top/o_d_hwdata[7]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hwdata[6]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_hwdata[6]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hwdata[6]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_hwdata[6]} .original_name {o_d_hwdata[6]}
set_db -quiet {port:cpu8_top/o_d_hwdata[6]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hwdata[5]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_hwdata[5]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hwdata[5]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_hwdata[5]} .original_name {o_d_hwdata[5]}
set_db -quiet {port:cpu8_top/o_d_hwdata[5]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hwdata[4]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_hwdata[4]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hwdata[4]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_hwdata[4]} .original_name {o_d_hwdata[4]}
set_db -quiet {port:cpu8_top/o_d_hwdata[4]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hwdata[3]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_hwdata[3]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hwdata[3]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_hwdata[3]} .original_name {o_d_hwdata[3]}
set_db -quiet {port:cpu8_top/o_d_hwdata[3]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hwdata[2]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_hwdata[2]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hwdata[2]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_hwdata[2]} .original_name {o_d_hwdata[2]}
set_db -quiet {port:cpu8_top/o_d_hwdata[2]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hwdata[1]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_hwdata[1]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hwdata[1]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_hwdata[1]} .original_name {o_d_hwdata[1]}
set_db -quiet {port:cpu8_top/o_d_hwdata[1]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hwdata[0]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_d_hwdata[0]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_d_hwdata[0]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_d_hwdata[0]} .original_name {o_d_hwdata[0]}
set_db -quiet {port:cpu8_top/o_d_hwdata[0]} .external_pin_cap {10.0 10.0}
set_db -quiet port:cpu8_top/o_halted .external_pin_cap_min 10.0
set_db -quiet port:cpu8_top/o_halted .external_capacitance_max {10.0 10.0}
set_db -quiet port:cpu8_top/o_halted .external_capacitance_min 10.0
set_db -quiet port:cpu8_top/o_halted .original_name o_halted
set_db -quiet port:cpu8_top/o_halted .external_pin_cap {10.0 10.0}
set_db -quiet port:cpu8_top/o_fault .external_pin_cap_min 10.0
set_db -quiet port:cpu8_top/o_fault .external_capacitance_max {10.0 10.0}
set_db -quiet port:cpu8_top/o_fault .external_capacitance_min 10.0
set_db -quiet port:cpu8_top/o_fault .original_name o_fault
set_db -quiet port:cpu8_top/o_fault .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_fault_code[2]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_fault_code[2]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_fault_code[2]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_fault_code[2]} .original_name {o_fault_code[2]}
set_db -quiet {port:cpu8_top/o_fault_code[2]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_fault_code[1]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_fault_code[1]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_fault_code[1]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_fault_code[1]} .original_name {o_fault_code[1]}
set_db -quiet {port:cpu8_top/o_fault_code[1]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_fault_code[0]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_fault_code[0]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_fault_code[0]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_fault_code[0]} .original_name {o_fault_code[0]}
set_db -quiet {port:cpu8_top/o_fault_code[0]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[15]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_pc[15]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[15]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_pc[15]} .original_name {o_pc[15]}
set_db -quiet {port:cpu8_top/o_pc[15]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[14]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_pc[14]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[14]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_pc[14]} .original_name {o_pc[14]}
set_db -quiet {port:cpu8_top/o_pc[14]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[13]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_pc[13]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[13]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_pc[13]} .original_name {o_pc[13]}
set_db -quiet {port:cpu8_top/o_pc[13]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[12]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_pc[12]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[12]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_pc[12]} .original_name {o_pc[12]}
set_db -quiet {port:cpu8_top/o_pc[12]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[11]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_pc[11]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[11]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_pc[11]} .original_name {o_pc[11]}
set_db -quiet {port:cpu8_top/o_pc[11]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[10]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_pc[10]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[10]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_pc[10]} .original_name {o_pc[10]}
set_db -quiet {port:cpu8_top/o_pc[10]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[9]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_pc[9]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[9]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_pc[9]} .original_name {o_pc[9]}
set_db -quiet {port:cpu8_top/o_pc[9]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[8]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_pc[8]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[8]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_pc[8]} .original_name {o_pc[8]}
set_db -quiet {port:cpu8_top/o_pc[8]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[7]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_pc[7]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[7]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_pc[7]} .original_name {o_pc[7]}
set_db -quiet {port:cpu8_top/o_pc[7]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[6]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_pc[6]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[6]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_pc[6]} .original_name {o_pc[6]}
set_db -quiet {port:cpu8_top/o_pc[6]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[5]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_pc[5]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[5]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_pc[5]} .original_name {o_pc[5]}
set_db -quiet {port:cpu8_top/o_pc[5]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[4]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_pc[4]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[4]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_pc[4]} .original_name {o_pc[4]}
set_db -quiet {port:cpu8_top/o_pc[4]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[3]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_pc[3]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[3]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_pc[3]} .original_name {o_pc[3]}
set_db -quiet {port:cpu8_top/o_pc[3]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[2]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_pc[2]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[2]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_pc[2]} .original_name {o_pc[2]}
set_db -quiet {port:cpu8_top/o_pc[2]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[1]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_pc[1]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[1]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_pc[1]} .original_name {o_pc[1]}
set_db -quiet {port:cpu8_top/o_pc[1]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[0]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_pc[0]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_pc[0]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_pc[0]} .original_name {o_pc[0]}
set_db -quiet {port:cpu8_top/o_pc[0]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[15]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_x[15]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[15]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_x[15]} .original_name {o_x[15]}
set_db -quiet {port:cpu8_top/o_x[15]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[14]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_x[14]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[14]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_x[14]} .original_name {o_x[14]}
set_db -quiet {port:cpu8_top/o_x[14]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[13]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_x[13]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[13]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_x[13]} .original_name {o_x[13]}
set_db -quiet {port:cpu8_top/o_x[13]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[12]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_x[12]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[12]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_x[12]} .original_name {o_x[12]}
set_db -quiet {port:cpu8_top/o_x[12]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[11]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_x[11]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[11]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_x[11]} .original_name {o_x[11]}
set_db -quiet {port:cpu8_top/o_x[11]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[10]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_x[10]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[10]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_x[10]} .original_name {o_x[10]}
set_db -quiet {port:cpu8_top/o_x[10]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[9]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_x[9]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[9]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_x[9]} .original_name {o_x[9]}
set_db -quiet {port:cpu8_top/o_x[9]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[8]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_x[8]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[8]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_x[8]} .original_name {o_x[8]}
set_db -quiet {port:cpu8_top/o_x[8]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[7]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_x[7]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[7]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_x[7]} .original_name {o_x[7]}
set_db -quiet {port:cpu8_top/o_x[7]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[6]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_x[6]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[6]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_x[6]} .original_name {o_x[6]}
set_db -quiet {port:cpu8_top/o_x[6]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[5]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_x[5]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[5]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_x[5]} .original_name {o_x[5]}
set_db -quiet {port:cpu8_top/o_x[5]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[4]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_x[4]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[4]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_x[4]} .original_name {o_x[4]}
set_db -quiet {port:cpu8_top/o_x[4]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[3]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_x[3]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[3]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_x[3]} .original_name {o_x[3]}
set_db -quiet {port:cpu8_top/o_x[3]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[2]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_x[2]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[2]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_x[2]} .original_name {o_x[2]}
set_db -quiet {port:cpu8_top/o_x[2]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[1]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_x[1]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[1]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_x[1]} .original_name {o_x[1]}
set_db -quiet {port:cpu8_top/o_x[1]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[0]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_x[0]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_x[0]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_x[0]} .original_name {o_x[0]}
set_db -quiet {port:cpu8_top/o_x[0]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_flags[3]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_flags[3]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_flags[3]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_flags[3]} .original_name {o_flags[3]}
set_db -quiet {port:cpu8_top/o_flags[3]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_flags[2]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_flags[2]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_flags[2]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_flags[2]} .original_name {o_flags[2]}
set_db -quiet {port:cpu8_top/o_flags[2]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_flags[1]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_flags[1]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_flags[1]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_flags[1]} .original_name {o_flags[1]}
set_db -quiet {port:cpu8_top/o_flags[1]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_flags[0]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_flags[0]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_flags[0]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_flags[0]} .original_name {o_flags[0]}
set_db -quiet {port:cpu8_top/o_flags[0]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[31]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[31]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[31]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[31]} .original_name {o_registers[31]}
set_db -quiet {port:cpu8_top/o_registers[31]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[30]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[30]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[30]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[30]} .original_name {o_registers[30]}
set_db -quiet {port:cpu8_top/o_registers[30]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[29]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[29]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[29]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[29]} .original_name {o_registers[29]}
set_db -quiet {port:cpu8_top/o_registers[29]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[28]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[28]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[28]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[28]} .original_name {o_registers[28]}
set_db -quiet {port:cpu8_top/o_registers[28]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[27]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[27]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[27]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[27]} .original_name {o_registers[27]}
set_db -quiet {port:cpu8_top/o_registers[27]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[26]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[26]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[26]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[26]} .original_name {o_registers[26]}
set_db -quiet {port:cpu8_top/o_registers[26]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[25]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[25]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[25]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[25]} .original_name {o_registers[25]}
set_db -quiet {port:cpu8_top/o_registers[25]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[24]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[24]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[24]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[24]} .original_name {o_registers[24]}
set_db -quiet {port:cpu8_top/o_registers[24]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[23]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[23]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[23]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[23]} .original_name {o_registers[23]}
set_db -quiet {port:cpu8_top/o_registers[23]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[22]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[22]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[22]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[22]} .original_name {o_registers[22]}
set_db -quiet {port:cpu8_top/o_registers[22]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[21]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[21]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[21]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[21]} .original_name {o_registers[21]}
set_db -quiet {port:cpu8_top/o_registers[21]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[20]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[20]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[20]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[20]} .original_name {o_registers[20]}
set_db -quiet {port:cpu8_top/o_registers[20]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[19]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[19]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[19]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[19]} .original_name {o_registers[19]}
set_db -quiet {port:cpu8_top/o_registers[19]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[18]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[18]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[18]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[18]} .original_name {o_registers[18]}
set_db -quiet {port:cpu8_top/o_registers[18]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[17]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[17]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[17]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[17]} .original_name {o_registers[17]}
set_db -quiet {port:cpu8_top/o_registers[17]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[16]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[16]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[16]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[16]} .original_name {o_registers[16]}
set_db -quiet {port:cpu8_top/o_registers[16]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[15]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[15]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[15]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[15]} .original_name {o_registers[15]}
set_db -quiet {port:cpu8_top/o_registers[15]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[14]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[14]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[14]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[14]} .original_name {o_registers[14]}
set_db -quiet {port:cpu8_top/o_registers[14]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[13]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[13]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[13]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[13]} .original_name {o_registers[13]}
set_db -quiet {port:cpu8_top/o_registers[13]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[12]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[12]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[12]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[12]} .original_name {o_registers[12]}
set_db -quiet {port:cpu8_top/o_registers[12]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[11]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[11]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[11]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[11]} .original_name {o_registers[11]}
set_db -quiet {port:cpu8_top/o_registers[11]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[10]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[10]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[10]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[10]} .original_name {o_registers[10]}
set_db -quiet {port:cpu8_top/o_registers[10]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[9]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[9]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[9]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[9]} .original_name {o_registers[9]}
set_db -quiet {port:cpu8_top/o_registers[9]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[8]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[8]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[8]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[8]} .original_name {o_registers[8]}
set_db -quiet {port:cpu8_top/o_registers[8]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[7]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[7]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[7]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[7]} .original_name {o_registers[7]}
set_db -quiet {port:cpu8_top/o_registers[7]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[6]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[6]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[6]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[6]} .original_name {o_registers[6]}
set_db -quiet {port:cpu8_top/o_registers[6]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[5]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[5]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[5]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[5]} .original_name {o_registers[5]}
set_db -quiet {port:cpu8_top/o_registers[5]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[4]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[4]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[4]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[4]} .original_name {o_registers[4]}
set_db -quiet {port:cpu8_top/o_registers[4]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[3]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[3]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[3]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[3]} .original_name {o_registers[3]}
set_db -quiet {port:cpu8_top/o_registers[3]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[2]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[2]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[2]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[2]} .original_name {o_registers[2]}
set_db -quiet {port:cpu8_top/o_registers[2]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[1]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[1]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[1]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[1]} .original_name {o_registers[1]}
set_db -quiet {port:cpu8_top/o_registers[1]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[0]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_registers[0]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_registers[0]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_registers[0]} .original_name {o_registers[0]}
set_db -quiet {port:cpu8_top/o_registers[0]} .external_pin_cap {10.0 10.0}
set_db -quiet port:cpu8_top/o_stall .external_pin_cap_min 10.0
set_db -quiet port:cpu8_top/o_stall .external_capacitance_max {10.0 10.0}
set_db -quiet port:cpu8_top/o_stall .external_capacitance_min 10.0
set_db -quiet port:cpu8_top/o_stall .original_name o_stall
set_db -quiet port:cpu8_top/o_stall .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_stage_valid[2]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_stage_valid[2]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_stage_valid[2]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_stage_valid[2]} .original_name {o_stage_valid[2]}
set_db -quiet {port:cpu8_top/o_stage_valid[2]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_stage_valid[1]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_stage_valid[1]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_stage_valid[1]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_stage_valid[1]} .original_name {o_stage_valid[1]}
set_db -quiet {port:cpu8_top/o_stage_valid[1]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_stage_valid[0]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_stage_valid[0]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_stage_valid[0]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_stage_valid[0]} .original_name {o_stage_valid[0]}
set_db -quiet {port:cpu8_top/o_stage_valid[0]} .external_pin_cap {10.0 10.0}
set_db -quiet port:cpu8_top/o_retire_valid .external_pin_cap_min 10.0
set_db -quiet port:cpu8_top/o_retire_valid .external_capacitance_max {10.0 10.0}
set_db -quiet port:cpu8_top/o_retire_valid .external_capacitance_min 10.0
set_db -quiet port:cpu8_top/o_retire_valid .original_name o_retire_valid
set_db -quiet port:cpu8_top/o_retire_valid .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[15]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[15]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[15]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[15]} .original_name {o_retire_pc[15]}
set_db -quiet {port:cpu8_top/o_retire_pc[15]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[14]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[14]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[14]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[14]} .original_name {o_retire_pc[14]}
set_db -quiet {port:cpu8_top/o_retire_pc[14]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[13]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[13]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[13]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[13]} .original_name {o_retire_pc[13]}
set_db -quiet {port:cpu8_top/o_retire_pc[13]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[12]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[12]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[12]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[12]} .original_name {o_retire_pc[12]}
set_db -quiet {port:cpu8_top/o_retire_pc[12]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[11]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[11]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[11]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[11]} .original_name {o_retire_pc[11]}
set_db -quiet {port:cpu8_top/o_retire_pc[11]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[10]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[10]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[10]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[10]} .original_name {o_retire_pc[10]}
set_db -quiet {port:cpu8_top/o_retire_pc[10]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[9]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[9]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[9]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[9]} .original_name {o_retire_pc[9]}
set_db -quiet {port:cpu8_top/o_retire_pc[9]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[8]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[8]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[8]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[8]} .original_name {o_retire_pc[8]}
set_db -quiet {port:cpu8_top/o_retire_pc[8]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[7]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[7]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[7]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[7]} .original_name {o_retire_pc[7]}
set_db -quiet {port:cpu8_top/o_retire_pc[7]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[6]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[6]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[6]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[6]} .original_name {o_retire_pc[6]}
set_db -quiet {port:cpu8_top/o_retire_pc[6]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[5]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[5]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[5]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[5]} .original_name {o_retire_pc[5]}
set_db -quiet {port:cpu8_top/o_retire_pc[5]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[4]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[4]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[4]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[4]} .original_name {o_retire_pc[4]}
set_db -quiet {port:cpu8_top/o_retire_pc[4]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[3]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[3]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[3]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[3]} .original_name {o_retire_pc[3]}
set_db -quiet {port:cpu8_top/o_retire_pc[3]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[2]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[2]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[2]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[2]} .original_name {o_retire_pc[2]}
set_db -quiet {port:cpu8_top/o_retire_pc[2]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[1]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[1]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[1]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[1]} .original_name {o_retire_pc[1]}
set_db -quiet {port:cpu8_top/o_retire_pc[1]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[0]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[0]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_pc[0]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_pc[0]} .original_name {o_retire_pc[0]}
set_db -quiet {port:cpu8_top/o_retire_pc[0]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[15]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[15]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[15]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[15]} .original_name {o_retire_instruction[15]}
set_db -quiet {port:cpu8_top/o_retire_instruction[15]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[14]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[14]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[14]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[14]} .original_name {o_retire_instruction[14]}
set_db -quiet {port:cpu8_top/o_retire_instruction[14]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[13]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[13]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[13]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[13]} .original_name {o_retire_instruction[13]}
set_db -quiet {port:cpu8_top/o_retire_instruction[13]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[12]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[12]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[12]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[12]} .original_name {o_retire_instruction[12]}
set_db -quiet {port:cpu8_top/o_retire_instruction[12]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[11]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[11]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[11]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[11]} .original_name {o_retire_instruction[11]}
set_db -quiet {port:cpu8_top/o_retire_instruction[11]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[10]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[10]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[10]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[10]} .original_name {o_retire_instruction[10]}
set_db -quiet {port:cpu8_top/o_retire_instruction[10]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[9]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[9]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[9]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[9]} .original_name {o_retire_instruction[9]}
set_db -quiet {port:cpu8_top/o_retire_instruction[9]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[8]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[8]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[8]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[8]} .original_name {o_retire_instruction[8]}
set_db -quiet {port:cpu8_top/o_retire_instruction[8]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[7]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[7]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[7]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[7]} .original_name {o_retire_instruction[7]}
set_db -quiet {port:cpu8_top/o_retire_instruction[7]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[6]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[6]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[6]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[6]} .original_name {o_retire_instruction[6]}
set_db -quiet {port:cpu8_top/o_retire_instruction[6]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[5]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[5]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[5]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[5]} .original_name {o_retire_instruction[5]}
set_db -quiet {port:cpu8_top/o_retire_instruction[5]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[4]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[4]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[4]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[4]} .original_name {o_retire_instruction[4]}
set_db -quiet {port:cpu8_top/o_retire_instruction[4]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[3]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[3]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[3]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[3]} .original_name {o_retire_instruction[3]}
set_db -quiet {port:cpu8_top/o_retire_instruction[3]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[2]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[2]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[2]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[2]} .original_name {o_retire_instruction[2]}
set_db -quiet {port:cpu8_top/o_retire_instruction[2]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[1]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[1]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[1]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[1]} .original_name {o_retire_instruction[1]}
set_db -quiet {port:cpu8_top/o_retire_instruction[1]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[0]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[0]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_instruction[0]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_instruction[0]} .original_name {o_retire_instruction[0]}
set_db -quiet {port:cpu8_top/o_retire_instruction[0]} .external_pin_cap {10.0 10.0}
set_db -quiet port:cpu8_top/o_retire_reg_write .external_pin_cap_min 10.0
set_db -quiet port:cpu8_top/o_retire_reg_write .external_capacitance_max {10.0 10.0}
set_db -quiet port:cpu8_top/o_retire_reg_write .external_capacitance_min 10.0
set_db -quiet port:cpu8_top/o_retire_reg_write .original_name o_retire_reg_write
set_db -quiet port:cpu8_top/o_retire_reg_write .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_rd[1]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_rd[1]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_rd[1]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_rd[1]} .original_name {o_retire_rd[1]}
set_db -quiet {port:cpu8_top/o_retire_rd[1]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_rd[0]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_rd[0]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_rd[0]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_rd[0]} .original_name {o_retire_rd[0]}
set_db -quiet {port:cpu8_top/o_retire_rd[0]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_data[7]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_data[7]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_data[7]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_data[7]} .original_name {o_retire_data[7]}
set_db -quiet {port:cpu8_top/o_retire_data[7]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_data[6]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_data[6]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_data[6]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_data[6]} .original_name {o_retire_data[6]}
set_db -quiet {port:cpu8_top/o_retire_data[6]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_data[5]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_data[5]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_data[5]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_data[5]} .original_name {o_retire_data[5]}
set_db -quiet {port:cpu8_top/o_retire_data[5]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_data[4]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_data[4]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_data[4]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_data[4]} .original_name {o_retire_data[4]}
set_db -quiet {port:cpu8_top/o_retire_data[4]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_data[3]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_data[3]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_data[3]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_data[3]} .original_name {o_retire_data[3]}
set_db -quiet {port:cpu8_top/o_retire_data[3]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_data[2]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_data[2]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_data[2]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_data[2]} .original_name {o_retire_data[2]}
set_db -quiet {port:cpu8_top/o_retire_data[2]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_data[1]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_data[1]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_data[1]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_data[1]} .original_name {o_retire_data[1]}
set_db -quiet {port:cpu8_top/o_retire_data[1]} .external_pin_cap {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_data[0]} .external_pin_cap_min 10.0
set_db -quiet {port:cpu8_top/o_retire_data[0]} .external_capacitance_max {10.0 10.0}
set_db -quiet {port:cpu8_top/o_retire_data[0]} .external_capacitance_min 10.0
set_db -quiet {port:cpu8_top/o_retire_data[0]} .original_name {o_retire_data[0]}
set_db -quiet {port:cpu8_top/o_retire_data[0]} .external_pin_cap {10.0 10.0}
set_db -quiet port:cpu8_top/o_retire_bank .external_pin_cap_min 10.0
set_db -quiet port:cpu8_top/o_retire_bank .external_capacitance_max {10.0 10.0}
set_db -quiet port:cpu8_top/o_retire_bank .external_capacitance_min 10.0
set_db -quiet port:cpu8_top/o_retire_bank .original_name o_retire_bank
set_db -quiet port:cpu8_top/o_retire_bank .external_pin_cap {10.0 10.0}
set_db -quiet port:cpu8_top/o_irq_active .external_pin_cap_min 10.0
set_db -quiet port:cpu8_top/o_irq_active .external_capacitance_max {10.0 10.0}
set_db -quiet port:cpu8_top/o_irq_active .external_capacitance_min 10.0
set_db -quiet port:cpu8_top/o_irq_active .original_name o_irq_active
set_db -quiet port:cpu8_top/o_irq_active .external_pin_cap {10.0 10.0}
set_db -quiet module:cpu8_top/cpu8_alu .hdl_filelist {{default -v2001 {SYNTHESIS} {/home/hah010/UART_GDSII/SoC_make_G45/TOP/RTL/cpu8/cpu8_alu.v} {/home/hah010/UART_GDSII/SoC_make_G45/TOP/RTL/cpu8} {}}}
set_db -quiet module:cpu8_top/cpu8_decoder .is_sop_cluster true
set_db -quiet module:cpu8_top/cpu8_decoder .hdl_filelist {{default -v2001 {SYNTHESIS} {/home/hah010/UART_GDSII/SoC_make_G45/TOP/RTL/cpu8/cpu8_alu.v /home/hah010/UART_GDSII/SoC_make_G45/TOP/RTL/cpu8/cpu8_decoder.v} {/home/hah010/UART_GDSII/SoC_make_G45/TOP/RTL/cpu8} {}}}
set_db -quiet module:cpu8_top/cpu8_regfile .hdl_filelist {{default -v2001 {SYNTHESIS} {/home/hah010/UART_GDSII/SoC_make_G45/TOP/RTL/cpu8/cpu8_regfile.v} {/home/hah010/UART_GDSII/SoC_make_G45/TOP/RTL/cpu8} {}}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_0 .original_name {{u_regfile/r_regs[0][0]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_0 .single_bit_orig_name {u_regfile/r_regs[0][0]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_0_0/Q .original_name {u_regfile/r_regs[0][0]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_1 .original_name {{u_regfile/r_regs[0][1]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_1 .single_bit_orig_name {u_regfile/r_regs[0][1]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_0_1/Q .original_name {u_regfile/r_regs[0][1]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_2 .original_name {{u_regfile/r_regs[0][2]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_2 .single_bit_orig_name {u_regfile/r_regs[0][2]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_0_2/Q .original_name {u_regfile/r_regs[0][2]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_3 .original_name {{u_regfile/r_regs[0][3]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_3 .single_bit_orig_name {u_regfile/r_regs[0][3]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_0_3/Q .original_name {u_regfile/r_regs[0][3]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_4 .original_name {{u_regfile/r_regs[0][4]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_4 .single_bit_orig_name {u_regfile/r_regs[0][4]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_0_4/Q .original_name {u_regfile/r_regs[0][4]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_5 .original_name {{u_regfile/r_regs[0][5]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_5 .single_bit_orig_name {u_regfile/r_regs[0][5]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_0_5/Q .original_name {u_regfile/r_regs[0][5]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_6 .original_name {{u_regfile/r_regs[0][6]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_6 .single_bit_orig_name {u_regfile/r_regs[0][6]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_0_6/Q .original_name {u_regfile/r_regs[0][6]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_7 .original_name {{u_regfile/r_regs[0][7]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_0_7 .single_bit_orig_name {u_regfile/r_regs[0][7]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_0_7/Q .original_name {u_regfile/r_regs[0][7]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_0 .original_name {{u_regfile/r_regs[1][0]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_0 .single_bit_orig_name {u_regfile/r_regs[1][0]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_1_0/Q .original_name {u_regfile/r_regs[1][0]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_1 .original_name {{u_regfile/r_regs[1][1]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_1 .single_bit_orig_name {u_regfile/r_regs[1][1]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_1_1/Q .original_name {u_regfile/r_regs[1][1]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_2 .original_name {{u_regfile/r_regs[1][2]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_2 .single_bit_orig_name {u_regfile/r_regs[1][2]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_1_2/Q .original_name {u_regfile/r_regs[1][2]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_3 .original_name {{u_regfile/r_regs[1][3]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_3 .single_bit_orig_name {u_regfile/r_regs[1][3]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_1_3/Q .original_name {u_regfile/r_regs[1][3]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_4 .original_name {{u_regfile/r_regs[1][4]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_4 .single_bit_orig_name {u_regfile/r_regs[1][4]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_1_4/Q .original_name {u_regfile/r_regs[1][4]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_5 .original_name {{u_regfile/r_regs[1][5]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_5 .single_bit_orig_name {u_regfile/r_regs[1][5]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_1_5/Q .original_name {u_regfile/r_regs[1][5]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_6 .original_name {{u_regfile/r_regs[1][6]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_6 .single_bit_orig_name {u_regfile/r_regs[1][6]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_1_6/Q .original_name {u_regfile/r_regs[1][6]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_7 .original_name {{u_regfile/r_regs[1][7]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_1_7 .single_bit_orig_name {u_regfile/r_regs[1][7]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_1_7/Q .original_name {u_regfile/r_regs[1][7]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_0 .original_name {{u_regfile/r_regs[2][0]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_0 .single_bit_orig_name {u_regfile/r_regs[2][0]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_2_0/Q .original_name {u_regfile/r_regs[2][0]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_1 .original_name {{u_regfile/r_regs[2][1]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_1 .single_bit_orig_name {u_regfile/r_regs[2][1]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_2_1/Q .original_name {u_regfile/r_regs[2][1]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_2 .original_name {{u_regfile/r_regs[2][2]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_2 .single_bit_orig_name {u_regfile/r_regs[2][2]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_2_2/Q .original_name {u_regfile/r_regs[2][2]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_3 .original_name {{u_regfile/r_regs[2][3]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_3 .single_bit_orig_name {u_regfile/r_regs[2][3]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_2_3/Q .original_name {u_regfile/r_regs[2][3]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_4 .original_name {{u_regfile/r_regs[2][4]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_4 .single_bit_orig_name {u_regfile/r_regs[2][4]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_2_4/Q .original_name {u_regfile/r_regs[2][4]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_5 .original_name {{u_regfile/r_regs[2][5]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_5 .single_bit_orig_name {u_regfile/r_regs[2][5]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_2_5/Q .original_name {u_regfile/r_regs[2][5]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_6 .original_name {{u_regfile/r_regs[2][6]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_6 .single_bit_orig_name {u_regfile/r_regs[2][6]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_2_6/Q .original_name {u_regfile/r_regs[2][6]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_7 .original_name {{u_regfile/r_regs[2][7]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_2_7 .single_bit_orig_name {u_regfile/r_regs[2][7]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_2_7/Q .original_name {u_regfile/r_regs[2][7]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_0 .original_name {{u_regfile/r_regs[3][0]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_0 .single_bit_orig_name {u_regfile/r_regs[3][0]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_3_0/Q .original_name {u_regfile/r_regs[3][0]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_1 .original_name {{u_regfile/r_regs[3][1]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_1 .single_bit_orig_name {u_regfile/r_regs[3][1]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_3_1/Q .original_name {u_regfile/r_regs[3][1]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_2 .original_name {{u_regfile/r_regs[3][2]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_2 .single_bit_orig_name {u_regfile/r_regs[3][2]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_3_2/Q .original_name {u_regfile/r_regs[3][2]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_3 .original_name {{u_regfile/r_regs[3][3]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_3 .single_bit_orig_name {u_regfile/r_regs[3][3]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_3_3/Q .original_name {u_regfile/r_regs[3][3]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_4 .original_name {{u_regfile/r_regs[3][4]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_4 .single_bit_orig_name {u_regfile/r_regs[3][4]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_3_4/Q .original_name {u_regfile/r_regs[3][4]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_5 .original_name {{u_regfile/r_regs[3][5]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_5 .single_bit_orig_name {u_regfile/r_regs[3][5]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_3_5/Q .original_name {u_regfile/r_regs[3][5]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_6 .original_name {{u_regfile/r_regs[3][6]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_6 .single_bit_orig_name {u_regfile/r_regs[3][6]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_3_6/Q .original_name {u_regfile/r_regs[3][6]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_7 .original_name {{u_regfile/r_regs[3][7]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_3_7 .single_bit_orig_name {u_regfile/r_regs[3][7]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_3_7/Q .original_name {u_regfile/r_regs[3][7]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_0 .original_name {{u_regfile/r_regs[4][0]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_0 .single_bit_orig_name {u_regfile/r_regs[4][0]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_4_0/Q .original_name {u_regfile/r_regs[4][0]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_1 .original_name {{u_regfile/r_regs[4][1]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_1 .single_bit_orig_name {u_regfile/r_regs[4][1]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_4_1/Q .original_name {u_regfile/r_regs[4][1]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_2 .original_name {{u_regfile/r_regs[4][2]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_2 .single_bit_orig_name {u_regfile/r_regs[4][2]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_4_2/Q .original_name {u_regfile/r_regs[4][2]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_3 .original_name {{u_regfile/r_regs[4][3]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_3 .single_bit_orig_name {u_regfile/r_regs[4][3]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_4_3/Q .original_name {u_regfile/r_regs[4][3]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_4 .original_name {{u_regfile/r_regs[4][4]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_4 .single_bit_orig_name {u_regfile/r_regs[4][4]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_4_4/Q .original_name {u_regfile/r_regs[4][4]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_5 .original_name {{u_regfile/r_regs[4][5]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_5 .single_bit_orig_name {u_regfile/r_regs[4][5]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_4_5/Q .original_name {u_regfile/r_regs[4][5]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_6 .original_name {{u_regfile/r_regs[4][6]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_6 .single_bit_orig_name {u_regfile/r_regs[4][6]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_4_6/Q .original_name {u_regfile/r_regs[4][6]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_7 .original_name {{u_regfile/r_regs[4][7]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_4_7 .single_bit_orig_name {u_regfile/r_regs[4][7]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_4_7/Q .original_name {u_regfile/r_regs[4][7]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_0 .original_name {{u_regfile/r_regs[5][0]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_0 .single_bit_orig_name {u_regfile/r_regs[5][0]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_5_0/Q .original_name {u_regfile/r_regs[5][0]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_1 .original_name {{u_regfile/r_regs[5][1]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_1 .single_bit_orig_name {u_regfile/r_regs[5][1]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_5_1/Q .original_name {u_regfile/r_regs[5][1]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_2 .original_name {{u_regfile/r_regs[5][2]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_2 .single_bit_orig_name {u_regfile/r_regs[5][2]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_5_2/Q .original_name {u_regfile/r_regs[5][2]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_3 .original_name {{u_regfile/r_regs[5][3]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_3 .single_bit_orig_name {u_regfile/r_regs[5][3]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_5_3/Q .original_name {u_regfile/r_regs[5][3]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_4 .original_name {{u_regfile/r_regs[5][4]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_4 .single_bit_orig_name {u_regfile/r_regs[5][4]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_5_4/Q .original_name {u_regfile/r_regs[5][4]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_5 .original_name {{u_regfile/r_regs[5][5]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_5 .single_bit_orig_name {u_regfile/r_regs[5][5]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_5_5/Q .original_name {u_regfile/r_regs[5][5]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_6 .original_name {{u_regfile/r_regs[5][6]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_6 .single_bit_orig_name {u_regfile/r_regs[5][6]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_5_6/Q .original_name {u_regfile/r_regs[5][6]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_7 .original_name {{u_regfile/r_regs[5][7]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_5_7 .single_bit_orig_name {u_regfile/r_regs[5][7]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_5_7/Q .original_name {u_regfile/r_regs[5][7]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_0 .original_name {{u_regfile/r_regs[6][0]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_0 .single_bit_orig_name {u_regfile/r_regs[6][0]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_6_0/Q .original_name {u_regfile/r_regs[6][0]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_1 .original_name {{u_regfile/r_regs[6][1]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_1 .single_bit_orig_name {u_regfile/r_regs[6][1]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_6_1/Q .original_name {u_regfile/r_regs[6][1]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_2 .original_name {{u_regfile/r_regs[6][2]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_2 .single_bit_orig_name {u_regfile/r_regs[6][2]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_6_2/Q .original_name {u_regfile/r_regs[6][2]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_3 .original_name {{u_regfile/r_regs[6][3]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_3 .single_bit_orig_name {u_regfile/r_regs[6][3]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_6_3/Q .original_name {u_regfile/r_regs[6][3]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_4 .original_name {{u_regfile/r_regs[6][4]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_4 .single_bit_orig_name {u_regfile/r_regs[6][4]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_6_4/Q .original_name {u_regfile/r_regs[6][4]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_5 .original_name {{u_regfile/r_regs[6][5]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_5 .single_bit_orig_name {u_regfile/r_regs[6][5]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_6_5/Q .original_name {u_regfile/r_regs[6][5]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_6 .original_name {{u_regfile/r_regs[6][6]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_6 .single_bit_orig_name {u_regfile/r_regs[6][6]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_6_6/Q .original_name {u_regfile/r_regs[6][6]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_7 .original_name {{u_regfile/r_regs[6][7]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_6_7 .single_bit_orig_name {u_regfile/r_regs[6][7]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_6_7/Q .original_name {u_regfile/r_regs[6][7]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_0 .original_name {{u_regfile/r_regs[7][0]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_0 .single_bit_orig_name {u_regfile/r_regs[7][0]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_7_0/Q .original_name {u_regfile/r_regs[7][0]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_1 .original_name {{u_regfile/r_regs[7][1]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_1 .single_bit_orig_name {u_regfile/r_regs[7][1]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_7_1/Q .original_name {u_regfile/r_regs[7][1]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_2 .original_name {{u_regfile/r_regs[7][2]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_2 .single_bit_orig_name {u_regfile/r_regs[7][2]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_7_2/Q .original_name {u_regfile/r_regs[7][2]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_3 .original_name {{u_regfile/r_regs[7][3]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_3 .single_bit_orig_name {u_regfile/r_regs[7][3]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_7_3/Q .original_name {u_regfile/r_regs[7][3]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_4 .original_name {{u_regfile/r_regs[7][4]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_4 .single_bit_orig_name {u_regfile/r_regs[7][4]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_7_4/Q .original_name {u_regfile/r_regs[7][4]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_5 .original_name {{u_regfile/r_regs[7][5]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_5 .single_bit_orig_name {u_regfile/r_regs[7][5]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_7_5/Q .original_name {u_regfile/r_regs[7][5]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_6 .original_name {{u_regfile/r_regs[7][6]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_6 .single_bit_orig_name {u_regfile/r_regs[7][6]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_7_6/Q .original_name {u_regfile/r_regs[7][6]/q}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_7 .original_name {{u_regfile/r_regs[7][7]}}
set_db -quiet inst:cpu8_top/u_regfile/r_regs_reg_7_7 .single_bit_orig_name {u_regfile/r_regs[7][7]}
set_db -quiet pin:cpu8_top/u_regfile/r_regs_reg_7_7/Q .original_name {u_regfile/r_regs[7][7]/q}
set_db -quiet inst:cpu8_top/o_retire_reg_write_reg .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_reg_write_reg .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_reg_write_reg .original_name o_retire_reg_write
set_db -quiet inst:cpu8_top/o_retire_reg_write_reg .single_bit_orig_name o_retire_reg_write
set_db -quiet pin:cpu8_top/o_retire_reg_write_reg/Q .original_name o_retire_reg_write/q
set_db -quiet inst:cpu8_top/o_retire_valid_reg .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_valid_reg .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_valid_reg .original_name o_retire_valid
set_db -quiet inst:cpu8_top/o_retire_valid_reg .single_bit_orig_name o_retire_valid
set_db -quiet pin:cpu8_top/o_retire_valid_reg/Q .original_name o_retire_valid/q
set_db -quiet inst:cpu8_top/o_fault_code_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_fault_code_reg_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_fault_code_reg_0 .original_name {{o_fault_code[0]}}
set_db -quiet inst:cpu8_top/o_fault_code_reg_0 .single_bit_orig_name {o_fault_code[0]}
set_db -quiet pin:cpu8_top/o_fault_code_reg_0/Q .original_name {o_fault_code[0]/q}
set_db -quiet inst:cpu8_top/o_fault_code_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_fault_code_reg_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_fault_code_reg_1 .original_name {{o_fault_code[1]}}
set_db -quiet inst:cpu8_top/o_fault_code_reg_1 .single_bit_orig_name {o_fault_code[1]}
set_db -quiet pin:cpu8_top/o_fault_code_reg_1/Q .original_name {o_fault_code[1]/q}
set_db -quiet inst:cpu8_top/o_fault_reg .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_fault_reg .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_fault_reg .original_name o_fault
set_db -quiet inst:cpu8_top/o_fault_reg .single_bit_orig_name o_fault
set_db -quiet pin:cpu8_top/o_fault_reg/Q .original_name o_fault/q
set_db -quiet inst:cpu8_top/o_halted_reg .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_halted_reg .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_halted_reg .original_name o_halted
set_db -quiet inst:cpu8_top/o_halted_reg .single_bit_orig_name o_halted
set_db -quiet pin:cpu8_top/o_halted_reg/Q .original_name o_halted/q
set_db -quiet inst:cpu8_top/o_pc_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_pc_reg_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_pc_reg_0 .original_name {{o_pc[0]}}
set_db -quiet inst:cpu8_top/o_pc_reg_0 .single_bit_orig_name {o_pc[0]}
set_db -quiet pin:cpu8_top/o_pc_reg_0/Q .original_name {o_pc[0]/q}
set_db -quiet inst:cpu8_top/o_pc_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_pc_reg_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_pc_reg_1 .original_name {{o_pc[1]}}
set_db -quiet inst:cpu8_top/o_pc_reg_1 .single_bit_orig_name {o_pc[1]}
set_db -quiet pin:cpu8_top/o_pc_reg_1/Q .original_name {o_pc[1]/q}
set_db -quiet inst:cpu8_top/o_pc_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_pc_reg_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_pc_reg_2 .original_name {{o_pc[2]}}
set_db -quiet inst:cpu8_top/o_pc_reg_2 .single_bit_orig_name {o_pc[2]}
set_db -quiet pin:cpu8_top/o_pc_reg_2/Q .original_name {o_pc[2]/q}
set_db -quiet inst:cpu8_top/o_pc_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_pc_reg_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_pc_reg_3 .original_name {{o_pc[3]}}
set_db -quiet inst:cpu8_top/o_pc_reg_3 .single_bit_orig_name {o_pc[3]}
set_db -quiet pin:cpu8_top/o_pc_reg_3/Q .original_name {o_pc[3]/q}
set_db -quiet inst:cpu8_top/o_pc_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_pc_reg_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_pc_reg_4 .original_name {{o_pc[4]}}
set_db -quiet inst:cpu8_top/o_pc_reg_4 .single_bit_orig_name {o_pc[4]}
set_db -quiet pin:cpu8_top/o_pc_reg_4/Q .original_name {o_pc[4]/q}
set_db -quiet inst:cpu8_top/o_pc_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_pc_reg_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_pc_reg_5 .original_name {{o_pc[5]}}
set_db -quiet inst:cpu8_top/o_pc_reg_5 .single_bit_orig_name {o_pc[5]}
set_db -quiet pin:cpu8_top/o_pc_reg_5/Q .original_name {o_pc[5]/q}
set_db -quiet inst:cpu8_top/o_pc_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_pc_reg_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_pc_reg_6 .original_name {{o_pc[6]}}
set_db -quiet inst:cpu8_top/o_pc_reg_6 .single_bit_orig_name {o_pc[6]}
set_db -quiet pin:cpu8_top/o_pc_reg_6/Q .original_name {o_pc[6]/q}
set_db -quiet inst:cpu8_top/o_pc_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_pc_reg_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_pc_reg_7 .original_name {{o_pc[7]}}
set_db -quiet inst:cpu8_top/o_pc_reg_7 .single_bit_orig_name {o_pc[7]}
set_db -quiet pin:cpu8_top/o_pc_reg_7/Q .original_name {o_pc[7]/q}
set_db -quiet inst:cpu8_top/o_pc_reg_8 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_pc_reg_8 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_pc_reg_8 .original_name {{o_pc[8]}}
set_db -quiet inst:cpu8_top/o_pc_reg_8 .single_bit_orig_name {o_pc[8]}
set_db -quiet pin:cpu8_top/o_pc_reg_8/Q .original_name {o_pc[8]/q}
set_db -quiet inst:cpu8_top/o_pc_reg_9 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_pc_reg_9 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_pc_reg_9 .original_name {{o_pc[9]}}
set_db -quiet inst:cpu8_top/o_pc_reg_9 .single_bit_orig_name {o_pc[9]}
set_db -quiet pin:cpu8_top/o_pc_reg_9/Q .original_name {o_pc[9]/q}
set_db -quiet inst:cpu8_top/o_pc_reg_10 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_pc_reg_10 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_pc_reg_10 .original_name {{o_pc[10]}}
set_db -quiet inst:cpu8_top/o_pc_reg_10 .single_bit_orig_name {o_pc[10]}
set_db -quiet pin:cpu8_top/o_pc_reg_10/Q .original_name {o_pc[10]/q}
set_db -quiet inst:cpu8_top/o_pc_reg_11 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_pc_reg_11 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_pc_reg_11 .original_name {{o_pc[11]}}
set_db -quiet inst:cpu8_top/o_pc_reg_11 .single_bit_orig_name {o_pc[11]}
set_db -quiet pin:cpu8_top/o_pc_reg_11/Q .original_name {o_pc[11]/q}
set_db -quiet inst:cpu8_top/o_pc_reg_12 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_pc_reg_12 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_pc_reg_12 .original_name {{o_pc[12]}}
set_db -quiet inst:cpu8_top/o_pc_reg_12 .single_bit_orig_name {o_pc[12]}
set_db -quiet pin:cpu8_top/o_pc_reg_12/Q .original_name {o_pc[12]/q}
set_db -quiet inst:cpu8_top/o_pc_reg_13 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_pc_reg_13 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_pc_reg_13 .original_name {{o_pc[13]}}
set_db -quiet inst:cpu8_top/o_pc_reg_13 .single_bit_orig_name {o_pc[13]}
set_db -quiet pin:cpu8_top/o_pc_reg_13/Q .original_name {o_pc[13]/q}
set_db -quiet inst:cpu8_top/o_pc_reg_14 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_pc_reg_14 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_pc_reg_14 .original_name {{o_pc[14]}}
set_db -quiet inst:cpu8_top/o_pc_reg_14 .single_bit_orig_name {o_pc[14]}
set_db -quiet pin:cpu8_top/o_pc_reg_14/Q .original_name {o_pc[14]/q}
set_db -quiet inst:cpu8_top/o_pc_reg_15 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_pc_reg_15 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_pc_reg_15 .original_name {{o_pc[15]}}
set_db -quiet inst:cpu8_top/o_pc_reg_15 .single_bit_orig_name {o_pc[15]}
set_db -quiet pin:cpu8_top/o_pc_reg_15/Q .original_name {o_pc[15]/q}
set_db -quiet inst:cpu8_top/o_retire_bank_reg .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_bank_reg .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_bank_reg .original_name o_retire_bank
set_db -quiet inst:cpu8_top/o_retire_bank_reg .single_bit_orig_name o_retire_bank
set_db -quiet pin:cpu8_top/o_retire_bank_reg/Q .original_name o_retire_bank/q
set_db -quiet inst:cpu8_top/o_retire_data_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_data_reg_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_data_reg_0 .original_name {{o_retire_data[0]}}
set_db -quiet inst:cpu8_top/o_retire_data_reg_0 .single_bit_orig_name {o_retire_data[0]}
set_db -quiet pin:cpu8_top/o_retire_data_reg_0/Q .original_name {o_retire_data[0]/q}
set_db -quiet inst:cpu8_top/o_retire_data_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_data_reg_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_data_reg_1 .original_name {{o_retire_data[1]}}
set_db -quiet inst:cpu8_top/o_retire_data_reg_1 .single_bit_orig_name {o_retire_data[1]}
set_db -quiet pin:cpu8_top/o_retire_data_reg_1/Q .original_name {o_retire_data[1]/q}
set_db -quiet inst:cpu8_top/o_retire_data_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_data_reg_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_data_reg_2 .original_name {{o_retire_data[2]}}
set_db -quiet inst:cpu8_top/o_retire_data_reg_2 .single_bit_orig_name {o_retire_data[2]}
set_db -quiet pin:cpu8_top/o_retire_data_reg_2/Q .original_name {o_retire_data[2]/q}
set_db -quiet inst:cpu8_top/o_retire_data_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_data_reg_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_data_reg_3 .original_name {{o_retire_data[3]}}
set_db -quiet inst:cpu8_top/o_retire_data_reg_3 .single_bit_orig_name {o_retire_data[3]}
set_db -quiet pin:cpu8_top/o_retire_data_reg_3/Q .original_name {o_retire_data[3]/q}
set_db -quiet inst:cpu8_top/o_retire_data_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_data_reg_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_data_reg_4 .original_name {{o_retire_data[4]}}
set_db -quiet inst:cpu8_top/o_retire_data_reg_4 .single_bit_orig_name {o_retire_data[4]}
set_db -quiet pin:cpu8_top/o_retire_data_reg_4/Q .original_name {o_retire_data[4]/q}
set_db -quiet inst:cpu8_top/o_retire_data_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_data_reg_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_data_reg_5 .original_name {{o_retire_data[5]}}
set_db -quiet inst:cpu8_top/o_retire_data_reg_5 .single_bit_orig_name {o_retire_data[5]}
set_db -quiet pin:cpu8_top/o_retire_data_reg_5/Q .original_name {o_retire_data[5]/q}
set_db -quiet inst:cpu8_top/o_retire_data_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_data_reg_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_data_reg_6 .original_name {{o_retire_data[6]}}
set_db -quiet inst:cpu8_top/o_retire_data_reg_6 .single_bit_orig_name {o_retire_data[6]}
set_db -quiet pin:cpu8_top/o_retire_data_reg_6/Q .original_name {o_retire_data[6]/q}
set_db -quiet inst:cpu8_top/o_retire_data_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_data_reg_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_data_reg_7 .original_name {{o_retire_data[7]}}
set_db -quiet inst:cpu8_top/o_retire_data_reg_7 .single_bit_orig_name {o_retire_data[7]}
set_db -quiet pin:cpu8_top/o_retire_data_reg_7/Q .original_name {o_retire_data[7]/q}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_0 .original_name {{o_retire_instruction[0]}}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_0 .single_bit_orig_name {o_retire_instruction[0]}
set_db -quiet pin:cpu8_top/o_retire_instruction_reg_0/Q .original_name {o_retire_instruction[0]/q}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_1 .original_name {{o_retire_instruction[1]}}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_1 .single_bit_orig_name {o_retire_instruction[1]}
set_db -quiet pin:cpu8_top/o_retire_instruction_reg_1/Q .original_name {o_retire_instruction[1]/q}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_2 .original_name {{o_retire_instruction[2]}}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_2 .single_bit_orig_name {o_retire_instruction[2]}
set_db -quiet pin:cpu8_top/o_retire_instruction_reg_2/Q .original_name {o_retire_instruction[2]/q}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_3 .original_name {{o_retire_instruction[3]}}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_3 .single_bit_orig_name {o_retire_instruction[3]}
set_db -quiet pin:cpu8_top/o_retire_instruction_reg_3/Q .original_name {o_retire_instruction[3]/q}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_4 .original_name {{o_retire_instruction[4]}}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_4 .single_bit_orig_name {o_retire_instruction[4]}
set_db -quiet pin:cpu8_top/o_retire_instruction_reg_4/Q .original_name {o_retire_instruction[4]/q}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_5 .original_name {{o_retire_instruction[5]}}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_5 .single_bit_orig_name {o_retire_instruction[5]}
set_db -quiet pin:cpu8_top/o_retire_instruction_reg_5/Q .original_name {o_retire_instruction[5]/q}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_6 .original_name {{o_retire_instruction[6]}}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_6 .single_bit_orig_name {o_retire_instruction[6]}
set_db -quiet pin:cpu8_top/o_retire_instruction_reg_6/Q .original_name {o_retire_instruction[6]/q}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_7 .original_name {{o_retire_instruction[7]}}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_7 .single_bit_orig_name {o_retire_instruction[7]}
set_db -quiet pin:cpu8_top/o_retire_instruction_reg_7/Q .original_name {o_retire_instruction[7]/q}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_8 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_8 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_8 .original_name {{o_retire_instruction[8]}}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_8 .single_bit_orig_name {o_retire_instruction[8]}
set_db -quiet pin:cpu8_top/o_retire_instruction_reg_8/Q .original_name {o_retire_instruction[8]/q}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_9 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_9 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_9 .original_name {{o_retire_instruction[9]}}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_9 .single_bit_orig_name {o_retire_instruction[9]}
set_db -quiet pin:cpu8_top/o_retire_instruction_reg_9/Q .original_name {o_retire_instruction[9]/q}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_10 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_10 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_10 .original_name {{o_retire_instruction[10]}}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_10 .single_bit_orig_name {o_retire_instruction[10]}
set_db -quiet pin:cpu8_top/o_retire_instruction_reg_10/Q .original_name {o_retire_instruction[10]/q}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_11 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_11 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_11 .original_name {{o_retire_instruction[11]}}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_11 .single_bit_orig_name {o_retire_instruction[11]}
set_db -quiet pin:cpu8_top/o_retire_instruction_reg_11/Q .original_name {o_retire_instruction[11]/q}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_12 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_12 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_12 .original_name {{o_retire_instruction[12]}}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_12 .single_bit_orig_name {o_retire_instruction[12]}
set_db -quiet pin:cpu8_top/o_retire_instruction_reg_12/Q .original_name {o_retire_instruction[12]/q}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_13 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_13 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_13 .original_name {{o_retire_instruction[13]}}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_13 .single_bit_orig_name {o_retire_instruction[13]}
set_db -quiet pin:cpu8_top/o_retire_instruction_reg_13/Q .original_name {o_retire_instruction[13]/q}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_14 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_14 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_14 .original_name {{o_retire_instruction[14]}}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_14 .single_bit_orig_name {o_retire_instruction[14]}
set_db -quiet pin:cpu8_top/o_retire_instruction_reg_14/Q .original_name {o_retire_instruction[14]/q}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_15 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_15 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_15 .original_name {{o_retire_instruction[15]}}
set_db -quiet inst:cpu8_top/o_retire_instruction_reg_15 .single_bit_orig_name {o_retire_instruction[15]}
set_db -quiet pin:cpu8_top/o_retire_instruction_reg_15/Q .original_name {o_retire_instruction[15]/q}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_0 .original_name {{o_retire_pc[0]}}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_0 .single_bit_orig_name {o_retire_pc[0]}
set_db -quiet pin:cpu8_top/o_retire_pc_reg_0/Q .original_name {o_retire_pc[0]/q}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_1 .original_name {{o_retire_pc[1]}}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_1 .single_bit_orig_name {o_retire_pc[1]}
set_db -quiet pin:cpu8_top/o_retire_pc_reg_1/Q .original_name {o_retire_pc[1]/q}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_2 .original_name {{o_retire_pc[2]}}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_2 .single_bit_orig_name {o_retire_pc[2]}
set_db -quiet pin:cpu8_top/o_retire_pc_reg_2/Q .original_name {o_retire_pc[2]/q}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_3 .original_name {{o_retire_pc[3]}}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_3 .single_bit_orig_name {o_retire_pc[3]}
set_db -quiet pin:cpu8_top/o_retire_pc_reg_3/Q .original_name {o_retire_pc[3]/q}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_4 .original_name {{o_retire_pc[4]}}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_4 .single_bit_orig_name {o_retire_pc[4]}
set_db -quiet pin:cpu8_top/o_retire_pc_reg_4/Q .original_name {o_retire_pc[4]/q}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_5 .original_name {{o_retire_pc[5]}}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_5 .single_bit_orig_name {o_retire_pc[5]}
set_db -quiet pin:cpu8_top/o_retire_pc_reg_5/Q .original_name {o_retire_pc[5]/q}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_6 .original_name {{o_retire_pc[6]}}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_6 .single_bit_orig_name {o_retire_pc[6]}
set_db -quiet pin:cpu8_top/o_retire_pc_reg_6/Q .original_name {o_retire_pc[6]/q}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_7 .original_name {{o_retire_pc[7]}}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_7 .single_bit_orig_name {o_retire_pc[7]}
set_db -quiet pin:cpu8_top/o_retire_pc_reg_7/Q .original_name {o_retire_pc[7]/q}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_8 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_8 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_8 .original_name {{o_retire_pc[8]}}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_8 .single_bit_orig_name {o_retire_pc[8]}
set_db -quiet pin:cpu8_top/o_retire_pc_reg_8/Q .original_name {o_retire_pc[8]/q}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_9 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_9 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_9 .original_name {{o_retire_pc[9]}}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_9 .single_bit_orig_name {o_retire_pc[9]}
set_db -quiet pin:cpu8_top/o_retire_pc_reg_9/Q .original_name {o_retire_pc[9]/q}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_10 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_10 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_10 .original_name {{o_retire_pc[10]}}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_10 .single_bit_orig_name {o_retire_pc[10]}
set_db -quiet pin:cpu8_top/o_retire_pc_reg_10/Q .original_name {o_retire_pc[10]/q}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_11 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_11 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_11 .original_name {{o_retire_pc[11]}}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_11 .single_bit_orig_name {o_retire_pc[11]}
set_db -quiet pin:cpu8_top/o_retire_pc_reg_11/Q .original_name {o_retire_pc[11]/q}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_12 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_12 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_12 .original_name {{o_retire_pc[12]}}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_12 .single_bit_orig_name {o_retire_pc[12]}
set_db -quiet pin:cpu8_top/o_retire_pc_reg_12/Q .original_name {o_retire_pc[12]/q}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_13 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_13 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_13 .original_name {{o_retire_pc[13]}}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_13 .single_bit_orig_name {o_retire_pc[13]}
set_db -quiet pin:cpu8_top/o_retire_pc_reg_13/Q .original_name {o_retire_pc[13]/q}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_14 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_14 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_14 .original_name {{o_retire_pc[14]}}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_14 .single_bit_orig_name {o_retire_pc[14]}
set_db -quiet pin:cpu8_top/o_retire_pc_reg_14/Q .original_name {o_retire_pc[14]/q}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_15 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_15 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/o_retire_pc_reg_15 .original_name {{o_retire_pc[15]}}
set_db -quiet inst:cpu8_top/o_retire_pc_reg_15 .single_bit_orig_name {o_retire_pc[15]}
set_db -quiet pin:cpu8_top/o_retire_pc_reg_15/Q .original_name {o_retire_pc[15]/q}
set_db -quiet inst:cpu8_top/r_bank_reg .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_bank_reg .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_bank_reg .original_name r_bank
set_db -quiet inst:cpu8_top/r_bank_reg .single_bit_orig_name r_bank
set_db -quiet pin:cpu8_top/r_bank_reg/Q .original_name r_bank/q
set_db -quiet inst:cpu8_top/r_d_err_reg .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_d_err_reg .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_d_err_reg .original_name r_d_err
set_db -quiet inst:cpu8_top/r_d_err_reg .single_bit_orig_name r_d_err
set_db -quiet pin:cpu8_top/r_d_err_reg/Q .original_name r_d_err/q
set_db -quiet inst:cpu8_top/r_d_held_reg .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_d_held_reg .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_d_held_reg .original_name r_d_held
set_db -quiet inst:cpu8_top/r_d_held_reg .single_bit_orig_name r_d_held
set_db -quiet pin:cpu8_top/r_d_held_reg/Q .original_name r_d_held/q
set_db -quiet inst:cpu8_top/r_epc_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_epc_reg_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_epc_reg_0 .original_name {{r_epc[0]}}
set_db -quiet inst:cpu8_top/r_epc_reg_0 .single_bit_orig_name {r_epc[0]}
set_db -quiet pin:cpu8_top/r_epc_reg_0/Q .original_name {r_epc[0]/q}
set_db -quiet inst:cpu8_top/r_epc_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_epc_reg_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_epc_reg_1 .original_name {{r_epc[1]}}
set_db -quiet inst:cpu8_top/r_epc_reg_1 .single_bit_orig_name {r_epc[1]}
set_db -quiet pin:cpu8_top/r_epc_reg_1/Q .original_name {r_epc[1]/q}
set_db -quiet inst:cpu8_top/r_epc_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_epc_reg_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_epc_reg_2 .original_name {{r_epc[2]}}
set_db -quiet inst:cpu8_top/r_epc_reg_2 .single_bit_orig_name {r_epc[2]}
set_db -quiet pin:cpu8_top/r_epc_reg_2/Q .original_name {r_epc[2]/q}
set_db -quiet inst:cpu8_top/r_epc_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_epc_reg_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_epc_reg_3 .original_name {{r_epc[3]}}
set_db -quiet inst:cpu8_top/r_epc_reg_3 .single_bit_orig_name {r_epc[3]}
set_db -quiet pin:cpu8_top/r_epc_reg_3/Q .original_name {r_epc[3]/q}
set_db -quiet inst:cpu8_top/r_epc_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_epc_reg_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_epc_reg_4 .original_name {{r_epc[4]}}
set_db -quiet inst:cpu8_top/r_epc_reg_4 .single_bit_orig_name {r_epc[4]}
set_db -quiet pin:cpu8_top/r_epc_reg_4/Q .original_name {r_epc[4]/q}
set_db -quiet inst:cpu8_top/r_epc_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_epc_reg_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_epc_reg_5 .original_name {{r_epc[5]}}
set_db -quiet inst:cpu8_top/r_epc_reg_5 .single_bit_orig_name {r_epc[5]}
set_db -quiet pin:cpu8_top/r_epc_reg_5/Q .original_name {r_epc[5]/q}
set_db -quiet inst:cpu8_top/r_epc_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_epc_reg_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_epc_reg_6 .original_name {{r_epc[6]}}
set_db -quiet inst:cpu8_top/r_epc_reg_6 .single_bit_orig_name {r_epc[6]}
set_db -quiet pin:cpu8_top/r_epc_reg_6/Q .original_name {r_epc[6]/q}
set_db -quiet inst:cpu8_top/r_epc_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_epc_reg_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_epc_reg_7 .original_name {{r_epc[7]}}
set_db -quiet inst:cpu8_top/r_epc_reg_7 .single_bit_orig_name {r_epc[7]}
set_db -quiet pin:cpu8_top/r_epc_reg_7/Q .original_name {r_epc[7]/q}
set_db -quiet inst:cpu8_top/r_epc_reg_8 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_epc_reg_8 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_epc_reg_8 .original_name {{r_epc[8]}}
set_db -quiet inst:cpu8_top/r_epc_reg_8 .single_bit_orig_name {r_epc[8]}
set_db -quiet pin:cpu8_top/r_epc_reg_8/Q .original_name {r_epc[8]/q}
set_db -quiet inst:cpu8_top/r_epc_reg_9 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_epc_reg_9 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_epc_reg_9 .original_name {{r_epc[9]}}
set_db -quiet inst:cpu8_top/r_epc_reg_9 .single_bit_orig_name {r_epc[9]}
set_db -quiet pin:cpu8_top/r_epc_reg_9/Q .original_name {r_epc[9]/q}
set_db -quiet inst:cpu8_top/r_epc_reg_10 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_epc_reg_10 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_epc_reg_10 .original_name {{r_epc[10]}}
set_db -quiet inst:cpu8_top/r_epc_reg_10 .single_bit_orig_name {r_epc[10]}
set_db -quiet pin:cpu8_top/r_epc_reg_10/Q .original_name {r_epc[10]/q}
set_db -quiet inst:cpu8_top/r_epc_reg_11 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_epc_reg_11 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_epc_reg_11 .original_name {{r_epc[11]}}
set_db -quiet inst:cpu8_top/r_epc_reg_11 .single_bit_orig_name {r_epc[11]}
set_db -quiet pin:cpu8_top/r_epc_reg_11/Q .original_name {r_epc[11]/q}
set_db -quiet inst:cpu8_top/r_epc_reg_12 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_epc_reg_12 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_epc_reg_12 .original_name {{r_epc[12]}}
set_db -quiet inst:cpu8_top/r_epc_reg_12 .single_bit_orig_name {r_epc[12]}
set_db -quiet pin:cpu8_top/r_epc_reg_12/Q .original_name {r_epc[12]/q}
set_db -quiet inst:cpu8_top/r_epc_reg_13 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_epc_reg_13 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_epc_reg_13 .original_name {{r_epc[13]}}
set_db -quiet inst:cpu8_top/r_epc_reg_13 .single_bit_orig_name {r_epc[13]}
set_db -quiet pin:cpu8_top/r_epc_reg_13/Q .original_name {r_epc[13]/q}
set_db -quiet inst:cpu8_top/r_epc_reg_14 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_epc_reg_14 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_epc_reg_14 .original_name {{r_epc[14]}}
set_db -quiet inst:cpu8_top/r_epc_reg_14 .single_bit_orig_name {r_epc[14]}
set_db -quiet pin:cpu8_top/r_epc_reg_14/Q .original_name {r_epc[14]/q}
set_db -quiet inst:cpu8_top/r_epc_reg_15 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_epc_reg_15 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_epc_reg_15 .original_name {{r_epc[15]}}
set_db -quiet inst:cpu8_top/r_epc_reg_15 .single_bit_orig_name {r_epc[15]}
set_db -quiet pin:cpu8_top/r_epc_reg_15/Q .original_name {r_epc[15]/q}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_0 .original_name {{r_fetch_pc[0]}}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_0 .single_bit_orig_name {r_fetch_pc[0]}
set_db -quiet pin:cpu8_top/r_fetch_pc_reg_0/Q .original_name {r_fetch_pc[0]/q}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_1 .original_name {{r_fetch_pc[1]}}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_1 .single_bit_orig_name {r_fetch_pc[1]}
set_db -quiet pin:cpu8_top/r_fetch_pc_reg_1/Q .original_name {r_fetch_pc[1]/q}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_2 .original_name {{r_fetch_pc[2]}}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_2 .single_bit_orig_name {r_fetch_pc[2]}
set_db -quiet pin:cpu8_top/r_fetch_pc_reg_2/Q .original_name {r_fetch_pc[2]/q}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_3 .original_name {{r_fetch_pc[3]}}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_3 .single_bit_orig_name {r_fetch_pc[3]}
set_db -quiet pin:cpu8_top/r_fetch_pc_reg_3/Q .original_name {r_fetch_pc[3]/q}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_4 .original_name {{r_fetch_pc[4]}}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_4 .single_bit_orig_name {r_fetch_pc[4]}
set_db -quiet pin:cpu8_top/r_fetch_pc_reg_4/Q .original_name {r_fetch_pc[4]/q}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_5 .original_name {{r_fetch_pc[5]}}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_5 .single_bit_orig_name {r_fetch_pc[5]}
set_db -quiet pin:cpu8_top/r_fetch_pc_reg_5/Q .original_name {r_fetch_pc[5]/q}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_6 .original_name {{r_fetch_pc[6]}}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_6 .single_bit_orig_name {r_fetch_pc[6]}
set_db -quiet pin:cpu8_top/r_fetch_pc_reg_6/Q .original_name {r_fetch_pc[6]/q}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_7 .original_name {{r_fetch_pc[7]}}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_7 .single_bit_orig_name {r_fetch_pc[7]}
set_db -quiet pin:cpu8_top/r_fetch_pc_reg_7/Q .original_name {r_fetch_pc[7]/q}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_8 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_8 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_8 .original_name {{r_fetch_pc[8]}}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_8 .single_bit_orig_name {r_fetch_pc[8]}
set_db -quiet pin:cpu8_top/r_fetch_pc_reg_8/Q .original_name {r_fetch_pc[8]/q}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_9 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_9 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_9 .original_name {{r_fetch_pc[9]}}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_9 .single_bit_orig_name {r_fetch_pc[9]}
set_db -quiet pin:cpu8_top/r_fetch_pc_reg_9/Q .original_name {r_fetch_pc[9]/q}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_10 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_10 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_10 .original_name {{r_fetch_pc[10]}}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_10 .single_bit_orig_name {r_fetch_pc[10]}
set_db -quiet pin:cpu8_top/r_fetch_pc_reg_10/Q .original_name {r_fetch_pc[10]/q}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_11 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_11 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_11 .original_name {{r_fetch_pc[11]}}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_11 .single_bit_orig_name {r_fetch_pc[11]}
set_db -quiet pin:cpu8_top/r_fetch_pc_reg_11/Q .original_name {r_fetch_pc[11]/q}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_12 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_12 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_12 .original_name {{r_fetch_pc[12]}}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_12 .single_bit_orig_name {r_fetch_pc[12]}
set_db -quiet pin:cpu8_top/r_fetch_pc_reg_12/Q .original_name {r_fetch_pc[12]/q}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_13 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_13 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_13 .original_name {{r_fetch_pc[13]}}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_13 .single_bit_orig_name {r_fetch_pc[13]}
set_db -quiet pin:cpu8_top/r_fetch_pc_reg_13/Q .original_name {r_fetch_pc[13]/q}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_14 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_14 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_14 .original_name {{r_fetch_pc[14]}}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_14 .single_bit_orig_name {r_fetch_pc[14]}
set_db -quiet pin:cpu8_top/r_fetch_pc_reg_14/Q .original_name {r_fetch_pc[14]/q}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_15 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_15 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_15 .original_name {{r_fetch_pc[15]}}
set_db -quiet inst:cpu8_top/r_fetch_pc_reg_15 .single_bit_orig_name {r_fetch_pc[15]}
set_db -quiet pin:cpu8_top/r_fetch_pc_reg_15/Q .original_name {r_fetch_pc[15]/q}
set_db -quiet inst:cpu8_top/r_flags0_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_flags0_reg_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_flags0_reg_0 .original_name {{r_flags0[0]}}
set_db -quiet inst:cpu8_top/r_flags0_reg_0 .single_bit_orig_name {r_flags0[0]}
set_db -quiet pin:cpu8_top/r_flags0_reg_0/Q .original_name {r_flags0[0]/q}
set_db -quiet inst:cpu8_top/r_flags0_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_flags0_reg_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_flags0_reg_1 .original_name {{r_flags0[1]}}
set_db -quiet inst:cpu8_top/r_flags0_reg_1 .single_bit_orig_name {r_flags0[1]}
set_db -quiet pin:cpu8_top/r_flags0_reg_1/Q .original_name {r_flags0[1]/q}
set_db -quiet inst:cpu8_top/r_flags0_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_flags0_reg_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_flags0_reg_2 .original_name {{r_flags0[2]}}
set_db -quiet inst:cpu8_top/r_flags0_reg_2 .single_bit_orig_name {r_flags0[2]}
set_db -quiet pin:cpu8_top/r_flags0_reg_2/Q .original_name {r_flags0[2]/q}
set_db -quiet inst:cpu8_top/r_flags0_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_flags0_reg_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_flags0_reg_3 .original_name {{r_flags0[3]}}
set_db -quiet inst:cpu8_top/r_flags0_reg_3 .single_bit_orig_name {r_flags0[3]}
set_db -quiet pin:cpu8_top/r_flags0_reg_3/Q .original_name {r_flags0[3]/q}
set_db -quiet inst:cpu8_top/r_flags1_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_flags1_reg_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_flags1_reg_1 .original_name {{r_flags1[1]}}
set_db -quiet inst:cpu8_top/r_flags1_reg_1 .single_bit_orig_name {r_flags1[1]}
set_db -quiet pin:cpu8_top/r_flags1_reg_1/Q .original_name {r_flags1[1]/q}
set_db -quiet inst:cpu8_top/r_flags1_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_flags1_reg_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_flags1_reg_3 .original_name {{r_flags1[3]}}
set_db -quiet inst:cpu8_top/r_flags1_reg_3 .single_bit_orig_name {r_flags1[3]}
set_db -quiet pin:cpu8_top/r_flags1_reg_3/Q .original_name {r_flags1[3]/q}
set_db -quiet inst:cpu8_top/r_id_error_reg .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_error_reg .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_error_reg .original_name r_id_error
set_db -quiet inst:cpu8_top/r_id_error_reg .single_bit_orig_name r_id_error
set_db -quiet pin:cpu8_top/r_id_error_reg/Q .original_name r_id_error/q
set_db -quiet inst:cpu8_top/r_id_instruction_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_0 .original_name {{r_id_instruction[0]}}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_0 .single_bit_orig_name {r_id_instruction[0]}
set_db -quiet pin:cpu8_top/r_id_instruction_reg_0/Q .original_name {r_id_instruction[0]/q}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_1 .original_name {{r_id_instruction[1]}}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_1 .single_bit_orig_name {r_id_instruction[1]}
set_db -quiet pin:cpu8_top/r_id_instruction_reg_1/Q .original_name {r_id_instruction[1]/q}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_2 .original_name {{r_id_instruction[2]}}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_2 .single_bit_orig_name {r_id_instruction[2]}
set_db -quiet pin:cpu8_top/r_id_instruction_reg_2/Q .original_name {r_id_instruction[2]/q}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_3 .original_name {{r_id_instruction[3]}}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_3 .single_bit_orig_name {r_id_instruction[3]}
set_db -quiet pin:cpu8_top/r_id_instruction_reg_3/Q .original_name {r_id_instruction[3]/q}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_4 .original_name {{r_id_instruction[4]}}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_4 .single_bit_orig_name {r_id_instruction[4]}
set_db -quiet pin:cpu8_top/r_id_instruction_reg_4/Q .original_name {r_id_instruction[4]/q}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_5 .original_name {{r_id_instruction[5]}}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_5 .single_bit_orig_name {r_id_instruction[5]}
set_db -quiet pin:cpu8_top/r_id_instruction_reg_5/Q .original_name {r_id_instruction[5]/q}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_6 .original_name {{r_id_instruction[6]}}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_6 .single_bit_orig_name {r_id_instruction[6]}
set_db -quiet pin:cpu8_top/r_id_instruction_reg_6/Q .original_name {r_id_instruction[6]/q}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_7 .original_name {{r_id_instruction[7]}}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_7 .single_bit_orig_name {r_id_instruction[7]}
set_db -quiet pin:cpu8_top/r_id_instruction_reg_7/Q .original_name {r_id_instruction[7]/q}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_8 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_8 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_8 .original_name {{r_id_instruction[8]}}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_8 .single_bit_orig_name {r_id_instruction[8]}
set_db -quiet pin:cpu8_top/r_id_instruction_reg_8/Q .original_name {r_id_instruction[8]/q}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_9 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_9 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_9 .original_name {{r_id_instruction[9]}}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_9 .single_bit_orig_name {r_id_instruction[9]}
set_db -quiet pin:cpu8_top/r_id_instruction_reg_9/Q .original_name {r_id_instruction[9]/q}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_10 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_10 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_10 .original_name {{r_id_instruction[10]}}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_10 .single_bit_orig_name {r_id_instruction[10]}
set_db -quiet pin:cpu8_top/r_id_instruction_reg_10/Q .original_name {r_id_instruction[10]/q}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_11 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_11 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_11 .original_name {{r_id_instruction[11]}}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_11 .single_bit_orig_name {r_id_instruction[11]}
set_db -quiet pin:cpu8_top/r_id_instruction_reg_11/Q .original_name {r_id_instruction[11]/q}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_12 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_12 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_12 .original_name {{r_id_instruction[12]}}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_12 .single_bit_orig_name {r_id_instruction[12]}
set_db -quiet pin:cpu8_top/r_id_instruction_reg_12/Q .original_name {r_id_instruction[12]/q}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_13 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_13 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_13 .original_name {{r_id_instruction[13]}}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_13 .single_bit_orig_name {r_id_instruction[13]}
set_db -quiet pin:cpu8_top/r_id_instruction_reg_13/Q .original_name {r_id_instruction[13]/q}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_14 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_14 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_14 .original_name {{r_id_instruction[14]}}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_14 .single_bit_orig_name {r_id_instruction[14]}
set_db -quiet pin:cpu8_top/r_id_instruction_reg_14/Q .original_name {r_id_instruction[14]/q}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_15 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_15 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_instruction_reg_15 .original_name {{r_id_instruction[15]}}
set_db -quiet inst:cpu8_top/r_id_instruction_reg_15 .single_bit_orig_name {r_id_instruction[15]}
set_db -quiet pin:cpu8_top/r_id_instruction_reg_15/Q .original_name {r_id_instruction[15]/q}
set_db -quiet inst:cpu8_top/r_id_pc_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_pc_reg_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_pc_reg_0 .original_name {{r_id_pc[0]}}
set_db -quiet inst:cpu8_top/r_id_pc_reg_0 .single_bit_orig_name {r_id_pc[0]}
set_db -quiet pin:cpu8_top/r_id_pc_reg_0/Q .original_name {r_id_pc[0]/q}
set_db -quiet inst:cpu8_top/r_id_pc_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_pc_reg_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_pc_reg_1 .original_name {{r_id_pc[1]}}
set_db -quiet inst:cpu8_top/r_id_pc_reg_1 .single_bit_orig_name {r_id_pc[1]}
set_db -quiet pin:cpu8_top/r_id_pc_reg_1/Q .original_name {r_id_pc[1]/q}
set_db -quiet inst:cpu8_top/r_id_pc_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_pc_reg_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_pc_reg_2 .original_name {{r_id_pc[2]}}
set_db -quiet inst:cpu8_top/r_id_pc_reg_2 .single_bit_orig_name {r_id_pc[2]}
set_db -quiet pin:cpu8_top/r_id_pc_reg_2/Q .original_name {r_id_pc[2]/q}
set_db -quiet inst:cpu8_top/r_id_pc_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_pc_reg_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_pc_reg_3 .original_name {{r_id_pc[3]}}
set_db -quiet inst:cpu8_top/r_id_pc_reg_3 .single_bit_orig_name {r_id_pc[3]}
set_db -quiet pin:cpu8_top/r_id_pc_reg_3/Q .original_name {r_id_pc[3]/q}
set_db -quiet inst:cpu8_top/r_id_pc_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_pc_reg_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_pc_reg_4 .original_name {{r_id_pc[4]}}
set_db -quiet inst:cpu8_top/r_id_pc_reg_4 .single_bit_orig_name {r_id_pc[4]}
set_db -quiet pin:cpu8_top/r_id_pc_reg_4/Q .original_name {r_id_pc[4]/q}
set_db -quiet inst:cpu8_top/r_id_pc_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_pc_reg_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_pc_reg_5 .original_name {{r_id_pc[5]}}
set_db -quiet inst:cpu8_top/r_id_pc_reg_5 .single_bit_orig_name {r_id_pc[5]}
set_db -quiet pin:cpu8_top/r_id_pc_reg_5/Q .original_name {r_id_pc[5]/q}
set_db -quiet inst:cpu8_top/r_id_pc_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_pc_reg_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_pc_reg_6 .original_name {{r_id_pc[6]}}
set_db -quiet inst:cpu8_top/r_id_pc_reg_6 .single_bit_orig_name {r_id_pc[6]}
set_db -quiet pin:cpu8_top/r_id_pc_reg_6/Q .original_name {r_id_pc[6]/q}
set_db -quiet inst:cpu8_top/r_id_pc_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_pc_reg_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_pc_reg_7 .original_name {{r_id_pc[7]}}
set_db -quiet inst:cpu8_top/r_id_pc_reg_7 .single_bit_orig_name {r_id_pc[7]}
set_db -quiet pin:cpu8_top/r_id_pc_reg_7/Q .original_name {r_id_pc[7]/q}
set_db -quiet inst:cpu8_top/r_id_pc_reg_8 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_pc_reg_8 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_pc_reg_8 .original_name {{r_id_pc[8]}}
set_db -quiet inst:cpu8_top/r_id_pc_reg_8 .single_bit_orig_name {r_id_pc[8]}
set_db -quiet pin:cpu8_top/r_id_pc_reg_8/Q .original_name {r_id_pc[8]/q}
set_db -quiet inst:cpu8_top/r_id_pc_reg_9 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_pc_reg_9 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_pc_reg_9 .original_name {{r_id_pc[9]}}
set_db -quiet inst:cpu8_top/r_id_pc_reg_9 .single_bit_orig_name {r_id_pc[9]}
set_db -quiet pin:cpu8_top/r_id_pc_reg_9/Q .original_name {r_id_pc[9]/q}
set_db -quiet inst:cpu8_top/r_id_pc_reg_10 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_pc_reg_10 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_pc_reg_10 .original_name {{r_id_pc[10]}}
set_db -quiet inst:cpu8_top/r_id_pc_reg_10 .single_bit_orig_name {r_id_pc[10]}
set_db -quiet pin:cpu8_top/r_id_pc_reg_10/Q .original_name {r_id_pc[10]/q}
set_db -quiet inst:cpu8_top/r_id_pc_reg_11 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_pc_reg_11 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_pc_reg_11 .original_name {{r_id_pc[11]}}
set_db -quiet inst:cpu8_top/r_id_pc_reg_11 .single_bit_orig_name {r_id_pc[11]}
set_db -quiet pin:cpu8_top/r_id_pc_reg_11/Q .original_name {r_id_pc[11]/q}
set_db -quiet inst:cpu8_top/r_id_pc_reg_12 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_pc_reg_12 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_pc_reg_12 .original_name {{r_id_pc[12]}}
set_db -quiet inst:cpu8_top/r_id_pc_reg_12 .single_bit_orig_name {r_id_pc[12]}
set_db -quiet pin:cpu8_top/r_id_pc_reg_12/Q .original_name {r_id_pc[12]/q}
set_db -quiet inst:cpu8_top/r_id_pc_reg_13 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_pc_reg_13 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_pc_reg_13 .original_name {{r_id_pc[13]}}
set_db -quiet inst:cpu8_top/r_id_pc_reg_13 .single_bit_orig_name {r_id_pc[13]}
set_db -quiet pin:cpu8_top/r_id_pc_reg_13/Q .original_name {r_id_pc[13]/q}
set_db -quiet inst:cpu8_top/r_id_pc_reg_14 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_pc_reg_14 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_pc_reg_14 .original_name {{r_id_pc[14]}}
set_db -quiet inst:cpu8_top/r_id_pc_reg_14 .single_bit_orig_name {r_id_pc[14]}
set_db -quiet pin:cpu8_top/r_id_pc_reg_14/Q .original_name {r_id_pc[14]/q}
set_db -quiet inst:cpu8_top/r_id_pc_reg_15 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_pc_reg_15 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_pc_reg_15 .original_name {{r_id_pc[15]}}
set_db -quiet inst:cpu8_top/r_id_pc_reg_15 .single_bit_orig_name {r_id_pc[15]}
set_db -quiet pin:cpu8_top/r_id_pc_reg_15/Q .original_name {r_id_pc[15]/q}
set_db -quiet inst:cpu8_top/r_id_valid_reg .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_id_valid_reg .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_id_valid_reg .original_name r_id_valid
set_db -quiet inst:cpu8_top/r_id_valid_reg .single_bit_orig_name r_id_valid
set_db -quiet pin:cpu8_top/r_id_valid_reg/Q .original_name r_id_valid/q
set_db -quiet inst:cpu8_top/r_ie_reg .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_ie_reg .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_ie_reg .original_name r_ie
set_db -quiet inst:cpu8_top/r_ie_reg .single_bit_orig_name r_ie
set_db -quiet pin:cpu8_top/r_ie_reg/Q .original_name r_ie/q
set_db -quiet inst:cpu8_top/r_if_kill_reg .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_if_kill_reg .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_if_kill_reg .original_name r_if_kill
set_db -quiet inst:cpu8_top/r_if_kill_reg .single_bit_orig_name r_if_kill
set_db -quiet pin:cpu8_top/r_if_kill_reg/Q .original_name r_if_kill/q
set_db -quiet inst:cpu8_top/r_if_pc_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_if_pc_reg_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_if_pc_reg_0 .original_name {{r_if_pc[0]}}
set_db -quiet inst:cpu8_top/r_if_pc_reg_0 .single_bit_orig_name {r_if_pc[0]}
set_db -quiet pin:cpu8_top/r_if_pc_reg_0/Q .original_name {r_if_pc[0]/q}
set_db -quiet inst:cpu8_top/r_if_pc_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_if_pc_reg_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_if_pc_reg_1 .original_name {{r_if_pc[1]}}
set_db -quiet inst:cpu8_top/r_if_pc_reg_1 .single_bit_orig_name {r_if_pc[1]}
set_db -quiet pin:cpu8_top/r_if_pc_reg_1/Q .original_name {r_if_pc[1]/q}
set_db -quiet inst:cpu8_top/r_if_pc_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_if_pc_reg_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_if_pc_reg_2 .original_name {{r_if_pc[2]}}
set_db -quiet inst:cpu8_top/r_if_pc_reg_2 .single_bit_orig_name {r_if_pc[2]}
set_db -quiet pin:cpu8_top/r_if_pc_reg_2/Q .original_name {r_if_pc[2]/q}
set_db -quiet inst:cpu8_top/r_if_pc_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_if_pc_reg_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_if_pc_reg_3 .original_name {{r_if_pc[3]}}
set_db -quiet inst:cpu8_top/r_if_pc_reg_3 .single_bit_orig_name {r_if_pc[3]}
set_db -quiet pin:cpu8_top/r_if_pc_reg_3/Q .original_name {r_if_pc[3]/q}
set_db -quiet inst:cpu8_top/r_if_pc_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_if_pc_reg_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_if_pc_reg_4 .original_name {{r_if_pc[4]}}
set_db -quiet inst:cpu8_top/r_if_pc_reg_4 .single_bit_orig_name {r_if_pc[4]}
set_db -quiet pin:cpu8_top/r_if_pc_reg_4/Q .original_name {r_if_pc[4]/q}
set_db -quiet inst:cpu8_top/r_if_pc_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_if_pc_reg_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_if_pc_reg_5 .original_name {{r_if_pc[5]}}
set_db -quiet inst:cpu8_top/r_if_pc_reg_5 .single_bit_orig_name {r_if_pc[5]}
set_db -quiet pin:cpu8_top/r_if_pc_reg_5/Q .original_name {r_if_pc[5]/q}
set_db -quiet inst:cpu8_top/r_if_pc_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_if_pc_reg_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_if_pc_reg_6 .original_name {{r_if_pc[6]}}
set_db -quiet inst:cpu8_top/r_if_pc_reg_6 .single_bit_orig_name {r_if_pc[6]}
set_db -quiet pin:cpu8_top/r_if_pc_reg_6/Q .original_name {r_if_pc[6]/q}
set_db -quiet inst:cpu8_top/r_if_pc_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_if_pc_reg_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_if_pc_reg_7 .original_name {{r_if_pc[7]}}
set_db -quiet inst:cpu8_top/r_if_pc_reg_7 .single_bit_orig_name {r_if_pc[7]}
set_db -quiet pin:cpu8_top/r_if_pc_reg_7/Q .original_name {r_if_pc[7]/q}
set_db -quiet inst:cpu8_top/r_if_pc_reg_8 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_if_pc_reg_8 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_if_pc_reg_8 .original_name {{r_if_pc[8]}}
set_db -quiet inst:cpu8_top/r_if_pc_reg_8 .single_bit_orig_name {r_if_pc[8]}
set_db -quiet pin:cpu8_top/r_if_pc_reg_8/Q .original_name {r_if_pc[8]/q}
set_db -quiet inst:cpu8_top/r_if_pc_reg_9 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_if_pc_reg_9 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_if_pc_reg_9 .original_name {{r_if_pc[9]}}
set_db -quiet inst:cpu8_top/r_if_pc_reg_9 .single_bit_orig_name {r_if_pc[9]}
set_db -quiet pin:cpu8_top/r_if_pc_reg_9/Q .original_name {r_if_pc[9]/q}
set_db -quiet inst:cpu8_top/r_if_pc_reg_10 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_if_pc_reg_10 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_if_pc_reg_10 .original_name {{r_if_pc[10]}}
set_db -quiet inst:cpu8_top/r_if_pc_reg_10 .single_bit_orig_name {r_if_pc[10]}
set_db -quiet pin:cpu8_top/r_if_pc_reg_10/Q .original_name {r_if_pc[10]/q}
set_db -quiet inst:cpu8_top/r_if_pc_reg_11 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_if_pc_reg_11 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_if_pc_reg_11 .original_name {{r_if_pc[11]}}
set_db -quiet inst:cpu8_top/r_if_pc_reg_11 .single_bit_orig_name {r_if_pc[11]}
set_db -quiet pin:cpu8_top/r_if_pc_reg_11/Q .original_name {r_if_pc[11]/q}
set_db -quiet inst:cpu8_top/r_if_pc_reg_12 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_if_pc_reg_12 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_if_pc_reg_12 .original_name {{r_if_pc[12]}}
set_db -quiet inst:cpu8_top/r_if_pc_reg_12 .single_bit_orig_name {r_if_pc[12]}
set_db -quiet pin:cpu8_top/r_if_pc_reg_12/Q .original_name {r_if_pc[12]/q}
set_db -quiet inst:cpu8_top/r_if_pc_reg_13 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_if_pc_reg_13 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_if_pc_reg_13 .original_name {{r_if_pc[13]}}
set_db -quiet inst:cpu8_top/r_if_pc_reg_13 .single_bit_orig_name {r_if_pc[13]}
set_db -quiet pin:cpu8_top/r_if_pc_reg_13/Q .original_name {r_if_pc[13]/q}
set_db -quiet inst:cpu8_top/r_if_pc_reg_14 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_if_pc_reg_14 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_if_pc_reg_14 .original_name {{r_if_pc[14]}}
set_db -quiet inst:cpu8_top/r_if_pc_reg_14 .single_bit_orig_name {r_if_pc[14]}
set_db -quiet pin:cpu8_top/r_if_pc_reg_14/Q .original_name {r_if_pc[14]/q}
set_db -quiet inst:cpu8_top/r_if_pc_reg_15 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_if_pc_reg_15 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_if_pc_reg_15 .original_name {{r_if_pc[15]}}
set_db -quiet inst:cpu8_top/r_if_pc_reg_15 .single_bit_orig_name {r_if_pc[15]}
set_db -quiet pin:cpu8_top/r_if_pc_reg_15/Q .original_name {r_if_pc[15]/q}
set_db -quiet inst:cpu8_top/r_if_valid_reg .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_if_valid_reg .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_if_valid_reg .original_name r_if_valid
set_db -quiet inst:cpu8_top/r_if_valid_reg .single_bit_orig_name r_if_valid
set_db -quiet pin:cpu8_top/r_if_valid_reg/Q .original_name r_if_valid/q
set_db -quiet inst:cpu8_top/r_m_bank_reg .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_bank_reg .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_bank_reg .original_name r_m_bank
set_db -quiet inst:cpu8_top/r_m_bank_reg .single_bit_orig_name r_m_bank
set_db -quiet pin:cpu8_top/r_m_bank_reg/Q .original_name r_m_bank/q
set_db -quiet inst:cpu8_top/r_m_fault_code_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_fault_code_reg_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_fault_code_reg_1 .original_name {{r_m_fault_code[1]}}
set_db -quiet inst:cpu8_top/r_m_fault_code_reg_1 .single_bit_orig_name {r_m_fault_code[1]}
set_db -quiet pin:cpu8_top/r_m_fault_code_reg_1/Q .original_name {r_m_fault_code[1]/q}
set_db -quiet inst:cpu8_top/r_m_fault_reg .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_fault_reg .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_fault_reg .original_name r_m_fault
set_db -quiet inst:cpu8_top/r_m_fault_reg .single_bit_orig_name r_m_fault
set_db -quiet pin:cpu8_top/r_m_fault_reg/Q .original_name r_m_fault/q
set_db -quiet inst:cpu8_top/r_m_flags_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_flags_reg_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_flags_reg_0 .original_name {{r_m_flags[0]}}
set_db -quiet inst:cpu8_top/r_m_flags_reg_0 .single_bit_orig_name {r_m_flags[0]}
set_db -quiet pin:cpu8_top/r_m_flags_reg_0/Q .original_name {r_m_flags[0]/q}
set_db -quiet inst:cpu8_top/r_m_flags_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_flags_reg_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_flags_reg_1 .original_name {{r_m_flags[1]}}
set_db -quiet inst:cpu8_top/r_m_flags_reg_1 .single_bit_orig_name {r_m_flags[1]}
set_db -quiet pin:cpu8_top/r_m_flags_reg_1/Q .original_name {r_m_flags[1]/q}
set_db -quiet inst:cpu8_top/r_m_flags_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_flags_reg_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_flags_reg_2 .original_name {{r_m_flags[2]}}
set_db -quiet inst:cpu8_top/r_m_flags_reg_2 .single_bit_orig_name {r_m_flags[2]}
set_db -quiet pin:cpu8_top/r_m_flags_reg_2/Q .original_name {r_m_flags[2]/q}
set_db -quiet inst:cpu8_top/r_m_flags_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_flags_reg_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_flags_reg_3 .original_name {{r_m_flags[3]}}
set_db -quiet inst:cpu8_top/r_m_flags_reg_3 .single_bit_orig_name {r_m_flags[3]}
set_db -quiet pin:cpu8_top/r_m_flags_reg_3/Q .original_name {r_m_flags[3]/q}
set_db -quiet inst:cpu8_top/r_m_flags_write_reg .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_flags_write_reg .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_flags_write_reg .original_name r_m_flags_write
set_db -quiet inst:cpu8_top/r_m_flags_write_reg .single_bit_orig_name r_m_flags_write
set_db -quiet pin:cpu8_top/r_m_flags_write_reg/Q .original_name r_m_flags_write/q
set_db -quiet inst:cpu8_top/r_m_halt_reg .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_halt_reg .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_halt_reg .original_name r_m_halt
set_db -quiet inst:cpu8_top/r_m_halt_reg .single_bit_orig_name r_m_halt
set_db -quiet pin:cpu8_top/r_m_halt_reg/Q .original_name r_m_halt/q
set_db -quiet inst:cpu8_top/r_m_instruction_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_0 .original_name {{r_m_instruction[0]}}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_0 .single_bit_orig_name {r_m_instruction[0]}
set_db -quiet pin:cpu8_top/r_m_instruction_reg_0/Q .original_name {r_m_instruction[0]/q}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_1 .original_name {{r_m_instruction[1]}}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_1 .single_bit_orig_name {r_m_instruction[1]}
set_db -quiet pin:cpu8_top/r_m_instruction_reg_1/Q .original_name {r_m_instruction[1]/q}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_2 .original_name {{r_m_instruction[2]}}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_2 .single_bit_orig_name {r_m_instruction[2]}
set_db -quiet pin:cpu8_top/r_m_instruction_reg_2/Q .original_name {r_m_instruction[2]/q}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_3 .original_name {{r_m_instruction[3]}}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_3 .single_bit_orig_name {r_m_instruction[3]}
set_db -quiet pin:cpu8_top/r_m_instruction_reg_3/Q .original_name {r_m_instruction[3]/q}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_4 .original_name {{r_m_instruction[4]}}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_4 .single_bit_orig_name {r_m_instruction[4]}
set_db -quiet pin:cpu8_top/r_m_instruction_reg_4/Q .original_name {r_m_instruction[4]/q}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_5 .original_name {{r_m_instruction[5]}}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_5 .single_bit_orig_name {r_m_instruction[5]}
set_db -quiet pin:cpu8_top/r_m_instruction_reg_5/Q .original_name {r_m_instruction[5]/q}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_6 .original_name {{r_m_instruction[6]}}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_6 .single_bit_orig_name {r_m_instruction[6]}
set_db -quiet pin:cpu8_top/r_m_instruction_reg_6/Q .original_name {r_m_instruction[6]/q}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_7 .original_name {{r_m_instruction[7]}}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_7 .single_bit_orig_name {r_m_instruction[7]}
set_db -quiet pin:cpu8_top/r_m_instruction_reg_7/Q .original_name {r_m_instruction[7]/q}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_8 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_8 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_8 .original_name {{r_m_instruction[8]}}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_8 .single_bit_orig_name {r_m_instruction[8]}
set_db -quiet pin:cpu8_top/r_m_instruction_reg_8/Q .original_name {r_m_instruction[8]/q}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_9 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_9 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_9 .original_name {{r_m_instruction[9]}}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_9 .single_bit_orig_name {r_m_instruction[9]}
set_db -quiet pin:cpu8_top/r_m_instruction_reg_9/Q .original_name {r_m_instruction[9]/q}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_10 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_10 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_10 .original_name {{r_m_instruction[10]}}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_10 .single_bit_orig_name {r_m_instruction[10]}
set_db -quiet pin:cpu8_top/r_m_instruction_reg_10/Q .original_name {r_m_instruction[10]/q}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_11 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_11 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_11 .original_name {{r_m_instruction[11]}}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_11 .single_bit_orig_name {r_m_instruction[11]}
set_db -quiet pin:cpu8_top/r_m_instruction_reg_11/Q .original_name {r_m_instruction[11]/q}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_12 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_12 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_12 .original_name {{r_m_instruction[12]}}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_12 .single_bit_orig_name {r_m_instruction[12]}
set_db -quiet pin:cpu8_top/r_m_instruction_reg_12/Q .original_name {r_m_instruction[12]/q}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_13 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_13 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_13 .original_name {{r_m_instruction[13]}}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_13 .single_bit_orig_name {r_m_instruction[13]}
set_db -quiet pin:cpu8_top/r_m_instruction_reg_13/Q .original_name {r_m_instruction[13]/q}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_14 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_14 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_14 .original_name {{r_m_instruction[14]}}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_14 .single_bit_orig_name {r_m_instruction[14]}
set_db -quiet pin:cpu8_top/r_m_instruction_reg_14/Q .original_name {r_m_instruction[14]/q}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_15 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_15 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_instruction_reg_15 .original_name {{r_m_instruction[15]}}
set_db -quiet inst:cpu8_top/r_m_instruction_reg_15 .single_bit_orig_name {r_m_instruction[15]}
set_db -quiet pin:cpu8_top/r_m_instruction_reg_15/Q .original_name {r_m_instruction[15]/q}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_0 .original_name {{r_m_next_pc[0]}}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_0 .single_bit_orig_name {r_m_next_pc[0]}
set_db -quiet pin:cpu8_top/r_m_next_pc_reg_0/Q .original_name {r_m_next_pc[0]/q}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_1 .original_name {{r_m_next_pc[1]}}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_1 .single_bit_orig_name {r_m_next_pc[1]}
set_db -quiet pin:cpu8_top/r_m_next_pc_reg_1/Q .original_name {r_m_next_pc[1]/q}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_2 .original_name {{r_m_next_pc[2]}}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_2 .single_bit_orig_name {r_m_next_pc[2]}
set_db -quiet pin:cpu8_top/r_m_next_pc_reg_2/Q .original_name {r_m_next_pc[2]/q}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_3 .original_name {{r_m_next_pc[3]}}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_3 .single_bit_orig_name {r_m_next_pc[3]}
set_db -quiet pin:cpu8_top/r_m_next_pc_reg_3/Q .original_name {r_m_next_pc[3]/q}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_4 .original_name {{r_m_next_pc[4]}}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_4 .single_bit_orig_name {r_m_next_pc[4]}
set_db -quiet pin:cpu8_top/r_m_next_pc_reg_4/Q .original_name {r_m_next_pc[4]/q}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_5 .original_name {{r_m_next_pc[5]}}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_5 .single_bit_orig_name {r_m_next_pc[5]}
set_db -quiet pin:cpu8_top/r_m_next_pc_reg_5/Q .original_name {r_m_next_pc[5]/q}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_6 .original_name {{r_m_next_pc[6]}}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_6 .single_bit_orig_name {r_m_next_pc[6]}
set_db -quiet pin:cpu8_top/r_m_next_pc_reg_6/Q .original_name {r_m_next_pc[6]/q}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_7 .original_name {{r_m_next_pc[7]}}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_7 .single_bit_orig_name {r_m_next_pc[7]}
set_db -quiet pin:cpu8_top/r_m_next_pc_reg_7/Q .original_name {r_m_next_pc[7]/q}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_8 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_8 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_8 .original_name {{r_m_next_pc[8]}}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_8 .single_bit_orig_name {r_m_next_pc[8]}
set_db -quiet pin:cpu8_top/r_m_next_pc_reg_8/Q .original_name {r_m_next_pc[8]/q}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_9 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_9 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_9 .original_name {{r_m_next_pc[9]}}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_9 .single_bit_orig_name {r_m_next_pc[9]}
set_db -quiet pin:cpu8_top/r_m_next_pc_reg_9/Q .original_name {r_m_next_pc[9]/q}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_10 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_10 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_10 .original_name {{r_m_next_pc[10]}}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_10 .single_bit_orig_name {r_m_next_pc[10]}
set_db -quiet pin:cpu8_top/r_m_next_pc_reg_10/Q .original_name {r_m_next_pc[10]/q}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_11 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_11 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_11 .original_name {{r_m_next_pc[11]}}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_11 .single_bit_orig_name {r_m_next_pc[11]}
set_db -quiet pin:cpu8_top/r_m_next_pc_reg_11/Q .original_name {r_m_next_pc[11]/q}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_12 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_12 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_12 .original_name {{r_m_next_pc[12]}}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_12 .single_bit_orig_name {r_m_next_pc[12]}
set_db -quiet pin:cpu8_top/r_m_next_pc_reg_12/Q .original_name {r_m_next_pc[12]/q}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_13 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_13 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_13 .original_name {{r_m_next_pc[13]}}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_13 .single_bit_orig_name {r_m_next_pc[13]}
set_db -quiet pin:cpu8_top/r_m_next_pc_reg_13/Q .original_name {r_m_next_pc[13]/q}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_14 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_14 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_14 .original_name {{r_m_next_pc[14]}}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_14 .single_bit_orig_name {r_m_next_pc[14]}
set_db -quiet pin:cpu8_top/r_m_next_pc_reg_14/Q .original_name {r_m_next_pc[14]/q}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_15 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_15 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_15 .original_name {{r_m_next_pc[15]}}
set_db -quiet inst:cpu8_top/r_m_next_pc_reg_15 .single_bit_orig_name {r_m_next_pc[15]}
set_db -quiet pin:cpu8_top/r_m_next_pc_reg_15/Q .original_name {r_m_next_pc[15]/q}
set_db -quiet inst:cpu8_top/r_m_pc_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_pc_reg_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_pc_reg_0 .original_name {{r_m_pc[0]}}
set_db -quiet inst:cpu8_top/r_m_pc_reg_0 .single_bit_orig_name {r_m_pc[0]}
set_db -quiet pin:cpu8_top/r_m_pc_reg_0/Q .original_name {r_m_pc[0]/q}
set_db -quiet inst:cpu8_top/r_m_pc_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_pc_reg_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_pc_reg_1 .original_name {{r_m_pc[1]}}
set_db -quiet inst:cpu8_top/r_m_pc_reg_1 .single_bit_orig_name {r_m_pc[1]}
set_db -quiet pin:cpu8_top/r_m_pc_reg_1/Q .original_name {r_m_pc[1]/q}
set_db -quiet inst:cpu8_top/r_m_pc_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_pc_reg_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_pc_reg_2 .original_name {{r_m_pc[2]}}
set_db -quiet inst:cpu8_top/r_m_pc_reg_2 .single_bit_orig_name {r_m_pc[2]}
set_db -quiet pin:cpu8_top/r_m_pc_reg_2/Q .original_name {r_m_pc[2]/q}
set_db -quiet inst:cpu8_top/r_m_pc_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_pc_reg_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_pc_reg_3 .original_name {{r_m_pc[3]}}
set_db -quiet inst:cpu8_top/r_m_pc_reg_3 .single_bit_orig_name {r_m_pc[3]}
set_db -quiet pin:cpu8_top/r_m_pc_reg_3/Q .original_name {r_m_pc[3]/q}
set_db -quiet inst:cpu8_top/r_m_pc_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_pc_reg_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_pc_reg_4 .original_name {{r_m_pc[4]}}
set_db -quiet inst:cpu8_top/r_m_pc_reg_4 .single_bit_orig_name {r_m_pc[4]}
set_db -quiet pin:cpu8_top/r_m_pc_reg_4/Q .original_name {r_m_pc[4]/q}
set_db -quiet inst:cpu8_top/r_m_pc_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_pc_reg_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_pc_reg_5 .original_name {{r_m_pc[5]}}
set_db -quiet inst:cpu8_top/r_m_pc_reg_5 .single_bit_orig_name {r_m_pc[5]}
set_db -quiet pin:cpu8_top/r_m_pc_reg_5/Q .original_name {r_m_pc[5]/q}
set_db -quiet inst:cpu8_top/r_m_pc_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_pc_reg_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_pc_reg_6 .original_name {{r_m_pc[6]}}
set_db -quiet inst:cpu8_top/r_m_pc_reg_6 .single_bit_orig_name {r_m_pc[6]}
set_db -quiet pin:cpu8_top/r_m_pc_reg_6/Q .original_name {r_m_pc[6]/q}
set_db -quiet inst:cpu8_top/r_m_pc_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_pc_reg_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_pc_reg_7 .original_name {{r_m_pc[7]}}
set_db -quiet inst:cpu8_top/r_m_pc_reg_7 .single_bit_orig_name {r_m_pc[7]}
set_db -quiet pin:cpu8_top/r_m_pc_reg_7/Q .original_name {r_m_pc[7]/q}
set_db -quiet inst:cpu8_top/r_m_pc_reg_8 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_pc_reg_8 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_pc_reg_8 .original_name {{r_m_pc[8]}}
set_db -quiet inst:cpu8_top/r_m_pc_reg_8 .single_bit_orig_name {r_m_pc[8]}
set_db -quiet pin:cpu8_top/r_m_pc_reg_8/Q .original_name {r_m_pc[8]/q}
set_db -quiet inst:cpu8_top/r_m_pc_reg_9 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_pc_reg_9 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_pc_reg_9 .original_name {{r_m_pc[9]}}
set_db -quiet inst:cpu8_top/r_m_pc_reg_9 .single_bit_orig_name {r_m_pc[9]}
set_db -quiet pin:cpu8_top/r_m_pc_reg_9/Q .original_name {r_m_pc[9]/q}
set_db -quiet inst:cpu8_top/r_m_pc_reg_10 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_pc_reg_10 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_pc_reg_10 .original_name {{r_m_pc[10]}}
set_db -quiet inst:cpu8_top/r_m_pc_reg_10 .single_bit_orig_name {r_m_pc[10]}
set_db -quiet pin:cpu8_top/r_m_pc_reg_10/Q .original_name {r_m_pc[10]/q}
set_db -quiet inst:cpu8_top/r_m_pc_reg_11 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_pc_reg_11 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_pc_reg_11 .original_name {{r_m_pc[11]}}
set_db -quiet inst:cpu8_top/r_m_pc_reg_11 .single_bit_orig_name {r_m_pc[11]}
set_db -quiet pin:cpu8_top/r_m_pc_reg_11/Q .original_name {r_m_pc[11]/q}
set_db -quiet inst:cpu8_top/r_m_pc_reg_12 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_pc_reg_12 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_pc_reg_12 .original_name {{r_m_pc[12]}}
set_db -quiet inst:cpu8_top/r_m_pc_reg_12 .single_bit_orig_name {r_m_pc[12]}
set_db -quiet pin:cpu8_top/r_m_pc_reg_12/Q .original_name {r_m_pc[12]/q}
set_db -quiet inst:cpu8_top/r_m_pc_reg_13 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_pc_reg_13 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_pc_reg_13 .original_name {{r_m_pc[13]}}
set_db -quiet inst:cpu8_top/r_m_pc_reg_13 .single_bit_orig_name {r_m_pc[13]}
set_db -quiet pin:cpu8_top/r_m_pc_reg_13/Q .original_name {r_m_pc[13]/q}
set_db -quiet inst:cpu8_top/r_m_pc_reg_14 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_pc_reg_14 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_pc_reg_14 .original_name {{r_m_pc[14]}}
set_db -quiet inst:cpu8_top/r_m_pc_reg_14 .single_bit_orig_name {r_m_pc[14]}
set_db -quiet pin:cpu8_top/r_m_pc_reg_14/Q .original_name {r_m_pc[14]/q}
set_db -quiet inst:cpu8_top/r_m_pc_reg_15 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_pc_reg_15 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_pc_reg_15 .original_name {{r_m_pc[15]}}
set_db -quiet inst:cpu8_top/r_m_pc_reg_15 .single_bit_orig_name {r_m_pc[15]}
set_db -quiet pin:cpu8_top/r_m_pc_reg_15/Q .original_name {r_m_pc[15]/q}
set_db -quiet inst:cpu8_top/r_m_reg_write_reg .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_reg_write_reg .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_reg_write_reg .original_name r_m_reg_write
set_db -quiet inst:cpu8_top/r_m_reg_write_reg .single_bit_orig_name r_m_reg_write
set_db -quiet pin:cpu8_top/r_m_reg_write_reg/Q .original_name r_m_reg_write/q
set_db -quiet inst:cpu8_top/r_m_result_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_result_reg_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_result_reg_0 .original_name {{r_m_result[0]}}
set_db -quiet inst:cpu8_top/r_m_result_reg_0 .single_bit_orig_name {r_m_result[0]}
set_db -quiet pin:cpu8_top/r_m_result_reg_0/Q .original_name {r_m_result[0]/q}
set_db -quiet inst:cpu8_top/r_m_result_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_result_reg_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_result_reg_1 .original_name {{r_m_result[1]}}
set_db -quiet inst:cpu8_top/r_m_result_reg_1 .single_bit_orig_name {r_m_result[1]}
set_db -quiet pin:cpu8_top/r_m_result_reg_1/Q .original_name {r_m_result[1]/q}
set_db -quiet inst:cpu8_top/r_m_result_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_result_reg_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_result_reg_2 .original_name {{r_m_result[2]}}
set_db -quiet inst:cpu8_top/r_m_result_reg_2 .single_bit_orig_name {r_m_result[2]}
set_db -quiet pin:cpu8_top/r_m_result_reg_2/Q .original_name {r_m_result[2]/q}
set_db -quiet inst:cpu8_top/r_m_result_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_result_reg_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_result_reg_3 .original_name {{r_m_result[3]}}
set_db -quiet inst:cpu8_top/r_m_result_reg_3 .single_bit_orig_name {r_m_result[3]}
set_db -quiet pin:cpu8_top/r_m_result_reg_3/Q .original_name {r_m_result[3]/q}
set_db -quiet inst:cpu8_top/r_m_result_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_result_reg_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_result_reg_4 .original_name {{r_m_result[4]}}
set_db -quiet inst:cpu8_top/r_m_result_reg_4 .single_bit_orig_name {r_m_result[4]}
set_db -quiet pin:cpu8_top/r_m_result_reg_4/Q .original_name {r_m_result[4]/q}
set_db -quiet inst:cpu8_top/r_m_result_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_result_reg_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_result_reg_5 .original_name {{r_m_result[5]}}
set_db -quiet inst:cpu8_top/r_m_result_reg_5 .single_bit_orig_name {r_m_result[5]}
set_db -quiet pin:cpu8_top/r_m_result_reg_5/Q .original_name {r_m_result[5]/q}
set_db -quiet inst:cpu8_top/r_m_result_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_result_reg_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_result_reg_6 .original_name {{r_m_result[6]}}
set_db -quiet inst:cpu8_top/r_m_result_reg_6 .single_bit_orig_name {r_m_result[6]}
set_db -quiet pin:cpu8_top/r_m_result_reg_6/Q .original_name {r_m_result[6]/q}
set_db -quiet inst:cpu8_top/r_m_result_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_result_reg_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_result_reg_7 .original_name {{r_m_result[7]}}
set_db -quiet inst:cpu8_top/r_m_result_reg_7 .single_bit_orig_name {r_m_result[7]}
set_db -quiet pin:cpu8_top/r_m_result_reg_7/Q .original_name {r_m_result[7]/q}
set_db -quiet inst:cpu8_top/r_m_store_data_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_store_data_reg_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_store_data_reg_0 .original_name {{r_m_store_data[0]}}
set_db -quiet inst:cpu8_top/r_m_store_data_reg_0 .single_bit_orig_name {r_m_store_data[0]}
set_db -quiet pin:cpu8_top/r_m_store_data_reg_0/Q .original_name {r_m_store_data[0]/q}
set_db -quiet inst:cpu8_top/r_m_store_data_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_store_data_reg_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_store_data_reg_1 .original_name {{r_m_store_data[1]}}
set_db -quiet inst:cpu8_top/r_m_store_data_reg_1 .single_bit_orig_name {r_m_store_data[1]}
set_db -quiet pin:cpu8_top/r_m_store_data_reg_1/Q .original_name {r_m_store_data[1]/q}
set_db -quiet inst:cpu8_top/r_m_store_data_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_store_data_reg_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_store_data_reg_2 .original_name {{r_m_store_data[2]}}
set_db -quiet inst:cpu8_top/r_m_store_data_reg_2 .single_bit_orig_name {r_m_store_data[2]}
set_db -quiet pin:cpu8_top/r_m_store_data_reg_2/Q .original_name {r_m_store_data[2]/q}
set_db -quiet inst:cpu8_top/r_m_store_data_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_store_data_reg_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_store_data_reg_3 .original_name {{r_m_store_data[3]}}
set_db -quiet inst:cpu8_top/r_m_store_data_reg_3 .single_bit_orig_name {r_m_store_data[3]}
set_db -quiet pin:cpu8_top/r_m_store_data_reg_3/Q .original_name {r_m_store_data[3]/q}
set_db -quiet inst:cpu8_top/r_m_store_data_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_store_data_reg_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_store_data_reg_4 .original_name {{r_m_store_data[4]}}
set_db -quiet inst:cpu8_top/r_m_store_data_reg_4 .single_bit_orig_name {r_m_store_data[4]}
set_db -quiet pin:cpu8_top/r_m_store_data_reg_4/Q .original_name {r_m_store_data[4]/q}
set_db -quiet inst:cpu8_top/r_m_store_data_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_store_data_reg_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_store_data_reg_5 .original_name {{r_m_store_data[5]}}
set_db -quiet inst:cpu8_top/r_m_store_data_reg_5 .single_bit_orig_name {r_m_store_data[5]}
set_db -quiet pin:cpu8_top/r_m_store_data_reg_5/Q .original_name {r_m_store_data[5]/q}
set_db -quiet inst:cpu8_top/r_m_store_data_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_store_data_reg_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_store_data_reg_6 .original_name {{r_m_store_data[6]}}
set_db -quiet inst:cpu8_top/r_m_store_data_reg_6 .single_bit_orig_name {r_m_store_data[6]}
set_db -quiet pin:cpu8_top/r_m_store_data_reg_6/Q .original_name {r_m_store_data[6]/q}
set_db -quiet inst:cpu8_top/r_m_store_data_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_store_data_reg_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_store_data_reg_7 .original_name {{r_m_store_data[7]}}
set_db -quiet inst:cpu8_top/r_m_store_data_reg_7 .single_bit_orig_name {r_m_store_data[7]}
set_db -quiet pin:cpu8_top/r_m_store_data_reg_7/Q .original_name {r_m_store_data[7]/q}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_0 .original_name {{r_m_x_data[0]}}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_0 .single_bit_orig_name {r_m_x_data[0]}
set_db -quiet pin:cpu8_top/r_m_x_data_reg_0/Q .original_name {r_m_x_data[0]/q}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_1 .original_name {{r_m_x_data[1]}}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_1 .single_bit_orig_name {r_m_x_data[1]}
set_db -quiet pin:cpu8_top/r_m_x_data_reg_1/Q .original_name {r_m_x_data[1]/q}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_2 .original_name {{r_m_x_data[2]}}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_2 .single_bit_orig_name {r_m_x_data[2]}
set_db -quiet pin:cpu8_top/r_m_x_data_reg_2/Q .original_name {r_m_x_data[2]/q}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_3 .original_name {{r_m_x_data[3]}}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_3 .single_bit_orig_name {r_m_x_data[3]}
set_db -quiet pin:cpu8_top/r_m_x_data_reg_3/Q .original_name {r_m_x_data[3]/q}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_4 .original_name {{r_m_x_data[4]}}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_4 .single_bit_orig_name {r_m_x_data[4]}
set_db -quiet pin:cpu8_top/r_m_x_data_reg_4/Q .original_name {r_m_x_data[4]/q}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_5 .original_name {{r_m_x_data[5]}}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_5 .single_bit_orig_name {r_m_x_data[5]}
set_db -quiet pin:cpu8_top/r_m_x_data_reg_5/Q .original_name {r_m_x_data[5]/q}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_6 .original_name {{r_m_x_data[6]}}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_6 .single_bit_orig_name {r_m_x_data[6]}
set_db -quiet pin:cpu8_top/r_m_x_data_reg_6/Q .original_name {r_m_x_data[6]/q}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_7 .original_name {{r_m_x_data[7]}}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_7 .single_bit_orig_name {r_m_x_data[7]}
set_db -quiet pin:cpu8_top/r_m_x_data_reg_7/Q .original_name {r_m_x_data[7]/q}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_8 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_8 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_8 .original_name {{r_m_x_data[8]}}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_8 .single_bit_orig_name {r_m_x_data[8]}
set_db -quiet pin:cpu8_top/r_m_x_data_reg_8/Q .original_name {r_m_x_data[8]/q}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_9 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_9 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_9 .original_name {{r_m_x_data[9]}}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_9 .single_bit_orig_name {r_m_x_data[9]}
set_db -quiet pin:cpu8_top/r_m_x_data_reg_9/Q .original_name {r_m_x_data[9]/q}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_10 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_10 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_10 .original_name {{r_m_x_data[10]}}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_10 .single_bit_orig_name {r_m_x_data[10]}
set_db -quiet pin:cpu8_top/r_m_x_data_reg_10/Q .original_name {r_m_x_data[10]/q}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_11 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_11 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_11 .original_name {{r_m_x_data[11]}}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_11 .single_bit_orig_name {r_m_x_data[11]}
set_db -quiet pin:cpu8_top/r_m_x_data_reg_11/Q .original_name {r_m_x_data[11]/q}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_12 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_12 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_12 .original_name {{r_m_x_data[12]}}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_12 .single_bit_orig_name {r_m_x_data[12]}
set_db -quiet pin:cpu8_top/r_m_x_data_reg_12/Q .original_name {r_m_x_data[12]/q}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_13 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_13 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_13 .original_name {{r_m_x_data[13]}}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_13 .single_bit_orig_name {r_m_x_data[13]}
set_db -quiet pin:cpu8_top/r_m_x_data_reg_13/Q .original_name {r_m_x_data[13]/q}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_15 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_15 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_15 .original_name {{r_m_x_data[15]}}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_15 .single_bit_orig_name {r_m_x_data[15]}
set_db -quiet pin:cpu8_top/r_m_x_data_reg_15/Q .original_name {r_m_x_data[15]/q}
set_db -quiet inst:cpu8_top/r_m_x_write_reg .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_x_write_reg .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_x_write_reg .original_name r_m_x_write
set_db -quiet inst:cpu8_top/r_m_x_write_reg .single_bit_orig_name r_m_x_write
set_db -quiet pin:cpu8_top/r_m_x_write_reg/Q .original_name r_m_x_write/q
set_db -quiet inst:cpu8_top/r_sk_error_reg .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_error_reg .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_error_reg .original_name r_sk_error
set_db -quiet inst:cpu8_top/r_sk_error_reg .single_bit_orig_name r_sk_error
set_db -quiet pin:cpu8_top/r_sk_error_reg/Q .original_name r_sk_error/q
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_0 .original_name {{r_sk_instruction[0]}}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_0 .single_bit_orig_name {r_sk_instruction[0]}
set_db -quiet pin:cpu8_top/r_sk_instruction_reg_0/Q .original_name {r_sk_instruction[0]/q}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_1 .original_name {{r_sk_instruction[1]}}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_1 .single_bit_orig_name {r_sk_instruction[1]}
set_db -quiet pin:cpu8_top/r_sk_instruction_reg_1/Q .original_name {r_sk_instruction[1]/q}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_2 .original_name {{r_sk_instruction[2]}}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_2 .single_bit_orig_name {r_sk_instruction[2]}
set_db -quiet pin:cpu8_top/r_sk_instruction_reg_2/Q .original_name {r_sk_instruction[2]/q}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_3 .original_name {{r_sk_instruction[3]}}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_3 .single_bit_orig_name {r_sk_instruction[3]}
set_db -quiet pin:cpu8_top/r_sk_instruction_reg_3/Q .original_name {r_sk_instruction[3]/q}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_4 .original_name {{r_sk_instruction[4]}}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_4 .single_bit_orig_name {r_sk_instruction[4]}
set_db -quiet pin:cpu8_top/r_sk_instruction_reg_4/Q .original_name {r_sk_instruction[4]/q}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_5 .original_name {{r_sk_instruction[5]}}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_5 .single_bit_orig_name {r_sk_instruction[5]}
set_db -quiet pin:cpu8_top/r_sk_instruction_reg_5/Q .original_name {r_sk_instruction[5]/q}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_6 .original_name {{r_sk_instruction[6]}}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_6 .single_bit_orig_name {r_sk_instruction[6]}
set_db -quiet pin:cpu8_top/r_sk_instruction_reg_6/Q .original_name {r_sk_instruction[6]/q}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_7 .original_name {{r_sk_instruction[7]}}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_7 .single_bit_orig_name {r_sk_instruction[7]}
set_db -quiet pin:cpu8_top/r_sk_instruction_reg_7/Q .original_name {r_sk_instruction[7]/q}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_8 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_8 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_8 .original_name {{r_sk_instruction[8]}}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_8 .single_bit_orig_name {r_sk_instruction[8]}
set_db -quiet pin:cpu8_top/r_sk_instruction_reg_8/Q .original_name {r_sk_instruction[8]/q}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_9 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_9 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_9 .original_name {{r_sk_instruction[9]}}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_9 .single_bit_orig_name {r_sk_instruction[9]}
set_db -quiet pin:cpu8_top/r_sk_instruction_reg_9/Q .original_name {r_sk_instruction[9]/q}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_10 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_10 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_10 .original_name {{r_sk_instruction[10]}}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_10 .single_bit_orig_name {r_sk_instruction[10]}
set_db -quiet pin:cpu8_top/r_sk_instruction_reg_10/Q .original_name {r_sk_instruction[10]/q}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_11 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_11 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_11 .original_name {{r_sk_instruction[11]}}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_11 .single_bit_orig_name {r_sk_instruction[11]}
set_db -quiet pin:cpu8_top/r_sk_instruction_reg_11/Q .original_name {r_sk_instruction[11]/q}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_12 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_12 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_12 .original_name {{r_sk_instruction[12]}}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_12 .single_bit_orig_name {r_sk_instruction[12]}
set_db -quiet pin:cpu8_top/r_sk_instruction_reg_12/Q .original_name {r_sk_instruction[12]/q}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_13 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_13 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_13 .original_name {{r_sk_instruction[13]}}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_13 .single_bit_orig_name {r_sk_instruction[13]}
set_db -quiet pin:cpu8_top/r_sk_instruction_reg_13/Q .original_name {r_sk_instruction[13]/q}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_14 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_14 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_14 .original_name {{r_sk_instruction[14]}}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_14 .single_bit_orig_name {r_sk_instruction[14]}
set_db -quiet pin:cpu8_top/r_sk_instruction_reg_14/Q .original_name {r_sk_instruction[14]/q}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_15 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_15 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_15 .original_name {{r_sk_instruction[15]}}
set_db -quiet inst:cpu8_top/r_sk_instruction_reg_15 .single_bit_orig_name {r_sk_instruction[15]}
set_db -quiet pin:cpu8_top/r_sk_instruction_reg_15/Q .original_name {r_sk_instruction[15]/q}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_0 .original_name {{r_sk_pc[0]}}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_0 .single_bit_orig_name {r_sk_pc[0]}
set_db -quiet pin:cpu8_top/r_sk_pc_reg_0/Q .original_name {r_sk_pc[0]/q}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_1 .original_name {{r_sk_pc[1]}}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_1 .single_bit_orig_name {r_sk_pc[1]}
set_db -quiet pin:cpu8_top/r_sk_pc_reg_1/Q .original_name {r_sk_pc[1]/q}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_2 .original_name {{r_sk_pc[2]}}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_2 .single_bit_orig_name {r_sk_pc[2]}
set_db -quiet pin:cpu8_top/r_sk_pc_reg_2/Q .original_name {r_sk_pc[2]/q}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_3 .original_name {{r_sk_pc[3]}}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_3 .single_bit_orig_name {r_sk_pc[3]}
set_db -quiet pin:cpu8_top/r_sk_pc_reg_3/Q .original_name {r_sk_pc[3]/q}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_4 .original_name {{r_sk_pc[4]}}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_4 .single_bit_orig_name {r_sk_pc[4]}
set_db -quiet pin:cpu8_top/r_sk_pc_reg_4/Q .original_name {r_sk_pc[4]/q}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_5 .original_name {{r_sk_pc[5]}}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_5 .single_bit_orig_name {r_sk_pc[5]}
set_db -quiet pin:cpu8_top/r_sk_pc_reg_5/Q .original_name {r_sk_pc[5]/q}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_6 .original_name {{r_sk_pc[6]}}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_6 .single_bit_orig_name {r_sk_pc[6]}
set_db -quiet pin:cpu8_top/r_sk_pc_reg_6/Q .original_name {r_sk_pc[6]/q}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_7 .original_name {{r_sk_pc[7]}}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_7 .single_bit_orig_name {r_sk_pc[7]}
set_db -quiet pin:cpu8_top/r_sk_pc_reg_7/Q .original_name {r_sk_pc[7]/q}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_8 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_8 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_8 .original_name {{r_sk_pc[8]}}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_8 .single_bit_orig_name {r_sk_pc[8]}
set_db -quiet pin:cpu8_top/r_sk_pc_reg_8/Q .original_name {r_sk_pc[8]/q}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_9 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_9 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_9 .original_name {{r_sk_pc[9]}}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_9 .single_bit_orig_name {r_sk_pc[9]}
set_db -quiet pin:cpu8_top/r_sk_pc_reg_9/Q .original_name {r_sk_pc[9]/q}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_10 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_10 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_10 .original_name {{r_sk_pc[10]}}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_10 .single_bit_orig_name {r_sk_pc[10]}
set_db -quiet pin:cpu8_top/r_sk_pc_reg_10/Q .original_name {r_sk_pc[10]/q}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_11 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_11 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_11 .original_name {{r_sk_pc[11]}}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_11 .single_bit_orig_name {r_sk_pc[11]}
set_db -quiet pin:cpu8_top/r_sk_pc_reg_11/Q .original_name {r_sk_pc[11]/q}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_12 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_12 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_12 .original_name {{r_sk_pc[12]}}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_12 .single_bit_orig_name {r_sk_pc[12]}
set_db -quiet pin:cpu8_top/r_sk_pc_reg_12/Q .original_name {r_sk_pc[12]/q}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_13 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_13 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_13 .original_name {{r_sk_pc[13]}}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_13 .single_bit_orig_name {r_sk_pc[13]}
set_db -quiet pin:cpu8_top/r_sk_pc_reg_13/Q .original_name {r_sk_pc[13]/q}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_14 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_14 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_14 .original_name {{r_sk_pc[14]}}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_14 .single_bit_orig_name {r_sk_pc[14]}
set_db -quiet pin:cpu8_top/r_sk_pc_reg_14/Q .original_name {r_sk_pc[14]/q}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_15 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_15 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_pc_reg_15 .original_name {{r_sk_pc[15]}}
set_db -quiet inst:cpu8_top/r_sk_pc_reg_15 .single_bit_orig_name {r_sk_pc[15]}
set_db -quiet pin:cpu8_top/r_sk_pc_reg_15/Q .original_name {r_sk_pc[15]/q}
set_db -quiet inst:cpu8_top/r_sk_valid_reg .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_sk_valid_reg .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_sk_valid_reg .original_name r_sk_valid
set_db -quiet inst:cpu8_top/r_sk_valid_reg .single_bit_orig_name r_sk_valid
set_db -quiet pin:cpu8_top/r_sk_valid_reg/Q .original_name r_sk_valid/q
set_db -quiet inst:cpu8_top/r_stop_fetch_reg .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_stop_fetch_reg .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_stop_fetch_reg .original_name r_stop_fetch
set_db -quiet inst:cpu8_top/r_stop_fetch_reg .single_bit_orig_name r_stop_fetch
set_db -quiet pin:cpu8_top/r_stop_fetch_reg/Q .original_name r_stop_fetch/q
set_db -quiet inst:cpu8_top/r_x0_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x0_reg_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x0_reg_0 .original_name {{r_x0[0]}}
set_db -quiet inst:cpu8_top/r_x0_reg_0 .single_bit_orig_name {r_x0[0]}
set_db -quiet pin:cpu8_top/r_x0_reg_0/Q .original_name {r_x0[0]/q}
set_db -quiet inst:cpu8_top/r_x0_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x0_reg_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x0_reg_1 .original_name {{r_x0[1]}}
set_db -quiet inst:cpu8_top/r_x0_reg_1 .single_bit_orig_name {r_x0[1]}
set_db -quiet pin:cpu8_top/r_x0_reg_1/Q .original_name {r_x0[1]/q}
set_db -quiet inst:cpu8_top/r_x0_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x0_reg_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x0_reg_2 .original_name {{r_x0[2]}}
set_db -quiet inst:cpu8_top/r_x0_reg_2 .single_bit_orig_name {r_x0[2]}
set_db -quiet pin:cpu8_top/r_x0_reg_2/Q .original_name {r_x0[2]/q}
set_db -quiet inst:cpu8_top/r_x0_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x0_reg_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x0_reg_3 .original_name {{r_x0[3]}}
set_db -quiet inst:cpu8_top/r_x0_reg_3 .single_bit_orig_name {r_x0[3]}
set_db -quiet pin:cpu8_top/r_x0_reg_3/Q .original_name {r_x0[3]/q}
set_db -quiet inst:cpu8_top/r_x0_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x0_reg_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x0_reg_4 .original_name {{r_x0[4]}}
set_db -quiet inst:cpu8_top/r_x0_reg_4 .single_bit_orig_name {r_x0[4]}
set_db -quiet pin:cpu8_top/r_x0_reg_4/Q .original_name {r_x0[4]/q}
set_db -quiet inst:cpu8_top/r_x0_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x0_reg_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x0_reg_5 .original_name {{r_x0[5]}}
set_db -quiet inst:cpu8_top/r_x0_reg_5 .single_bit_orig_name {r_x0[5]}
set_db -quiet pin:cpu8_top/r_x0_reg_5/Q .original_name {r_x0[5]/q}
set_db -quiet inst:cpu8_top/r_x0_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x0_reg_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x0_reg_6 .original_name {{r_x0[6]}}
set_db -quiet inst:cpu8_top/r_x0_reg_6 .single_bit_orig_name {r_x0[6]}
set_db -quiet pin:cpu8_top/r_x0_reg_6/Q .original_name {r_x0[6]/q}
set_db -quiet inst:cpu8_top/r_x0_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x0_reg_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x0_reg_7 .original_name {{r_x0[7]}}
set_db -quiet inst:cpu8_top/r_x0_reg_7 .single_bit_orig_name {r_x0[7]}
set_db -quiet pin:cpu8_top/r_x0_reg_7/Q .original_name {r_x0[7]/q}
set_db -quiet inst:cpu8_top/r_x0_reg_8 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x0_reg_8 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x0_reg_8 .original_name {{r_x0[8]}}
set_db -quiet inst:cpu8_top/r_x0_reg_8 .single_bit_orig_name {r_x0[8]}
set_db -quiet pin:cpu8_top/r_x0_reg_8/Q .original_name {r_x0[8]/q}
set_db -quiet inst:cpu8_top/r_x0_reg_9 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x0_reg_9 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x0_reg_9 .original_name {{r_x0[9]}}
set_db -quiet inst:cpu8_top/r_x0_reg_9 .single_bit_orig_name {r_x0[9]}
set_db -quiet pin:cpu8_top/r_x0_reg_9/Q .original_name {r_x0[9]/q}
set_db -quiet inst:cpu8_top/r_x0_reg_10 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x0_reg_10 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x0_reg_10 .original_name {{r_x0[10]}}
set_db -quiet inst:cpu8_top/r_x0_reg_10 .single_bit_orig_name {r_x0[10]}
set_db -quiet pin:cpu8_top/r_x0_reg_10/Q .original_name {r_x0[10]/q}
set_db -quiet inst:cpu8_top/r_x0_reg_11 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x0_reg_11 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x0_reg_11 .original_name {{r_x0[11]}}
set_db -quiet inst:cpu8_top/r_x0_reg_11 .single_bit_orig_name {r_x0[11]}
set_db -quiet pin:cpu8_top/r_x0_reg_11/Q .original_name {r_x0[11]/q}
set_db -quiet inst:cpu8_top/r_x0_reg_12 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x0_reg_12 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x0_reg_12 .original_name {{r_x0[12]}}
set_db -quiet inst:cpu8_top/r_x0_reg_12 .single_bit_orig_name {r_x0[12]}
set_db -quiet pin:cpu8_top/r_x0_reg_12/Q .original_name {r_x0[12]/q}
set_db -quiet inst:cpu8_top/r_x0_reg_13 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x0_reg_13 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x0_reg_13 .original_name {{r_x0[13]}}
set_db -quiet inst:cpu8_top/r_x0_reg_13 .single_bit_orig_name {r_x0[13]}
set_db -quiet pin:cpu8_top/r_x0_reg_13/Q .original_name {r_x0[13]/q}
set_db -quiet inst:cpu8_top/r_x0_reg_14 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x0_reg_14 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x0_reg_14 .original_name {{r_x0[14]}}
set_db -quiet inst:cpu8_top/r_x0_reg_14 .single_bit_orig_name {r_x0[14]}
set_db -quiet pin:cpu8_top/r_x0_reg_14/Q .original_name {r_x0[14]/q}
set_db -quiet inst:cpu8_top/r_x0_reg_15 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x0_reg_15 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x0_reg_15 .original_name {{r_x0[15]}}
set_db -quiet inst:cpu8_top/r_x0_reg_15 .single_bit_orig_name {r_x0[15]}
set_db -quiet pin:cpu8_top/r_x0_reg_15/Q .original_name {r_x0[15]/q}
set_db -quiet inst:cpu8_top/r_x1_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x1_reg_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x1_reg_0 .original_name {{r_x1[0]}}
set_db -quiet inst:cpu8_top/r_x1_reg_0 .single_bit_orig_name {r_x1[0]}
set_db -quiet pin:cpu8_top/r_x1_reg_0/Q .original_name {r_x1[0]/q}
set_db -quiet inst:cpu8_top/r_x1_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x1_reg_1 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x1_reg_1 .original_name {{r_x1[1]}}
set_db -quiet inst:cpu8_top/r_x1_reg_1 .single_bit_orig_name {r_x1[1]}
set_db -quiet pin:cpu8_top/r_x1_reg_1/Q .original_name {r_x1[1]/q}
set_db -quiet inst:cpu8_top/r_x1_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x1_reg_2 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x1_reg_2 .original_name {{r_x1[2]}}
set_db -quiet inst:cpu8_top/r_x1_reg_2 .single_bit_orig_name {r_x1[2]}
set_db -quiet pin:cpu8_top/r_x1_reg_2/Q .original_name {r_x1[2]/q}
set_db -quiet inst:cpu8_top/r_x1_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x1_reg_3 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x1_reg_3 .original_name {{r_x1[3]}}
set_db -quiet inst:cpu8_top/r_x1_reg_3 .single_bit_orig_name {r_x1[3]}
set_db -quiet pin:cpu8_top/r_x1_reg_3/Q .original_name {r_x1[3]/q}
set_db -quiet inst:cpu8_top/r_x1_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x1_reg_4 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x1_reg_4 .original_name {{r_x1[4]}}
set_db -quiet inst:cpu8_top/r_x1_reg_4 .single_bit_orig_name {r_x1[4]}
set_db -quiet pin:cpu8_top/r_x1_reg_4/Q .original_name {r_x1[4]/q}
set_db -quiet inst:cpu8_top/r_x1_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x1_reg_5 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x1_reg_5 .original_name {{r_x1[5]}}
set_db -quiet inst:cpu8_top/r_x1_reg_5 .single_bit_orig_name {r_x1[5]}
set_db -quiet pin:cpu8_top/r_x1_reg_5/Q .original_name {r_x1[5]/q}
set_db -quiet inst:cpu8_top/r_x1_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x1_reg_6 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x1_reg_6 .original_name {{r_x1[6]}}
set_db -quiet inst:cpu8_top/r_x1_reg_6 .single_bit_orig_name {r_x1[6]}
set_db -quiet pin:cpu8_top/r_x1_reg_6/Q .original_name {r_x1[6]/q}
set_db -quiet inst:cpu8_top/r_x1_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x1_reg_7 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x1_reg_7 .original_name {{r_x1[7]}}
set_db -quiet inst:cpu8_top/r_x1_reg_7 .single_bit_orig_name {r_x1[7]}
set_db -quiet pin:cpu8_top/r_x1_reg_7/Q .original_name {r_x1[7]/q}
set_db -quiet inst:cpu8_top/r_x1_reg_8 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x1_reg_8 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x1_reg_8 .original_name {{r_x1[8]}}
set_db -quiet inst:cpu8_top/r_x1_reg_8 .single_bit_orig_name {r_x1[8]}
set_db -quiet pin:cpu8_top/r_x1_reg_8/Q .original_name {r_x1[8]/q}
set_db -quiet inst:cpu8_top/r_x1_reg_9 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x1_reg_9 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x1_reg_9 .original_name {{r_x1[9]}}
set_db -quiet inst:cpu8_top/r_x1_reg_9 .single_bit_orig_name {r_x1[9]}
set_db -quiet pin:cpu8_top/r_x1_reg_9/Q .original_name {r_x1[9]/q}
set_db -quiet inst:cpu8_top/r_x1_reg_10 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x1_reg_10 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x1_reg_10 .original_name {{r_x1[10]}}
set_db -quiet inst:cpu8_top/r_x1_reg_10 .single_bit_orig_name {r_x1[10]}
set_db -quiet pin:cpu8_top/r_x1_reg_10/Q .original_name {r_x1[10]/q}
set_db -quiet inst:cpu8_top/r_x1_reg_11 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x1_reg_11 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x1_reg_11 .original_name {{r_x1[11]}}
set_db -quiet inst:cpu8_top/r_x1_reg_11 .single_bit_orig_name {r_x1[11]}
set_db -quiet pin:cpu8_top/r_x1_reg_11/Q .original_name {r_x1[11]/q}
set_db -quiet inst:cpu8_top/r_x1_reg_12 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x1_reg_12 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x1_reg_12 .original_name {{r_x1[12]}}
set_db -quiet inst:cpu8_top/r_x1_reg_12 .single_bit_orig_name {r_x1[12]}
set_db -quiet pin:cpu8_top/r_x1_reg_12/Q .original_name {r_x1[12]/q}
set_db -quiet inst:cpu8_top/r_x1_reg_13 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x1_reg_13 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x1_reg_13 .original_name {{r_x1[13]}}
set_db -quiet inst:cpu8_top/r_x1_reg_13 .single_bit_orig_name {r_x1[13]}
set_db -quiet pin:cpu8_top/r_x1_reg_13/Q .original_name {r_x1[13]/q}
set_db -quiet inst:cpu8_top/r_x1_reg_14 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x1_reg_14 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x1_reg_14 .original_name {{r_x1[14]}}
set_db -quiet inst:cpu8_top/r_x1_reg_14 .single_bit_orig_name {r_x1[14]}
set_db -quiet pin:cpu8_top/r_x1_reg_14/Q .original_name {r_x1[14]/q}
set_db -quiet inst:cpu8_top/r_x1_reg_15 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_x1_reg_15 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_x1_reg_15 .original_name {{r_x1[15]}}
set_db -quiet inst:cpu8_top/r_x1_reg_15 .single_bit_orig_name {r_x1[15]}
set_db -quiet pin:cpu8_top/r_x1_reg_15/Q .original_name {r_x1[15]/q}
set_db -quiet inst:cpu8_top/r_i_hold_reg .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_i_hold_reg .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_i_hold_reg .original_name r_i_hold
set_db -quiet inst:cpu8_top/r_i_hold_reg .single_bit_orig_name r_i_hold
set_db -quiet pin:cpu8_top/r_i_hold_reg/Q .original_name r_i_hold/q
set_db -quiet pin:cpu8_top/r_i_hold_reg/QN .original_name r_i_hold/q
set_db -quiet inst:cpu8_top/r_m_fault_code_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_fault_code_reg_0 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_fault_code_reg_0 .original_name {{r_m_fault_code[0]}}
set_db -quiet inst:cpu8_top/r_m_fault_code_reg_0 .single_bit_orig_name {r_m_fault_code[0]}
set_db -quiet pin:cpu8_top/r_m_fault_code_reg_0/Q .original_name {r_m_fault_code[0]/q}
set_db -quiet pin:cpu8_top/r_m_fault_code_reg_0/QN .original_name {r_m_fault_code[0]/q}
set_db -quiet inst:cpu8_top/r_m_memory_reg .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_memory_reg .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_memory_reg .original_name r_m_memory
set_db -quiet inst:cpu8_top/r_m_memory_reg .single_bit_orig_name r_m_memory
set_db -quiet pin:cpu8_top/r_m_memory_reg/Q .original_name r_m_memory/q
set_db -quiet pin:cpu8_top/r_m_memory_reg/QN .original_name r_m_memory/q
set_db -quiet inst:cpu8_top/r_m_valid_reg .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_valid_reg .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_valid_reg .original_name r_m_valid
set_db -quiet inst:cpu8_top/r_m_valid_reg .single_bit_orig_name r_m_valid
set_db -quiet pin:cpu8_top/r_m_valid_reg/Q .original_name r_m_valid/q
set_db -quiet pin:cpu8_top/r_m_valid_reg/QN .original_name r_m_valid/q
set_db -quiet inst:cpu8_top/r_m_x_data_reg_14 .orig_hdl_instantiated false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_14 .gint_phase_inversion false
set_db -quiet inst:cpu8_top/r_m_x_data_reg_14 .original_name {{r_m_x_data[14]}}
set_db -quiet inst:cpu8_top/r_m_x_data_reg_14 .single_bit_orig_name {r_m_x_data[14]}
set_db -quiet pin:cpu8_top/r_m_x_data_reg_14/Q .original_name {r_m_x_data[14]/q}
set_db -quiet pin:cpu8_top/r_m_x_data_reg_14/QN .original_name {r_m_x_data[14]/q}
# BEGIN PMBIST SECTION
# END PMBIST SECTION
# BEGIN PHYSICAL ANNOTATION SECTION
# END PHYSICAL ANNOTATION SECTION
# BEGIN GLO TBR TABLE
set_db -quiet design:cpu8_top .set_boundary_change_new {start restore}
set_db -quiet design:cpu8_top .set_boundary_change_new {finish restore}
# END GLO TBR TABLE
set_db -quiet source_verbose true
#############################################################
#####   FLOW WRITE   ########################################
##
## Written by Genus(TM) Synthesis Solution version 22.17-s071_1
## flowkit v22.15-s003_1
## Written on 21:02:27 11-Nov 2026
#############################################################
#####   Flow Definitions   ##################################

#############################################################
#####   Step Definitions   ##################################


#############################################################
#####   Attribute Definitions   #############################

if {[is_attribute flow_edit_end_steps -obj_type root]} {set_db flow_edit_end_steps {}}
if {[is_attribute flow_edit_start_steps -obj_type root]} {set_db flow_edit_start_steps {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_db flow_footer_tcl {}}
if {[is_attribute flow_header_tcl -obj_type root]} {set_db flow_header_tcl {}}
if {[is_attribute flow_metadata -obj_type root]} {set_db flow_metadata {}}
if {[is_attribute flow_setup_config -obj_type root]} {set_db flow_setup_config {HUDDLE {!!map {}}}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_db flow_step_check_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_db flow_step_end_tcl {}}
if {[is_attribute flow_step_order -obj_type root]} {set_db flow_step_order {}}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_db flow_summary_tcl {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_db flow_template_feature_definition {}}
if {[is_attribute flow_template_type -obj_type root]} {set_db flow_template_type {}}
if {[is_attribute flow_template_tools -obj_type root]} {set_db flow_template_tools {}}
if {[is_attribute flow_template_version -obj_type root]} {set_db flow_template_version {}}
if {[is_attribute flow_user_templates -obj_type root]} {set_db flow_user_templates {}}


#############################################################
#####   Flow History   ######################################

if {[is_attribute flow_user_templates -obj_type root]} {set_db flow_user_templates {}}
if {[is_attribute flow_plugin_steps -obj_type root]} {set_db flow_plugin_steps {}}
if {[is_attribute flow_template_type -obj_type root]} {set_db flow_template_type {}}
if {[is_attribute flow_template_tools -obj_type root]} {set_db flow_template_tools {}}
if {[is_attribute flow_template_version -obj_type root]} {set_db flow_template_version {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_db flow_template_feature_definition {}}
if {[is_attribute flow_remark -obj_type root]} {set_db flow_remark {}}
if {[is_attribute flow_features -obj_type root]} {set_db flow_features {}}
if {[is_attribute flow_feature_values -obj_type root]} {set_db flow_feature_values {}}
if {[is_attribute flow_write_db_args -obj_type root]} {set_db flow_write_db_args {}}
if {[is_attribute flow_write_db_sdc -obj_type root]} {set_db flow_write_db_sdc true}
if {[is_attribute flow_write_db_common -obj_type root]} {set_db flow_write_db_common false}
if {[is_attribute flow_post_db_overwrite -obj_type root]} {set_db flow_post_db_overwrite {}}
if {[is_attribute flow_step_order -obj_type root]} {set_db flow_step_order {}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_db flow_step_end_tcl {}}
if {[is_attribute flow_step_last -obj_type root]} {set_db flow_step_last {}}
if {[is_attribute flow_step_current -obj_type root]} {set_db flow_step_current {}}
if {[is_attribute flow_step_canonical_current -obj_type root]} {set_db flow_step_canonical_current {}}
if {[is_attribute flow_step_next -obj_type root]} {set_db flow_step_next {}}
if {[is_attribute flow_working_directory -obj_type root]} {set_db flow_working_directory .}
if {[is_attribute flow_branch -obj_type root]} {set_db flow_branch {}}
if {[is_attribute flow_caller_data -obj_type root]} {set_db flow_caller_data {}}
if {[is_attribute flow_metrics_snapshot_uuid -obj_type root]} {set_db flow_metrics_snapshot_uuid {}}
if {[is_attribute flow_starting_db -obj_type root]} {set_db flow_starting_db {}}
if {[is_attribute flow_db_directory -obj_type root]} {set_db flow_db_directory dbs}
if {[is_attribute flow_report_directory -obj_type root]} {set_db flow_report_directory reports}
if {[is_attribute flow_log_directory -obj_type root]} {set_db flow_log_directory logs}
if {[is_attribute flow_mail_to -obj_type root]} {set_db flow_mail_to {}}
if {[is_attribute flow_exit_when_done -obj_type root]} {set_db flow_exit_when_done false}
if {[is_attribute flow_mail_on_error -obj_type root]} {set_db flow_mail_on_error false}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_db flow_summary_tcl {}}
if {[is_attribute flow_history -obj_type root]} {set_db flow_history {}}
if {[is_attribute flow_step_last_status -obj_type root]} {set_db flow_step_last_status not_run}
if {[is_attribute flow_step_last_msg -obj_type root]} {set_db flow_step_last_msg {}}
if {[is_attribute flow_run_tag -obj_type root]} {set_db flow_run_tag {}}
if {[is_attribute flow_current_cache -obj_type root]} {set_db flow_current_cache {}}
if {[is_attribute flow_step_order_cache -obj_type root]} {set_db flow_step_order_cache {}}
if {[is_attribute flow_step_results_cache -obj_type root]} {set_db flow_step_results_cache {}}
if {[is_attribute flow_metadata -obj_type root]} {set_db flow_metadata {}}
if {[is_attribute flow_execute_in_global -obj_type root]} {set_db flow_execute_in_global true}
if {[is_attribute flow_overwrite_db -obj_type root]} {set_db flow_overwrite_db false}
if {[is_attribute flow_print_run_information -obj_type root]} {set_db flow_print_run_information false}
if {[is_attribute flow_verbose -obj_type root]} {set_db flow_verbose true}
if {[is_attribute flow_print_run_information_full -obj_type root]} {set_db flow_print_run_information_full false}
if {[is_attribute flow_header_tcl -obj_type root]} {set_db flow_header_tcl {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_db flow_footer_tcl {}}
if {[is_attribute flow_init_header_tcl -obj_type root]} {set_db flow_init_header_tcl {}}
if {[is_attribute flow_init_footer_tcl -obj_type root]} {set_db flow_init_footer_tcl {}}
if {[is_attribute flow_edit_start_steps -obj_type root]} {set_db flow_edit_start_steps {}}
if {[is_attribute flow_edit_end_steps -obj_type root]} {set_db flow_edit_end_steps {}}
if {[is_attribute flow_step_last_number -obj_type root]} {set_db flow_step_last_number 0}
if {[is_attribute flow_autoload_applets -obj_type root]} {set_db flow_autoload_applets false}
if {[is_attribute flow_autoload_dir -obj_type root]} {set_db flow_autoload_dir error}
if {[is_attribute flow_skip_auto_db_save -obj_type root]} {set_db flow_skip_auto_db_save true}
if {[is_attribute flow_skip_auto_generate_metrics -obj_type root]} {set_db flow_skip_auto_generate_metrics false}
if {[is_attribute flow_top -obj_type root]} {set_db flow_top {}}
if {[is_attribute flow_hier_path -obj_type root]} {set_db flow_hier_path {}}
if {[is_attribute flow_schedule -obj_type root]} {set_db flow_schedule {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_db flow_step_check_tcl {}}
if {[is_attribute flow_script -obj_type root]} {set_db flow_script {}}
if {[is_attribute flow_yaml_script -obj_type root]} {set_db flow_yaml_script {}}
if {[is_attribute flow_cla_enabled_features -obj_type root]} {set_db flow_cla_enabled_features {}}
if {[is_attribute flow_cla_inject_tcl -obj_type root]} {set_db flow_cla_inject_tcl {}}
if {[is_attribute flow_error_message -obj_type root]} {set_db flow_error_message {}}
if {[is_attribute flow_error_errorinfo -obj_type root]} {set_db flow_error_errorinfo {}}
if {[is_attribute flow_exclude_time_for_init_flow -obj_type root]} {set_db flow_exclude_time_for_init_flow false}
if {[is_attribute flow_error_write_db -obj_type root]} {set_db flow_error_write_db true}
if {[is_attribute flow_advanced_metric_isolation -obj_type root]} {set_db flow_advanced_metric_isolation flow}
if {[is_attribute flow_yaml_root -obj_type root]} {set_db flow_yaml_root {}}
if {[is_attribute flow_yaml_root_dir -obj_type root]} {set_db flow_yaml_root_dir {}}
if {[is_attribute flow_setup_config -obj_type root]} {set_db flow_setup_config {HUDDLE {!!map {}}}}

#############################################################
#####   User Defined Attributes   ###########################

