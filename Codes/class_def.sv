//this code defines example for the class defination


/*why class - leature and lab - propety and mthod can be reused - blueprint - multiple methods - Handles = instance or pointer of that class -    	class_1 = new(); = allocates memory - this refer to class properties not method properties - 

task and function - 
*/ 
class abc;

//class properties

	int a;
	int srusti;

// Method_task

	task set(int a,int b,int srusti);
		this.a = b; 	
		this.srusti=b;
	endtask

// Method_Function

	function int get();
	return srusti;
	endfunction

endclass

// Module for class

module class_ex;

	abc class_1;
	abc class_2;
	initial begin
	class_1 = new();
	class_2 = new();
	

	class_1.set(10,15,30);
	class_2.set(20,35,50);

	$display("\tclass_1 :: Value of x = %0d", class_1.get());
	$display("\tclass_2 :: Value of x = %0d", class_2.get());


	end
endmodule

