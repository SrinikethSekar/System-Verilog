class Example;
  rand bit [3:0] value;

  static constraint c { value inside {5, 10, 15}; }
endclass

module test;
  Example obj1, obj2;

  initial begin
    obj1 = new();
    obj2 = new();

    obj1.randomize();
    obj2.randomize();
    $display("Before disabling constraint:");
    $display("obj1 value = %0d", obj1.value);
    $display("obj2 value = %0d", obj2.value);

    
    obj2.c.constraint_mode(0);

    obj1.randomize();
    obj2.randomize();
    $display("After disabling constraint:");
    $display("obj1 value = %0d", obj1.value);
    $display("obj2 value = %0d", obj2.value);
  end
endmodule

// Before disabling constraint:
// obj1 value = 15
// obj2 value = 10
// After disabling constraint:
// obj1 value = 14
// obj2 value = 9
