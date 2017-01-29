`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:20:43 08/13/2016 
// Design Name: 
// Module Name:    count_decr 
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
module count_decr( in,out
    );
input [2:0] in ;
output [2:0]out;
wire carry;
nbit_adder pp({5'b 00000,in},8'b 11111111 ,out,carry);
	
endmodule
