// 1. Declare a packed array of 16-bit elements with 8 elements and initialize it with hexadecimal values. Then, print all elements using a loop.

module packed_array;
  
  logic [15:0] arr [7:0];
  
  initial begin
    
    arr='{16'h0000, 16'hBBBB, 16'hCCCC, 16'hDDDD,
            16'hEEEE, 16'hFFFF, 16'h1234, 16'h5678};
    
    foreach(arr[i])begin
      $display("Value of [%0d] = %0d",i,arr[i]);
    end
    
  end
  
endmodule
