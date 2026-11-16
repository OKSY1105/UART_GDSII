# Run from TOP/PNR in a Tempus legacy session after RouteDesign.
read_design uart_pad_RouteDesign.dat uart_top
check_timing
report_annotated_parasitics
report_analysis_coverage
report_analysis_coverage -check_type data_setup -verbose untested -exclude_untested const
file mkdir uart_pad_outputs
write_sdf -view FUNC_SS_WORST uart_pad_outputs/uart_top_pad_post_ss.sdf
write_sdf -view FUNC_FF_BEST uart_pad_outputs/uart_top_pad_post_ff.sdf
