`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:04:24 08/12/2016 
// Design Name: 
// Module Name:    nbit_adder 
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
module nbit_adder(a,b,sum,carry);
	
	input [7:0] a;
	input [7:0] b;
	wire [6:0]s;
	output [7:0] sum;
	output carry;
	adder u0 (a[0],b[0],1'b0,sum[0],s[0]);
	adder u1 (a[1],b[1],s[0],sum[1],s[1]);
	adder u2 (a[2],b[2],s[1],sum[2],s[2]);
	adder u3 (a[3],b[3],s[2],sum[3],s[3]);
	adder u4 (a[4],b[4],s[3],sum[4],s[4]);
	adder u5 (a[5],b[5],s[4],sum[5],s[5]);
	adder u6 (a[6],b[6],s[5],sum[6],s[6]);
	adder u7 (a[7],b[7],s[6],sum[7],carry);

endmodule
