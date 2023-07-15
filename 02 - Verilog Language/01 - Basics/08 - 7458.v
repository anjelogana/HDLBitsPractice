https://hdlbits.01xz.net/wiki/7458

module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    
    //Right Side
	wire w1, w2;

    assign w1 = p1a & p1c & p1b;
    assign w2 = p1f & p1e & p1d;
    
    assign p1y = w1|w2;
    
    //Left Side
    wire w3,w4;
    
    assign w3 = p2a & p2b;
    assign w4 = p2c & p2d;
    
    assign p2y = w3 | w4;
endmodule
