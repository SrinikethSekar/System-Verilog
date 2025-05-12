2. Write a SystemVerilog program to resize a dynamic array. First, allocate 5 elements, then resize it to 10 and display all values.
  
module dyn_arry;
  
  int arr[];
  
  initial begin
    
    arr=new[5];
    
    foreach(arr[i])
      arr[i]= i * 3 + 1;
    
    $display("Size of the array:%0d",arr.size());
    
    foreach(arr[i])
      $display("value of array[%0d]=%0d",i,arr[i]);
    
    arr=new[10](arr);
    
    $display("Size of the array:%0d",arr.size());
    
    foreach(arr[i])
      $display("value of array[%0d]=%0d",i,arr[i]);
                
  end
  
endmodule
