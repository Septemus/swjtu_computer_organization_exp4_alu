module put_zero(
	output reg [7:0] X,
	output reg [7:0] Y,
	input [2:0] S,
	output reg[15:0] ans,
	input clk
);
						
	always@(posedge clk)
	begin
		if(S==3'b000)
		begin
			ans<=16'b0000_0000_0000_0000;
		end
	end
	
	
	
endmodule
