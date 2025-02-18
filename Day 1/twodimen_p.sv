module singledimen_up ;
	bit [2:0][3:0]array = '{4'h2, 4'h4, 4'h6};
initial
begin
	foreach(array[i,j]) begin
		$display("array[%0d][%0d]=%0d",i,j,array[i]);
	end
		
	end

endmodule
