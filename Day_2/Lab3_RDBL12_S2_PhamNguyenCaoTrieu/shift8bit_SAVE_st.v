module shift8bit_SAVE_st (input clk,input reset,input D, output reg [7:0] Q );
    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 8'h00; 
        else
            Q <= {Q[6:0], D}; 
    end
endmodule

