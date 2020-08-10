`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:15:13 08/21/2019
// Design Name:   q1_a
// Module Name:   /home/lab1/test_q1_a.v
// Project Name:  lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: q1_a
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_q1_a;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;

	// Outputs
	wire o_p;

	// Instantiate the Unit Under Test (UUT)
	q1_a uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.o_p(o_p)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		repeat(15)
		begin
		#10;
		a= a^(b&c&d);
		b=b^(c&d);
		c=c^d;
		d=d^1;
		end
        
		// Add stimulus here

	end
      
endmodule

