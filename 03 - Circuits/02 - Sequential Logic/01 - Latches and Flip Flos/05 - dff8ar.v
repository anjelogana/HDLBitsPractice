//https://hdlbits.01xz.net/wiki/Dff8ar

module top_module (
    input clk,
    input areset,   // active high asynchronous reset
    input [7:0] d,
    output [7:0] q
);
    always @(posedge clk or posedge areset)
        if (areset)
            q<={8{1'b0}};
        else
            q<=d;
        

endmodule
