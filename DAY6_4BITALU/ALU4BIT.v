`timescale 1ns / 1ps


module ALU4BIT(

    input [3:0] a,
    input [3:0] b,
    input [2:0] ALU_sel,
    output reg [3:0] ALU_out,
    output reg carryOut,
    output reg Zero
    
    );
    always @(*) begin
       case(ALU_sel)
            3'b000: {carryOut,ALU_out} = a + b;
            3'b001: ALU_out = a - b;
            3'b010: ALU_out = a & b;
            3'b011: ALU_out = a | b;
            3'b100: ALU_out = a ^ b;
            3'b101: ALU_out =  ~ a;
            3'b110: ALU_out = a + 1;
            3'b111: ALU_out = a - 1;
                default: ALU_out = 4'b0000;
            endcase
            Zero = (ALU_out == 4'b0000);
            
       end
endmodule

module tb_ALU4BIT;

    reg [3:0] a;
    reg [3:0] b;
    reg [2:0] ALU_sel;
    wire [3:0] ALU_out;
    wire carryOut;
    wire Zero;
    
    ALU4BIT uut (
    
        .a(a),
        .b(b),
        .ALU_sel(ALU_sel),
        .ALU_out(ALU_out),
        .carryOut(carryOut),
        .Zero(Zero)
        );
        
        initial begin
        
        $monitor("Time = %0t | a = %b b = %b ALU_sel = %b | ALU_out = %b carryOut = %b Zero = %b",$time,a,b,ALU_sel,ALU_out,carryOut,Zero);
        
        end
      
        
        initial begin
        a = 4'b0000; b = 4'b0000; ALU_sel = 3'b000; #5
        a = 4'b0001; b = 4'b0101; ALU_sel = 3'b001; #5
        a = 4'b0010; b = 4'b1111; ALU_sel = 3'b010; #5
        a = 4'b0011; b = 4'b1010; ALU_sel = 3'b011; #5
        a = 4'b1000; b = 4'b0110; ALU_sel = 3'b100; #5
        a = 4'b1010; b = 4'b1001; ALU_sel = 3'b101; #5
        a = 4'b0101; b = 4'b1110; ALU_sel = 3'b111; #5
        a = 4'b1110; b = 4'b0000; ALU_sel = 3'b110; #5

        
        $finish;
        end
        
        endmodule
