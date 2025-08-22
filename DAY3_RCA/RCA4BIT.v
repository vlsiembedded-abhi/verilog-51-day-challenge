`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2025 21:56:46
// Design Name: 
// Module Name: RCA4BIT
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

module fulladder(
    input a,b,cin,
    output sum, cout
    );
    assign sum = a^b^cin;
    assign cout = a & b | a & cin | b & cin;
    
endmodule

module RCA4BIT(

    input [3:0] A,B,
    input Cin,
    output [3:0] SUM,
    output Cout

    );
    
    wire c1,c2,c3; // internal carry wire
    
    fulladder FA0 (A[0], B[0], Cin, SUM[0],c1);
    fulladder FA1 (A[1], B[1], c1, SUM[1],c2);
    fulladder FA2 (A[2], B[2], c2, SUM[2],c3);
    fulladder FA3 (A[3], B[3], c3, SUM[3],Cout);
    
endmodule

module tb_RCA4BIT;

    reg [3:0]A,B;
    reg Cin;
    wire [3:0]SUM;
    wire Cout;
    
    RCA4BIT uut(
        .A(A),
        .B(B),
        .Cin(Cin),
        .SUM(SUM),
        .Cout(Cout)
        );
        
        initial begin
        $monitor("Time = %0t | %b %b %b | %b %b",$time,A,B,Cin,SUM,Cout);
        
        #10 A = 4'b0000; B = 4'b0000; Cin = 0;
        #10 A = 4'b0101; B = 4'b0011; Cin = 0;
        #10 A = 4'b1111; B = 4'b0001; Cin = 0;
        #10 A = 4'b1010; B = 4'b0101; Cin = 1;
        #10 A = 4'b1111; B = 4'b1111; Cin = 1;
        $finish;
        end
        endmodule
        
