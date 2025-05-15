class half_adder_coverage;

	bit a,b;

	covergroup ha_cg;

		cp_a : coverpoint a;
		cp_b : coverpoint b;
		cp_ab: cross cp_a, cp_b;
	
	endgroup

	function new();

		ha_cg = new();

	endfunction

	function void sample_inputs(bit a_val,bit b_val);
		a= a_val;
		b= b_val;
		ha_cg.sample();
	endfunction

endclass

module TB_half_adder;

	logic a,b;

	logic sum,carry;

	half_adder dut(
			.a(a),
			.b(b),
			.sum(sum),
			.carry(carry)
			);

	half_adder_coverage cov;

			initial begin

				cov = new();
				
              for (int i = 0; i < 4; i++) begin
      					{a, b} = i;
      					#5;
      					$display("a=%0b b=%0b -> sum=%0b carry=%0b", a, b, sum, carry);
      					cov.sample_inputs(a, b);
    				end

    				$display("Functional Coverage = %0.2f %%", cov.ha_cg.get_coverage());
    				$finish;
  			end

endmodule

// # a=0 b=0 -> sum=0 carry=0
// # a=0 b=1 -> sum=1 carry=0
// # a=1 b=0 -> sum=1 carry=0
// # a=1 b=1 -> sum=0 carry=1
// # Functional Coverage = 100.00 %
