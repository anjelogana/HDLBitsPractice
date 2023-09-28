//https://hdlbits.01xz.net/wiki/Hadd
//Create a half adder. A half adder adds two bits (with no carry-in) and produces a sum and carry-out.
module top_module( 
    input a, b,
    output cout, sum );
    
    assign sum = a^b;
    assign cout = a&b;
    //assign {cout, sum} = a+b; can also work!
endmodule

