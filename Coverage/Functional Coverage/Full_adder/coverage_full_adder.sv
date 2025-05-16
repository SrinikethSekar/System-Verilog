
class coverage;
  
  transaction tr;
  event my_event;
  mailbox montocov;
  
  
  
covergroup ha_cg;

		cp_a : coverpoint tr.a;
		cp_b : coverpoint tr.b;
  		cp_c : coverpoint tr.c;
		cp_ab: cross cp_a, cp_b, cp_c;
	
endgroup
  
function new(mailbox gijo);
    this.montocov = gijo;
		ha_cg = new();
endfunction
  

  task main();
    tr=new();

    
    repeat(tr.rep)
      begin
        
    	montocov.get(tr);

        ha_cg.sample();
        
        $display("*****************************************");
        $display("             COVERAGE            "); 
		$display("Functional Coverage = %0.2f %%", ha_cg.get_coverage());
        
        
        $display("*****************************************");

        -> my_event;
        end
    
  endtask
  

endclass

