module class_TOP( );
	
 	class aa;
 	int i1;
 		function funAA;
 		endfunction
 	endclass : aa

 	class bb extends aa;
 		int i1;
 		function funBB;
 		endfunction
 	endclass : bb

 	initial begin
 		bb b;
		 b = new( );
 		end

 endmodule
