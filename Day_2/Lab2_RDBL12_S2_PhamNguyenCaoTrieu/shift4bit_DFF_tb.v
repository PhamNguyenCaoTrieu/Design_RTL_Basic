module shift4bit_DFF_tb;
	reg D, clk, reset;
	wire [3:0] Q;
	shift4bit_DFF_st uut ( .clk(clk),.reset(reset), .D(D), .Q(Q) );	initial begin
		D = 0; 
		forever #7.5 D = ~D;
	end
	initial begin
		clk = 0; 
		forever #5 clk = ~clk;
	end
	initial begin
		reset = 1; 
		forever #70 reset = ~reset;
	end
endmodule
