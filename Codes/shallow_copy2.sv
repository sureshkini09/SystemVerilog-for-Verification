module shallow_copy_example;
  // Declare a class
  class MyClass;
    int a;
    int b;
  endclass

  MyClass obj1, obj2;

  initial begin
    obj1 = new;
    obj1.a = 10;
    obj1.b = 20;

    // Shallow copy using assignment
    obj2 = obj1;

    obj2.a = 30; // This will also change obj1.a due to shallow copying.

    $display("obj1.a = %0d, obj2.a = %0d", obj1.a, obj2.a);
  end
endmodule

