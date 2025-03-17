module day4_tb();
    logic [7:0] a_i;
    logic [7:0] b_i;
    logic [2:0] op_i;
    logic [7:0] alu_o;

    day4 dut (
        .a_i(a_i),
        .b_i(b_i),
        .op_i(op_i),
        .alu_o(alu_o)
    );

    initial begin
        // Test ADD
        a_i = 8'd10; b_i = 8'd5; op_i = 3'b000;
        #10 $display("ADD Result: %d", alu_o);

        // Test SUB
        a_i = 8'd15; b_i = 8'd3; op_i = 3'b001;
        #10 $display("SUB Result: %d", alu_o);

        // Test SLL
        a_i = 8'b00001111; b_i = 8'd2; op_i = 3'b010;
        #10 $display("SLL Result: %b", alu_o);

        // Test LSR
        a_i = 8'b11110000; b_i = 8'd3; op_i = 3'b011;
        #10 $display("LSR Result: %b", alu_o);

        // Test AND
        a_i = 8'b11001100; b_i = 8'b10101010; op_i = 3'b100;
        #10 $display("AND Result: %b", alu_o);

        // Test OR
        a_i = 8'b11001100; b_i = 8'b10101010; op_i = 3'b101;
        #10 $display("OR Result: %b", alu_o);

        // Test XOR
        a_i = 8'b11001100; b_i = 8'b10101010; op_i = 3'b110;
        #10 $display("XOR Result: %b", alu_o);

        // Test EQL
        a_i = 8'b10101010; b_i = 8'b10101010; op_i = 3'b111;
        #10 $display("EQL Result: %b", alu_o);

        a_i = 8'b10101010; b_i = 8'b11001100; op_i = 3'b111;
        #10 $display("EQL Result (False): %b", alu_o);

        $stop;
    end
endmodule