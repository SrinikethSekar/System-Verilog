module class_casting2;
	typedef enum {
					INDIA =10,
					PAKISTAN =100,
					AUSTRALIA =250,
					ENGLAND =300}  teams;

					initial begin

						teams t;

						if($cast(t,10+240))
							$display("A:Team is :%s",t.name());
						else
							$display("A:Team casting failed",);

						if($cast(t,5+5))
							$display("B:Team is :%s",t.name());
						else
							$display("B:Team casting failed",);
					end 
endmodule


// # A:Team is :AUSTRALIA
// # B:Team is :INDIA
