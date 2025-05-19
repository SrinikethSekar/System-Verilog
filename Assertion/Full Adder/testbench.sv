module testbench_assertion;

	reg   a,b,c;
	wire  sum,carry;

	full_adder dut(
		.a(a),	
		.b(b),	
		.c(c),	
		.sum(sum),	
		.carry(carry),	
	);

	full_adder_assertion dut1(
		.a(a),	
	  	.b(b),	
		.c(c),	
		.sum(sum),    
		.carry(carry),
	);

endmodule


	

		

