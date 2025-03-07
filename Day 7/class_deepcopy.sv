


module class_deepcopy;
	
class packet;
	class pal;

	bit[31:0] start_address;
	bit[31:0] end_address;

	function new ();
		start_address = 32'h10;
		end_address = 32'h20;
	endfunction 

	function pal copy;
		copy = new();
		copy.start_address = this.start_address;
		copy.end_address = this.end_address;
		return copy;

	endfunction

	endclass 

	bit[31:0] addr;
	bit [31:0] data;
	pal pt;

	function new();
		addr=32'hfa;
		data=32'hff;
		pt =new();
	endfunction

	function void display();

		$display("------------------------------------------",);
		$display("\t addr=%0h",addr);
		$display("\t data=%0h",data);
		$display("\t start_address=%0h",pt.start_address);
		$display("\t end_address=%0h",pt.end_address);
		$display("------------------------------------------",);

	endfunction


	function packet copy();
		
		copy=new();
		copy.addr=this.addr;
		copy.data=this.data;
		copy.pt = pt.copy;
		return copy;

	endfunction



endclass

	packet pkt1;
	packet pkt2;

	initial begin
		pkt1=new();
		$display("**********packet 1 display************",);
		pkt1.display();

		pkt2=new();
		$display("**********packet 2 display************",);
		pkt2.display();

		pkt2=pkt1.copy();

		pkt2.addr=32'hFB;
		pkt2.pt.start_address=10;
		pkt2.pt.end_address=12;

		$display("**********packet 2 full display***********",);
		pkt2.display();
		pkt1.pt.start_address=2;
		$display("**********packet 1 full display***********",);
		pkt1.display();

	end

endmodule
