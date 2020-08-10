`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:46:58 09/09/2019
// Design Name:   four_code
// Module Name:   /home/rahul/Desktop/decoder/test_four_code.v
// Project Name:  decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_code
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_four_code;

	// Inputs
	reg v;
	reg s1;
	reg s2;

	// Outputs
	wire a;
	wire b;
	wire c;
	wire d;

	// Instantiate the Unit Under Test (UUT)
	four_code uut (
		.v(v), 
		.s1(s1), 
		.s2(s2), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d)
	);

	initial begin
		// Initialize Inputs
		v=0;
		s1=0;
		s2=0;
		repeat(3)
		begin
		#10;
		//s3=s3^(s2&s1);
		s2=s2^s1;
		s1=s1^1;
		end
		v = 1;
		s1 = 0;
		s2 = 0;
		//s3 = 0;

		// Wait 100 ns for global reset to finish
		//#100;
		repeat(3)
		begin
		#10;
		//s3=s3^(s2&s1);
		s2=s2^s1;
		s1=s1^1;
		end

        
		// Add stimulus here

	end
      
endmodule

