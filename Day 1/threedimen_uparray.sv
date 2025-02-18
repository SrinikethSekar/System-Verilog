module threedimemarray;
	int array [2][3][2] = '{'{'{1,5},'{2,10},'{7,35}},
							  '{'{3,15},'{4,20},'{8,40}}
							  };
initial
begin
  foreach(array[i,j,k]) begin
		$display("array[%0d][%0d][%0d]=%0d",i,j,k,array[i][j][k]);
	end
		
	end

endmodule 
