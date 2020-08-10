`timescale 1ns / 1ps

module radix2fft_tb;

	// Inputs
	reg [1:0] i0;
	reg [1:0] i1;
	reg [1:0] i2;
	reg [1:0] i3;

	// Outputs
	wire [3:0] e;
	wire [3:0] ei;
	wire [3:0] f;
	wire [3:0] fi;
	wire [3:0] g;
	wire [3:0] gi;
	wire [3:0] h;
	wire [3:0] hi;

	// Instantiate the Unit Under Test (UUT)
	radix2fft uut (
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.e(e), 
		.ei(ei), 
		.f(f), 
		.fi(fi), 
		.g(g), 
		.gi(gi), 
		.h(h), 
		.hi(hi)
	);

	initial begin
		// Initialize Inputs
		i0 = 0;
		i1 = 0;
		i2 = 0;
		i3 = 0;

		end
		
		always #1 i0[0]=~i0[0];
		always #2 i0[1]=~i0[1];
		always #4 i1[0]=~i1[0];
		always #8 i1[1]=~i0[1];
      always #16 i2[0]=~i2[0];
		always #32 i2[1]=~i2[1];
		always #64 i3[0]=~i3[0];
		always #128 i3[1]=~i3[1];
		
endmodule

