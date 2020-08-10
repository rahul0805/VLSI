`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:20:18 10/14/2019
// Design Name:   d_ff
// Module Name:   /home/rahul/Desktop/d-ff/d_ff_test.v
// Project Name:  d-ff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: d_ff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module d_ff_test;

	// Inputs
	reg D;
	reg clk;
	reg rst;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	d_ff uut (
		.Q(Q), 
		.D(D), 
		.clk(clk), 
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
	//	D = 0;
		clk = 0;
//		rst = 0;

			// Wait 100 ns for global reset to finish
		forever #10 clk = ~clk;
        
		// Add stimulus here

	end
	initial begin 
		rst=1;
		D <=0;
		#100;
		D <= 1;
		#100;
		rst=0;
		#100;
		D <= 0;
		end
      
endmodule

