class transaction;
	rand bit[15:0]pktlength;
	constraint oversize { pktlength >= 16'hff00;}
endclass : transaction	

class trans_ext extends transaction;
	constraint oversize {pktlength <= 16'hff00;}
endclass : trans_ext

module constraint_overriding;

trans_ext tr;
int success;
  
	initial begin

		tr=new();
		
		success =tr.randomize();
      	$display("---------------------------");
		$display("pktlength is %d",tr.pktlength);
     	$display("---------------------------");
	end

endmodule

//output
// ---------------------------
// pktlength is 21975
// ---------------------------
