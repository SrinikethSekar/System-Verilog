class transaction #(parameter WIDTH = 2 , type D_TYPE = bit[2:0]);

	bit[WIDTH-1:0]data;
	D_TYPE id;

	function void display();
		$display("data=%0d,id=%0d",data,id);
	endfunction 

endclass : transaction


module class_parameterized;

	transaction tr1;
	transaction #(3,int) tr2; 

	initial begin

		tr1=new();
		tr2=new();

		tr1.data=1;
		tr1.id=2;
		tr1.display();

		tr2.data=0;
		tr2.id=5;
		tr2.display();

	end

endmodule
