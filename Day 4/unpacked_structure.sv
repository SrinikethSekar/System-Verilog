module SU;
	 struct {bit [7:0] intr; //unpacked struct
	 logic [23:0] addr;
	 } SURu;
 	initial begin
		 SURu.intr = 'hFF; //assign to a single feld
		 $display($stime,,, "SURu = %p", SURu);
		 $display($stime,,, "SURu Intr = %h", SURu.intr);

		 SURu = '{'h00,'hFF}; //assign to all felds
		 $display($stime,,, "SURu = %p", SURu);

		 //SURu = SURu + 'h12;
		 // ERROR- Unpacked struct can't be used as a vector
	 end
		 typedef struct {
		 int addr = 'hff; //default initial value
		 int data;
		 byte crc [4] = '{4{1}}; //default initial value
		 } bus;

		 bus b1;

	initial begin
		 $display ("\n");
		 $display($stime,,, "b1.addr=%h b1.data=%h b1.crc=%p",b1.addr,b1.data,b1.crc);
		

		 b1 = '{'h 1010, 'h a0a0, '{1,2,3,4}}; 
		 $display($stime,,, "b1.addr=%h b1.data=%h b1.crc=%p",b1.addr,b1.data,b1.crc);
	end
 endmodule


//  # KERNEL:          0  SURu = '{intr:255, addr:x}
// # KERNEL:          0  SURu Intr = ff
// # KERNEL:          0  SURu = '{intr:0, addr:255}
// # KERNEL: 
// # KERNEL: 
// # KERNEL:          0  b1.addr=000000ff b1.data=00000000 b1.crc='{1, 1, 1, 1}
// # KERNEL:          0  b1.addr=00001010 b1.data=0000a0a0 b1.crc='{1, 2, 3, 4}
