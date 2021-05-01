module cal(
input [26:0] din1,
input [26:0] din2,
input clk,
output wire [26:0] num,
output wire [2:0]  pip
);
reg  [8:0] num0;
reg  [2:0] pp;
wire [48:0] num1;

always @(posedge clk)
begin
if(din1>9999)
begin
num0<=1;pp<=3'b000;
end
else if(din1>999)
begin 
num0<=10;pp<=3'b010; 
end
else if(din1>99)
begin
num0<=100;pp<=3'b011;
end
end

assign num1=(50000000*num0)/din2;
assign num=num1*(din1+1);

assign pip=pp;
endmodule 