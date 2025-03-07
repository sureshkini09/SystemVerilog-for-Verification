virtual class parent_class;
virtual task display();
$display("This is class A");
endtask
endclass

virtual class child_class extends parent_class;
task display();
$display("This is extended class A");
endtask
endclass

module polymorphism;
child_class my_ea; // handle creation or instantiation
parent_class my_a;

initial 
begin
//my_a = new(); // object creation / new()->class constructing operator
my_a.display();

//my_ea = new();
my_a = my_ea;
//my_ea = my_a; // what happens if class handle is pointed to parent

my_a.display();
end
endmodule


