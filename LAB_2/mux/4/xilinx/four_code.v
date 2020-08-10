`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:05:49 09/09/2019 
// Design Name: 
// Module Name:    four_code 
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
module two_code(v,s,a,b);
input v,s;
output a,b;
wire a1,a2;
and g1(a,v,~s);
and g2(b,v,s);

endmodule
module four_code(v,s1,s2,a,b,c,d);
input v,s1,s2;
output a,b,c,d;
wire a1,a2;
two_code g1(v,s2,a1,a2);
two_code g2(a1,s1,a,b);
two_code g3(a2,s1,c,d);
endmodule
