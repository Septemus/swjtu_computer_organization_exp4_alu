module logic_right1(
	input [7:0] X,
	input [7:0] Y,
	input [2:0] S,
	output reg[15:0] ans,
	input clk
);
always@(posedge clk)
	begin
		if(S==3'b110)
		begin
			ans<={8'b0000_0000,1'b0,X[7:1]};
		end
	end
endmodule
