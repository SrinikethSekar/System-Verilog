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


module class_dynamic_casting;

	initial begin
		parent p;
		child c=new();
		child c1;


		c.addr=10;
		c.data=20;
		p=c;
		//c1 to p is invalid  c1=p; (X) Wrong way to use
		$cast(c1,p); //(destination,source)
		c1.display();

	end 
endmodule : class_dynamic_casting
