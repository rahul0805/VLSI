`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:37:22 09/09/2019
// Design Name:   eight_code
// Module Name:   /home/rahul/Desktop/decoder/test_eight_code.v
// Project Name:  decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: eight_code
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_eight_code;

	// Inputs
	reg v;
	reg s1;
	reg s2;
	reg s3;

	// Outputs
	wire a1;
	wire a2;
	wire a3;
	wire a4;
	wire a5;
	wire a6;
	wire a7;
	wire a8;

	// Instantiate the Unit Under Test (UUT)
	eight_code uut (
		.v(v), 
		.s1(s1), 
		.s2(s2), 
		.s3(s3), 
		.a1(a1), 
		.a2(a2), 
		.a3(a3), 
		.a4(a4), 
		.a5(a5), 
		.a6(a6), 
		.a7(a7), 
		.a8(a8)
	);

	initial begin
		// Initialize Inputs
		v = 0;
		s1 = 0;
		s2 = 0;
		s3 = 0;

		// Wait 100 ns for global reset to finish
		//#100;
		repeat(7)
		begin
		#10;
		s3=s3^(s2&s1);
		s2=s2^s1;
		s1=s1^1;
		end
		#10;
		v = 1;
		s1 = 0;
		s2 = 0;
		s3 = 0;

		// Wait 100 ns for global reset to finish
		//#10;
		repeat(7)
		begin
		#10;
		s3=s3^(s2&s1);
		s2=s2^s1;
		s1=s1^1;
		end
        	#10;
		// Add stimulus here

	end
      
endmodule
