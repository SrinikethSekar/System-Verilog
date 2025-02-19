module array_example;
  int array [3][$];
    
  initial begin
    //array[0] = {2, 4, 6, 8};
    //array[1] = {1, 3, 5, 7};
    //array[2] = {100, 200, 300};
    //or
    array = '{ {2, 4, 6, 8},
               {1, 3, 5, 7},
               {100, 200, 300}
             };
    
    // Print array of queues
    foreach (array[i,j]) $display("array[%0d][%0d] = %0d", i, j, array[i][j]);
    $display("------------------");
    
    array[0].push_back(10);
    array[1].push_back(9);
    array[2].push_back(400);
    
    $display("After push_back operation");
    // Print array of queues
    foreach (array[i,j]) $display("array[%0d][%0d] = %0d", i, j, array[i][j]);
    
  end
endmodule





// # KERNEL: array[0][0] = 2
// # KERNEL: array[0][1] = 4
// # KERNEL: array[0][2] = 6
// # KERNEL: array[0][3] = 8
// # KERNEL: array[1][0] = 1
// # KERNEL: array[1][1] = 3
// # KERNEL: array[1][2] = 5
// # KERNEL: array[1][3] = 7
// # KERNEL: array[2][0] = 100
// # KERNEL: array[2][1] = 200
// # KERNEL: array[2][2] = 300
// # KERNEL: ------------------
// # KERNEL: After push_back operation
// # KERNEL: array[0][0] = 2
// # KERNEL: array[0][1] = 4
// # KERNEL: array[0][2] = 6
// # KERNEL: array[0][3] = 8
// # KERNEL: array[0][4] = 10
// # KERNEL: array[1][0] = 1
// # KERNEL: array[1][1] = 3
// # KERNEL: array[1][2] = 5
// # KERNEL: array[1][3] = 7
// # KERNEL: array[1][4] = 9
// # KERNEL: array[2][0] = 100
// # KERNEL: array[2][1] = 200
// # KERNEL: array[2][2] = 300
// # KERNEL: array[2][3] = 400
