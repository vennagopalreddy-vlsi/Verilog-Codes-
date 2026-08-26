`timescale 1ns/1ps

module all_gates_tb;

    reg a, b;
    wire y1_and, y2_or, y3_not, y4_nand, y5_nor, y6_exor, y7_exnor;

    all_gates uut (
        .a(a),
        .b(b),
        .y1_and(y1_and),
        .y2_or(y2_or),
        .y3_not(y3_not),
        .y4_nand(y4_nand),
        .y5_nor(y5_nor),
        .y6_exor(y6_exor),
        .y7_exnor(y7_exnor)
    );

    initial begin
        $monitor("Time=%0t | a=%b b=%b | AND=%b OR=%b NOT(a)=%b NAND=%b NOR=%b XOR=%b XNOR=%b",
                 $time, a, b, y1_and, y2_or, y3_not, y4_nand, y5_nor, y6_exor, y7_exnor);

        a = 1'b0; b = 1'b0;
        #10;
        a = 1'b0; b = 1'b1;
        #10;
        a = 1'b1; b = 1'b0;
        #10;
        a = 1'b1; b = 1'b1;
        #10;

        $finish;
    end

endmodule
