module frequency_meter(
	 clk,
	 freq1,
	 freq2,
	 freq2222,
	 freq7812,
	 freq500k
);
input clk;
output reg freq1;
output reg freq2;
output reg freq2222;
output reg freq7812;
output reg freq500k;
reg [20:0]div_cnt1;
reg [7:0]div_cnt2;
reg [7:0]div_cnt3;
reg [19:0]div_cnt4;

always @ (posedge clk)begin//div_cnt1
if(div_cnt1==1000000-1)
div_cnt1<=8'b0;
else
div_cnt1<=div_cnt1+8'b1;
end

always @ (posedge clk)begin  //2Hz
if(div_cnt1==1000000-1)
freq2<=~freq2;
else
freq2<=freq2;
end

always @ (posedge clk)begin//div_cnt4
if(div_cnt4==500000-1)
div_cnt4<=8'b0;
else
div_cnt4<=div_cnt4+8'b1;
end

always @ (posedge clk)begin  //1Hz
if(div_cnt4==500000-1)
freq1<=~freq1;
else
freq1<=freq1;
end

always @ (posedge clk)begin //500kHz
freq500k<=~freq500k;
end

always @ (posedge clk)begin//div_cnt2
if(div_cnt2==64-1)
div_cnt2<=8'b0;
else
div_cnt2<=div_cnt2+8'b1;
end

always @ (posedge clk)begin  //7812Hz
if(div_cnt2==64-1)
freq7812<=~freq7812;
else
freq7812<=freq7812;
end

always @ (posedge clk)begin//div_cnt3
if(div_cnt3==225-1)
div_cnt3<=8'b0;
else
div_cnt3<=div_cnt3+8'b1;
end

always @ (posedge clk)begin  //2222Hz
if(div_cnt3==225-1)
freq2222<=~freq2222;
else
freq2222<=freq2222;
end

endmodule
