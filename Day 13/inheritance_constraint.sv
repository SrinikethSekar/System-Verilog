class parent;
	rand bit[5:0]value;
	constraint value1 { value >0; value<10;
	}

endclass : parent

class child extends parent;
	constraint value2{ value inside {[10:20]};}  //constraint overriding
endclass : child

module inheritance_constrainsts;

	parent pr;
	child c;

	initial begin

		pr=new();
		c=new();

		repeat(3)begin
			pr.randomize();
			$display("Value of the parent:%0d",pr.value);
		end 

		repeat(3)begin
			c.randomize();
			$display("Value of the child:%0d",c.value);
		end 

	end

endmodule


// //output
// Value of the parent:2
// Value of the parent:3
// Value of the parent:6
// Value of the child:10
// Value of the child:20
// Value of the child:12
