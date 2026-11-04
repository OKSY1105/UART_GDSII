set log file ./log/all.log -replace

read library -verilog -both \
	../../../GPDK045/digital/gsclib045_all_v4.4/gsclib045/verilog/slow_vdd1v0_basicCells.v \
	../../../GPDK045/digital/gsclib045_all_v4.4/gsclib045/verilog/fast_vdd1v0_basicCells.v \
	../../../GPDK045/digital/giolib045_v3.5/vlog/pads_SS_s1vg.v

read design ../RTL/uart_top.v ../RTL/uart_tx.v ../RTL/uart_rx.v ../RTL/baud_rate_gen.v ../RTL/fifo.v -verilog -golden -define USE_IO_PAD ///golden

read design ../SYN/mapped/uart_top_syn_final.v -verilog -revised ///revised

set system mode lec

add compare points -all

compare

report verification
report statistics
