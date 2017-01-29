`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:23:51 08/13/2016
// Design Name:   count_decr
// Module Name:   G:/karma/radix4/decr_tets.v
// Project Name:  radix4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: count_decr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decr_tets;

	// Inputs
	reg [3:0] in;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	count_decr uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 4'b 0111;
          
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

