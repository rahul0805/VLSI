`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:35:50 08/21/2019 
// Design Name: 
// Module Name:    q1_c 
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
module q1_c(a,b,c,d,e,o_p);
input a,b,c,d,e;
output o_p;
wire x,y,p,q,r,z;
//assign x=~b;
//assign y=((a|x)&((c&d)|e));
//assign o_p = ~y;
not g1(x,b);
or g2(y,x,a);
and g3(z,c,d);
or g4(p,z,e);
and g5(q,p,y);
not g6(o_p,q);
endmodule
