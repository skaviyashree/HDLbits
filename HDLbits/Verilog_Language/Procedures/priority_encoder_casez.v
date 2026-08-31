// synthesis verilog_input_version verilog_2001
/*From the previous exercise (always_case2), there would be 256 cases in the case statement. We can reduce this (down to 9 cases) if the case items in the case statement supported don't-care bits. This is what casez is for: It treats bits that have the value z as don't-care in the comparison.

For example, this would implement the 4-input priority encoder from the previous exercise:

always @(*) begin
    casez (in[3:0])
        4'bzzz1: out = 0;   // in[3:1] can be anything
        4'bzz1z: out = 1;
        4'bz1zz: out = 2;
        4'b1zzz: out = 3;
        default: out = 0;
    endcase
end
*/

module top_module (
    input [7:0] in,
    output reg [2:0] pos );
    always @(*) 
        begin
            casez(in[7:0])
                8'bzzzzzzz1: pos=3'b000;
                8'bzzzzzz1z: pos=3'b001;
                8'bzzzzz1zz: pos=3'b010;
                8'bzzzz1zzz: pos=3'b011;
                8'bzzz1zzzz: pos=3'b100;
                8'bzz1zzzzz: pos=3'b101;
                8'bz1zzzzzz: pos=3'b110;
                8'b1zzzzzzz: pos=3'b111;
            endcase
        end

endmodule
