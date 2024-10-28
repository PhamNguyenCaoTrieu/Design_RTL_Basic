module count4bit_DFF_tb;
	reg clk, reset;
	wire [3:0] count;
	count4bit_DFF_st uut ( .clk(clk), .reset(reset), .count(count) );	initial begin
		clk = 0; 
		forever #5 clk = ~clk; 
	end
	initial begin
		reset = 1;
		#10 reset = 0;
		#110 reset = 1; 
		#10 reset = 0;
	end
endmodule