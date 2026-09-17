module full_adder(
    input  [3:0] a,
    input        cin,
    input  [3:0] b,
    output [3:0] sum,
    output       carry
);

assign sum   = a ^ b ^ cin;
assign carry = (a & b) | (b & cin) | (cin & a);

endmodule
