//------testbench of nand_gate-----


`timescale 1ns/10ps
module nand_gate_tb;
reg[3:0]   aa,bb;
wire[3:0]	yy;


nand_gate   nand_gate(.A(aa),.B(bb),.Y(yy));


initial begin
		aa<=4'b0000;bb<=4'b1111;
	#10	aa<=4'b0010;bb<=4'b0110;	
	#10	aa<=4'b0111;bb<=4'b0100;
	#10	aa<=4'b0000;bb<=4'b1110;
	#10	$stop;

end
		initial begin
			$dumpfile("test4.vcd");
			$dumpvars(0, nand_gate_tb); 
		end


endmodule
