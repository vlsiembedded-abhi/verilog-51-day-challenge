`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2025 21:51:50
// Design Name: 
// Module Name: COUNTER4BIT
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


module COUNTER4BIT(

    input clk,
    input reset,
    output reg [3:0] count

    );
    
    always @(posedge clk or posedge reset) begin
    if(reset)
    count <= 4'b0000;
    else
    count <= count + 1;
    
    end
endmodule


module TB_COUNTER4BIT;

    reg clk;
    reg reset;
    wire [3:0] count;
    
    COUNTER4BIT uut(
    
        .clk(clk),
        .reset(reset),
        .count(count)
        
        );
        
        initial begin
        
        clk = 0;
        forever #5 clk = ~clk;
        
        end
        
        initial begin
        
        $display("Starting Simulation...");
        reset = 1;
        #10 reset = 0;
        
        #160 
        $finish;
        
        end
        
        always @(posedge clk) begin
        
        $display("Time = %0t | count = %b",$time,count);
        
        end
        
        endmodule
