module dynamic_array;
	int array [];
	initial begin 
	array = new[5];
	array = '{5,10,15,20,30};

	foreach (array[i])
	$display("array[%0d]=%0d",i,array[i]);

	$display("size of array=%0d",array.size());	

	end

endmodule

// # KERNEL: array[0]=5
// # KERNEL: array[1]=10
// # KERNEL: array[2]=15
// # KERNEL: array[3]=20
// # KERNEL: array[4]=30
// # KERNEL: size of array=5
