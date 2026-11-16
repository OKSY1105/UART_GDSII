#!/bin/sh
# Remove only uart_pad results in TOP/PNR. cmsdk (clean.tcl) and uart_no_pad results are kept.
# Run: ./uart_pad/uart_pad_clean.tcl  (or: sh uart_pad/uart_pad_clean.tcl). Absolute paths, so any folder works.
# Close the uart_pad design in Innovus before running.
rm -rf /home/hah010/UART_GDSII/SoC_make_G45/TOP/PNR/uart_pad_InitDesign /home/hah010/UART_GDSII/SoC_make_G45/TOP/PNR/uart_pad_InitDesign.dat
rm -rf /home/hah010/UART_GDSII/SoC_make_G45/TOP/PNR/uart_pad_PowerPlan /home/hah010/UART_GDSII/SoC_make_G45/TOP/PNR/uart_pad_PowerPlan.dat
rm -rf /home/hah010/UART_GDSII/SoC_make_G45/TOP/PNR/uart_pad_PlaceOpt /home/hah010/UART_GDSII/SoC_make_G45/TOP/PNR/uart_pad_PlaceOpt.dat
rm -rf /home/hah010/UART_GDSII/SoC_make_G45/TOP/PNR/uart_pad_PostCTSopt /home/hah010/UART_GDSII/SoC_make_G45/TOP/PNR/uart_pad_PostCTSopt.dat
rm -rf /home/hah010/UART_GDSII/SoC_make_G45/TOP/PNR/uart_pad_RouteDesign /home/hah010/UART_GDSII/SoC_make_G45/TOP/PNR/uart_pad_RouteDesign.dat
rm -rf /home/hah010/UART_GDSII/SoC_make_G45/TOP/PNR/uart_pad_RouteDesign_ECO /home/hah010/UART_GDSII/SoC_make_G45/TOP/PNR/uart_pad_RouteDesign_ECO.dat
rm -rf /home/hah010/UART_GDSII/SoC_make_G45/TOP/PNR/uart_pad_ChipFinish /home/hah010/UART_GDSII/SoC_make_G45/TOP/PNR/uart_pad_ChipFinish.dat
rm -rf /home/hah010/UART_GDSII/SoC_make_G45/TOP/PNR/uart_pad_ChipFinish_after_ECO /home/hah010/UART_GDSII/SoC_make_G45/TOP/PNR/uart_pad_ChipFinish_after_ECO.dat
rm -rf /home/hah010/UART_GDSII/SoC_make_G45/TOP/PNR/uart_pad_reports /home/hah010/UART_GDSII/SoC_make_G45/TOP/PNR/uart_pad_outputs
