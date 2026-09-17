// Verification Directory: fv/full_adder

module full_adder(a, b, cin, sum, carry);
    input  [3:0] a, b;
    input        cin;
    output [3:0] sum;
    output       carry;

    wire [3:0] a, b;
    wire       cin;
    wire [3:0] sum;
    wire       carry;

    ADDFXL g134__2398(.A(a[0]), .B(b[0]), .CI(cin), .CO(carry), .S(sum[0]));
    CLKXOR2X1 g137__5107(.A(b[2]), .B(a[2]), .Y(sum[2]));
    CLKXOR2X1 g138__6260(.A(b[3]), .B(a[3]), .Y(sum[3]));
    CLKXOR2X1 g136__4319(.A(b[1]), .B(a[1]), .Y(sum[1]));
endmodule
