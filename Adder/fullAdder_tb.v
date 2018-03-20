`timescale 1ns/100ps
`include "fullAdder.v"

module fullAdder_tb();
reg A,B,Cin;
wire S,Cout;
fullAdder structural_adder(
    .X1(A),
    .X2(B),
    .Cin(Cin),
    .S(S),
    .Cout(Cout)
  );
initial begin
$dumpfile("fullAdder.vcd");
$dumpvars(0, fullAdder_tb);
A = 0;
B = 0;
Cin = 0;
#10;
A = 0;
B = 0;
Cin = 1;
#10;
A = 0;
B = 1;
Cin = 0;
#10;
A = 0;
B = 1;
Cin = 1;
#10;
A = 1;
B = 0;
Cin = 0;
#10;
A = 1;
B = 0;
Cin = 1;
#10;
A = 1;
B = 1;
Cin = 0;
#10;
A = 1;
B = 1;
Cin = 1;
#10;
  end

endmodule