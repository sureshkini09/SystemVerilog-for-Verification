`timescale 1ns/1ns
`include "lfsr.sv"
module lfsr_tb;

  // Write your Testbench here...
	logic clk;
  logic reset;
  logic lfsr_o;
  
  lfsr dut (.*);
  
  always #10 clk = ~clk;

  initial begin
    clk <= 1'b0;
    reset <= 1'b0;
    repeat (5) @(posedge  clk);
    reset = 1'b1;
    
    repeat (127)  @(posedge clk);
    $finish();
  end
    
endmodule
