module singledimenarray (
	int array[5]='{100,200,300,400,500}
	
);
initial
begin
	foreach(array[i]) begin
		$display("singledimenarray[%0d]=%d",i,array[i]);
	end
		
end

endmodule
