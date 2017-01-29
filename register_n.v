`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:12:06 08/14/2016 
// Design Name: 
// Module Name:    register_n 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module register_n(in, out, clk,rst);
 parameter SIZE=16;
 output [SIZE-1:0] out;
 input [SIZE-1:0] in;
 input clk,rst;
 reg [SIZE-1:0] out;
 always @(negedge clk)
 	begin
 	if (rst) out <= 0;
   else  out <= in;
 

 	end
endmodule
