`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:09:58 11/09/2019
// Design Name:   shiftreg
// Module Name:   /home/rahul/Desktop/lab7/shiftreg_tb.v
// Project Name:  lab7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shiftreg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module shiftreg_tb;

	// Inputs
	reg [3:0] data_in;
	reg MSB_in;
	reg LSB_in;
	reg s1;
	reg s0;
	reg clk;

	// Outputs
	wire [3:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	shiftreg uut (
		.data_in(data_in), 
		.MSB_in(MSB_in), 
		.LSB_in(LSB_in), 
		.s1(s1), 
		.s0(s0), 
		.clk(clk), 
		.data_out(data_out)
	);

	initial begin
		// Initialize Inputs
		data_in = 4'b1011;
		MSB_in = 0;
		LSB_in = 0;
		s1 = 0;
		s0 = 0;
		clk = 0;
		
		s0 = 0; s1 = 0;
		
		#10;
		s0 = 1; s1 = 0;
		
		#10;
		s0 = 0; s1 = 1;
		
		#10;
		s0 = 1; s1 = 1;
		
		#10;
		  
		// Add stimulus here

	end
	
	always #5 clk = ~clk;
      
      
endmodule

