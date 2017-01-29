`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:17:50 08/13/2016 
// Design Name: 
// Module Name:    count_check 
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
module count_check(rout,out);
  output out;
  wire w;
  input [2:0]rout;
  or o(w,rout[2],rout[1],rout[0]);
  not nl(out,w);
endmodule
