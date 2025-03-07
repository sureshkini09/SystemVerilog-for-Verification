virtual class packet;
	bit [31:0] addr;
	bit [31:0] data;
endclass

class extended_packet extends packet;
	function void display;
		$display("Value of addr is %0d \n Value of data is %0d",addr,data);
	endfunction
endclass

module virtual_class;
	initial begin
		extended_packet p;
		p = new();
		p.addr = 10;
		p.data= 20;
		p.display();
	end
endmodule
