`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:58:19 08/12/2016 
// Design Name: 
// Module Name:    adder 
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
module adder(a,b,cin,sum, cout);
	
	input  a,b,cin;
	
	output sum,cout;
	wire c1,c2,s;
	half_adder h1(a,b,s,c1);
	half_adder h2(s,cin,sum,c2);;
	or o1(cout,c1,c2);
	
endmodule
