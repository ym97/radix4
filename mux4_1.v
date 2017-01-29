`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:00:12 08/14/2016 
// Design Name: 
// Module Name:    mux4_1 
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
module mux4_1(
    output out,
    input [3:0] a,
    input [1:0] sel
    );

wire [1:0] nsel;
wire [7:0] w;
not n0(nsel[0],sel[0]);
not n1(nsel[1],sel[1]);

and a0(w[0],nsel[1],nsel[0],a[0]);
and a1(w[1],nsel[1],sel[0],a[1]);
and a2(w[2],sel[1],nsel[0],a[2]);
and a3(w[3],sel[1],sel[0],a[3]);
or o1(out,w[0],w[1],w[2],w[3]);
endmodule
