module arith_right1(
	input [7:0] X,
	input [7:0] Y,
	input [2:0] S,
	output reg[15:0] ans,
	input clk
);
always@(posedge clk)
	begin
		if(S==3'b111)
		begin
			if(X[7]==1'b1)
			begin
				ans<={8'h00,1'b1,X[7:1]};
			end
			else
			begin
				ans<={8'h00,1'b0,X[7:1]};
			end
		end
	end
endmodule
