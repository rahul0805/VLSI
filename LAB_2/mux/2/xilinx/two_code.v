`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:51:38 09/08/2019 
// Design Name: 
// Module Name:    two_code 
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
module two_code(v,s,a,b);
input v,s;
output a,b;
wire a1,a2;
and g1(a,v,~s);
and g2(b,v,s);

endmodule
