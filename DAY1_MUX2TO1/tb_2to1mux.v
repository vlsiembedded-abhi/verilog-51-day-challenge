`timescale 1ns/1ps
module tb_2to1mux;
    reg a,b,sel;
    wire y;

    mux2to1 uut(
        .a(a),
        .b(b),
        .sel(sel),
        .y(y)
    );

    initial begin
        // Apply stimulus
        a = 0; b = 0; sel = 0; #10;   // y = 0
        a = 0; b = 1; sel = 0; #10;   // y = 0
        a = 0; b = 1; sel = 1; #10;   // y = 1
        a = 1; b = 0; sel = 0; #10;   // y = 1
        a = 1; b = 0; sel = 1; #10;   // y = 0
        a = 1; b = 1; sel = 0; #10;   // y = 1
        a = 1; b = 1; sel = 1; #10;   // y = 1

        $stop;   // end simulation, keeps waveform open
    end
endmodule
