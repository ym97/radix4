`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:18:37 08/14/2016
// Design Name:   controller
// Module Name:   G:/karma/radix4/cont_check.v
// Project Name:  radix4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cont_check;

	// Inputs
	reg go;
	reg flag;
	reg clk;
	reg rst;

	// Outputs
	wire [4:0] ld;
	wire [4:0] sel;
	wire [2:0] state;

	// Instantiate the Unit Under Test (UUT)
	controller uut (
		.go(go), 
		.flag(flag), 
		.ld(ld), 
		.sel(sel), 
		.state(state), 
		.clk(clk),
		.rst(rst)
	);
always #10 clk = ~clk;

	initial begin
		// Initialize Inputs
		
	clk=0;	
		go = 1;
		flag = 0;
		rst=1;
		#10;
		go = 1;
		flag = 0;
		rst=1;
		#10;
		go = 1;
		flag = 0;
		rst=1;
		#10;
		go = 1;
		flag = 0;
		rst=1;
		#10;
		
			rst=0;
			go = 1;
		flag = 0;
		#10;
			go = 1;
		flag = 0;
		#10;
		go = 1;
		flag = 0;
		#10;
		go = 1;
		flag = 0;
		#10;
			go = 0;
		flag = 0;
		#10;
			go = 0;
		flag = 0;
		#10;
			go = 1;
		flag = 0;
		#10;	
		go = 1;
		flag = 0;
		#10;
       	go = 1;
		flag = 0;
		#10;	go = 1;
		flag = 0;
		#10;	go = 1;
		flag = 0;
		#10;	go = 0;
		flag = 0;
		#10;	go = 0;
		flag = 0;
		#10;	go = 0;
		flag = 0;
		#10; 
		
			go = 0;
		flag = 0;
		#10;	go = 0;
		flag = 0;
		#10;	go = 0;
		flag = 0;
		#10;	go = 0;
		flag = 0;
		#10;	go = 0;
		flag = 0;
		#10;	go = 0;
		flag = 0;
		#10;	go = 0;
		flag = 0;
		#10;	go = 0;
		flag = 0;
			go = 0;
		flag = 0;
		#10;	go = 0;
		flag = 0;
		#10;	go = 0;
		flag = 0;
		#10;
		#10;	go = 0;
		flag = 1;
		#10;	go = 0;
		flag = 1;
		#10;
		// Add stimulus here

	end
      
endmodule

