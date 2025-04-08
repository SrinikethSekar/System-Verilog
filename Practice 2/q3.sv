3. Create a queue of integers, insert 5 elements, and display the queue. Then, remove the first element and display the updated queue.

module queue;
  
  int q[$];
  
  initial begin
    
    q={5,6,7,8,9};
    
    $display("Value of Queue present:%0d",q.size());
    foreach(q[i]) $display("Values[%0d]:%0d",i,q[i]);
    
    q.pop_front();
    
    $display("Value of Queue present:%0d",q.size());
    foreach(q[i]) $display("Value[%0d]:%0d",i,q[i]);
    
    
  end
  
endmodule
