# =====================================================================
# uart_top.sdc - UART standalone synthesis with RX/TX PAD (GPDK045)
# Design : uart_top / System clock: 100 MHz (10 ns)
# The RTL must be compiled with USE_IO_PAD enabled.
# Only UART RX/TX use physical PADDI/PADDO cells in this version.
# Other ports still have no physical PAD: this is NOT a complete chip I/O signoff.
# =====================================================================

# Libraries: keep the same GPDK045 setup as cortexm0_45nm.tcl
set STD_LIB_slow slow_vdd1v0_basicCells.lib:slow_vdd1v0
set STD_LIB_fast fast_vdd1v0_basicCells.lib:fast_vdd1v0

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

#############################
# Timing constraints reset
#############################
reset_design

#############################
# CLOCK
#############################
# The external i_clk port feeds uart_top directly (NO clock PAD yet).
# 100 MHz = 10 ns; unlike Cortex-M0, do not use XTAL1 / MAIN_CLOCK.
create_clock -period 10 -name UART_CLK [get_ports i_clk]

# Preliminary values reused from the original Cortex-M0 SDC.
set_clock_latency -source -max 0.2 [get_clocks UART_CLK]
set_clock_latency -max 0.2 [get_clocks UART_CLK]
set_clock_uncertainty -setup 0.1 [get_clocks UART_CLK]
set_clock_transition 0.1 [get_clocks UART_CLK]

#############################
# INPUT / OUTPUT DELAY
#############################
# THR/RHR control ports are assumed synchronous to i_clk for this test.
# i_uart_rxd is asynchronous serial input; do not assign it a fake
# synchronous input_delay. i_clk and i_rst_n are excluded as well.
set SYNC_INPUTS [remove_from_collection [all_inputs] [get_ports {i_clk i_rst_n i_uart_rxd}]]
set_input_delay -max 0.1  -clock UART_CLK $SYNC_INPUTS
set_input_delay -min 0.01 -clock UART_CLK $SYNC_INPUTS

# CPU/status output ports only. The UART serial TX output is excluded,
# since no external receiver clock/timing requirement is specified yet.
set SYNC_OUTPUTS [remove_from_collection [all_outputs] [get_ports o_uart_txd]]
set_output_delay -max 0.1   -clock UART_CLK $SYNC_OUTPUTS
set_output_delay -min -0.01 -clock UART_CLK $SYNC_OUTPUTS

#############################
# INPUT DRIVE / OUTPUT LOAD
#############################
# RX and TX PAD cells are ALREADY instantiated in uart_top.v by USE_IO_PAD.
# Thus do NOT apply PADDI as the driving cell to all inputs, and do NOT
# use PADDO/A as the load of all outputs. That was for another I/O model.

# Example external signal rise/fall time at RX PAD and non-PAD inputs.
set_input_transition 0.1 [get_ports i_uart_rxd]
set_input_transition 0.1 $SYNC_INPUTS

# Assumed external TX pin load: 1.0 pF (set_units capacitance = 1 pF).
# This is a test assumption, NOT an actual package/board load value.
set_load 1.0 [get_ports o_uart_txd]

# Example small loads on other outputs, which still have no physical pads.
set_load 0.01 $SYNC_OUTPUTS

#############################
# OPERATING CONDITION
#############################
# Retained from the original Cortex-M0 SDC.
set_operating_conditions \
    -max_library [get_libs $STD_LIB_slow] -max PVT_0P9V_125C \
    -min_library [get_libs $STD_LIB_fast] -min PVT_1P1V_0C

#############################
# RESET / EXCEPTIONS
#############################
# Asynchronous reset is not ordinary clock-synchronous data.
set_ideal_network [get_ports i_rst_n]

# No set_dont_touch for u_cmsdk_mcu_system or pad1..pad75.
# Check unconstrained asynchronous RX / serial TX paths separately.
# If the final chip is implemented, clock/reset/control ports also need
# their real I/O implementation and signoff constraints.

