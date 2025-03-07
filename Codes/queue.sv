module queues();
 
	int q[$] =  (3, 4, 8, 10, 12, 14,16); 
	int p[$];
	int e, pos;
	int fronte, backe;
 
	initial begin
 
	$display("Displaying elements of q");
	$display("%p",q); 
	e = q[0]; // read the first (leftmost) item 
	$display("@%0d..first element %0d", Stime, e); 
	e = q[$]; // read the last (rightmost) item 
	$display("@%0d...last element %0d", Stime, e);

	// read and write entire queue (copy)
 
	$display("Displaying elements of p");
 
	$display("%p",p);
 
	q.push front(13); 

	$display("Push front"); 
	$display("%p",q); 
	$display("Push back");
 
	q.push back(99);
 
	q.push back(299);
 
	$display("%p",q);
 
	g.push front(19);
 
	$display("Push front");
 
	$display("%p",q);
 
	$display("Push back");
 
	q.push beck(99);
 
	q.push back(299);
 
	$display("%p",q);
 
	fronte ag.pop_front();
 
	backe q.pop back();
 
	$display("pop.fe Xedbe Xed", fronte, backe); Sdisplay("Displaying elements of & after pop");
 
	$display("%p",p);
 
	a.insert(4,10); //insert(index.value)
 
	$display("Again displaying after insert q.insert(4,18)"); Sdisplay("Xp"),
 
	q = {}; // clear the queue (delete all items) Sdisplay("Displaying elements of q after q = ()");
 
	$display("%p",p);
 
	$finish;

	end
 
endmodule	
