module class_static_casting;

	real r_a;
	int i_a;


	initial begin

		 r_a = (2.3*5.6);
		 i_a = int'(2.3*5.6);

		 $display("Real value  is %f",r_a);
		 $display("int value is %f",i_a);

	end		

endmodule
