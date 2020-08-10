`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:47:40 11/04/2019 
// Design Name: 
// Module Name:    fsm 
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
module fsm(input clk,input rst,input x,output reg y);
reg [3:0] state;
reg n;
always@(posedge clk or negedge rst)
begin
	if(!rst)
		begin
			state <= 0;
			n <= 0;
			y <= 0;
		end
	else
		begin
			if(state == 4'b0000)
				begin
					if(x == 0)
						begin
							state <= 4'b0001;
							y <= 0;
							n<=0;
						end
					else
						begin
							state <= 4'b0100;
							y <= 0;
							n<=1;
						end
				end

			if(state == 4'b0001)
			begin
				if(x == 0 & n!=0)
					begin
						state <= 4'b0010;
						y<=0;
						n<=0;
					end
				else if(x==1 & n!=1)
					begin
						state <= 4'b0101;
						y<=0;
						n<=1;
					end
			end

			if(state == 4'b0010)
				begin
					if(x == 0 & n!=0)
						begin
							state <= 4'b0010;
							y<=0;
							n<=0;
						end
					else if(x==1 & n!=1)
						begin
							state <= 4'b0110;
							y<=0;
							n<=1;
						end
				end

			if(state == 4'b0100)
			begin
				if(x == 0 &n!=0)
					begin
						state <= 4'b0101;
						y<=0;
						n<=0;
					end
				else if(x==1 & n!=1)
					begin
						state <= 4'b1000;
						y<=0;
						n<=1;
					end
			end

			if(state == 4'b0101)
			begin
				if(x == 0 & n!=0)
					begin
						state <= 4'b0110;
						y<=0;
						n<=0;
					end
				else if(x==1 & n!=1)
					begin
						state <= 4'b1001;
						y<=0;
						n<=1;
					end
			end

			if(state == 4'b0110)
			begin
				if(x == 0 &n!=0)
					begin
						state <= 4'b0110;
						y<=0;
						n<=0;
				end
			else if(x==1 & n!=1)
					begin
						state <= 4'b1010;
						y<=1;
						n<=1;
					end
			end

			if(state == 4'b1000)
			begin
				if(x == 0 &n!=0)
					begin
						state <= 4'b1001;
						y<=0;
						n<=0;
					end
			else if(x==1 & n!=1)
					begin
						state <= 4'b1000;
						y<=0;
						n<=1;
					end
			end

			if(state == 4'b1001)
			begin
				if(x == 0 &n!=0)
					begin
						state <= 4'b1010;
						y<=1;
						n<=0;
					end
				else if(x==1 & n!=1)
					begin
						state <= 4'b1001;
						y<=0;
						n<=1;
					end
			end

			if(state == 4'b1010)
			begin
				if(x == 0&n!=0)
					begin
						state <= 4'b1010;
						y<=1;
						n<=0;
					end
				else if(x==1 & n!=1)
					begin
						state <= 4'b1010;
						y<=1;
						n<=1;
					end
			end
		end
	end
endmodule
