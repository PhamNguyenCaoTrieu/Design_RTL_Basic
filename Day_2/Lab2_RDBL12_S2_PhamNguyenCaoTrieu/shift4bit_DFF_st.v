
module shift4bit_DFF_st (input clk, input reset, input D, output reg [3:0] Q);
	always @(posedge clk or posedge reset) begin
	if (reset)
		Q <= 4'b0000; 
	else
		Q <= {Q[2:0], D}; 	
	end
endmodule