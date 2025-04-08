6. Implement a FIFO (First In, First Out) buffer using a queue. Insert elements dynamically and remove them one by one, printing the queue state at each step.

module fifo_q;
  
  int fifo[$];
  int rem;
  
  
  initial begin
    
    fifo.push_back(12);
    fifo.push_back(10);
    fifo.push_back(2);
    fifo.push_back(7);
    fifo.push_back(9);
    
    foreach(fifo[i])
      $display("Value of [%0d]=%0d",i,fifo[i]);
    
    while(fifo.size() > 0)begin
       rem = fifo.pop_front();
      
      $display("Removed: %0d, Updated Queue: %p", rem,fifo);
    end
    
    
  end
  
endmodule
