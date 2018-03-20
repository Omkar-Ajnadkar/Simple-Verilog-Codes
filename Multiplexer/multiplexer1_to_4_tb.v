`timescale 1ns/100ps
`include "multiplexer1_to_4.v"

module multiplexer1_to_4_tb;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;
	reg s0;
	reg s1;

	// Outputs
	wire z;

	// Instantiate the Unit Under Test (UUT)
	multiplexer1_to_4 uut (
		.a(a),
		.b(b),
		.c(c),
		.d(d),
		.s0(s0),
		.s1(s1),
		.z(z)
	);

	initial begin
    $dumpfile("multiplexer1_to_4.vcd");
    $dumpvars(0, multiplexer1_to_4_tb);
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;
		s0 = 0;
		s1 = 0;

		// Wait 100 ns for global reset to finish
		#100;

		// Add stimulus here
		#100 a=1;
		#100 s0=1;a=0;b=1;
		#100 s1=1;s0=0;b=0;c=1;
		#100 s1=1;s0=1;c=0;d=1;
		#100 s1=0;s0=0;d=0;

	end

	initial begin
		$monitor("s0:%d, s1:%d, a:%d, b:%d, c:%d, d:%d, z: %d\n\n", s0, s1, a, b, c, d, z);
	end
endmodule
