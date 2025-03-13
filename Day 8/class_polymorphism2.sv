class parent;
	virtual function void display ();
	$display("*******INSIDE THE BASE CLASS**********",);
	endfunction 
endclass : parent

class child1 extends parent;
	function void display();
	$display("********INSIDE THE CHILD1 CLASS********",);
	endfunction
endclass : child1

class child2 extends parent;
	function void display();
	$display("********INSIDE THE CHILD2 CLASS********",);
	endfunction
endclass

class child3 extends parent;
	function void display();
	$display("********INSIDE THE CHILD3 CLASS*********",);
	endfunction
endclass


module class_polymorphism2;

	initial begin

		child1 c1=new();
		child2 c2=new();
		child3 c3=new();

		parent p[3];

		p[0]=c1;
		p[1]=c2;
		p[2]=c3;

		p[0].display();
		p[1].display();
		p[2].display();

	end

endmodule
