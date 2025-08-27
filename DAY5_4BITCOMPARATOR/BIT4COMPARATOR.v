`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2025 16:39:32
// Design Name: 
// Module Name: BIT4COMPARATOR
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


module BIT4COMPARATOR(

    input [3:0] A,
    input [3:0] B,
    output reg A_gt_B,
    output reg A_eq_B,
    output reg A_ls_B

    );
    
    always @(*) begin
    
    if(A>B) begin
         A_gt_B = 1;
         A_eq_B = 0;
         A_ls_B = 0;
        end
        
    else if(A==B) begin
         A_gt_B = 0;
         A_eq_B = 1;
         A_ls_B = 0;
        end
        
    else begin
         A_gt_B = 0;
         A_eq_B = 0;
         A_ls_B = 1;
        end
        
        end
        
endmodule


module TB_BIT4COMPARATOR;

    reg [3:0] A;
    reg [3:0] B;
    wire A_gt_B;
    wire A_eq_B;
    wire A_ls_B;
    
    BIT4COMPARATOR uut (
    
                        .A(A),
                        .B(B),
                        .A_gt_B(A_gt_B),
                        .A_eq_B(A_eq_B),
                        .A_ls_B(A_ls_B)
                        );
                        
                        initial begin
                        
                        $monitor("Time = %0t | A = %b B = %b | A_gt_B = %b A_eq_B = %b A_ls_B = %b",$time,A,B,A_gt_B,A_eq_B,A_ls_B);
                        
                         A = 4'b0000; B =4'b0000; #5
                         A = 4'b0001; B =4'b0000; #5
                         A = 4'b1111; B =4'b1111; #5
                         A = 4'b1010; B =4'b0101; #5
                         A = 4'b0010; B =4'b0100; #5
                         A = 4'b1001; B =4'b1001; #5
                        $finish;
                        end
             
                        endmodule
