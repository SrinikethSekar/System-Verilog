module top2 ;
	 import p::*;
	 import q::hair, q::ORIGINAL, q::FALSE;
	 //import q::*; //will not work.. need above import
 	 hair myhair;
	 initial begin
		 myhair = FALSE;
		 // OK: Direct reference to FALSE refers to the
		 // FALSE enumeration literal imported from q
	 end
endmodule
