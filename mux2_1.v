`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:47:23 08/13/2016 
// Design Name: 
// Module Name:    mux2_1 
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
module mux2_1(out,a,b,sel);  
output  out;  
input  a,b,sel;  
  not   not1(sel_, sel); 
  and   and1(a1,  a,  sel);  
  and   and2(b1,  b,  sel_);  
   or   or1(out,  a1,  b1);  
  endmodule  