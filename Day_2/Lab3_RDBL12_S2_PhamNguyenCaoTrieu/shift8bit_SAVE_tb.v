module shift8bit_SAVE_tb;
	reg D, clk, reset;
	wire [7:0] Q;
	shift8bit_SAVE_st uut ( .clk(clk),.reset(reset), .D(D), .Q(Q) );	initial begin
		D = 0; 
		forever #6 D = ~D;
	end
	initial begin
		clk = 0; 
		forever #5 clk = ~clk;
	end
	initial begin
		reset = 1; 
		forever #250 reset = ~reset;
	end
endmodule
