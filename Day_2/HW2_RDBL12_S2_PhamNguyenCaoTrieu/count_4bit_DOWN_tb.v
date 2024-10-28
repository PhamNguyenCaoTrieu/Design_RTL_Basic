module count_4bit_DOWN_tb;
	reg clk, reset;
	wire [3:0] count;
	count_4bit_DOWN_st uut ( .clk(clk), .reset(reset), .count(count) );
		clk = 0; 
		forever #5 clk = ~clk; 
	end
	initial begin
		reset = 1;
		forever begin 
		#10 reset = 0;
		#110 reset = 1; 
		#10 reset = 0;
		end
	end
endmodule