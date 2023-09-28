//https://hdlbits.01xz.net/wiki/Dff16e

module top_module (
    input clk,
    input resetn,
    input [1:0] byteena,
    input [15:0] d,
    output [15:0] q
);

    always @(posedge clk)
        if (!resetn)
            q<={16'b0};
    else if (byteena==2'b01)
        q[15:8] <= d [15:8];
    else if (byteena==2'b00)
        q[7:0] <= d[7:0];
    	else 
            q<=d;
                
endmodule
