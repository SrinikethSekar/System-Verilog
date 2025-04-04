// 4. Write a packed array that stores ASCII characters. Assign the string "HELLO" to it and print each character.

module packed_array;
  
  logic[15:0]arr[5];
  
  initial begin
    
    arr='{"H","E","L","L","O"};
    
    $display("Stored ASCII Character");
    
    foreach(arr[i])begin
      $display("value of [%0d] = %0d", i, arr[i]);
    end
    
  end
  
endmodule
