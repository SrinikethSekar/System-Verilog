module singledimen_up ;
	bit [1:0][2:0][3:0]array = 1{'{4'h2, 4'h4, 4'h6},
								'{4'h4,4'h7,4'h8}};
initial
begin
	foreach(array[i,j,k]) begin
		$display("array[%0d][%0d][%0d]=%0d",i,j,k,array[i]);
	end
		
	end

endmodule
