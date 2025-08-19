`timescale 1ns / 1ps
module mux2to1(
    input wire a, // first_input
    input wire b, // second_input
    input wire sel, // select_line
    output reg y // output(reg usese in inside of always block.

    );
    always @(*) begin // procedural block
        if(sel)
            y = b;
        else
            y = a;
end

endmodule




