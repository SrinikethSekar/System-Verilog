class parent;
	bit[31:0]addr;

	function display();
		$display("-------------------------",);
		$display("Addr=%0d",addr);
	endfunction  

endclass : parent


class child extends parent;
	bit[31:0]data;

	function display();
		super.display();
		$display("Data=%0d",data);
		$display("------------------------",);
	endfunction

endclass : child


module class_superkeyword;

	initial begin
		child c=new();
		c.addr=10;
		c.data=20;


		c.display();

	end 
endmodule
