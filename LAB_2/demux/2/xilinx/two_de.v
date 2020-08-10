`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:28:52 09/08/2019 
// Design Name: 
// Module Name:    two_de 
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
module two_de(i_p,a,b,s);
input i_p,s;
output a,b;
and g1(a,i_p,~s);
and g2(b,i_p,s);
endmodule
