`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2025 16:51:29
// Design Name: 
// Module Name: mux2to1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


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




