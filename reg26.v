module reg26(
input load,
input [26:0] din,
output reg [26:0] dout
);
always @(posedge load)
begin
dout<=din;
end
endmodule 