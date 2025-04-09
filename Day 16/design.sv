

module multiplier(mult_inf.RTL inf);
  
  always@(posedge inf.clk or posedge inf.rst)
   begin
    if(inf.rst)begin
      
      inf.out <= 0;
      inf.ack <= 0;
      
    end
  else if(inf.en)begin
    inf.out <=  inf.a * inf.b;
    inf.ack <= 1;
  end
  else 
    inf.ack <= 0;
  
  end
  
endmodule
