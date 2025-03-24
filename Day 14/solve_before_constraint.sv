// -------------------------------------------------------------------------------------
// Before solving
// -------------------------------------------------------------------------------------
class seq_item;
	rand bit[7:0]val;
	rand bit en;

	constraint enc { if(en == 1) { val inside {[0:100]}; } }

endclass : seq_item

module solve_before_constraint;

	seq_item item;

	initial begin

		item =new();

		repeat(5)begin
			item.randomize();
          $display("en=%0d  val=%0d",item.en,item.val);

		end

	end

endmodule

// en=0  val=150
// en=0  val=115
// en=0  val=64
// en=0  val=209
// en=0  val=18


// -------------------------------------------------------------------------------------
// After solving
// -------------------------------------------------------------------------------------

class seq_item;
	rand bit[7:0]val;
	rand bit en;

  constraint enc {solve en before val; if(en == 1) { val inside {[0:100]}; } }

endclass : seq_item

module solve_before_constraint;

	seq_item item;

	initial begin

		item =new();

		repeat(5)begin
			item.randomize();
          $display("en=%0d  val=%0d",item.en,item.val);

		end

	end

endmodule

// en=1  val=11
// en=0  val=115
// en=1  val=32
// en=0  val=209
// en=0  val=18
