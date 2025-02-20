module array_locator; 

	string str[5]='{"bob","kim","val","nit","sri"};
	int inta[int];
	string ques[$];
	int quei[$];
	int x;
	initial
	begin
		inta[1]=3;
		inta[2]=2;
		inta[3]=5;
		inta[4]=7;
		inta[5]=9;

		//returns all elements stratifying the with expression
		quei= inta.find(x) with (x>5);
		$display("find(x)::quei=%0p",quei);

		//returns all elements stratifying the with expression
		quei=inta.find(x) with (x<8);
		$display("find(x)::quei=%0p",quei);

		quei=inta.find_index with (item>1);
		$display("find_first::quei=%0p",quei);

		ques = str.find_first with (item > "bob");
 		$display("fnd_first::ques=%0p",ques);
 
		//returns the last element satisfying 'with' expression
		ques = str.find_last with (item < "kim");
		$display("fnd_last::ques=%0p",ques);
 
		//returns index of the frst element satisfying 'with'
		//expression
		quei = inta.find_first_index (s) with (s<8);
		$display("find_first_index::quei=%0p",quei);
 
		 //returns index of the last element satisfying 'with'
		 //expression
		 quei = inta.find_last_index (s) with (s<);
		 $display("fnd_last_index::quei=%0p",quei);



	end
endmodule

// # KERNEL: find(x)::quei=7 9
// # KERNEL: find(x)::quei=3 2 5 7
// # KERNEL: find_first::quei=1 2 3 4 5
// # KERNEL: fnd_first::ques="kim"
// # KERNEL: fnd_last::ques="bob"
// # KERNEL: find_first_index::quei=1
// # KERNEL: fnd_last_index::quei=2
