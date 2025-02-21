module OP;
 integer a, b, c, d;
 real e, f, g, h;
 initial begin
	 /*** DIVISION ***/
	 $display("\n DIVISION \n");
	 a = 10; b= 3;
	 c = a/b; //c=3
	 $display("c = 10/3 :: a = %0d b = %0d c = %0d", a , b, c);

	 //Integer division truncates any fractional part to 0
	 a = 3.4; b = 2.3; //Truncate a and b since they are integers
	 c = a/b; //c=1
	 $display("integer c = 3.4/2.3 :: a = %0f b = %0f c = %0f",a , b, c);

	 e = 3.4; f = 2.3; //No truncation since e and f are real
	 g = e/f; //g=1.478
	 $display("real g = 3.4/2.3 :: e = %0f f = %0f g = %0f",e, f, g);
	 $display("\nA to the Power of B \n");

	 a = 3.4; b = 2.3; //Truncate a and b since they are integers
	 c = a**b; //c=9
	 $display("integer c = 3.4**2.3 :: a = %0f b = %0f c = %0f",a , b, c);

	 e = 3.4; f = 2.3; //No truncation since e and f are real
	 g = e**f; //g=16.687
	 $display("real g = 3.4**2.3 :: e = %0f f = %0f g = %0f",e, f, g);

	 e = 9; f = 0.5; //square root
	 g = e**f; //g=3.0
	 $display("real g = 9**.5 :: e = %0f f = %0f g = %0f",e, f, g);

	 a = 0; b= 3; //0**3 = 0
	 c = a**b;
	 $display("c = 0**3 :: a = %0d b = %0d c = %0d", a , b, c);

	 a = 0; b= -3; //0**-3 = x
	 c = a**b;
	 $display("c = 0**-3 :: a = %0d b = %0d c = %0d", a , b, c);
	 
 end
endmodule

// # KERNEL: c = 10/3 :: a = 10 b = 3 c = 3
// # KERNEL: integer c = 3.4/2.3 :: a = 3.000000 b = 2.000000 c = 1.000000
// # KERNEL: real g = 3.4/2.3 :: e = 3.400000 f = 2.300000 g = 1.478261
// # KERNEL: 
// # KERNEL: A to the Power of B 
// # KERNEL: 
// # KERNEL: integer c = 3.4**2.3 :: a = 3.000000 b = 2.000000 c = 9.000000
// # KERNEL: real g = 3.4**2.3 :: e = 3.400000 f = 2.300000 g = 16.687893
// # KERNEL: real g = 9**.5 :: e = 9.000000 f = 0.500000 g = 3.000000
// # KERNEL: c = 0**3 :: a = 0 b = 3 c = 0
// # KERNEL: c = 0**-3 :: a = 0 b = -3 c = x
