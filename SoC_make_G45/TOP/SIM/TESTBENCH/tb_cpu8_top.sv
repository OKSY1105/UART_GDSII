`timescale 1ns/1ps
`default_nettype none
module tb_cpu8_top;
    reg clk = 1'b0;
    always #5 clk = ~clk;
    reg rst_n = 1'b0;
    wire [16:0] i_haddr;
    wire [1:0] i_htrans;
    wire [2:0] i_hsize, i_hburst;
    wire [3:0] i_hprot;
    wire i_hwrite, i_hmastlock;
    reg [15:0] i_hrdata = 16'h0400;
    wire [15:0] d_haddr;
    wire [1:0] d_htrans;
    wire [2:0] d_hsize, d_hburst;
    wire [3:0] d_hprot;
    wire d_hwrite, d_hmastlock;
    wire [7:0] d_hwdata;
    wire [7:0] d_hrdata;
    wire halted, fault;
    wire [2:0] fault_code;
    wire [15:0] pc, x;
    wire [3:0] flags;
    wire [31:0] registers;
    wire stall;
    wire [2:0] stage_valid;
    wire retire_valid;
    wire [15:0] retire_pc, retire_instruction;
    wire retire_reg_write;
    wire [1:0] retire_rd;
    wire [7:0] retire_data;
    wire retire_bank, irq_active;

    reg [15:0] imem [0:255];
    reg [7:0] dmem [0:255];
    reg d_valid = 1'b0;
    reg d_write = 1'b0;
    reg [15:0] d_addr = 16'b0;
    integer retired = 0;
    integer stores = 0;
    integer cycles = 0;
    integer k;
    reg [15:0] expected_pc [0:10];

    cpu8_top dut (
        .i_clk(clk), .i_rst_n(rst_n),
        .o_i_haddr(i_haddr), .o_i_htrans(i_htrans),
        .o_i_hsize(i_hsize), .o_i_hburst(i_hburst),
        .o_i_hprot(i_hprot), .o_i_hwrite(i_hwrite),
        .o_i_hmastlock(i_hmastlock),
        .i_i_hrdata(i_hrdata), .i_i_hready(1'b1), .i_i_hresp(1'b0),
        .o_d_haddr(d_haddr), .o_d_htrans(d_htrans),
        .o_d_hsize(d_hsize), .o_d_hburst(d_hburst),
        .o_d_hprot(d_hprot), .o_d_hwrite(d_hwrite),
        .o_d_hmastlock(d_hmastlock), .o_d_hwdata(d_hwdata),
        .i_d_hrdata(d_hrdata), .i_d_hready(1'b1), .i_d_hresp(1'b0),
        .i_irq(1'b0), .o_halted(halted), .o_fault(fault),
        .o_fault_code(fault_code), .o_pc(pc), .o_x(x),
        .o_flags(flags), .o_registers(registers), .o_stall(stall),
        .o_stage_valid(stage_valid), .o_retire_valid(retire_valid),
        .o_retire_pc(retire_pc), .o_retire_instruction(retire_instruction),
        .o_retire_reg_write(retire_reg_write), .o_retire_rd(retire_rd),
        .o_retire_data(retire_data), .o_retire_bank(retire_bank),
        .o_irq_active(irq_active)
    );

    // AHB address phase is accepted at a rising edge; data is returned
    // during the following data phase. The smoke test uses zero wait states.
    always @(posedge clk) begin
        if (!rst_n) begin
            i_hrdata <= 16'h0400;
            d_valid <= 1'b0;
            d_write <= 1'b0;
            d_addr <= 16'b0;
        end else begin
            if (i_htrans[1]) begin
                if (i_haddr[16:9] != 0 || i_haddr[0] ||
                    i_hsize != 3'b001 || i_hwrite)
                    $fatal(1, "Invalid instruction bus request");
                i_hrdata <= imem[i_haddr[8:1]];
            end
            if (d_valid && d_write) begin
                dmem[d_addr[7:0]] <= d_hwdata;
                stores <= stores + 1;
                $display("STORE addr=%04h data=%02h", d_addr, d_hwdata);
            end
            d_valid <= d_htrans[1];
            d_write <= d_hwrite;
            d_addr <= d_haddr;
            if (d_htrans[1] &&
                (d_haddr[15:8] != 0 || d_hsize != 3'b000))
                $fatal(1, "Invalid data bus request");
        end
    end
    assign d_hrdata = dmem[d_addr[7:0]];

    initial begin
        for (k=0; k<256; k=k+1) begin
            imem[k] = 16'h0400;
            dmem[k] = 8'h00;
        end
        $readmemh("cpu8_smoke.hex", imem);
        expected_pc[0]=0; expected_pc[1]=1; expected_pc[2]=2;
        expected_pc[3]=3; expected_pc[4]=4; expected_pc[5]=5;
        expected_pc[6]=6; expected_pc[7]=7; expected_pc[8]=9;
        expected_pc[9]=10; expected_pc[10]=11;
        #22 rst_n = 1'b1;
    end

    always @(negedge clk) begin
        if (rst_n) begin
            cycles = cycles + 1;
            if (retire_valid) begin
                if (retired >= 11 || retire_pc !== expected_pc[retired])
                    $fatal(1, "Unexpected retire #%0d PC=%04h", retired, retire_pc);
                if (retire_bank)
                    $fatal(1, "Unexpected IRQ bank");
                $display("RETIRE pc=%04h instr=%04h write=%b rd=%0d data=%02h",
                         retire_pc, retire_instruction,
                         retire_reg_write, retire_rd, retire_data);
                if (retire_pc == 2 && (!retire_reg_write || retire_data !== 8'h08))
                    $fatal(1, "ADD result mismatch");
                if (retire_pc == 5 && (!retire_reg_write || retire_data !== 8'h08))
                    $fatal(1, "LD result mismatch");
                if (retire_pc == 10 && (!retire_reg_write || retire_data !== 8'h07))
                    $fatal(1, "SUB result mismatch");
                retired = retired + 1;
            end
            if (fault)
                $fatal(1, "CPU fault=%0d at PC=%04h", fault_code, pc);
            if (halted) begin
                if (retired != 11 || stores != 1 || dmem[8'h20] !== 8'h08 ||
                    registers !== 32'h00070108 || x !== 16'h0020 ||
                    flags !== 4'h2 || pc !== 16'd12)
                    $fatal(1, "Final mismatch retired=%0d stores=%0d mem=%02h regs=%08h x=%04h flags=%h pc=%04h",
                           retired, stores, dmem[8'h20], registers, x, flags, pc);
                $display("CPU8_RTL_SIM=PASS cycles=%0d retired=%0d stores=%0d regs=%08h x=%04h flags=%h pc=%04h mem20=%02h",
                         cycles, retired, stores, registers, x, flags, pc, dmem[8'h20]);
                $finish;
            end
            if (cycles > 200)
                $fatal(1, "CPU timeout retired=%0d PC=%04h", retired, pc);
        end
    end
endmodule
`default_nettype wire
