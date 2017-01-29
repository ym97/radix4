`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:38:40 08/12/2016
// Design Name:   complement_2
// Module Name:   C:/Users/student/Desktop/Group15 COA/booth4radix/comp_test.v
// Project Name:  booth4radix
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: complement_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module comp_test;

	// Inputs
	reg [7:0] a;

	// Outputs
	wire [7:0] b;
	

	// Instantiate the Unit Under Test (UUT)
	complement_2 uut (
		.a(a), 
		.b(b) 
		
	);

	initial begin
		// Initialize Inputs
		a = 00101100;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

