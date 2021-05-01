module TESTCTL(
	CLK,
	TSTEN,
	CLR_CNT,
	LOAD
);
input CLK;
output wire TSTEN;
output wire LOAD;
output reg CLR_CNT;
reg div2;

always @ (posedge CLK)begin
div2<=~div2;
end

always @ (CLK)begin
if(div2==0&&CLK==0)
CLR_CNT<=1;
else
CLR_CNT<=0;
end

assign TSTEN=div2;
assign LOAD=~div2;

endmodule