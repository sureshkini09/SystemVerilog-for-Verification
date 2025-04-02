module day5_tb ();

  logic clk;
  logic reset;
  logic [7:0] cnt_o;

  // Instantiate the DUT (Explicit connections preferred)
  day5 dut (
    .clk(clk),
    .reset(reset),
    .cnt_o(cnt_o)
  );

  // Clock Initialization
  initial clk = 0;  

  // Clock Generator
  always #10 clk = ~clk;  

  // Reset Handling
  initial begin
    reset = 1'b1;
    repeat (5) @(posedge clk);  // Hold reset for 5 cycles
    reset = 1'b0;
  end

  // Counter Monitor
  always @(posedge clk) begin
    $display("Time=%0t, Counter=%d", $time, cnt_o);
  end

  // Assertion: Counter should always be odd
  always @(posedge clk) begin
    assert(cnt_o % 2 == 1) 
    else $error("ERROR: Counter output is not odd at time=%0t", $time);
  end

  // Run Simulation for 128 Cycles
  initial begin
    for (int i=0; i<128; i++) @(posedge clk);
    $finish();
  end

endmodule
