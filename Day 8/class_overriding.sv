class parent;
	function void display();
		$display("------------------------------",);
		$display("this is a parent class",);
	endfunction
		
endclass : parent

class child extends parent;
	function void display(); //overriding parent display
		$display("This is a child class",);
		$display("-------------------------------",);
	endfunction
endclass : child

module class_overriding;

	initial begin 

		parent p;
		child c;

		p=new();
		c=new();


		p.display(); //calling parent display
		c.display(); //calling child display overriding the parent display

	end

endmodule
