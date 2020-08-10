`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:09:50 09/25/2019 
// Design Name: 
// Module Name:    sixteen_lac 
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

module sixteen_lac(a,b,ci,s,c1);
input [15:0]a,b;
input ci;
output [15:0]s;
output c1;
wire [2:0]c;
four_lac g1(a[3:0],b[3:0],ci,s[3:0],c[0]);
four_lac g2(a[7:4],b[7:4],c[0],s[7:4],c[1]);
four_lac g3(a[11:8],b[11:8],c[1],s[11:8],c[2]);
four_lac g4(a[15:12],b[15:12],c[2],s[15:12],c1);
endmodule
