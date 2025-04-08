4. Implement a dynamic array of logic [7:0], store hexadecimal values, and print them in reverse order using a loop.

module dynamic_array;
  
  logic [7:0] arr [];
  
  int i;
  
  initial begin
    
    arr=new[4];
    
    arr={8'hFF,8'h12,8'hAB,8'hCC};
    
    $display("Size of the array -> %0d",arr.size());
    
    foreach(arr[i])
      $display("Value of [%0d] = %0d",i,arr[i]);
    
    for(i=arr.size()-1; i>=0; i--)
     
    $display("value in reverse order arr[%0d] = %0d",i,arr[i]);
    
    	
  end
  
  
endmodule
