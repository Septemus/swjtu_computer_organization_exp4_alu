module arith_add(
	input [7:0] X,
	input [7:0] Y,
	input [2:0] S,
	output reg[15:0] ans,
	input clk,
	input cin
);
always@(posedge clk)
	begin
		if(S==3'b100)
		begin
			ans<=X+Y+cin;
		end
	end
endmodule
