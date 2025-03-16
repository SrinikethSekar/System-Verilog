module class_casting1;
	typedef enum {
					INDIA =10,
					PAKISTAN =100,
					AUSTRALIA =250,
					ENGLAND =300}  teams;

					initial begin

						teams t;

						$cast(t,100+150);
						$display("A:team is :%s",t.name());

						$cast(t,250+50);
						$display("B:team is : %s",t.name());

					end 
endmodule
