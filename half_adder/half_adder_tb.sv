//`timescale 1ns/1ps
//`include "half_adder.sv"
`timescale 1ns/1ps

module half_adder (
    input     wire       a,
    input     wire      b,
    
    output    logic      sum,
    output    logic      carry
  );
    
    // Write your logic here...
    assign sum = a ^ b;
    assign carry = a & b;
    
endmodule 

module half_adder_tb;
    input wire a;
    input wire b;  
    // Inputs to the half adder

    output logic sum; // Output sum
    output logic carry; // Output carry       

    // Instantiate the half adder module
    half_adder ha (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    // Testbench logic
    initial begin
        // Test case 1: a = 0, b = 0
        a = 0; b = 0;
        #10; // Wait for 10 time units

        // Test case 2: a = 0, b = 1
        a = 0; b = 1;
        #10; // Wait for 10 time units

        // Test case 3: a = 1, b = 0
        a = 1; b = 0;
        #10; // Wait for 10 time units

        // Test case 4: a = 1, b = 1
        a = 1; b = 1;
        #10; // Wait for 10 time units

        $display("All test cases passed!");
    end

    initial begin
        $dumpfile("half_adder_tb.vcd"); // Specify the VCD file name
        $dumpvars(0, half_adder_tb); // Dump all variables for waveform viewing
    end
        
endmodule       
