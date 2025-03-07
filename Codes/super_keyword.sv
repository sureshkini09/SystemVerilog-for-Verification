class parent_class;
	 bit [31:0] addr;

	
	function display();
		$display("Addr = %0d",addr);
	endfunction
endclass

class child_class extends parent_class;
	bit [31:0] data;
	bit [31:0] addr1;
	bit [31:0] add;
	bit [31:0] addr;
	function display1();
		add = super.addr + addr1;
		super.display();  // display functin of parent class
		$display("Addr1 = %0d",addr);
		$display("add = %0d",add);
	endfunction
endclass

module super_keyword;
initial begin

child_class c = new();
c.addr = 10;
c.addr1 = 20;
c.display1();
end
endmodule
