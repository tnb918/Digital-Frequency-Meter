module gg(
	 clk,
	 freq1,
	 freq2,
	 freq3,
	 freq4,
	 freq5
);
input clk;
output reg freq1;
output reg freq2;
output reg freq3;
output reg freq4;
output reg freq5;


always @ (posedge clk)begin //500kHz
freq1<=~freq1;
end

always @ (posedge freq1)begin //250kHz
freq2<=~freq2;
end

always @ (posedge freq2)begin //125kHz
freq3<=~freq3;
end

always @ (posedge freq3)begin //62.5kHz
freq4<=~freq4;
end

always @ (posedge freq4)begin //31.25kHz
freq5<=~freq5;
end

endmodule