`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:12:07 10/17/2019
// Design Name:   shift
// Module Name:   /home/rahul/Desktop/serial_add/test_shift.v
// Project Name:  serial_add
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shift
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_shift;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] s;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	shift uut (
		.s(s), 
		.a(a), 
		.b(b), 
		.clk(clk), 
		.rst(rst), 
		.c(c)
	);
always #5 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk=0;
		rst = 1;
		a =0;
		b= 0;
		#6;
		rst =0;
		#57;
		repeat(16) begin
		repeat(15) begin
		rst = 1;
		if(b==15)
		begin
		a = a+1;
		end
		b = b+4'b0001;
		#6;
		rst = 0;
		#54;
		end
		end
        
		// Add stimulus here

	end
      
endmodule

