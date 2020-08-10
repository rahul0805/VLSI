`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:31:09 09/09/2019
// Design Name:   two_de
// Module Name:   /home/rahul/Desktop/demux/test_two_de.v
// Project Name:  demux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: two_de
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_two_de;

	// Inputs
	reg i_p;
	reg s;

	// Outputs
	wire a;
	wire b;

	// Instantiate the Unit Under Test (UUT)
	two_de uut (
		.i_p(i_p), 
		.a(a), 
		.b(b), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		i_p = 0;
		s = 0;

		// Wait 100 ns for global reset to finish
		//#100;
			repeat(3)
		begin
		#10;
		//s3=s3^(s2&s1&i_p);
		//s2=s2^(s1&i_p);
		s=s^i_p;
		i_p=i_p^1;
		end
        
		// Add stimulus here

	end
      
endmodule

