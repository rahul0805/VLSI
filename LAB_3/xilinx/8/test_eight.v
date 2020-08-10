`timescale 1ns / 1ps


module eightt;

	// Inputs
	reg [5:0] a;
	reg [5:0] b;
	reg c_in;

	// Outputs
	wire [7:0] S;
	wire c_out;

	// Instantiate the Unit Under Test (UUT)
	eight uut (
		.a(a), 
		.b(b), 
		.c_in(c_in), 
		.S(S), 
		.c_out(c_out)
	);

	initial begin
		// Initialize Inputs
		a = 5'd0;
		b = 5'd0;
		c_in = 0;

		// Wait 100 ns for global reset to finish
		#0.25;
		repeat(64)
		begin
		repeat(63)
		begin
		b=b+5'd1;
		#0.25;
		end
		a=a+5'b1;
		b=5'd0;
		#0.25;
		end

	end
      
endmodule
