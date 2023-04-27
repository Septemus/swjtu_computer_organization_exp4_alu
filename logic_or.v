module logic_or(
	input [7:0] X,
	input [7:0] Y,
	input [2:0] S,
	output reg[15:0] ans,
	input clk
);
	always@(posedge clk)
	begin
		if(S==3'b010)
		begin
			ans<={8'b0000_0000,X|Y};
		end
	end
endmodule
