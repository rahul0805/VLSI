`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:29:27 09/09/2019
// Design Name:   four_de
// Module Name:   /home/rahul/Desktop/demux/test_four_de.v
// Project Name:  demux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_de
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_four_de;

	// Inputs
	reg i_p;
	reg s1;
	reg s2;

	// Outputs
	wire a;
	wire b;
	wire c;
	wire d;

	// Instantiate the Unit Under Test (UUT)
	four_de uut (
		.i_p(i_p), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.s1(s1), 
		.s2(s2)
	);

	initial begin
		// Initialize Inputs
		i_p = 0;
		s1 = 0;
		s2 = 0;

		// Wait 100 ns for global reset to finish
			repeat(7)
		begin
		#10;
		//s3=s3^(s2&s1&i_p);
		s2=s2^(s1&i_p);
		s1=s1^i_p;
		i_p=i_p^1;
		end
        
		// Add stimulus here

	end
      
endmodule

