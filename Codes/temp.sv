module tb;

	bit [7:0] mydata;
	initial begin
		mydata = 8'hA2;
		
		for(int i=0; i < $size(mydata); i++)begin
			$display ("data[%0d] = %b",i,mydata[i]);
		end
	end
endmodule

/*module tb;
	bit [7:0] 	m_data; 	// A vector or 1D packed array

	initial begin
		// 1. Assign a value to the vector
		m_data = 8'hA2;

		// 2. Iterate through each bit of the vector and print value
		for (int i = 0; i < $size(m_data); i++) begin
			$display ("m_data[%0d] = %b", i, m_data[i]);
		end
	end
endmodule*/
