module tb_mux16to1;
reg [15:0] tb_d;
reg [3:0] tb_sel;
wire tb_y;

integer i;
reg expected_y;

mux16to1 uut(
.d(tb_d),.sel(tb_sel),.y(tb_y)
);

initial begin

for (i=0;i<500;i=i+1) begin

tb_d = $random;
tb_sel = $random;
#10;
expected_y = (tb_d>>tb_sel)&1'b1;

if (tb_y == expected_y) begin

$display("PASS");
end else begin
$display("FAIL");
$stop;
end
end
$stop;
end
endmodule


  