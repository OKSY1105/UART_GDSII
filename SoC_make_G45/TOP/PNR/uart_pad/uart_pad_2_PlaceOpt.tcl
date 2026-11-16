######################################3
## Placement & Optimization
######################################3
#restoreDesign uart_pad_PowerPlan.dat
# BUFX2 uses CoreSiteDouble, but this block has CoreSite rows only.
setDontUse BUFX2 true 
set_db place_global_cong_effort high

file mkdir uart_pad_reports/timing/preCTS

# First placement
place_design

# Check the Placement Density 
checkPlace uart_pad_reports/uart_top.checkPlace

# Early GlobalRoute :: analisys of Congestion and Timing after Placement 
setRouteMode -earlyGlobalMinRouteLayer 1 -earlyGlobalMaxRouteLayer 11 -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
earlyGlobalRoute
reportCongestion -hotSpot
reportCongestion -overflow

# View Density Map 
setDrawView place
setLayerPreference densityMap -isVisible 1
setLayerPreference densityMap -isVisible 0

## View Pin Density Map
setLayerPreference pinDensityMap -isVisible 1
setLayerPreference pinDensityMap -isVisible 0

# Placement Optimization 
place_opt_design

# Early GlobalRoute :: analisys of Congestion and Timing after Placement 
earlyGlobalRoute
reportCongestion -hotSpot
reportCongestion -overflow

#Timing summary
timeDesign -preCTS -outDir uart_pad_reports/timing/preCTS

#checkDesign :: Density 
checkDesign -place

# If there is no error, Save Design
saveDesign -def uart_pad_PlaceOpt

#exit
