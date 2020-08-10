`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:32:56 08/20/2019
// Design Name:   NOT
// Module Name:   /home/lab1/test_not.v
// Project Name:  lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: NOT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_not;

	// Inputs
	reg a;

	// Outputs
	wire b;

	// Instantiate the Unit Under Test (UUT)
	NOT uut (
		.a(a), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		a = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a=1;
        
		// Add stimulus here

	end
      
endmodule

