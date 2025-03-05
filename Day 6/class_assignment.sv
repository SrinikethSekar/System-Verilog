class packet;

	bit [31:0] data;
	bit [32:0] addr;
	bit write;
	string packed_id;

	function new();

		data	=32'h55;
		addr   =32'hFF;
		write = 1;
		packed_id = "Bad_packet"; 
	endfunction

	function display ();

		$display("-----------------------------------------------",);
		$display("\t addr=%0h",addr);
		$display("\t data=%0h",data);
		$display("\t write=%0d",write);
		$display("\t packed_id=%0s",packed_id);
		$display("-----------------------------------------------",);
		
	endfunction 

endclass 


module class_assignment;

	packet pkt1;
	packet pkt2;

	initial begin
		pkt1=new();
		$display("\t *****calling packet 1*****");
		pkt1.display();

		pkt2=pkt1;
		$display("\t *****calling packet 2*****",);
		pkt2.display();


		//changing inputs
		pkt2.addr=32'hAB;
		pkt2.packed_id="Good_packet";
		$display("\t ******calling packet 2*****",);
		pkt2.display();

	end 

endmodule
