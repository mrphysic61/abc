module vcabc(i,o);
input [6:0] i;
output [2:0] o;
parameter [6:0] p=7'b1010101;
corr bedir(i,p,o);
endmodule

module corr(x,y,o);
input [6:0] x,y;
output [2:0] o;
wire [6:0] w;
assign w=x^y;
sum6 furkan(w,o);
endmodule

module sum6(i,o);
input [6:0] i;
output [2:0] o;
assign o=i[0]+i[1]+i[2]+i[3]+i[4]+i[5]+i[6];
endmodule