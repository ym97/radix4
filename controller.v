`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:50:36 08/14/2016 
// Design Name: 
// Module Name:    controller 
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
module controller(go,flag,ld,sel,state,clk,rst);
input go,flag,clk,rst;
output [4:0] ld ;
output [4:0]sel;
output [2:0] state;
wire[2:0] state;
wire [2:0] nextstate;


register_n #(3)r1(nextstate,state,clk,rst);

next_state nxt(state,flag,go,nextstate);
load_sel ls(state,ld,sel);

endmodule
