class packet;

// static properties to keep a track of pkts created
 static byte no_of_pkts_created;
		//byte dummy;
function new();
	//increment pkt count on creating an object
	
	no_of_pkts_created++;
	//dummy++;
endfunction

//methd to display class properties
function void display_packt_created();

	$display("\t %0d packets created.",no_of_pkts_created);
	//$display("\t %0d dummy packets",dummy);
endfunction

endclass
/*
A static class method cannot aaccess non static class members
But a non static class method can access static class members
*/

/*
Characte
*/

module static_propeties;

	packet pkt[3];
	
	initial begin 
		foreach(pkt[i]) begin
			pkt[i] = new();
		end
		pkt[0].display_packt_created();
	end
endmodule

