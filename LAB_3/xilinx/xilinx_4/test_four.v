`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:27:48 09/25/2019
// Design Name:   four
// Module Name:   /home/rahul/Desktop/ripple/test_four.v
// Project Name:  ripple
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_four;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg ci;

	// Outputs
	wire [3:0] s;
	wire c1;

	// Instantiate the Unit Under Test (UUT)
	four uut (
		.a(a), 
		.b(b), 
		.ci(ci), 
		.s(s), 
		.c1(c1)
	);

	initial begin
		// Initialize Inputs
		//a = 0;
	//	b = 0;
		//ci = 0;

		// Wait 100 ns for global reset to finish
	//	#100;
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
		// Add stimulus here

	end
      
endmodule

