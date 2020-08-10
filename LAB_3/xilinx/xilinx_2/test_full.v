`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:49:13 09/26/2019
// Design Name:   bit_adder
// Module Name:   /home/rahul/Desktop/ripple/test_full.v
// Project Name:  ripple
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bit_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_full;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire s;
	wire c1;

	// Instantiate the Unit Under Test (UUT)
	bit_adder uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.s(s), 
		.c1(c1)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a=0;
		b=1;
		#100;
		a=1;
		b=0;
		#100;
		a=1;
		b=1;
        
		// Add stimulus here

	end
      
endmodule

