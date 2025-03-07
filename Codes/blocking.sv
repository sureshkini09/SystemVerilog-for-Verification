module tb;
reg [7:0]a,b,c,d,e;

initial begin
a <= 8'hB3;
$display("[%0t] a=0x%0h b=0x%0h c=0x%0h",$time,a,b,c);

b <= 8'hC4;
$display("[%0t] a=0x%0h b=0x%0h c=0x%0h",$time,a,b,c);

c <= 8'hF5;
$display("[%0t] a=0x%0h b=0x%0h c=0x%0h",$time,a,b,c);
end
initial begin
#5 $display("[%0t] a=0x%0h b=0x%0h c=0x%0h",$time,a,b,c);
#5 $display("[%0t] a=0x%0h b=0x%0h c=0x%0h",$time,a,b,c);
#5 $display("[%0t] a=0x%0h b=0x%0h c=0x%0h",$time,a,b,c);
end
initial begin 
d <= 8'hA1;
$display("[%0t] d=0x%0h e=0x%0h",$time,d,e);

e <= 8'hC4;
$display("[%0t] d=0x%0h e=0x%0h",$time,d,e);
end

initial begin
#10 $display("[%0t] d=0x%0h e=0x%0h",$time,d,e);
#10 $display("[%0t] d=0x%0h e=0x%0h",$time,d,e);
end

endmodule
