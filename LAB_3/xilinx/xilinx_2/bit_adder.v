`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:39:07 09/25/2019 
// Design Name: 
// Module Name:    bit_adder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module bit_adder(a,b,c,s,c1);
input a,b,c;
output s,c1;
wire p,q,r;
xor g1(p,a,b);
xor g2(s,p,c);
and g3(q,p,c);
and g4(r,a,b);
or g5(c1,q,r);
endmodule
