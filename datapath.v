`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:09:23 08/13/2016 
// Design Name: 
// Module Name:    datapath 
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
module datapath(ld,sel,clk,sw,rst,flag,display);

input [4:0]ld;
input [4:0]sel;
input clk , rst; 
input [7:0]sw ; 
wire[2:0]  ct ;
wire[2:0]  ctnew;  
wire wc3,wc2,wc1,wc0;
output flag ;
output [15:0] display ;
//output [7:0]z;
//output [7:0]y;
//output [7:0] acc;
wire [2:0] mainsel;

mux2_1 mc2( wc2,ctnew[2],1'b 1,sel[0]);
mux2_1 mc1( wc1,ctnew[1],1'b 0,sel[0]);
mux2_1 mc0( wc0,ctnew[0],1'b 0,sel[0]);

//in, out, clk ,load, rst
register cnt({wc2,wc1,wc0} , ct , clk , ld[0] , rst);
count_decr dec1(ct,ctnew) ;
count_check ck ( ct , flag );


wire [7:0] md;
wire [7:0] nmd;
wire [7:0] c2md;


register multiplicand(sw,md,clk,ld[1] , rst);
complement_2 c1 (md,nmd);
register compmd(nmd,c2md,clk,1'b 1 , rst);


wire [7:0]z ;
wire [7:0]newacc ;
wire [7:0]acc ;
wire [7:0]macc ;
wire [7:0]mmp ;
wire [7:0]mp;
wire [7:0]newmp;
wire [1:0]transshr ;
wire [1:0]lasttwo ;


mux4_1 muxacc7 (macc[7] ,{newacc[7], z[7],1'b 0,1'b 0}, sel[2:1]);
mux4_1 muxacc6 (macc[6] ,{newacc[6], z[6],1'b 0,1'b 0}, sel[2:1]);
mux4_1 muxacc5 (macc[5] ,{newacc[5], z[5],1'b 0,1'b 0}, sel[2:1]);
mux4_1 muxacc4 (macc[4] ,{newacc[4], z[4],1'b 0,1'b 0}, sel[2:1]);
mux4_1 muxacc3 (macc[3] ,{newacc[3], z[3],1'b 0,1'b 0}, sel[2:1]);
mux4_1 muxacc2 (macc[2] ,{newacc[2], z[2],1'b 0,1'b 0}, sel[2:1]);
mux4_1 muxacc1 (macc[1] ,{newacc[1], z[1],1'b 0,1'b 0}, sel[2:1]);
mux4_1 muxacc0 (macc[0] ,{newacc[0], z[0],1'b 0,1'b 0}, sel[2:1]);
register regacc(macc , acc , clk , ld[2] , rst);


mux2_1 muxmp7 (mmp[7] ,newmp[7], sw[7], sel[3]);
mux2_1 muxmp6 (mmp[6] ,newmp[6], sw[6], sel[3]);
mux2_1 muxmp5 (mmp[5] ,newmp[5], sw[5], sel[3]);
mux2_1 muxmp4 (mmp[4] ,newmp[4], sw[4], sel[3]);
mux2_1 muxmp3 (mmp[3] ,newmp[3], sw[3], sel[3]);
mux2_1 muxmp2 (mmp[2] ,newmp[2], sw[2], sel[3]);
mux2_1 muxmp1 (mmp[1] ,newmp[1], sw[1], sel[3]);
mux2_1 muxmp0 (mmp[0] ,newmp[0], sw[0], sel[3]);
register regmp(mmp , mp , clk , ld[3] , rst);


shr_2 shracc(acc,{acc[7],acc[7]},newacc , transshr);
shr_2 shrmp(mp,transshr,newmp , lasttwo);


wire [7:0]y;
wire carry;
wire lb;
wire lastbit ; 

mux2_1 reglbit(lb,lasttwo[1],1'b 0 , sel[4]);
register #(1) lbit(lb,lastbit,clk,ld[4],rst);

assign mainsel = {mp[1],mp[0],lastbit};

mux8_1 mainmux0({1'b 0 , c2md[0],c2md[0] ,1'b0 , 1'b 0 , md[0] , md[0], 1'b0 },mainsel,y[0] );
mux8_1 mainmux1({1'b 0 , c2md[1],c2md[1] ,c2md[0] , md[0] , md[1] , md[1], 1'b0 },mainsel,y[1] );
mux8_1 mainmux2({1'b 0 , c2md[2],c2md[2] ,c2md[1] , md[1] , md[2] , md[2], 1'b0 },mainsel,y[2] );
mux8_1 mainmux3({1'b 0 , c2md[3],c2md[3] ,c2md[2] , md[2] , md[3] , md[3], 1'b0 },mainsel,y[3] );
mux8_1 mainmux4({1'b 0 , c2md[4],c2md[4] ,c2md[3] , md[3] , md[4] , md[4], 1'b0 },mainsel,y[4] );
mux8_1 mainmux5({1'b 0 , c2md[5],c2md[5] ,c2md[4] , md[4] , md[5] , md[5], 1'b0 },mainsel,y[5] );
mux8_1 mainmux6({1'b 0 , c2md[6],c2md[6] ,c2md[5] , md[5] , md[6] , md[6], 1'b0 },mainsel,y[6] );
mux8_1 mainmux7({1'b 0 , c2md[7],c2md[7] ,c2md[6] , md[6] , md[7] , md[7], 1'b0 },mainsel,y[7] );

nbit_adder alu(acc,y,z,carry);

assign display = {acc,mp};
endmodule