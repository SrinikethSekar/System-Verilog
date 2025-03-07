class parent_class;
	bit[31:0]addr;

	function void display_p();

		$display("\t Addr=%0d",addr);
		
	endfunction 

endclass : parent_class

class child_class extends parent_class;
	bit[31:0]data;

	function void display_c();

		$display("\t Data=%0d",data);

	endfunction

endclass


module class_inheritance2;

	child_class c1;
	initial begin

		c1=new();

		c1.data=(5);
		c1.addr=(4);
		$display("********************************",);
		c1.display_p();
		c1.display_c();
		$display("********************************",);
	end 
endmodule
