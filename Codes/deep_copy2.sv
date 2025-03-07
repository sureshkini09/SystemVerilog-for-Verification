module deep_copy_example;
  // Declare a class
  class MyClass;
    int a;
    int b;
    
    // Function to create a deep copy
    function MyClass deep_copy();
      MyClass new_obj = new;
      new_obj.a = this.a;
      new_obj.b = this.b;
      return new_obj;
    endfunction
  endclass

  MyClass obj1, obj2;

  initial begin
    obj1 = new;
    obj1.a = 10;
    obj1.b = 20;

    // Deep copy using the custom function
    obj2 = obj1.deep_copy();

    obj2.a = 30; // This will NOT affect obj1.a because it's a deep copy.

    $display("obj1.a = %0d, obj2.a = %0d", obj1.a, obj2.a);
  end
endmodule

