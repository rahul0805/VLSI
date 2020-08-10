`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:41:57 09/08/2019 
// Design Name: 
// Module Name:    eight_de 
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
module two_de(i_p,a,b,s);
input i_p,s;
output a,b;
and g1(a,i_p,~s);
and g2(b,i_p,s);
endmodule
module four_de(i_p,a,b,c,d,s1,s2);
input i_p,s1,s2;
output a,b,c,d;
wire a1,a2;
two_de gg(i_p,a1,a2,s2);
two_de g1(a1,a,b,s1);
two_de g2(a2,c,d,s1);


endmodule
module two_de(i_p,a,b,s);
input i_p,s;
output a,b;
and g1(a,i_p,~s);
and g2(b,i_p,s);
endmodule
module four_de(i_p,a,b,c,d,s1,s2);
input i_p,s1,s2;
output a,b,c,d;
wire a1,a2;
two_de gg(i_p,a1,a2,s2);
two_de g1(a1,a,b,s1);
two_de g2(a2,c,d,s1);


endmodule
module eight_de(i_p,a1,a2,a3,a4,a5,a6,a7,a8,s1,s2,s3);
input i_p,s1,s2,s3;
output a1,a2,a3,a4,a5,a6,a7,a8;
wire b1,b2;
two_de g1(i_p,b1,b2,s3);
four_de g2(b1,a1,a2,a3,a4,s1,s2);
four_de g3(b2,a5,a6,a7,a8,s1,s2);
endmodule
