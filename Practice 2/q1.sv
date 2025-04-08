1. Declare a dynamic array of integers, allocate memory for 10 elements, assign values, and print them using a loop.

module dyn;
  
  int arr[];
  
  initial begin
    
    arr=new[10];
    
    foreach(arr[i])
      arr[i]=i*2;
    
    
    foreach(arr[i])
      $display("value of array %0d",arr[i]);
    
         
    
  end
  
endmodule
