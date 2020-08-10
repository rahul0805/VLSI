`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:47:58 10/15/2019 
// Design Name: 
// Module Name:    shift 
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

module bit_adder(a,b,c,s,c1);
input a,b,c;
output s,c1;
wire p,q,r;
xor g1(p,a,b);
xor g2(s,p,c);
and g3(q,p,c);
and g4(r,a,b);
or g5(c1,q,r);
endmodule

module shift(s,a,b,clk,rst,c);
input [3:0] a,b;
input clk,rst;
output reg [3:0] s;
output reg c;
reg [3:0]t1,t2,t3;
reg car;
reg [2:0]i;
wire [1:0]p;
bit_adder g1(t1[0],t2[0],car,p[0],p[1]);
always @(posedge clk or posedge rst)
begin
if(rst==1)
begin 
t1 <= a;
t2 <= b;
t3 <= 0;
car <= 0;
i <= 0;
end
//
else
begin
car <= p[1]; 
t3[3:0] <= {p[0],t3[3:1]};
t2[3:0] <= {t2[0],t2[3:1]};
t1[3:0] <= {t1[0],t1[3:1]};
i <= i+1;
if(i==4)
begin
c <= car;
s <= t3;
end
end
end
endmodule
