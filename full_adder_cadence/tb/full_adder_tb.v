module full_adder_tb;

reg  [3:0] a, b;
reg        cin;
wire [3:0] sum;
wire       carry;

full_adder dut (a, b, cin, sum, carry);

initial begin
    a = 4'b1000; b = 4'b1010; cin = 0;
    #10
    a = 4'b1010; b = 4'b0001;
    #10
    a = 4'b1111; b = 4'b0010;
    #10
    a = 4'b1110; b = 4'b1011;
    #10
    a = 4'b1110; b = 4'b0101;
    #10
    $finish;
end

endmodule
