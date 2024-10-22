`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2024 03:15:03 PM
// Design Name: 
// Module Name: TopModule_tb
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


module TopModule_tb;
wire [6:0]seg;
reg[1:0] A, B;
reg CI;

TopModule uut (.A(A),.B(B),.CI(CI), .seg(seg));

integer i,j,k;

initial begin 
 for (i = 0; i<4; i=i+1)
 begin
 
   #10 A=i;
   for(j = 0; j<4; j=j+1)
   begin
        #10 B=j;
        for(k=0; k<4; k=k+1)
        begin
            CI=k;
        end
   end
 end

    
    end

endmodule
