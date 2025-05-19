module tb_assertion;

	logic clk,rst_n,d;
	logic q,qb;

	dff_syn dut(
	          .clk(clk),
	   	  .rst_n(rst_n),
		  .d(d),
		  .q(q),
		  .qb(qb));
 
   	clk = 0;
   	always #5 clk=~clk;

   	property reset_check;

		@(posedge clk)!rst_n |-> q==0;
	
	endproperty

	assert property (reset_check)
	else
		$error("Q must be 0 during reset");

	property d_latch;

		@(posedge clk)(rst_n && $stable(d)) |-> q==1;

	endproperty

	assert property (d_latch);
	else
 		$error("d_latch not working");

	initial begin

		$display("Starting DFF Test");
		clk=0;
		rst_n=0;
		d=1;

		#12 rst_n = 1;
		#10 d     = 0;
		#10 d     = 1;
		#10 d     = 0;
		#10 $finish;

	end
endmodule



