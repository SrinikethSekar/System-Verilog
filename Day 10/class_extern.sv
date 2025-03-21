class transaction;
	bit[31:0]data;
	int id;

	extern function void display();
	extern task delay();
		
endclass : transaction


function void transaction::display();
	$display("data=%0d,id=%0d",data,id);
endfunction

task transaction::delay();
	#50;
	$display("Time=%0.0t , delayed data=%0d",$time,(data*5));
endtask 

module class_extern;

	transaction tr;

	initial begin

		tr=new();

		tr.data=100;
		tr.id=1;

		tr.display();
		tr.delay();

	end


endmodule


// OUTPUT
// # data=100,id=1
// # Time=50 , delayed data=500
