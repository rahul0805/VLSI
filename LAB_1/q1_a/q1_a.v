`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:11:53 08/21/2019 
// Design Name: 
// Module Name:    q1_a 
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
module q1_a(a,b,c,d,o_p);
input a,b,c,d;
output o_p;
wire e,f;
and g1(e,a,b);
and g2(f,c,d);
or g3(o_p,e,f);
endmodule
