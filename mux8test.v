`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:55:56 08/14/2016
// Design Name:   mux8_1
// Module Name:   G:/karma/radix4/mux8test.v
// Project Name:  radix4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux8_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux8test;

	// Inputs
	reg [7:0] a;
	reg [2:0] sel;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	mux8_1 uut (
		.a(a), 
		.sel(sel), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		a = 9;
		sel =2;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

