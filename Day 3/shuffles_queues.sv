module queue_example;
  // declaration
  int num_q[$];
    
  initial begin
    for(int i = 0; i < 10; i++) num_q.push_back(i);
    $display("--- Before shuffle ---");
    foreach(num_q[i]) $display("num_q[%0d] = %0d", i, num_q[i]);
    num_q.shuffle();
    $display("----------------------");
    $display("--- After shuffle ---");
    foreach(num_q[i]) $display("num_q[%0d] = %0d", i, num_q[i]);
  end
endmodule

// # KERNEL: --- Before shuffle ---
// # KERNEL: num_q[0] = 0
// # KERNEL: num_q[1] = 1
// # KERNEL: num_q[2] = 2
// # KERNEL: num_q[3] = 3
// # KERNEL: num_q[4] = 4
// # KERNEL: num_q[5] = 5
// # KERNEL: num_q[6] = 6
// # KERNEL: num_q[7] = 7
// # KERNEL: num_q[8] = 8
// # KERNEL: num_q[9] = 9
// # KERNEL: ----------------------
// # KERNEL: --- After shuffle ---
// # KERNEL: num_q[0] = 8
// # KERNEL: num_q[1] = 7
// # KERNEL: num_q[2] = 0
// # KERNEL: num_q[3] = 5
// # KERNEL: num_q[4] = 3
// # KERNEL: num_q[5] = 9
// # KERNEL: num_q[6] = 2
// # KERNEL: num_q[7] = 1
// # KERNEL: num_q[8] = 4
// # KERNEL: num_q[9] = 6
