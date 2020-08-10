`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:19:54 08/21/2019 
// Design Name: 
// Module Name:    q1_b 
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
module q1_b(a,b,c,d,e,f,o_p);
input a,b,c,d,e,f;
output o_p;
wire x,y,z,p,q,r;
and g1(x,a,b);
and g2(y,x,c);
and g3(z,d,e);
or g4(p,y,z);
and g5(o_p,p,f);
//assign o_p=((a&b&c)+(d&e))&f;
endmodule
