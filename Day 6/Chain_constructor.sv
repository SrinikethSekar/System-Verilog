module class_TOP( );
	 class base;
		 function new( );
		 $display($stime,,," new( ) from BASE Class");
		 endfunction
	 endclass : base
 
	 class ext extends base;
		 function new;
		 super.new( ); //MUST be the frst statement
		 $display($stime,,, "Call super.new from Extended class");
		 endfunction
	 endclass: ext

	 base base1;
	 ext ext1;
	 
	 initial begin;
	 ext1 = new( );
	 end
	 initial #1 $fnish(2);

 endmodule
