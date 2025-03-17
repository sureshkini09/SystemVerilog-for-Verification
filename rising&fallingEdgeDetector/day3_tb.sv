`timescale 1ns/1ns
`include "day3.sv"

module design_tb;
    logic clk, reset;
    logic d_in;
    logic rising_edge, falling_edge;

    // Instantiate DUT
    design_alu dut (
        .clk(clk),
        .reset(reset),
        .d_in(d_in),
        .rising_edge(rising_edge),
        .falling_edge(falling_edge)
    );

    // Clock generation - toggles every 10ns
    initial clk = 1;
    always #10 clk = ~clk;

    // Stimulus
    initial begin
        reset = 1;
        d_in = 0;
        @(posedge clk);
        reset = 0;
        @(posedge clk);

        // Random input generation
        for (int i = 0; i < 32; i++) begin
            d_in = $urandom_range(0, 1);  // Fixed: d_in gets the random value
            @(posedge clk);
        end

        $finish;  // Fixed missing semicolon
    end

    // Dump waveforms for debugging
    initial begin
        $dumpfile("day3.vcd");
        $dumpvars(0, design_tb);
    end

endmodule
