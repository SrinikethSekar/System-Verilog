package p;
 		typedef enum { FALSE, TRUE } bool;
 endpackage

 package q;
 		typedef enum { ORIGINAL, FALSE } hair;
 endpackage

 module top1 ;
	 import p::*;
	 import q::hair;
 	 hair myhair;
 	 
 initial begin
	 myhair = q:: FALSE; // OK:
	 //myhair = FALSE;
	 // ERROR: Direct reference to FALSE refers to the
	 // FALSE enumeration literal imported from p
 end
 endmodule
