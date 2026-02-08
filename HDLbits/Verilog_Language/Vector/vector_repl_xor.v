/* Given five 1-bit signals (a, b, c, d, and e), compute all 25 pairwise one-bit comparisons in the 25-bit output vector. The output should be 1 if the two bits being compared are equal.

out[24] = ~a ^ a;   // a == a, so out[24] is always 1.
out[23] = ~a ^ b;
out[22] = ~a ^ c;
...
out[ 1] = ~e ^ d;
out[ 0] = ~e ^ e;

w1 : aaaaa bbbbb ccccc ddddd eeeee
w2 : abcde abcde abcde abcde abcde
-----------------------------------
out: 25 pairwise equality checks
bitwise xnor operation between w1 and w2
out[24] = ~(a ^ a);
out[23] = ~(a ^ b);
*/

module top_module (
    input a, b, c, d, e,
    output [24:0] out 
    );
  
  wire [24:0] w1,w2;
  
  assign w1  = {{5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}}};
  assign w2  = { { 5{a,b,c,d,e} } };
  assign out = ~(w1 ^ w2);
  
endmodule