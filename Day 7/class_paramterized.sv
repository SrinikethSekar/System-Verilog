class packet #(parameter int ADDR_WIDTH = 32, DATA_WIDTH = 32);
  
  bit [ADDR_WIDTH-1:0] addr;
  bit [DATA_WIDTH-1:0] data;

  function new(bit [ADDR_WIDTH-1:0] a, bit [DATA_WIDTH-1:0] d);
    addr = a;
    data = d;
  endfunction  

  function void display();
    $display("Address: %0d, Data: %0d", addr, data);
  endfunction

endclass : packet

module class_parameterized;

  initial begin 
    packet #(16, 64) pkt = new(20, 100); 
    $display("-------------------------------------",);
    pkt.display();
    $display("--------------------------------------",);
  end

endmodule
