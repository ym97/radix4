`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:10:42 08/14/2016 
// Design Name: 
// Module Name:    load_sel 
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
//la
//////////////////////////////////////////////////////////////////////////////////
module load_sel(state,ld,sel
    );
input [2:0] state;
output [4:0] ld;
output [4:0] sel;

wire [2:0] nstate;
not n0(nstate[0],state[0]);
not n1(nstate[1],state[1]);
not n2(nstate[2],state[2]);


and a1(ld[0],nstate[1],state[0]);
and a2(ld[1],nstate[2],nstate[1],nstate[0]);
and a3(w1,nstate[2],state[0]);
and a4(w2,state[2],nstate[1],nstate[0]);
or or1(ld[2],w1,w2);
and a5(w3,nstate[2],state[1],nstate[0]);
or or2(ld[3],w3,w2);
and a6(w4,nstate[2],nstate[1],state[0]);
or or3(ld[4],w4,w2);


and aa1( sel[0],state[2],nstate[1],state[0]);
and aa2(sel[1],state[2],nstate[1],nstate[0]);
and aa3(ww1,nstate[2],nstate[1],state[0]);
not nn(sel[2],ww1);
not nn2(sel[4],ww1);
and aa4(sel[3],state[2],nstate[1],nstate[0]);



endmodule
