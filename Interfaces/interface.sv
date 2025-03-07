module axi_master (axi_if.master intf);
  always @(posedge intf.clk) begin
    if (!intf.reset) begin
      intf.addr <= 32'h0;
      intf.data <= 32'hA5A5A5A5;
      intf.valid <= 1;
    end
  end
endmodule
