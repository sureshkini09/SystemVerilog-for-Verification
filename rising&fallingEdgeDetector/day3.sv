module design_alu(
    input logic clk,
    input logic reset,
    input logic d_in,
    output logic rising_edge, 
    output logic falling_edge
);

    logic d_ff;

    // Flip-flop to track the previous state of d_in
    always @(posedge clk or posedge reset) begin
        if (reset) 
            d_ff <= 0;
        else 
            d_ff <= d_in;  // Corrected to capture the current input state
    end

    // Detect rising and falling edges
    assign rising_edge  = d_in & ~d_ff;
    assign falling_edge = ~d_in & d_ff;

endmodule
