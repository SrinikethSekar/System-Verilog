class seq_item;
	rand bit[7:0]value1;
	rand bit[7:0]value2;

	constraint c1 {value1 dist {3:/4,[5:8]:/7};}

	constraint c2 {value2 dist {3:=4,[5:8]:=7};}

endclass : seq_item

module distributed_constraints;

	seq_item item;

	initial begin

		item = new();

		repeat(5)begin

			item.randomize();

			$display("Distributed value1:%0d   Distributed value2:%0d",item.value1,item.value2);


		end 

	end 

	
endmodule
