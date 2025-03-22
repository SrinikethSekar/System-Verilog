
class seq_item #(parameter int p1=10, p2=20);
	rand bit [7:0] value1;
	rand bit [7:0] value2;
	rand bit [7:0] value3;
	rand bit [7:0] value4;
	rand bit [7:0] value5;
	rand bit [7:0] value6;
	rand bit [7:0] value7;

	constraint a { value1 inside {[10:20]};	}
	constraint b { value2 inside {40,70,80};}
	constraint c { value3 inside {[10:20],40,50,70,80};}
    constraint d { !(value4 inside {[100:200]});}
	constraint e { value5 inside {[value1:value2]};}
    constraint f { value6 inside {[0:0]};}
	constraint g { value7 inside {[p1:p2]};}

endclass : seq_item


module inisde_constraint;

	seq_item#(100,200) se;

	initial begin

		se=new();


		repeat(3)begin
			se.randomize();

			      $display("value1 = %0d, value2 = %0d, value3 = %0d, value4 = %0d, value5 = %0d, value6 = %0d, value7 = %0d", se.value1, se.value2, se.value3, se.value4, se.value5, se.value6,  se.value7);


			      	end 
  
  	end 

  endmodule  

// //output
// # KERNEL: value1 = 19, value2 = 80, value3 = 17, value4 = 14, value5 = 61, value6 = 0, value7 = 167
// # KERNEL: value1 = 17, value2 = 40, value3 = 11, value4 = 46, value5 = 23, value6 = 0, value7 = 163
// # KERNEL: value1 = 19, value2 = 70, value3 = 10, value4 = 61, value5 = 59, value6 = 0, value7 = 107
