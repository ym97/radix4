`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:19:23 08/12/2016 
// Design Name: 
// Module Name:    complement_2 
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
module complement_2(
    input [7:0] a,
    output [7:0] b
	 
    );
	 
wire [7:0] na;
wire c;
generate 
    genvar k;
    for(k=0;k<8;k=k+1)
    begin
      not n(na[k],a[k]);
    end
  endgenerate
  
nbit_adder add(na,1,b,c);


endmodule
