module dynamic_array;
	int array [];
	initial begin 
	array = new[5];
	array = '{5,10,15,20,30};

	foreach (array[i])
	$display("array[%0d]=%0d",i,array[i]);
	$display("size of array=%0d",array.size());	

	array=new[8](array);
	$display("size of array = %0d",array.size());
	// in the above line adding three more spaces and adding the values in that to the new one 
  
    foreach(array[i])
    $display("array[%0d]=[%0d]",i,array[i]);
    $display("size of array = %0d",array.size());
	
	array=new[6];
	$display("size of array = %0d",array.size());
	// overriding is done above 

	foreach(array[i])
    $display("array[%0d]=[%0d]",i,array[i]);
    $display("size of array = %0d",array.size());

	end 


endmodule

// # KERNEL: array[0]=[0]
// # KERNEL: array[1]=[0]
// # KERNEL: array[2]=[0]
// # KERNEL: array[3]=[0]
// # KERNEL: array[4]=[0]
// # KERNEL: array[5]=[0]
// # KERNEL: size of array = 6
