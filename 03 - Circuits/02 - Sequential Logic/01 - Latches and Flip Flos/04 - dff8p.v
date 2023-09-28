//https://hdlbits.01xz.net/wiki/Dff8p

module top_module (
    input clk,
    input reset,
    input [7:0] d,
    output [7:0] q
);
    always @(negedge clk)
        if(reset)
            q<=(6'h34);
    	else
            q<=d;
endmodule
