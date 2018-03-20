`timescale 1ns / 100ps

module multiplexer1_to_4(
	input a,
	input b,
	input c,
	input d,
	input s0,
	input s1,
	output z
    );
and(temp1, a, ~s0, ~s1);
and(temp2, b, s0, ~s1);
and(temp3, c, ~s0, s1);
and(temp4, d, s0, s1);

or(z, temp1, temp2, temp3, temp4);

endmodule