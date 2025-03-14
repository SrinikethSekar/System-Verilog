	class animals;
		virtual function void display();
		$display("inside the base class",);		
		endfunction 
	endclass : animals

	class parrot extends animals;
		function void display();
			$display("************************",);
			$display("inside the parrot class",);
		endfunction
	endclass : parrot

	class tiger extends animals;
		function void display();
			$display("inside the tiger class",);
			$display("**********************",);
		endfunction
	endclass : tiger

	class lion extends animals;
		function void display();
			$display("inside the lion class",);
			
		endfunction
	endclass : lion

	module class_polymorphism3;

		initial begin
			parrot p1=new();
			lion l1=new();
			tiger t1=new();

			animals a1[3];


			a1[0]=p1;
			a1[1]=l1;
			a1[2]=t1;

			a1[0].display();
			a1[1].display();
			a1[2].display();

		end
	
	endmodule
