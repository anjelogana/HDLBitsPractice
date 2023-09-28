//https://hdlbits.01xz.net/wiki/Adder3
//make 3 instances of it to create a 3-bit binary ripple-carry adder
//The adder adds two 3-bit numbers and a carry-in to produce a 3-bit sum and carry out.
//To encourage you to actually instantiate full adders, also output the carry-out from each full adder in the ripple-carry adder. 
//cout[2] is the final carry-out from the last full adder, and is the carry-out you usually see.
module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    

    fa bit0(
        .a(a[0]),
        .b(b[0]),
        .cin(cin),
        .cout(cout [0]),
        .sum(sum[0])
    );
    fa bit1(
        .a(a[1]),
        .b(b[1]),
        .cin(cout[0]),
        .cout(cout [1]),
        .sum(sum[1])
    );
    
    fa bit2(
        .a(a[2]),
        .b(b[2]),
        .cin(cout [1]),
        .cout(cout [2]),
        .sum(sum[2])
    );
endmodule

module fa(
    input a,
    input b,
    input cin,
    output cout,
    output sum
);

    assign sum = a ^ b ^ cin;
    assign cout = (cin&b) | (a&b) | (cin&a);
endmodule