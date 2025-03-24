module testbench;

	count_if inst();

	up_counter uut(inst);

	initial begin
  	
  	inst.clk=0;
    forever #5 inst.clk=~inst.clk;
	

		inst.reset=1;
		#20;
		inst.reset=0;
		#20;

    $display("\n // Parameterised interface example");
  
    $monitor("\ncount=%0d",inst.counter);
    
	end 

endmodule
