module array_ordering;

	string str[5]= '{"bob","sri","valan","nithish","swa"};
	int inta[6]='{1,9,8,7,6,4};

	initial 
	begin

		$display("Before 'str reverse : str=%p",str); 

		str.reverse;
 		$display("AFTER 'str' reverse: str=%p", str);

 		$display("BEFORE 'intA' sort: intA=%p", inta);
 		//intA.sort (x) with (x > 6); //OK – 'with' clause is ok
 		inta.sort;
 		$display("AFTER 'intA' sort: intA=%p",inta);

 		$display("BEFORE 'intA' rsort: intA=%p",inta);
		 //intA.rsort (x) with (x > 3); //OK – 'with' clause is ok

		 inta.rsort;
		 $display("AFTER 'intA' rsort: intA=%p",inta);

		 $display("BEFORE 'intA' shuffe: intA=%p",inta);
		 //intA.shuffe (x) with (x < 5); //Compile ERROR –
		 //cannot use 'with' clause
		 
		 inta.shuffle;
		 $display("AFTER 'intA' shuffe: intA=%p",inta);
		 end

endmodule

// # KERNEL: BEFORE 'intA' sort: intA='{1, 9, 8, 7, 6, 4}
// # KERNEL: AFTER 'intA' sort: intA='{1, 4, 6, 7, 8, 9}
// # KERNEL: BEFORE 'intA' rsort: intA='{1, 4, 6, 7, 8, 9}
// # KERNEL: AFTER 'intA' rsort: intA='{9, 8, 7, 6, 4, 1}
// # KERNEL: BEFORE 'intA' shuffe: intA='{9, 8, 7, 6, 4, 1}
// # KERNEL: AFTER 'intA' shuffe: intA='{4, 8, 9, 1, 6, 7}
