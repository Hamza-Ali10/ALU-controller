`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2023 12:01:52 PM
// Design Name: 
// Module Name: ALU
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


module ALU #(parameter n = 8)(
   input signed [n-1:0] A,
   input signed [n-1:0] B,
   input [3:0] sel,
   output reg signed [n-1:0] out
   );

   always@(*)
   begin
           case(sel)
                     4'b0000 : out = A + B;                 //Add
                     4'b0001 : out = A - B;                 //sub
                     4'b0010 : out = A * B;                 //Mul
                     4'b0011 : out = A / B;                 //Div
                     
                     4'b0100 : out = A % B;                 //Mod
                     4'b0101 : out = A & B;                 //And
                     4'b0110 : out = A | B;                 //OR
                     4'b0111 : out = ~A;                    //NOT
                     
                     4'b1000 : out = ~(A & B);              //NAND
                     4'b1001 : out = ~(A | B);              //NOR
                     4'b1010 : out = A ^ B;                 //XOR
                     4'b1011 : out = ~(A ^ B);              //NXOR
                     
                     4'b1100 : out = A<< 1;                 //Shift Lift
                     4'b1101 : out = A>> 1;                 //Shift Right
                     4'b1110 : out = {A[6:0] , A[7]};       //Rotate Lift
                     4'b1111 : out = {A[0],A[7:1]};         //Rotate Right
                     
                   default : out = 0 ;

           endcase 
    end
endmodule
