`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:42:35 08/20/2019
// Design Name:   NAND
// Module Name:   /home/lab1/test_nand.v
// Project Name:  lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: NAND
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_nand;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire c;

	// Instantiate the Unit Under Test (UUT)
	NAND uut (
		.a(a), 
		.b(b), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
		b=1;
		#100;
		a=1;
		b=0;
		#100;
		b=1;
        
		// Add stimulus here

	end
      
endmodule

