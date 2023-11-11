module seg7_decoder(in, a_to_g);

input [3:0] in;
// in[0] = D, in[1] = C, in[2] = B, in[3] = A in your truth table
output [6:0] a_to_g;


assign a_to_g[6] = (~in[3] & ~in[2] & ~in[1] & in[0]) | (~in[3] & in[2] & ~in[1] & ~in[0]) | (in[3] & in[2] & ~in[1] & in[0]) | (in[3] & ~in[2] & in[1] & in[0]);
assign a_to_g[5] = (in[3] & in[1] & in[0]) | (in[2] & in[1] & ~in[0]) | (in[3] & in[2] & ~in[1] & ~in[0]) | (~in[3] & in[2] & ~in[1] & in[0]);
assign a_to_g[4] = (in[3] & in[2] & ~in[0]) | (in[3] & in[2] & in[1]) | (~in[3] & ~in[2] & in[1] & ~in[0]);
assign a_to_g[3] = (~in[3] & in[2] & ~in[1] & ~in[0]) | (~in[2] & ~in[1] & in[0]) | (in[2] & in[1] & in[0]) | (in[3] & ~in[2] & in[1] & ~in[0]);
assign a_to_g[2] = (~in[3] & in[0]) | (~in[2] & ~in[1] & in[0]) | (~in[3] & in[2] & ~in[1]);
assign a_to_g[1] = (~in[3] & ~in[2] & in[0]) | (~in[3] & ~in[2] & in[1]) | (~in[3] & in[1] & in[0]) | (in[3] & in[2] & ~in[1] & in[0]);
assign a_to_g[0] = (~in[3] & ~in[2] & ~in[1]) | (~in[3] & in[2] & in[1] & in[0]) | (in[3] & in[2] & ~in[1] & ~in[0]);
endmodule