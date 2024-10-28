module and_gate_tb;
	reg A,B;
	wire Y;
	and_gate_st uut (.A(A), .B(B), .Y(Y));
	initial begin
		A = 0; B = 0;
		#10 A = 0; B = 1;
		#10 A = 1; B = 0;
		#10 A = 1; B = 1;
		//#10 $finish;
	end 
endmodule 
