################################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 11/11/2026 21:02:28
#
################################################################################
if { ![is_common_ui_mode] } { error "ERROR: This script requires common_ui to be active."}

read_physical -lef {/GPDK045/digital/gsclib045_all_v4.4/gsclib045_tech/lef/gsclib045_tech.lef /GPDK045/digital/gsclib045_all_v4.4/gsclib045/lef/gsclib045_macro.lef}

read_netlist /home/hah010/UART_GDSII/SoC_make_G45/TOP/SYN/cpu8_runs/20261111_210117_132671/mapped/cpu8_top_mapped.v

init_design
