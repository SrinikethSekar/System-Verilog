class parent;
	int a;
	int b;
	virtual function void display();
		a=1;
		b=2;
		$display("****This is a Parent Class****",);
		$display("A=%0d  B=%0d",a,b);			
	endfunction 

endclass : parent


class child1 extends parent;
	int c,d,e;

	function void display();
		c=2;
		d=3;
		e=c+d;
		$display("****This is a child1 Class****",);
		$display("The value of E=%0d",e);
	endfunction

endclass


class child2 extends parent;

	int f;
	function void display();
		f=a*b;
		$display("****This is a child2 Class",);
		$display("Value of F=%0d",f);

	endfunction

endclass



module class_polymorphism1;

	parent p1[1:0];
	child1 c1;
	child2 c2;

	initial begin

		c1=new();
		p1[0]=c1;
		p1[1]=new();


		p1[0].display();
		p1[1].display();

	end

endmodule
