`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:09:44 08/14/2016
// Design Name:   radix4booth
// Module Name:   G:/karma/radix4/radixtest.v
// Project Name:  radix4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: radix4booth
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module radixtest;

	// Inputs
	reg [7:0] sw;
	reg go;
	reg clk;
	reg rst;

	// Outputs
	wire [15:0] display;
	wire [2:0] state;
	
	// Instantiate the Unit Under Test (UUT)
	radix4booth uut (
		.sw(sw), 
		.go(go), 
		.clk(clk), 
		.rst(rst), 
		.display(display), 
		.state(state)	
	);

  always #10 clk = ~clk;
	initial begin
		// Initialize Inputs
		sw = 68;
		go = 1;
		clk = 1;
		rst = 1;

		#10;
      
		sw =68;
		go = 1;
		rst = 1;

		#10;
		
		sw = 68;
		go = 1;
		rst = 0;

		#10;
		sw = 68;
		go = 1;
		rst = 0;

		#10;
		sw = 68;
		go = 1;
		rst = 0;

		#10;
		sw = 68;
		go = 1;
		rst = 0;

		#10;
		sw = 68;
		go = 1;
		rst = 0;

		#10;
		sw = 68;
		go = 1;
		rst = 0;

		#10;
		

		sw =68;
		go = 0;
		rst = 0;

		#10;

		sw = 35;
		go = 0;
		rst = 0;

		#10;

		sw = 35;
		go = 1;
		rst = 0;

		#10;

		sw = 35;
		go = 1;
		rst = 0;

		#10;

		// Add stimulus here

	end
      
endmodule

