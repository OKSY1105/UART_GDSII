# -timescale : To mention the time unit and time precision
# -access : Passed to the elaborator to provide read access to simulation objects
# -gui : To invoke the xrun in gui mode
# -mess : To display all to the messages in detail
# -define : To provide SDF definition present in the testbench file
# -v : To provide library in ".v" format
# +libext : library extention
# +libext+.v -y : xrun would compile .v files automatically in the specific folder decribed with -y option 

# HEX file is defined at ../TESTBENCH/tb_uart.v 

#!/bin/csh -f
## UART synthesized gate-level functional simulation (without SDF)
## Run from the SIM/FUNCTION directory.

set UART_NETLIST  = "../../SYN/uart_mapped/uart_top_syn_final.v"
set UART_TB       = "../TESTBENCH/tb_uart.v"
set PAD_MODEL     = "/GPDK045/digital/giolib045_v3.5/vlog/pads_FF_s1vg.v"
set STD_MODEL     = "/GPDK045/digital/gsclib045_all_v4.4/gsclib045_svt_v4.4/gsclib045/verilog/slow_vdd1v0_basicCells.v"
set UART_DUMP_DIR = "./uart_dump"

mkdir -p "$UART_DUMP_DIR"

foreach file ($UART_NETLIST $UART_TB $PAD_MODEL $STD_MODEL)
    if (! -f "$file") then
        echo "ERROR: file not found: $file"
        exit 1
    endif
end

xrun -64bit \
     +max_err_count+50 \
     +define+function_sim \
     -access +rwc \
     -profile \
     -profthread \
     -gui \
     -top tb_uart_top \
     "$UART_TB" \
     "$UART_NETLIST" \
     -v "$PAD_MODEL" \
     -v "$STD_MODEL" \
     -l uart_func_pre.log

exit $status
