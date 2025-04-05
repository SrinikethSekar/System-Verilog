7. Declare a packed array representing a 16-bit shift register. Implement a left shift operation and display the output at each step.

module packed_array;
  
  logic [15:0] arr;
  
  initial begin
    
    arr=16'b1000_1111_1111_1010;
    
    for(int i=0; i<4; i++)begin
      
      arr = arr << 1;
    
      $display("value After shifting %0d : %b",i+1,arr);
      
    end
    
  end
  
endmodule
