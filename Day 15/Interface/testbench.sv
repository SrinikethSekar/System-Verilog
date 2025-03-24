module testbench;
  
  and_if inst();
  
  and_i uut(inst);

  initial begin
    inst.a = 0; inst.b = 0; #1;
    inst.a = 0; inst.b = 1; #1;
    inst.a = 1; inst.b = 0; #1;
    inst.a = 1; inst.b = 1; #1;
  end
endmodule
