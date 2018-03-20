module decoder2_to_4(
    input a0, a1,
    output d0, d1, d2, d3
);

assign d0 = a0 & a1;
assign d1 = ~a0 & a1;
assign d2 = a0 & ~a1;
assign d3 = ~a0 & ~a1;

endmodule // decoder_2to_4