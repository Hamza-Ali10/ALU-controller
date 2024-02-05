`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2023 12:21:49 PM
// Design Name: 
// Module Name: ALU_TB
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


module ALU_TB( );
    
    
      parameter n = 8 ;
      reg [n-1:0] A,B;
      reg [3:0] sel;
      wire [n-1:0] out;
      
      
      ALU #(.n(n)) uut(
      .A(A),
      .B(B),
      .sel(sel),
      .out(out)
      );
      
      
      integer k ;
      
      initial
      begin 
          for(k = 0 ; k < 30 ; k = k + 1 )
          begin
              A = $random;
              B = $random;
            sel = $random;
          #4; // wait 
          end
          
          
      #100 $stop;
      end
      
      initial begin
      $monitor("time =0t, A = %b , B = %b , sel = %b , out = %b ",A,B,sel,out);
      end
      
  endmodule
