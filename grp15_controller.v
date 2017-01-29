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

module register_n(in, out, clk,rst);
 parameter SIZE=16;
 output [SIZE-1:0] out;
 input [SIZE-1:0] in;
 input clk,rst;
 reg [SIZE-1:0] out;
 always @(negedge clk)
 	begin
 	if (rst) out <= 0;
   else  out <= in;
 

 	end
endmodule


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



module cont_check;

	// Inputs
	reg go;
	reg flag;
	reg clk;
	reg rst;

	// Outputs
	wire [4:0] ld;
	wire [4:0] sel;
	wire [2:0] state;

	// Instantiate the Unit Under Test (UUT)
	controller uut (
		.go(go), 
		.flag(flag), 
		.ld(ld), 
		.sel(sel), 
		.state(state), 
		.clk(clk),
		.rst(rst)
	);
always #10 clk = ~clk;

	initial begin
		// Initialize Inputs
		
	clk=0;	
		go = 1;
		flag = 0;
		rst=1;
		#10;
		go = 1;
		flag = 0;
		rst=1;
		#10;
		go = 1;
		flag = 0;
		rst=1;
		#10;
		go = 1;
		flag = 0;
		rst=1;
		#10;
		
			rst=0;
			go = 1;
		flag = 0;
		#10;
			go = 1;
		flag = 0;
		#10;
		go = 1;
		flag = 0;
		#10;
		go = 1;
		flag = 0;
		#10;
			go = 0;
		flag = 0;
		#10;
			go = 0;
		flag = 0;
		#10;
			go = 1;
		flag = 0;
		#10;	
		go = 1;
		flag = 0;
		#10;
       	go = 1;
		flag = 0;
		#10;	go = 1;
		flag = 0;
		#10;	go = 1;
		flag = 0;
		#10;	go = 0;
		flag = 0;
		#10;	go = 0;
		flag = 0;
		#10;	go = 0;
		flag = 0;
		#10; 
		
			go = 0;
		flag = 0;
		#10;	go = 0;
		flag = 0;
		#10;	go = 0;
		flag = 0;
		#10;	go = 0;
		flag = 0;
		#10;	go = 0;
		flag = 0;
		#10;	go = 0;
		flag = 0;
		#10;	go = 0;
		flag = 0;
		#10;	go = 0;
		flag = 0;
			go = 0;
		flag = 0;
		#10;	go = 0;
		flag = 0;
		#10;	go = 0;
		flag = 0;
		#10;
		#10;	go = 0;
		flag = 1;
		#10;	go = 0;
		flag = 1;
		#10;
		// Add stimulus here

	end
      
endmodule
