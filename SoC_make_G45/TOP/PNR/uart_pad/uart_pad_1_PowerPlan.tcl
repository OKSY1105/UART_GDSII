# UART PAD power network. Run from TOP/PNR in a fresh Innovus session.
#restoreDesign uart_pad_InitDesign.dat

# IO supply nets do not occur as logical ports in the synthesized UART netlist.
addNet VDDIOR -power
addNet VSSIOR -ground
globalNetConnect VDD -type pgpin -pin VDD -instanceBasename *
globalNetConnect VSS -type pgpin -pin VSS -instanceBasename *
globalNetConnect VDDIOR -type pgpin -pin VDDIOR -instanceBasename *
globalNetConnect VSSIOR -type pgpin -pin VSSIOR -instanceBasename *
globalNetConnect VDD -type tiehi -instanceBasename *
globalNetConnect VSS -type tielo -instanceBasename *
setTieHiLoMode -reset
setTieHiLoMode -cell {TIELO TIEHI} -honorDontTouch false -createHierPort false

# One core ring connects standard-cell rails and the VDD/VSS pad pins.
addRing -nets {VDD VSS} -type core_rings -follow core \
        -layer {top Metal11 bottom Metal11 left Metal10 right Metal10} \
        -width {top 5 bottom 5 left 5 right 5} \
        -spacing {top 5 bottom 5 left 5 right 5} \
        -offset {top 5 bottom 5 left 5 right 5}
sroute -connect {corePin} -nets {VDD VSS} \
       -layerChangeRange {Metal1(1) Metal11(11)} \
       -corePinTarget {firstAfterRowEnd} -allowJogging 1
sroute -connect {padPin} -nets {VDD VSS} \
       -layerChangeRange {Metal1(1) Metal11(11)} \
       -padPinPortConnect {allPort oneGeom} -padPinTarget {nearestTarget} \
       -allowJogging 1

# IO supply rails are formed by abutting PAD and IO filler cells.
# Check physical connectivity before accepting this power network.
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
saveDesign -def uart_pad_PowerPlan
#exit
