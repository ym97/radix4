`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:57:03 08/14/2016
// Design Name:   datapath
// Module Name:   G:/karma/radix4/datatest.v
// Project Name:  radix4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: datapath
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module datatest;

	// Inputs
	reg [4:0] ld;
	reg [4:0] sel;
	reg clk;
	reg [7:0] sw;
	reg rst;

	// Outputs
	wire flag;
	wire [15:0] display;

	// Instantiate the Unit Under Test (UUT)
	datapath uut (
		.ld(ld), 
		.sel(sel), 
		.clk(clk), 
		.sw(sw), 
		.rst(rst), 
		.flag(flag), 
		.display(display)
	);

  always #10 clk = ~clk ;

	initial begin
		// Initialize Inputs
		ld = 5'b 10010;
		sel = 5'b 10011;
		clk = 0;
		sw = 4;
		rst = 0;
      #10;
        
		ld = 5'b 10010;
		sel = 5'b 10011;
		clk = 0;
		sw = 3;
		rst = 0;
      #10;
      
		ld = 5'b 10010;
		sel = 5'b 10011;
		clk = 0;
		sw = 5;
		rst = 0;
      #10;
      // Add stimulus here

	end
      
endmodule

