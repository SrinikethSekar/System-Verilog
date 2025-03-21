module fork_join_none;

		initial begin

	fork
		begin
			#1;
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
	join_none

	end 

endmodule

// //output
// # Fork join any completed at time=0
// # Process A started at time=1
// # Process B started at time =2
// # Process C started at time=3
// # Process B completed at time =4 	
// # Process A completed at time=11
// # Process C completed at time=18
