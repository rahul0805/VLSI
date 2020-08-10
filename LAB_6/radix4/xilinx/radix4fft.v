`timescale 1ns / 1ps

module radix4fft(i0,i1,i2,i3,e,ei,f,fi,g,gi,h,hi);

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

assign e=i0+i1+i2+i3;
assign ei=4'b0;

assign f=i0-i2;
assign fi=i1-i3;

assign g=i0+i2-(i1+i3);
assign gi=4'b0;

assign h=i0-i2;
assign hi=i3-i1;

endmodule
