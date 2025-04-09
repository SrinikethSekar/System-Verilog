`include "interface.sv"

module tb_top;
  bit clk;
  bit rst;
  
  always #2 clk = ~clk;
  initial begin
    $dumpfile("waves.vcd");
    $dumpvars;
  end
  initial begin
    clk = 0;
    rst = 1;
    #2;
    rst = 0;
  end 
  
  
  mult_inf inf(clk, rst);
  multiplier DUT(inf);
  
  `define TB_IF inf.TB.cb
   
  initial begin
    #5;
    `TB_IF.a <= 'd5; `TB_IF.b <= 'd6;    
    `TB_IF.en <= 1;
    #10 `TB_IF.en <= 0;
    wait(`TB_IF.ack);
    $display("time = %0t: a=%d b=%d, out=%d", $time, inf.a,inf.b,inf.out);
    
    #25;
    `TB_IF.a <= 'd20; `TB_IF.b <= 'd7;
    #5ns `TB_IF.en <= 1;
    #6 `TB_IF.en <= 0;
    wait(`TB_IF.ack);
    $display("time = %0t: a=%d b=%d, out=%d", $time, inf.a,inf.b,inf.out);
    
    #25;
    `TB_IF.a <= 'd10; `TB_IF.b <= 'd4;
    #6ns `TB_IF.en <= 1;
    #5 `TB_IF.en <= 0;
    wait(`TB_IF.ack);
    $display("time = %0t: a=%d b=%d, out=%d", $time, inf.a,inf.b,inf.out);

    #10;
    $finish;
  end
endmodule
