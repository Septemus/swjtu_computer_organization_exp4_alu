> # 0 关于

欢迎到我的博客文章查看更多内容😄：
https://septemusblog.space/computer_organization_exp4/

> # 1 实验内容

8位算术逻辑单元设计

> # 2 代码/原理图

> ## 2.1 顶层文件

```Verilog
module exp4(
	input clk,
	input [2:0]S,
	input cin,
	input [3:0] KEY_R,
	output [3:0] KEY_C = 4'b0111,
	output [15:0] ans,
	output [31:0] N,
	output [7:0] codeout,
	output [2:0] sel,
	output [7:0] X,
	output [7:0] Y
);
wire clr;
wire [15:0] key_out;
keymodule km(.clk(clk),.KEY_R(KEY_R),.KEY_C(KEY_C),.out(key_out),.clr(clr));
midware mw(key_out,X,Y,clk);
assign N={X,Y,ans};
assign clr=( (S==3'b000)?1:0 );
segment_displays sd(.clk(clk),.N(N),.seg(codeout),.sel(sel),.clr(clr));
manipulate man(clk,S,X,Y,cin,ans);
endmodule


```

> ## 2.2 根据键盘获取输入

```Verilog
module keymodule(
	input clk,
	input [3:0] KEY_R,
	output reg[3:0] KEY_C = 4'b0111,
	output reg[15:0] out= 16'hxxxx,
	input clr
//	output reg[2:0] press_times=3'b000
);
	reg [1:0] cnt = 2'b0;
	reg[4:0] num=5'd16;
	reg[31:0] count_num=32'b1;
//根据按钮的列扫描信号和行输入信号判断按钮是否被按下
always  @(posedge clk)
begin
//		if(S==3'b000)
//		begin
//			out<=16'h0000;
//		end
//		else
		if(clr)
		begin
			out<=16'h0000;
		end
		else
		begin
			cnt = cnt + 1'b1;
			case (cnt)
				2'b00:	KEY_C <= 4'b1110;
				2'b01:	KEY_C <= 4'b1101;
				2'b10:	KEY_C <= 4'b1011;
				2'b11:	KEY_C <= 4'b0111;         
			endcase
			if(KEY_R==4'b1111)
			begin
				num=5'd16;
			end
			else 
			begin 
				  case ({KEY_C, KEY_R})
					 
					 8'b1011_1110: num = 5'd0;
					 8'b0111_0111: num = 5'd1;
					 8'b1011_0111: num = 5'd2;
					 8'b1101_0111: num = 5'd3;
					 
					 8'b0111_1011: num = 5'd4;
					 8'b1011_1011: num = 5'd5;
					 8'b1101_1011: num = 5'd6;
					 8'b0111_1101: num = 5'd7;  
					 
					 8'b1011_1101: num = 5'd8;
					 8'b1101_1101: num = 5'd9;
					 8'b1110_0111: num = 5'd10;
					 8'b1110_1011: num = 5'd11;  
					 
					 8'b1110_1101: num = 5'd12;
					 8'b1110_1110: num = 5'd13;
					 8'b0111_1110: num = 5'd14;
					 8'b1101_1110: num = 5'd15;  
				  endcase
			end
			begin
				if(num == 5'b1_0000)
					begin
						if(count_num == 32'b0)begin
							count_num = 32'd100001;end
						count_num = count_num + 1'b1;
					end
				else if(count_num > 32'd100000)
					begin
						count_num = 32'b1;
					
						//移位
						begin
						out=out<<4;
						out[3:0] = num[3:0];
						end
					end
			end
			end
		
end
endmodule   
```

> ## 2.3 将键盘输入转换为操作数的中间键

```Verilog
module midware(
	input [15:0]key_out,
	output reg [7:0] X,
	output reg [7:0] Y,
	input clk
);
	always@(posedge clk)
	begin
		X<=key_out[15:8];
		Y<=key_out[7:0];
	end
endmodule

```

> ## 2.4 8位7段数码管

```Verilog
module segment_displays(clk,N,seg,sel,clr);
	input clk;
	input [31:0] N;
	output reg [7:0] seg;
	output reg [2:0] sel;
	input clr;
	reg [3:0]num;
	always@(posedge clk)
	begin
		sel<=sel+1;
		
			case(sel)
				3'b110:num<=N[3:0];
				3'b101:num<=N[7:4];
				3'b100:num<=N[11:8];
				3'b011:num<=N[15:12];
				3'b010:num<=N[19:16];
				3'b001:num<=N[23:20];
				3'b000:num<=N[27:24];
				3'b111:num<=N[31:28];
			endcase
	end
	always@(num)
	begin
		case(num)
			4'b0000:seg<=8'b00111111;	//"0"
			4'b0001:seg<=8'b00000110;	//"1"
			4'b0010:seg<=8'b01011011;	//"2"
			4'b0011:seg<=8'b01001111;	//"3”
			4'b0100:seg<=8'b01100110;	//"4"
			4'b0101:seg<=8'b01101101;	//"5"
			4'b0110:seg<=8'b01111101;	//"6"
			4'b0111:seg<=8'b00000111;	//"8"
			4'b1000:seg<=8'b01111111;	//"8"
			4'b1001:seg<=8'b01101111;	//"9"
			4'b1010:seg<=8'b01110111;	//"A"
			4'b1011:seg<=8'b01111100;	//"b"
			4'b1100:seg<=8'b00111001;	//"c"
			4'b1101:seg<=8'b01011110;	//"d"
			4'b1110:seg<=8'b01111001;	//"E"
			4'b1111:seg<=8'b01110001;	//"F"
			default:seg<=8'b00000000;	//"dark"
		endcase
	end
endmodule
```

> ## 2.5 运算功能

```Verilog
module manipulate(

	input clk,
	input [2:0]S,
	input [7:0]X,
	input [7:0]Y,
	input cin,
	output reg[15:0]ans
	
	);
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

```

> ## 2.6 仿真用key_module

```Verilog

module keymodule(
	input clk,
	input [3:0] KEY_R,
	output reg[3:0] KEY_C = 4'b0111,
	output reg[15:0] out= 16'hxxxx,
	input clr
//	output reg[2:0] press_times=3'b000
);
	reg [1:0] cnt = 2'b0;
	reg[4:0] num=5'd16;
//	reg[31:0] count_num=32'b1;
//根据按钮的列扫描信号和行输入信号判断按钮是否被按下
always  @(posedge clk)
begin
//		if(S==3'b000)
//		begin
//			out<=16'h0000;
//		end
//		else
		if(clr)
		begin
			out<=16'h0000;
		end
		else
		begin
			cnt = cnt + 1'b1;
			case (cnt)
				2'b00:	KEY_C <= 4'b1110;
				2'b01:	KEY_C <= 4'b1101;
				2'b10:	KEY_C <= 4'b1011;
				2'b11:	KEY_C <= 4'b0111;         
			endcase
			if(KEY_R==4'b1111)
			begin
				num=5'd16;
			end
			else 
			begin 
				  case ({KEY_C, KEY_R})
					 
					 8'b1011_1110: num = 5'd0;
					 8'b0111_0111: num = 5'd1;
					 8'b1011_0111: num = 5'd2;
					 8'b1101_0111: num = 5'd3;
					 
					 8'b0111_1011: num = 5'd4;
					 8'b1011_1011: num = 5'd5;
					 8'b1101_1011: num = 5'd6;
					 8'b0111_1101: num = 5'd7;  
					 
					 8'b1011_1101: num = 5'd8;
					 8'b1101_1101: num = 5'd9;
					 8'b1110_0111: num = 5'd10;
					 8'b1110_1011: num = 5'd11;  
					 
					 8'b1110_1101: num = 5'd12;
					 8'b1110_1110: num = 5'd13;
					 8'b0111_1110: num = 5'd14;
					 8'b1101_1110: num = 5'd15;  
				  endcase
				  out=out<<4;
				  out[3:0] = num[3:0];
			end
//			begin
////				if(num == 5'b1_0000)
////					begin
////						if(count_num == 32'b0)begin
////							count_num = 32'd100001;end
////						count_num = count_num + 1'b1;
////					end
////				else if(count_num > 32'd100000)
////					begin
////						count_num = 32'b1;
////					
////						//移位
////						begin
////						out=out<<4;
////						out[3:0] = num[3:0];
////						end
////					end
//				out=out<<4;
//				out[3:0] = num[3:0];
//			end
			end
		
end
endmodule   

```

> # 3 引脚分配

<img src="/images/pin.png" width="80%">

> # 4 仿真波形

<img src="/images/wvf.png" width="80%">

