module abc(i,p,z);
input i;
output p,z;
wire o,e,q,s,y;
camera camera(i,o);
extraction extraction(o,e);
search search(e,q,s,y);
ethernet ethernet(s,p,q);
display display(y,z);
endmodule

module camera(i,o);
input i;
output o;
endmodule

module extraction(o,e);
input o;
output e;
endmodule

module search(e,q,s,y);
input e,q;
output s,y;
endmodule

module ethernet(s,p,q);
input s;
output p,q;
endmodule

module display(y,z);
input y;
output z;
endmodule