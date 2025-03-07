class packet;

// class properties
bit[31:0]addr;
bit[31:0]data;

//constructor
function new(bit[31:0]addrr,data);
this.addr=addrr;
this.data=data;
endfunction

//method to display class properties 
function void display();
$display("\addr=%0h",addr);
$display("\addr=%0h",data);
endfunction

endclass
 
module this_keyboard;

packet pkt;
 
initial begin
pkt=new(32'h10,32'hFF);
pkt.display();
end

endmodule
