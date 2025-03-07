//parant class
class parent_class;
	bit [31:0]addr;
	bit [31:0]data;
endclass

//child class
class child_class extends parent_class;
	bit [31:0]data1;
	bit [31:0]addr1;
endclass

module inheritance;
	int size;
	initial begin
		child_class c = new();
		c.addr = 10;
		c.data=20;
		c.addr1=5;
		c.data1=15;
		size = $bits(child_class);
		$display("Size of child class = %0d",size); // [D]as size of the class is 64, will that mean that no memory is created for parent paramenters, only memory is allowcated for child parameters.
		$display("Value of addr=%0d data=%0d addr=%0d data=%0d",c.addr,c.data,c.addr1,c.data1);
	end
endmodule
