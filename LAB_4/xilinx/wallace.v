`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:02:42 10/03/2019 
// Design Name: 
// Module Name:    wallace 
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
module half(a,b,s,c);
input a,b;
output s,c;
xor(s,a,b);
and(c,a,b);

endmodule

module full(a,b,c,s,c1);
input a,b,c;
output s,c1;
wire p,q,r;
xor g1(p,a,b);
xor g2(s,p,c);
and g3(q,p,c);
and g4(r,a,b);
or g5(c1,q,r);
endmodule

module wallace(x,y,z);
input [3:0]x,y;
output [7:0]z;
wire [3:0] p0,p1,p2,p3;
wire [11:0]s,c;
assign p0 = x& {4{y[0]}};
assign p1 = x& {4{y[1]}};
assign p2 = x& {4{y[2]}};
assign p3 = x& {4{y[3]}};
//
half g1(p0[1],p1[0],s[0],c[0]);
full g2(p0[2],p1[1],p2[0],s[1],c[1]);
full g3(p0[3],p1[2],p2[1],s[2],c[2]);
half g4(p2[2],p1[3],s[3],c[3]);
//
half g5(c[0],s[1],s[4],c[4]);
full g6(c[1],s[2],p3[0],s[5],c[5]);
full g7(c[2],p3[1],s[3],s[6],c[6]);
full g8(c[3],p3[2],p2[3],s[7],c[7]);
//
half g9(c[4],s[5],s[8],c[8]);
full g10(c[8],c[5],s[6],s[9],c[9]);
full g11(c[9],c[6],s[7],s[10],c[10]);
full g12(c[10],p3[3],c[7],s[11],c[11]);
assign z[0]=p0[0];
assign z[1]=s[0];
assign z[2]=s[4];
assign z[3]=s[8];
assign z[4]=s[9];
assign z[5]=s[10];
assign z[6]=s[11];
assign z[7]=c[11];
endmodule
