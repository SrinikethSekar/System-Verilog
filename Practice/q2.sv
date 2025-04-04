// 2. Declare a 2D unpacked array of 4 rows and 5 columns. Assign values to each element and display them using nested loops.

module unpacked_array;
  
  int arr[4][5];
  
  initial begin
    
    for( int i=0; i<4; i++)begin
      for(int j=0; j<5; j++)begin
        arr[i][j]=i*5+j;
        
      end
    end
    
    $display("2d array");
    for(int i=0; i<4; i++)begin
      for(int j=0; j<5; j++)begin
        $write("%0d ",arr[i][j]);
      end
      $display(" ");
    end
    
  end

  
endmodule
