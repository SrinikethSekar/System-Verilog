// 6. Create a packed array of 32-bit elements. Initialize it with different values and extract specific bits using slicing.

module packed_array;
  
  logic [31:0] arr;
  
  initial begin
    
    arr=32'b1010_1011_1111_1011_1100_0000_1110_0010;
    
    $display("Bits [%0b]",arr);
    $display("Bits from 21:14 [%0b]",arr[21:14]);
    $display("Bits from 3:0   [%0b]",arr[3:0]);
    $display("Bits from 7:0   [%0b]",arr[7:0]);
    $display("Bits from 31:20 [%0b]",arr[31:20]);
    $display("Bits from 22:2  [%0b]",arr[22:2]);
    
    
  end
  
  
endmodule
