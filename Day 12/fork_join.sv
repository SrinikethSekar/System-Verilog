
module fork_join;

	initial begin

	fork 
		begin
			$display("Process A started at time=%0t",$time);
			#10;
			$display("Process A completed at time=%0t",$time);

		end
		begin
			$display("Process B started at time =%0t",$time);
			#2;
			$display("Process B completed at time =%0t",$time);

		end 
		begin
			$display("Process C started at time=%0t",$time);
			#15;
			$display("Process C completed at time=%0t",$time);

		end 
	join

	end
endmodule

//OUTPUT
// # Process A started at time=0
// # Process B started at time =0
// # Process C started at time=0
// # Process B completed at time =2
// # Process A completed at time=10
// # Process C completed at time=15
