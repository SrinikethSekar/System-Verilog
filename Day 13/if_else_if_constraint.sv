	class seq_item;
		rand bit[7:0] value;
		rand enum {LOW,MID,HIGH}scale;

		constraint c{if(scale == LOW)
							value<25;
					else if (scale == MID)
                    {value>=26;value<=70;}
					else 
						value>=70;
		}

	endclass : seq_item


	module if_else_if_constraint;

		seq_item item;

		initial begin

			item =new();


			repeat(5)begin
              
              item.randomize();

              $display("scale name =%s,value of a :%0d",item.scale.name(),item.value);

			end


		end
	endmodule

// # KERNEL: scale name =HIGH,value of a :91
// # KERNEL: scale name =HIGH,value of a :147
// # KERNEL: scale name =MID,value of a :35
// # KERNEL: scale name =HIGH,value of a :76
// # KERNEL: scale name =LOW,value of a :2

