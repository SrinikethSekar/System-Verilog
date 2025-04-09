interface mult_inf(input logic clk,rst);
  logic [7:0] a, b;
  logic [15:0] out;
  logic en;
  logic ack;
  
  
  clocking cb @(posedge clk);
    default input #1 output #2;
    input out , ack;
    output a,b,en;
  endclocking
  
  modport TB ( clocking cb, input clk,rst);
    modport RTL ( input clk,rst,a,b,en,output out,ack);
    
endinterface
