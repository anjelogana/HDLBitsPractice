//https://hdlbits.01xz.net/wiki/Fadd
//Create a full adder. A full adder adds three bits (including carry-in) and produces a sum and carry-out.

module top_module( 
    input a, b, cin,
    output cout, sum );
    
    assign cout = (cin&b) | (a&b) | (cin&a);
    assign sum = a ^ b ^ cin;
    //assign {cout, sum} = a+b+cin; also works!
endmodule
