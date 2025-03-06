class adress_range;

		bit[31:0] start_address;
		bit[31:0] next_address;

			function new ();
			start_address=19;
			next_address=22;	
			endfunction

endclass 

class packet1;

	bit[31:0]addr;
	bit[31:0]data;

	adress_range ar;   //calling the packet 1 inside the class

		function new();

			addr=32'hFA;
			data=32'hFF;
			ar=new();

		endfunction

		function void display();

			$display("-------------------------------------------------",);
			$display("\t addr=%0d",addr);
			$display("\t data=%0d",data);
			$display("\t start_address=%0d",ar.start_address);
			$display("\t next_address=%0d",ar.next_address);
			$display("-------------------------------------------------",);
			
		endfunction 

endclass


module class_shallowcopy;

	packet1 pkt0;
	packet1 pkt1;

	initial begin
		pkt0=new();
		$display("\t ----------Packet 1 display----------",);
		pkt0.display();

		pkt1=new pkt0;
		$display("\t-----------Packet 2 display----------",);
		pkt1.display();


		pkt0.addr = 32'hBB;
		pkt0.ar.start_address=32'hA5;
		pkt0.ar.next_address=32'hDD;
		$display("\t-------------Packet 2 display----------",);
		pkt0.display();

		$display("\t-------------Packet 1 display----------",);
		pkt1.display();


end
endmodule


