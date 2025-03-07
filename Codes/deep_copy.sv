class A;
int i;
endclass

class B;
A a;

task copy(A a);
this.a = new a;
endtask

endclass

module main;
initial 
begin
	B b1;
	B b2;
	b1 = new();
	b1.a = new();
	b1.a.i = 111;
	b2 = new b1;
	b2.copy(b1.a);
	$display(b1.a.i);
	$display(b2.a.i);
	b1.a.i = 222;
	$display(b1.a.i);
	$display(b2.a.i);

end

endmodule

