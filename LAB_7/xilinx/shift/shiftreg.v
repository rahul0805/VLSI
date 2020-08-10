`timescale 1ns / 1ps

module shiftreg(data_in,MSB_in,LSB_in,s1,s0,clk,data_out);
	input [3:0] data_in;
	input MSB_in, LSB_in,s1, s0, clk;
	output [3:0] data_out;	
	reg [3:0] data_out_temp;

		always @ (posedge clk) begin
			case ({s1, s0})
				0 : data_out_temp [3:0] <= data_in [3:0];
				1 : data_out_temp <= { MSB_in, data_in[3:1] };
				2 : data_out_temp <= { data_in[2:0], LSB_in };
				3 : data_out_temp <= data_out;
		endcase
	end
	
	assign data_out = data_out_temp;
	

endmodule
