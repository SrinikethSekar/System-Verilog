
module fork_join_any;

	initial begin

	fork
		begin
			
			$display("Process A started at time=%0t",$time);
			#10;
			$display("Process A completed at time=%0t",$time);

		end
		begin
			#2;
			$display("Process B started at time =%0t",$time);
			#2;
			$display("Process B completed at time =%0t",$time);

		end 
		begin
			#3;
			$display("Process C started at time=%0t",$time);
			#15;
			$display("Process C completed at time=%0t",$time);

		end 
		$display("Fork join any completed at time=%0t",$time);
	join_any

	end 

endmodule

// //OUTPUT
// # Process A started at time=0
// # Fork join any completed at time=0
// # Process B started at time =2
// # Process C started at time=3
// # Process B completed at time =4
// # Process A completed at time=10
// # Process C completed at time=18
