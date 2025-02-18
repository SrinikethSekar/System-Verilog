module mixed_array ;
	bit[4:0]array[2:0][3:0] = '{'{5'h3,5'h5},
							  '{5'h9,5'h12},
							  '{5'h8,5'h2}
							  };
initial
begin
	foreach(array[i,j]) begin
		$display("array[%0d][%0d]=%0d",i,j,array[i][j]);
	end
	end

endmodule
