`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:04:46 08/14/2016
// Design Name:   mux4_1
// Module Name:   G:/karma/radix4/mux4test.v
// Project Name:  radix4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux4_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux4test;

	// Inputs
	reg [3:0] a;
	reg [1:0] sel;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	mux4_1 uut (
		.out(out), 
		.a(a), 
		.sel(sel)
	);

	initial begin
		// Initialize Inputs
		a = 3;
		sel = 3;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

