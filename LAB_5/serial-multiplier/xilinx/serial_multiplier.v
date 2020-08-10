`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:53:56 10/20/2019 
// Design Name: 
// Module Name:    serial_multiplier 
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
///*module cla();

module four_lac(a,b,ci,s,c1);
input [3:0]a,b;
input ci;
output [3:0]s;
output c1;
wire [3:0]G,P,C;
assign G=a&b;
assign P=a^b;
assign C[0]=ci;
assign C[1]=G[0] | ( P[0] & ci );
assign C[2] = G[1] | ( P[1] & G[0] ) | ( P[1] & P[0] & ci );
assign C[3] = G[2] | ( P[2] & G[1] ) | ( P[2] & P[1] & G[0] ) | ( P[2] & P[1] & P[0] & ci );
assign c1=  G[3] | ( P[3] & G[2] ) | ( P[3] & P[2] & G[1] ) | ( P[3] & P[2] & P[1] & G[0] ) | ( P[3] & P[2] & P[1] & P[0] & ci );
assign s=P^C;
endmodule

module serial_multiplier(clk,rst,a,b,P);
input clk,rst;
input [3:0] a,b;
output reg[7:0] P;
reg [3:0] x;
reg [2:0] i;
reg [7:0] z;
//wire [3:0] g,c,s;
wire [4:0]sum;
/*assign g = ({4{x[0]}}&b)&z[7:4];
assign s = ({4{x[0]}}&b)^z[7:4];
assign c[0] = g[0];
assign c[1] = g[1]|(g[0]&s[1])|(s[1]&s[0]&c[0]);
assign c[2] = g[2]|(s[2]&g[1])|(s[2]&s[1]&g[0])|(s[2]&s[1]&s[0]&c[0]);
assign c[3] = g[3]|(s[3]&g[2])|(s[3]&s[2]&g[1])|(s[3]&s[2]&s[1]&g[0])|(s[3]&s[2]&s[1]&s[0]&c[0]);
assign sum[0] = s[0];
assign sum[1] = s[1]^c[0];
assign sum[2] = s[2]^c[1];
assign sum[3] = s[3]^c[2];
assign sum[4] = c[3];*/
four_lac g1({4{x[0]}}&b,z[7:4],0,sum[3:0],sum[4]);
always@(posedge clk or posedge rst)
begin
if(rst==1)
begin
x <= a;
i <= 0;
z <= 0;
end
else
begin
if(i<4)
begin
//z[7:0] <= {c[3],s[3]^c[2],s[2]^c[1],s[1]^c[0],s[0],z[3:1]};
z[7:0] <= {sum[4:0],z[3:1]};
x[3:0] <= {x[0],x[3:1]};
i <= i+1;
end
if(i==4)                                                           
begin
P <= z[7:0];
end
end
end
endmodule

