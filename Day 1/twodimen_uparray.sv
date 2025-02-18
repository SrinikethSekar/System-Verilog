module twodimenarray;
  int array[6][2] = '{'{1,5},'{2,10},'{3,15},'{4,20},'{5,25},'{6,30}};
	
initial
begin
  foreach(array[i,j]) begin
		$display("array[%0d][%0d]=%0d",i,j,array[i][j]);
	end
		
	end
endmodule
