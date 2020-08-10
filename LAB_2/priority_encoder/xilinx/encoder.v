`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:55:44 09/12/2019 
// Design Name: 
// Module Name:    encoder 
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
module encoder(a0,a1,a2,a3,a4,a5,a6,a7,s0,s1,s2,v,en);
input a0,a1,a2,a3,a4,a5,a6,a7,en;
output s0,s1,s2,v;
wire b1,b2,b3;
wire d2,d1,d0;
wire c1,c2,c3,c4;
//or (b1,a6,s7);
or (d2,a4,a5,a6,a7);
or (b2,a2,a3);
and (b3,b2,~a5,~a4);
or (d1,b3,a6,a7);
and (c1,~a4,~a2,a1);
and (c2,~a4,a3);
or (c3,c1,c2,a5);
and (c4,~a6,c3);
or (d0,c4,a7);
and (s0,d0,en);
and (s1,d1,en);
and (s2,d2,en);
or (b1,a0,a1,a2,a3,a4,a5,a6,a7);
and (v,b1,en);
endmodule
