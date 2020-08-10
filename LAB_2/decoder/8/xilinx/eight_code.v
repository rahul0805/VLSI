`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:13:46 09/09/2019 
// Design Name: 
// Module Name:    eight_code 
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
module eight_code(v,s1,s2,s3,a1,a2,a3,a4,a5,a6,a7,a8);
input v,s1,s2,s3;
output a1,a2,a3,a4,a5,a6,a7,a8;
wire b1,b2;
two_code g1(v,s3,b1,b2);
four_code g2(b1,s1,s2,a1,a2,a3,a4);
four_code g3(b2,s1,s2,a5,a6,a7,a8);
endmodule