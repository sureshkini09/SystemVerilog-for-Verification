// LFSR
module lfsr (
    input     logic      clk,
    input     logic      reset,
  
    output    logic[3:0] lfsr_o
  );
  
    // Write your logic here...
    always_ff@(posedge clk or negedge reset)
      if(!reset)
        lfsr_o <= 4'b1001;
        else
        lfsr_o <= {lfsr_o[2:0],lfsr_o[2] ^ lfsr_o[3]};
    
      
  endmodule
  