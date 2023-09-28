//https://hdlbits.01xz.net/wiki/Mux2to1

module top_module( 
    input a, b, sel,
    output out ); 
    ///////////
    assign out = (sel==0)? a : b;
    ///////////
    assign out = sel ? b : a; //if sel true (sel = 1) pick b else always
    ///////////
    always @(*)
        begin
            if (sel == 0)
                out = a;
            else
                out = b;
        end
    ///////////
    always @ (*)
    begin
        case(sel)
            1'b0 : out = a;
            1'b1 : out = b;
        endcase
    end
    
endmodule
