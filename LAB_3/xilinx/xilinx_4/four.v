`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:48:15 09/25/2019 
// Design Name: 
// Module Name:    four 
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
/*module bit_adder(a,b,c,s,c1);
input a,b,c;
output s,c1;
wire p,q,r;
xor g1(p,a,b);
xor g2(s,p,c);
and g3(q,p,c);
and g4(r,a,b);
or g5(c1,q,r);
endmodule
*/
module four(a,b,ci,s,c1);
input [3:0]a,b;
input ci;
output [3:0]s;
output c1;
wire [0:2]d;
bit_adder g1(a[0],b[0],ci,s[0],d[0]);
bit_adder g2(a[1],b[1],d[0],s[1],d[1]);
bit_adder g3(a[2],b[2],d[1],s[2],d[2]);
bit_adder g4(a[3],b[3],d[2],s[3],c1);
endmodule
