module exp4(
	input clk,
	input [2:0]S,
	input cin,
	input [3:0] KEY_R,
	output [3:0] KEY_C = 4'b0111,
	output reg[15:0] ans,
	output wire [31:0] N,
	output [7:0] codeout,
	output [2:0] sel,
	output [7:0] X,
	output [7:0] Y
);
	
wire [15:0] key_out;
keymodule km(.clk(clk),.KEY_R(KEY_R),.KEY_C(KEY_C),.out(key_out));
midware mw(key_out,X,Y,clk);
assign N={X,Y,ans};
segment_displays sd(.clk(clk),.N(N),.seg(codeout),.sel(sel));

//	initial
//	begin
//		ans<=8'b0000_0000;
//	end
//	put_zero(X,Y,S,ans,clk);
//	logic_and(X,Y,S,ans,clk);
//	logic_or(X,Y,S,ans,clk);
//	logic_yihuo(X,Y,S,ans,clk);
//	arith_add(X,Y,S,ans,clk);
//	left1(X,Y,S,ans,clk);
//	logic_right1(X,Y,S,ans,clk);
//	arith_right1(X,Y,S,ans,clk);
	initial
	begin
		ans<=8'h00;
	end
	always@(posedge clk)
	begin
			case(S)
				3'b000:ans<=16'b0000_0000_0000_0000;
				3'b001:ans<={8'b0000_0000,X&Y};
				3'b010:ans<={8'b0000_0000,X|Y};
				3'b011:ans<={8'b0000_0000,X^Y};
				3'b100:ans<=X+Y+cin;
				3'b101:ans<={8'b0000_0000,X[6:0],1'b0};
				3'b110:ans<={8'b0000_0000,1'b0,X[7:1]};
				3'b111:ans<={8'b0000_0000,((X>>7)&1)?1:0,X[7:1]};
			endcase
	end
endmodule
