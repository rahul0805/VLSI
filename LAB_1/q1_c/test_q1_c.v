`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:39:21 08/21/2019
// Design Name:   q1_c
// Module Name:   /home/lab1/test_q1_c.v
// Project Name:  lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: q1_c
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_q1_c;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;
	reg e;

	// Outputs
	wire o_p;

	// Instantiate the Unit Under Test (UUT)
	q1_c uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.e(e), 
		.o_p(o_p)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;
		e = 0;

		// Wait 100 ns for global reset to finish
		repeat(31)
		begin
		#10;
		a=a^(b&c&d&e);
		b=b^(c&d&e);
		c=c^(d&e);
		d=d^e;
		e=e^1;
        end
		// Add stimulus here

	end
      
endmodule

