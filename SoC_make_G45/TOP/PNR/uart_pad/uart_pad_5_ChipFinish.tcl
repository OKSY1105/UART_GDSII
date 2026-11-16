#######################
#### Chip Finish ######
#######################
#restoreDesign uart_pad_RouteDesign.dat
file mkdir uart_pad_outputs uart_pad_reports/timing/final

# Add Filler
getFillerMode -quiet
addFiller -cell FILL1 FILL8 FILL64 FILL4 FILL32 FILL2 FILL16 -prefix FILLER
extractRC
verify_drc
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
timeDesign -postRoute -outDir uart_pad_reports/timing/final
timeDesign -postRoute -hold -outDir uart_pad_reports/timing/final
# Inspect timing and DRC reports before accepting this GDS.
# If there is no error, save Design
saveDesign -rc -def uart_pad_ChipFinish

#####################
#### Write Out ######
#####################
# Write Out Files
# GDS file : without layermap file for GPDK045
streamOut uart_pad_outputs/uart_top_pad.gds -libName DesignLib -units 2000 -mode ALL

# Write Out Constraint
writeTimingCon uart_pad_outputs/uart_top_pad.sdc

# Netlist  file : -flat options is useful to next tool stages
saveNetlist -flat -excludeCellInst "PADVDD PADVSS PADVDDIOR PADVSSIOR" uart_pad_outputs/uart_top_pad.v

# SDF OUT, but I recommend to use sdf file which is from Tempus tool
# SDF version 3.0 :: RECREM included in the SDF file
write_sdf uart_pad_outputs/uart_top_pad.sdf

# SDF version 2.1
write_sdf -version 2.1 uart_pad_outputs/uart_top_pad.sdf_2.1
#exit
