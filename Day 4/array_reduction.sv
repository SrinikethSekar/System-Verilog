module arrayReduction;
 int intA[4] = '{4,3,2,1};
 logic [7:0] intB [2][2] = '{ '{1,2}, '{3,4} };
 int y;
 initial begin

 y = intA.sum;
 $display("intA.sum = %0d",y); 
 y = intA.sum with ( item + 1);
 $display("intA.sum = %0d",y); 



 y = intB.sum with (item.sum with (item)); 
 $display("intB.sum = %0d",y); 

 y = intB.xor(item) with (item.xor); 
 $display("intB.xor = %0h",y); 

 y = intA.product;
 $display("intA.product = %0d",y); 

 y = intA.product(item) with (item + 1);
 $display("intA.product = %0d",y); 

 y = intA.and;
 $display("intA.and = %0h",y);

 y = intA.or;
 $display("intA.or = %0h",y); 
 end
 endmodule
