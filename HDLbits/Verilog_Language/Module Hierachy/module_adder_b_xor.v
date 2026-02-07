module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0]b_xor;
    wire cout1;
    assign b_xor = b ^ {32{sub}};   //to replicate the b values for 32 times so that we get 32 bits
    add16 instance1(.a(a[15:0]), .b(b_xor[15:0]), .cin(sub), .sum(sum[15:0]), .cout(cout1));
    add16 instance2(.a(a[31:16]), .b(b_xor[31:16]), .cin(cout1), .sum(sum[31:16]));

endmodule