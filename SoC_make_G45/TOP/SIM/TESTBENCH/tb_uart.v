`timescale 1ns/1ps

module tb_uart_top;

parameter CLK_FREQ_HZ  = 100_000_000;
parameter BAUD_RATE    = 115200;
parameter DATA_BIT     = 8;
parameter FIFO_DEPTH   = 16;
parameter HEX_FILE     = "hello.hex";
parameter HEX_MEM_SIZE = 1024;
parameter HEX_TEST_LEN = 8;

/*
 * 100 MHz clock -> 10 ns period
 */
localparam CLK_HALF_PERIOD = 5;

/*
 * UART bit time
 * 1 / 115200 sec = about 8680 ns
 */
localparam BIT_TIME_NS =
    1_000_000_000 / BAUD_RATE;


// ============================================================
// DUT interface
// ============================================================

reg                    i_clk;
reg                    i_rst_n;

wire                   o_uart_txd;
reg                    i_uart_rxd;

reg                    i_thr_we;
reg  [DATA_BIT-1:0]    i_thr_wdata;

reg                    i_rhr_re;
wire [DATA_BIT-1:0]    o_rhr_rdata;

wire                   o_lsr_dr;
wire                   o_lsr_thre;
wire                   o_lsr_temt;
wire                   o_lsr_fe;
wire                   o_lsr_pe;
wire                   o_lsr_oe;

wire                   o_tx_fifo_full;
wire                   o_rx_fifo_full;


// ============================================================
// Testbench check & HEX memory
// ============================================================

reg                    tb_error;
reg                    tb_done;

reg [DATA_BIT-1:0]     tb_expected_data;
reg [DATA_BIT-1:0]     tb_received_data;

reg [7:0]              hex_mem [0:HEX_MEM_SIZE-1];
integer                hex_idx;


// ============================================================
// DUT
// ============================================================

uart_top u_uart_top (
    .i_clk          (i_clk),
    .i_rst_n        (i_rst_n),

    .o_uart_txd     (o_uart_txd),
    .i_uart_rxd     (i_uart_rxd),

    .i_thr_we       (i_thr_we),
    .i_thr_wdata    (i_thr_wdata),

    .i_rhr_re       (i_rhr_re),
    .o_rhr_rdata    (o_rhr_rdata),

    .o_lsr_dr       (o_lsr_dr),
    .o_lsr_thre     (o_lsr_thre),
    .o_lsr_temt     (o_lsr_temt),
    .o_lsr_fe       (o_lsr_fe),
    .o_lsr_pe       (o_lsr_pe),
    .o_lsr_oe       (o_lsr_oe),

    .o_tx_fifo_full (o_tx_fifo_full),
    .o_rx_fifo_full (o_rx_fifo_full)
);

// ============================================================
// Waveform dump (FUNCTION_PRE: no SDF)
// ============================================================

/************************************************
 *  * Waveform Dump & SDF Annotation
 *   ************************************************/
initial begin

`ifdef sdf_gate

    $sdf_annotate(
        "./uart_top_delays.sdf",
        tb_uart_top.u_uart_top
    );

    $shm_open("./uart_dump/uart_sdf_pre");

`else

    $shm_open("./uart_dump/uart_function_pre");

`endif

    $shm_probe(tb_uart_top, "AC");

end


// ============================================================
// Load hello.hex into hex_mem (Little Endian check)
// ============================================================

initial begin
    for (hex_idx = 0; hex_idx < HEX_MEM_SIZE; hex_idx = hex_idx + 1) begin
        hex_mem[hex_idx] = 8'h00;
    end
    $readmemh(HEX_FILE, hex_mem);
    $display("============================================================");
    $display("[HEX LOAD] Loaded %s into hex_mem", HEX_FILE);
    $display("[HEX LOAD] Word 0 (hex_mem[3:0]) = %x%x%x%x", hex_mem[3], hex_mem[2], hex_mem[1], hex_mem[0]);
    $display("[HEX LOAD] Word 1 (hex_mem[7:4]) = %x%x%x%x", hex_mem[7], hex_mem[6], hex_mem[5], hex_mem[4]);
    $display("============================================================");
end


// ============================================================
// Clock
// ============================================================

initial begin
    i_clk = 1'b0;
end

always #CLK_HALF_PERIOD
    i_clk = ~i_clk;


// ============================================================
// CPU -> UART TX FIFO
// ============================================================

task cpu_write_byte;

    input [DATA_BIT-1:0] data;

    begin

        while(o_tx_fifo_full)
            @(posedge i_clk);

        @(negedge i_clk);

        i_thr_wdata = data;
        i_thr_we    = 1'b1;

        @(negedge i_clk);

        i_thr_we = 1'b0;

    end

endtask


// ============================================================
// UART RX FIFO -> CPU
// ============================================================

task cpu_read_and_check;

    input [DATA_BIT-1:0] expected_data;

    begin

        wait(o_lsr_dr == 1'b1);

        tb_expected_data = expected_data;
        tb_received_data = o_rhr_rdata;

        if(o_rhr_rdata !== expected_data) begin
            tb_error = 1'b1;
            $display("[UART HEX TEST] ERROR at %0t ns : Expected=0x%02x, Received=0x%02x",
                     $time, expected_data, o_rhr_rdata);
        end else begin
            $display("[UART HEX TEST] PASS  at %0t ns : TX=0x%02x -> RX=0x%02x",
                     $time, expected_data, o_rhr_rdata);
        end

        @(negedge i_clk);

        i_rhr_re = 1'b1;

        @(negedge i_clk);

        i_rhr_re = 1'b0;

        repeat(3)
            @(posedge i_clk);

    end

endtask


// ============================================================
// NUCLEO behavioral model
// ============================================================

reg [DATA_BIT-1:0] nucleo_rx_data;

reg nucleo_rx_parity;
reg nucleo_calc_parity;
reg nucleo_stop_bit;

integer nucleo_bit_index;


// ============================================================
// NUCLEO -> FPGA
// ============================================================

task nucleo_send_byte;

    input [DATA_BIT-1:0] data;

    integer i;

    reg parity_bit;

    begin

        parity_bit = ^data;


        // START
        i_uart_rxd = 1'b0;

        #(BIT_TIME_NS);


        // DATA
        for(i = 0;
            i < DATA_BIT;
            i = i + 1) begin

            i_uart_rxd = data[i];

            #(BIT_TIME_NS);

        end


        // EVEN PARITY
        i_uart_rxd = parity_bit;

        #(BIT_TIME_NS);


        // STOP
        i_uart_rxd = 1'b1;

        #(BIT_TIME_NS);

    end

endtask


// ============================================================
// FPGA TX -> NUCLEO RX -> Echo
// ============================================================

initial begin

    i_uart_rxd         = 1'b1;

    nucleo_rx_data     = 0;
    nucleo_rx_parity   = 1'b0;
    nucleo_calc_parity = 1'b0;
    nucleo_stop_bit    = 1'b1;


    forever begin

        // FPGA TX START bit
        @(negedge o_uart_txd);


        // START 가운데
        #(BIT_TIME_NS / 2);


        if(o_uart_txd == 1'b0) begin


            // D0 가운데로 이동
            #(BIT_TIME_NS);


            // DATA D0 ~ D7
            for(nucleo_bit_index = 0;
                nucleo_bit_index < DATA_BIT;
                nucleo_bit_index = nucleo_bit_index + 1) begin

                nucleo_rx_data[nucleo_bit_index]
                    = o_uart_txd;

                #(BIT_TIME_NS);

            end


            // PARITY
            nucleo_rx_parity
                = o_uart_txd;

            nucleo_calc_parity
                = ^nucleo_rx_data;


            #(BIT_TIME_NS);


            // STOP
            nucleo_stop_bit
                = o_uart_txd;


            #(BIT_TIME_NS / 2);


            if(nucleo_rx_parity
               !== nucleo_calc_parity)

                tb_error = 1'b1;


            if(nucleo_stop_bit
               !== 1'b1)

                tb_error = 1'b1;


            // 받은 데이터 Echo
            nucleo_send_byte(
                nucleo_rx_data
            );

        end

    end

end


// ============================================================
// Main Test (Transmit & Verify bytes from hello.hex)
// ============================================================

initial begin

    i_rst_n = 1'b0;

    i_thr_we    = 1'b0;
    i_thr_wdata = 0;

    i_rhr_re = 1'b0;

    tb_error = 1'b0;
    tb_done  = 1'b0;

    tb_expected_data = 0;
    tb_received_data = 0;


    // RESET
    repeat(10)
        @(posedge i_clk);

    @(negedge i_clk);

    i_rst_n = 1'b1;

    repeat(10)
        @(posedge i_clk);


    // Transmit and verify first HEX_TEST_LEN (8) bytes from hello.hex
    // (Word 0: 68 03 00 20 -> 20000368, Word 1: 65 01 00 00 -> 00000165)
    for (hex_idx = 0; hex_idx < HEX_TEST_LEN; hex_idx = hex_idx + 1) begin
        cpu_write_byte(hex_mem[hex_idx]);
        cpu_read_and_check(hex_mem[hex_idx]);
    end


    wait(o_lsr_temt == 1'b1);


    repeat(20)
        @(posedge i_clk);


    tb_done = 1'b1;

    if (tb_error == 1'b0) begin
        $display("============================================================");
        $display("TEST PASSED : All %0d bytes from %s transmitted & echoed OK!", HEX_TEST_LEN, HEX_FILE);
        $display("============================================================");
    end else begin
        $display("============================================================");
        $display("TEST FAILED : tb_error = %b", tb_error);
        $display("============================================================");
    end


    $stop;

end


// ============================================================
// Timeout
// ============================================================

initial begin

    #3_000_000;


    if(!tb_done) begin

        tb_error = 1'b1;
        $display("[TIMEOUT] Simulation timed out before tb_done!");

        $stop;

    end

end


endmodule
