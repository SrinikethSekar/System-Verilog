module testbench;

	and_if inst();

	design uut(inst.dut_mp);

	initial begin

		repeat(5)begin

			inst.tb_mp.p = $random();
			#1;

			inst.tb_mp.q=$random();
			#1;

			$monitor("Value of A:%0d-----Value of B:%0d",inst.tb_mp.p,inst.tb_mp.q);

		end

	end

endmodule
