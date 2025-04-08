5. Declare a queue and demonstrate the use of $size(), $left(), and $right() functions on it.

module queue;

  int q[$];
  
  initial begin
    
    q={-1,-2,2,3,4,5,8,9};
    
    $display("Size of the queue:%0d",$size(q));
    $display("left:%0d",$left(q));
    $display("Right:%0d",$right(q));
    
  end
  
endmodule
