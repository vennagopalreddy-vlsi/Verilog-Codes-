module all_gates(
    input a,b,
    output y1_and,y2_or,y3_not,y4_nand,y5_nor,y6_exor,y7_exnor);

assign y1_and=a&b;
assign y2_or=a|b;
assign y3_not=~a;
assign y4_nand=~(a&b);
assign y5_nor=~(a|b);
assign y6_exor=a^b;
assign y7_exnor=~(a^b);

endmodule
