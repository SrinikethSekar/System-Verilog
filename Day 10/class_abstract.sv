virtual class packet;

	bit[31:0]addr;

endclass : packet

		class extended_packet extends packet;

		function void display();

			$display("Value of addr is :%0d",addr);

		endfunction   

		endclass : extended_packet

module class_abstract;


	initial begin

		extended_packet p;

		p=new();

		p.addr=10;

		p.display();

	end


endmodule
