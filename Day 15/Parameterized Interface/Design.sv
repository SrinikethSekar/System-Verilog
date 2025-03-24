module up_counter(count_if inst);

	input inst.clk, inst.reset;

	output reg[2:0]inst.counter_up;

	always@(posedge inst.clk or posedge inst.reset)
	begin
		if(inst.reset)
			inst.counter_up <= 3'd0;
		else
			inst.counter_up <= inst.counter_up + 3'd1;
	end 


endmodule
