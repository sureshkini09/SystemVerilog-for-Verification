// Declare dynamic array
module dynamic_aray ();
reg [7:0] array_1[];
 
initial begin
//allocate array for S locations
$display("Settting array sixze to 5");
array_1=new[8];
$display("Initial the array with default values");
for(int i=0; i<8;i++) begin
array_1[i]=i;
end
//doubling the size of array with old content still valid
array_1=new[8] (array_1); 
 
// print current size
 
 
	$display("Current array size is %d",array_1.size());
	for(int i=0; i< 8;i++) begin
		$display("Value at location %d is %d",i,array_1[i]);
	end
 
	//delete array
	$display("Deleting the array");
	array_1.delete();
	$display("Current array size is %d",array_1.size());
	#1 $finish;
end
endmodule
