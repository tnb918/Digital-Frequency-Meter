module cnt8(
input clk,
input reset_n,
input en,
output reg [26:0] num
);
always @(posedge clk or posedge reset_n)
begin
if(reset_n)
num<=0;
else if(en)
num<=num+1'b1;
end
endmodule 