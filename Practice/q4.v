// 5. Declare a struct with packed elements (an 8-bit and a 4-bit field). Assign values and print the total packed size of the struct using $bits().

module packed_array;
  
  typedef struct packed{
    bit [7:0] id;
    bit [3:0] number;
  } identity;
  
  initial begin
    
    identity in;
    
    in=12'b10101010_1101;
    
    $display("Value of ID=%0d Value of NUMBER=%0d",in.id,in.number);
    
    $display("Value of number of bits is %0d",$bits(in));
    
  end
  
endmodule
