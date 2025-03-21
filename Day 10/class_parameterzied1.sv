class err_trans;
	bit[31:0]err_data;
	bit error;

endclass : err_trans

class transaction #(parameter WIDTH = 32, type D_TYPE=err_trans);
	bit [WIDTH-1:0]data;
	D_TYPE err_tr;


		function void display();
			$display("Transaction:data=%0d",data);
			$display("err_trans:err_data=%0h and error=%0d",err_tr.err_data,err_tr.error);
			
		endfunction 
endclass : transaction


module class_parameterized1;

	transaction tr;

	initial begin 

		tr=new();
		tr.err_tr=new();

		tr.data=100;
		tr.err_tr.err_data=32'hFFFF_FFFF;
		tr.err_tr.error=1;

		tr.display();
		

	end
 
 endmodule 
