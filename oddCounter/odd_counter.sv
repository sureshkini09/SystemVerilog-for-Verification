module odd_counter (
  input     logic        clk,
  input     logic        reset,

  output    logic[7:0]  cnt_o
);

  // Write your logic here...
  always_ff@(posedge clk or posedge reset)
    if(reset)
      cnt_o <= 8'h1;
    else
      cnt_o <= cnt_o + 2;
  
  
endmodule
