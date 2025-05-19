module full_adder_assertions (
  input logic clk,
  input logic a,
  input logic b,
  input logic c,
  input logic sum,
  input logic carry
);

  
  property check_sum;
    @(posedge clk) sum == (a ^ b ^ c);//Simulation needs a reference time to check properties. 
  endproperty

  
  property check_carry;
    @(posedge clk) carry == ((a & b) | (b & c) | (c & a));//Simulation needs a reference time to check properties.
  endproperty

   assert property(check_sum) else
    $error("Sum mismatch: a=%b b=%b c=%b", a, b, c);

  assert property(check_carry) else
    $error("Carry mismatch: a=%b b=%b c=%b", a, b, c);

endmodule

