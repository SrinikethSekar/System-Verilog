class packet ;

	//class properties
	byte packect_id;

	//static property to keep track of number of pkt's created
	static byte no_of_packets_created;

	//constructor
	function new ();
		no_of_packets_created++;
		packect_id=no_of_packets_created;
		
	endfunction 

	function void display();
    $display("--------------------------------------");
    $display("\t packet_id  = %0d",packect_id);
    $display("--------------------------------------");
  endfunction 

endclass


module class_static;

packet pkt[3];

initial begin
	foreach(pkt[i]) begin
		pkt[i]=new();
		pkt[i].display();

		
	end
end


endmodule

// # --------------------------------------
// #        packet_id  = 1
// # --------------------------------------
// # --------------------------------------
// #        packet_id  = 2
// # --------------------------------------
// # --------------------------------------
// #        packet_id  = 3
// # --------------------------------------
