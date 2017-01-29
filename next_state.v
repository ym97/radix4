`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:36:00 08/14/2016 
// Design Name: 
// Module Name:    next_state 
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
module next_state(
    input [2:0] state,
    input flag,
    input go,
    output [2:0] nextstate
    );

wire [2:0] nstate;
not n0(nstate[0],state[0]);
not n1(nstate[1],state[1]);
not n2(nstate[2],state[2]);
not n3(ngo,go);
not n4(nflag,flag);




and a1(w1,state[1],state[0]);
and a2(w2,state[2],nstate[1],nstate[0]);
and a3(w3,state[2],nstate[1],flag);
and a4(w4,state[2],nstate[0],go);

or o1(nextstate[2],w1,w2,w3,w4);


and aa1(ww1,state[2],state[0]);
and aa2(ww2,nstate[1],state[0],ngo);
and aa3(ww3,nstate[2],state[1],nstate[0]);
and aa4(ww4,go,nstate[0],state[1]);

or o2(nextstate[1],ww1,ww2,ww3,ww4);


and ab1(wb1,nstate[2],nstate[1],go);
and ab2(wb2,nstate[2],nstate[0],go);
and ab3(wb3,state[2],nstate[0],ngo);
and ab4(wb4,state[2],nstate[1],nflag);

or o3(nextstate[0],wb1,wb2,wb3,wb4);


endmodule
