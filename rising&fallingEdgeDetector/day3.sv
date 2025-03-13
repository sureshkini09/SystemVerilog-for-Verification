module design(
    logic clk,reset,
    logic d_in,
    logic rising_edge, falling_edge;
)

    logic d_ff;

    always@(posedge clk or posedge reset)begin
        if(reset) d_ff <= 0;
        else d_ff <= d_ff;
    end

    assign rising_edge = d_in & ~d_ff;
    assign falling_edge = ~d_in & d_ff;

endmodule