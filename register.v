`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:25:10 08/12/2016 
// Design Name: 
// Module Name:    register 
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
module register(in, out, clk ,load, rst);
 parameter SIZE=16;
 output [SIZE-1:0] out;
 input [SIZE-1:0] in;
 input clk, rst,load;
 reg [SIZE-1:0] out;
 always @(posedge clk)
 	begin
 	if (rst) out <= 0;
 	else if(load) out <= in;
 

 	end
endmodule
