`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:37:54 08/13/2016
// Design Name:   shr_2
// Module Name:   G:/karma/radix4/testshr2.v
// Project Name:  radix4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shr_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testshr2;

	// Inputs
	reg [7:0] in;
	reg [1:0] inadd;

	// Outputs
	wire [7:0] out;
	wire [1:0] res;

	// Instantiate the Unit Under Test (UUT)
	shr_2 uut (
		.in(in), 
		.inadd(inadd), 
		.out(out), 
		.res(res)
	);

	initial begin
		// Initialize Inputs
		in = 8'b 11001001;
		inadd = 2'b 01;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

