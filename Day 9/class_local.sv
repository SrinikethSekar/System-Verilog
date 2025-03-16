class transaction;
	bit[31:0]data;
	local int id;

	function new();
		data=100;
		id=1;		// it need to be called inside only,data hiding of the id

	endfunction : new

	function void display();
		$display("data=%0d and id=%0d",data,id);

	endfunction

endclass : transaction

module class_local;

	transaction tr;

	initial begin
		tr=new();
		tr.display();
	end 

endmodule
