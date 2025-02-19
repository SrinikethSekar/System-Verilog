module darray;
 integer da [ ]; //dynamic array ‘da’ of type integer
 initial
 begin
 da = new[4]; //construct and allocate a size of 4 elements
 $display($stime,,, "da size = %0d",da.size);
 da.delete( ); //delete elements of an array
 $display($stime,,, "da size = %0d",da.size);
 da = '{1,2,3,4}; //array initialization
 $display($stime,,, "da = ",da);
 end
 endmodule

//  # KERNEL:          0  da size = 4
// # KERNEL:          0  da size = 0
// # KERNEL:          0  da = '{1, 2, 3, 4}

//Since the array was sized with four elements, we give it four values, each for each element. When we display the array “da,” we see these elements displayed.
