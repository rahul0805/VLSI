`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:22:54 09/26/2019
// Design Name:   sixteen_lac
// Module Name:   /home/rahul/Desktop/lac/test_sixteenl.v
// Project Name:  lac
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sixteen_lac
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_sixteenl;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg ci;

	// Outputs
	wire [15:0] s;
	wire c1;

	// Instantiate the Unit Under Test (UUT)
	sixteen_lac uut (
		.a(a), 
		.b(b), 
		.ci(ci), 
		.s(s), 
		.c1(c1)
	);

	initial begin
		// Initialize Inputs
				a=16'b0000000000000000;
		b=16'b0000000000000000;
		ci=0;
      repeat(256)
		begin
		b=16'b0000000000000000;
		repeat(256)
		begin
		#0.1;
		b=b+16'b0000000000000001;
		end
		#0.1;
		a=a+16'b0000000000000001;
		end
        
		// Add stimulus here

	end
      
endmodule

