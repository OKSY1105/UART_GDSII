# UART PAD PNR. Run from TOP/PNR in a fresh Innovus legacy session.
# The synthesized netlist contains RX/TX signal pads; init.io adds physical PG pads.
set init_gnd_net VSS
set init_pwr_net VDD
set init_lef_file [list \
    /GPDK045/digital/gsclib045_all_v4.4/gsclib045_tech/lef/gsclib045_tech.lef \
    /GPDK045/digital/gsclib045_all_v4.4/gsclib045/lef/gsclib045_macro.lef \
    /GPDK045/digital/gsclib045_all_v4.4/gsclib045/lef/gsclib045_multibitsDFF.lef \
    /GPDK045/digital/giolib045_v3.5/lef/giolib045_modify.lef]
set init_verilog ../SYN/uart_mapped/uart_top_syn_final.v
set init_mmmc_file uart_pad/uart_pad.mmmc.view
set init_io_file uart_pad/uart_pad.init.io
set init_top_cell uart_top
foreach required [concat $init_lef_file [list $init_verilog $init_mmmc_file $init_io_file ../SYN/uart_mapped/uart_top_ss_syn_final.sdc]] {
    if {![file isfile $required]} {error "Missing UART PAD input: $required"}
}
file mkdir uart_pad_reports/checkDesign
init_design

# Four 240um corners plus five 60um pads require at least 780um die width.
# A 1748um die with 640um die-to-core margins (240um IO ring + 400um) keeps the core box on the placement grid.
floorPlan -site CoreSite -coreMarginsBy die -d 1748 1748 640 640 640 640

# Move IO Cells (PADVDD, PADVSS: CLASS PAD AREAIO). init.io does not place
# AREAIO cells on the ring. Coordinates equal the init.io offsets (die 1748,
# pad depth 240): left 0 offset R270, right 1508 offset R90,
# top offset 1508 R180, bottom offset 0 R0.
placeInstance u_pad_vdd_w    0  644 R270
placeInstance u_pad_vss_w    0 1044 R270
placeInstance u_pad_vdd_e 1508  644 R90
placeInstance u_pad_vss_e 1508 1044 R90
placeInstance u_pad_vdd_n  744 1508 R180
placeInstance u_pad_vss_n  944 1508 R180
placeInstance u_pad_vdd_s  744    0 R0
placeInstance u_pad_vss_s  944    0 R0

# The IO file places RX/TX pads and the physical VDD/VSS/IO supply pads.
foreach side {n s w e} {
    addIoFiller -cell padIORINGFEED60 padIORINGFEED10 padIORINGFEED5 padIORINGFEED3 padIORINGFEED1 -prefix UART_PAD_FILLER -side $side
}
checkDesign -io -netlist -physicalLibrary -powerGround -tieHilo -timingLibrary -floorplan -outdir uart_pad_reports/checkDesign
saveDesign -def uart_pad_InitDesign
exit
