`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:23:00 11/10/2019
// Design Name:   fsm
// Module Name:   /home/Nihar/Desktop/lab7/fsm_test.v
// Project Name:  lab7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fsm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fsm_test;

	// Inputs
	reg clk;
	reg rst;
	reg x;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	fsm uut (
		.clk(clk), 
		.rst(rst), 
		.x(x), 
		.y(y)
	);

	always #5 clk = ~clk;
	always #44 rst = ~rst;
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		x = 1;
		#65;
		x = 0;
		#40;
		repeat(8)begin
		x = ~x;
		#10;
		end
		repeat(4)begin
		x = ~x;
		#20;
		end
		repeat(3) begin
		x = ~x;
		#35;
		end
		x=0;
		#30;
	end
      
endmodule

