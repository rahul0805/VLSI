`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:13:40 10/14/2019 
// Design Name: 
// Module Name:    d_ff 
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
module d_ff(Q,D,clk,rst);
input D,clk,rst;
output reg Q;
always @(posedge clk or posedge rst)
begin
if(rst==1'b1)
Q <= 1'b0;
else
Q <= D;
end
endmodule
