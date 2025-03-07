module dynamic_array ();
	reg [7:0] array_1[];
initial begin
	$display("Setting array size to 5");
	array_1 = new[5];
	$display("Initialize the array with different value");
	for(int i=0; i< 5;i++) 
	begin
		array_1[i] = i;
	end
	array_1 = new[8] (array_1);
	
	$display("Current array size is %d",array_1.size());
	for(int i=0; i< 8;i++) begin
		$display("Value at location %d is %d",i,array_1[i]);
	end

	$display("Deleting the array");
	array_1.delete();
	$display("Current array size is %d",array_1.size());
	#1 $finish;
end
endmodule
