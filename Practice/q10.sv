10. Declare an unpacked array of packed 4-bit values, initialize it, and sort the elements in ascending order using a simple sorting algorithm.


module un_packed;
  
  logic [3:0]arr[];
  logic [3:0]temp;
  
  initial begin

    arr=new[5];
    
    arr[0] = 4'd4;
    arr[1] = 4'd1;
    arr[2] = 4'd3;
    arr[3] = 4'd2;
    arr[4] = 4'd0;
    
    foreach(arr[i])begin
      $display("value of array:%0d",arr[i]);
    end
    
    $display("size",arr.size());

    for(int i=0; i< arr.size(); i++)begin
      for(int j=i+1; j< arr.size(); j++)begin
        if(arr[i] > arr[j])begin
          
          temp=arr[i];
          arr[i]=arr[j];
          arr[j]=temp;
          
        end
      end
    end
    
    $display("AFTER SORTING");
    foreach(arr[i])
      $display("arr[%0d]=%0d",i,arr[i]);
  end
    
 endmodule
