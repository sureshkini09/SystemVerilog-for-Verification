module design_tb;
    logic clk,reset;
    logic d_in;
    logic rising_edge,falling_edge;

    design dut (clk,reset,d_in,rising_edge,falling_edge);

    initial begin
        reset = 1;
        clk = 1;
        @(posedge clk);
        reset = 0;
        @(posedge clk);
        for(int i=0;i<32;i++)begin
            $urandom_range(0,1);
            @(posedge clk);
        end
        $finish

    end

    assign #10 clk = ~clk;

endmodule