`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:51:40 10/03/2019
// Design Name:   wallace
// Module Name:   /home/rahul/Desktop/multiplier/wallace/test_wallce.v
// Project Name:  wallace
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: wallace
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_wallce;

	// Inputs
	reg [3:0] x;
	reg [3:0] y;

	// Outputs
	wire [7:0] z;

	// Instantiate the Unit Under Test (UUT)
	wallace uut (
		.x(x), 
		.y(y), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		x = 4'b0000;
		y = 4'b0000;

		// Wait 100 ns for global reset to finish
		#3;
			repeat(16)
			begin
			y=4'b0000;
			repeat(15)
			begin
			#3;
			y=y+4'b0001;
			end
			#3;
			x=x+4'b0001;
			end
		// Add stimul
        
		// Add stimulus here

	end
      
endmodule

