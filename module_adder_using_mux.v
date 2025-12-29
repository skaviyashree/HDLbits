module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    
    wire cin1=1'b0;
    wire cin2=1'b1;
    wire cout1;
    reg [15:0] sum1,sum2;
    always @(*) begin   //MUX means we have to use always block 
        if(cout1==1'b0)
            begin
                sum[31:16] = sum1;    //instance can't be inside the if loop
                end
        else
            begin
                sum[31:16] =sum2;
            end
        end
    
    add16 instance1(.a(a[15:0]), .b(b[15:0]), .cin(cin1), .sum(sum[15:0]), .cout(cout1));
    add16 instance2(.a(a[31:16]), .b(b[31:16]), .cin(cin1), .sum(sum1));
    add16 instance3(.a(a[31:16]), .b(b[31:16]), .cin(cin2), .sum(sum2));
        
endmodule
