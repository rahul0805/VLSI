`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:50:14 09/09/2019
// Design Name:   two_code
// Module Name:   /home/rahul/Desktop/decoder/test_two_code.v
// Project Name:  decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: two_code
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_two_code;

	// Inputs
	reg v;
	reg s;

	// Outputs
	wire a;
	wire b;

	// Instantiate the Unit Under Test (UUT)
	two_code uut (
		.v(v), 
		.s(s), 
		.a(a), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		v = 0;
		s = 0;
		#10;
		v=0;
		s=1;
		#10;
		v=1;
		s=0;
		#10;
		v=1;
		s=1;

		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here

	end
      
endmodule

