module random_2d_array;
  int array [2][3]; // 2 rows, 3 columns

  initial begin
    // Assign random values
    foreach (array[i, j]) begin
      array[i][j] = $random % 100; // Random values between -99 to 99
    end

    // Print values
    foreach (array[i, j]) begin
      $display("array[%0d][%0d] = %0d", i, j, array[i][j]);
    end
  end
endmodule
