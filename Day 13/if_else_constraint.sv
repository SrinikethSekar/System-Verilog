	class seq_item;
		rand bit[7:0] value;
		rand enum {LOW,HIGH}scale;

		constraint c{if(scale == LOW)
							value<50;
					else
						value>=50;
		}

	endclass : seq_item


	module if_else_constraint;

		seq_item item;

		initial begin

			item =new();


			repeat(5)begin
              
              item.randomize();

              $display("scale name =%s,value of a :%0d",item.scale.name(),item.value);

			end


		end
	endmodule


//OUTPUT
// # KERNEL: scale name =HIGH,value of a :95
// # KERNEL: scale name =LOW,value of a :10
// # KERNEL: scale name =LOW,value of a :45
// # KERNEL: scale name =LOW,value of a :6
// # KERNEL: scale name =HIGH,value of a :62
