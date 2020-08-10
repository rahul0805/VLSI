`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:25:44 09/09/2019
// Design Name:   eight_de
// Module Name:   /home/rahul/Desktop/demux/test_eight_de.v
// Project Name:  demux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: eight_de
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_eight_de;

	// Inputs
	reg i_p;
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
	eight_de uut (
		.i_p(i_p), 
		.a1(a1), 
		.a2(a2), 
		.a3(a3), 
		.a4(a4), 
		.a5(a5), 
		.a6(a6), 
		.a7(a7), 
		.a8(a8), 
		.s1(s1), 
		.s2(s2), 
		.s3(s3)
	);

	initial begin
		// Initialize Inputs
		i_p = 0;
		s1 = 0;
		s2 = 0;
		s3 = 0;

		// Wait 100 ns for global reset to finish
		//#10;
		repeat(15)
		begin
		#10;
		s3=s3^(s2&s1&i_p);
		s2=s2^(s1&i_p);
		s1=s1^i_p;
		i_p=i_p^1;
		end

			
		// Add stimulus here

	end
      
endmodule

