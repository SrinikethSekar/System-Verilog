module one_dimen_packed;
  bit [2:0] array = 3'b101;  // 1D packed array (3 bits wide)

  initial begin
    foreach (array[i]) begin
      $display("array[%0d]=%0b", i, array[i]);
    end
  end
endmodule
