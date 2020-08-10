`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:37:32 09/12/2019
// Design Name:   encoder
// Module Name:   /home/rahul/Desktop/priority_encoder/test_prio.v
// Project Name:  priority_encoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: encoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_prio;

	// Inputs
	reg a0;
	reg a1;
	reg a2;
	reg a3;
	reg a4;
	reg a5;
	reg a6;
	reg a7;
	reg en;

	// Outputs
	wire s0;
	wire s1;
	wire s2;
	wire v;

	// Instantiate the Unit Under Test (UUT)
	encoder uut (
		.a0(a0), 
		.a1(a1), 
		.a2(a2), 
		.a3(a3), 
		.a4(a4), 
		.a5(a5), 
		.a6(a6), 
		.a7(a7), 
		.s0(s0), 
		.s1(s1), 
		.s2(s2), 
		.v(v), 
		.en(en)
	);

	initial begin
		// Initialize Inputs
		a0 = 0;
		a1 = 0;
		a2 = 0;
		a3 = 0;
		a4 = 0;
		a5 = 0;
		a6 = 0;
		a7 = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		//#10;
		repeat(255)
		begin
		#0.1;
		a7=a7^(a6&a5&a4&a3&a2&a1&a0);
		a6=a6^(a5&a4&a3&a2&a1&a0);
		a5=a5^(a4&a3&a2&a1&a0);
		a4=a4^(a3&a2&a1&a0);
		a3=a3^(a2&a1&a0);
		a2=a2^(a1&a0);
		a1=a1^(a0);
		a0=a0^(1);
		end
        #0.1;
		  en=1;
		  	a0 = 0;
		a1 = 0;
		a2 = 0;
		a3 = 0;
		a4 = 0;
		a5 = 0;
		a6 = 0;
		a7 = 0;
		repeat(255)
		begin
		#0.1;
		a7=a7^(a6&a5&a4&a3&a2&a1&a0);
		a6=a6^(a5&a4&a3&a2&a1&a0);
		a5=a5^(a4&a3&a2&a1&a0);
		a4=a4^(a3&a2&a1&a0);
		a3=a3^(a2&a1&a0);
		a2=a2^(a1&a0);
		a1=a1^(a0);
		a0=a0^(1);
		end
		// Add stimulus here

	end
      
endmodule

