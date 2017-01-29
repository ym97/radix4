`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:27:23 08/13/2016 
// Design Name: 
// Module Name:    shr_2 
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
module shr_2( in ,inadd ,out,res
    );
input [7:0] in ;
input [1:0] inadd ;
output [7:0] out ;
output [1:0] res ;
assign res[1] = in[1];
assign res[0] = in[0];

generate
	 	genvar m;
      for(m=0;m<6;m=m+1)  begin
          assign out[m] = in[m+2];
		end
 assign out[6] = inadd[0];
 assign out[7] = inadd[1];
endgenerate
endmodule
