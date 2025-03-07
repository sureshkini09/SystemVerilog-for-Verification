module associative_array;
	//array declrn
	int a_array[*];
	int index;

	initial begin 	
		//allocation array and assigning value to it
		repeat(3) begin
			a_array[index] = index*2;
			index-index+4;
		end

		//first()-Associative array method

		a_array.first(index);
		$display("\First entry is \t a_array[%0d] = %0d",index,a_array[index]);

		if(a_array.exits(8))
		$display("Index 8 exists in a_array");
		else 
		$display("Index 8 doesnt exists in a_array");
		 // last() - Associative array method 

		a_array.last(index);
		$display("");
		


