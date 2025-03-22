	class seq_item;
		rand bit[7:0] value;
		rand enum {LOW,HIGH}scale;

		constraint c{ value == ((scale==LOW) ? 20:90);}

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


// # KERNEL: scale name =HIGH,value of a :90
// # KERNEL: scale name =HIGH,value of a :90
// # KERNEL: scale name =LOW,value of a :20
// # KERNEL: scale name =LOW,value of a :20
// # KERNEL: scale name =HIGH,value of a :90
