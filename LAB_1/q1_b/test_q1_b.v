`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:31:17 08/21/2019
// Design Name:   q1_b
// Module Name:   /home/lab1/test_q1_b.v
// Project Name:  lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: q1_b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_q1_b;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;
	reg e;
	reg f;

	// Outputs
	wire o_p;

	// Instantiate the Unit Under Test (UUT)
	q1_b uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.e(e), 
		.f(f), 
		.o_p(o_p)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;
		e = 0;
		f = 0;

		// Wait 100 ns for global reset to finish
		repeat(63)
		begin
		#10;
        a=a^(b&c&d&e&f);
		  b=b^(c&d&e&f);
		  c=c^(d&e&f);
		  d=d^(e&f);
		  e=e^f;
		  f=f^1;
		  end
		// Add stimulus here

	end
      
endmodule

