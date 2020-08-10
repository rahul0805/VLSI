`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:28:23 09/25/2019 
// Design Name: 
// Module Name:    four_lac 
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
module four_lac(a,b,ci,s,c1);
input [3:0]a,b;
input ci;
output [3:0]s;
output c1;
wire [3:0]G,P,C;
wire [3:0]w;
//and(G,a,b);
//xor(P,a,b);
assign G=a&b;
assign P=a^b;
assign C[0]=ci;
/*
and(w[0],P[0],C[0]);
or(C[1],w[0],G[0]);
and(w[1],P[1],C[1]);
or(C[2],w[1],G[1]);
and(w[2],P[2],C[2]);
or(C[3],w[2],G[2]);
and(w[3],P[3],C[3]);
or(c1,w[3],G[3]);
//xor(s,P,C);*/
assign C[1]=G[0] | ( P[0] & ci );
assign C[2] = G[1] | ( P[1] & G[0] ) | ( P[1] & P[0] & ci );
assign C[3] = G[2] | ( P[2] & G[1] ) | ( P[2] & P[1] & G[0] ) | ( P[2] & P[1] & P[0] & ci );
assign c1=  G[3] | ( P[3] & G[2] ) | ( P[3] & P[2] & G[1] ) | ( P[3] & P[2] & P[1] & G[0] ) | ( P[3] & P[2] & P[1] & P[0] & ci );
assign s=P^C;
endmodule
