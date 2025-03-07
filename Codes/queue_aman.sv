module Queue();
	int q[$] = {2,4,8,10,12,14,16};
	int p[$];
	int e,pos;
	int front,back;
 
	initial begin
		$display("Disp[laying the elements of q ");
		$display("%p",q);
		e = q[0];
		$display("@%0d Disp...First element = %0d", $time,e);
		e = q[$];
		$display("@%0d Disp...Last element = %0d", $time,e);
		p=q;
		$display("Disp[laying the elements of p ");
		$display("%p",p);
 
		q.push_front(13);
		$display("Push Front");
		$display(" %p ",q);
		q.push_back(37);
		$display("Push back");
		$display(" %p ",q);
		$finish;
	end
endmodule
