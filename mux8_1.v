`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:49:50 08/12/2016 
// Design Name: 
// Module Name:    mux8_1 
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
module mux8_1(
    input [7:0] a,
    input [2:0] sel,
    output out
    );
	 
wire [2:0] nsel;
wire [7:0] w;
not n0(nsel[0],sel[0]);
not n1(nsel[1],sel[1]);
not n2(nsel[2],sel[2]);

and a0(w[0],nsel[2],nsel[1],nsel[0],a[0]);
and a1(w[1],nsel[2],nsel[1],sel[0],a[1]);
and a2(w[2],nsel[2],sel[1],nsel[0],a[2]);
and a3(w[3],nsel[2],sel[1],sel[0],a[3]);
and a4(w[4],sel[2],nsel[1],nsel[0],a[4]);
and a5(w[5],sel[2],nsel[1],sel[0],a[5]);
and a6(w[6],sel[2],sel[1],nsel[0],a[6]);
and a7(w[7],sel[2],sel[1],sel[0],a[7]);
or o1(out,w[0],w[1],w[2],w[3],w[4],w[5],w[6],w[7]);
endmodule
