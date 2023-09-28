//https://hdlbits.01xz.net/wiki/Dff8r

module top_module (
    input clk,
    input reset,            // Synchronous reset
    input [7:0] d,
    output [7:0] q
);
    
    posedge @(posedge clk)
    if (reset ==0)
        q <= {8{1'b0}};
    else
        q<=d;
        

endmodule
