`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:04:38 09/26/2019
// Design Name:   four_lac
// Module Name:   /home/rahul/Desktop/lac/test_fourl.v
// Project Name:  lac
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_lac
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_fourl;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg ci;

	// Outputs
	wire [3:0] s;
	wire c1;

	// Instantiate the Unit Under Test (UUT)
	four_lac uut (
		.a(a), 
		.b(b), 
		.ci(ci), 
		.s(s), 
		.c1(c1)
	);

	initial begin
			// Initialize Inputs
	//	a = 0;
	//	b = 0;
		//ci = 0;

		// Wait 100 ns for global reset to finish
		//#100;
		a=4'b0000;
		b=4'b0000;
		ci=0;
		repeat(16)
			begin
			b=4'b0000;
			repeat(16)
			begin
			#1;
			b=b+4'b0001;
			end
			#1;
			a=a+4'b0001;
			end
	end
      
endmodule

