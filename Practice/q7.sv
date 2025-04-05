8. Write a SystemVerilog program that declares a mixed packed and unpacked array. Assign values and demonstrate how to access individual bits.

  module mix_unpacked;
    
    logic [3:0] arr [];
    
    initial begin
      
      arr=new[4];
      
      arr[0]=4'b0101; //[0][3] [0][2] [0][1] [0][0]
      arr[1]=4'b1011;
      arr[2]=4'b0011;
      arr[3]=4'b1111;
      
      foreach(arr[i])begin
        $display("Value of arr %0p",arr[i]);
      end
      
      $display("inidividual access");
      $display("arr[0][3]=%b",arr[0][3]);
      $display("arr[1][2]=%b",arr[1][2]);
      
    end
    
  endmodule
