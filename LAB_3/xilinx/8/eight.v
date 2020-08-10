`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:18:08 09/26/2019 
// Design Name: 
// Module Name:    eight_bit_full_adder 
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
module eight(a,b,c_in,S,c_out);
input [5:0] a,b;
input c_in;
output [7:0] S;
output c_out;
wire c_out_0;
wire [7:0] c,d;
assign c[5:0] = a[5:0];
assign d[5:0] = b[5:0];
assign c[7:6] = 2'b00;
assign d[7:6] = 2'b00;
four C0(c[3:0],d[3:0],1'b0,S[3:0],c_out_0);
four C1(c[7:4],d[7:4],c_out_0,S[7:4],c_out);
endmodule
