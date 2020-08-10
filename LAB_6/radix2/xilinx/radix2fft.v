`timescale 1ns / 1ps

module butterfly(a,b,c,d);
input signed [1:0]a;
input signed [1:0]b;
output signed [3:0]c;
output signed [3:0]d;

assign c=a+b;
assign d=a-b;

endmodule

module radix2fft(i0,i1,i2,i3,e,ei,f,fi,g,gi,h,hi);
input signed [1:0]i0;
input signed [1:0]i1;
input signed [1:0]i2;
input signed [1:0]i3;
output signed [3:0]e;
output signed [3:0]ei;
output signed [3:0]f;
output signed [3:0]fi;
output signed [3:0]g;
output signed [3:0]gi;
output signed [3:0]h;
output signed [3:0]hi;

wire [3:0] A,B,C,D;

butterfly f1(i0,i2,A,B);
butterfly f2(i1,i3,C,D);

assign e=(A+C);
assign ei=4'b0;
assign f=B;
assign fi=-D;
assign g=(A-C);
assign gi=4'b0;
assign h=B;
assign hi=D;

endmodule
