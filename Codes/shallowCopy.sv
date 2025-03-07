// Shallow copy

class B;
int i;
endclass

module main;
initial 
begin
B b1;
B b2;
b1 = new();
b1.i = 57;
b2 = new b1; // here if we add a new, the displayed values are diff/ WHY? , is it because a deep copy is created without writing the function of deep copy
b2.i = 32;
$display(b1.i);
$display(b2.i);
end
endmodule
