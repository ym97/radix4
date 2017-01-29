`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:06:00 08/14/2016 
// Design Name: 
// Module Name:    radix4booth 
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
module radix4booth(sw,go,clk,rst,display,state);

input [7:0] sw;
input clk , rst,go;
output [15:0] display;
wire [4:0] ld;
wire [4:0] sel;
wire flag;
output [2:0]state;
datapath dp(ld,sel,clk,sw,rst,flag,display);
controller cont(go,flag,ld,sel,state,clk,rst);

endmodule
