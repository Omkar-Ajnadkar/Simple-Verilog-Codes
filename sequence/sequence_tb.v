`timescale 1ns/100ps
`include "sequence.v"

module sequence_tb;
    // Inputs
    reg clk;

    // Outputs
    wire a;
    wire b;
    wire c;

    // Instantiate the Unit Under Test (UUT)
    sequence uut (
        .a(a),
        .b(b),
        .c(c),
        .clk(clk)
    );

    initial begin
      $dumpfile("sequence.vcd");
      $dumpvars(0, sequence_tb);
      // Initialize Inputs
      clk = 0;
    end
  always
    begin
      #50;
      clk=~clk;
    end
endmodule
