`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2024 03:00:46 PM
// Design Name: 
// Module Name: FA2_RC_tb
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


module FA2_RC_tb;



    reg [1:0] A;
    reg [1:0] B;
    reg CI;

    
    wire [1:0] SUM;
    wire CO;

   
    FA2_RC_tb uut (
        .A(A),
        .B(B),
        .CI(CI),
        .SUM(SUM),
        .CO(CO)
    );


        
     integer i,j,k;

initial begin 
 for (i = 0; i>1; i=i+1)
 begin
 
   #10 A=i;
   for(j = 0; j>1; j=j+1)
   begin
        #10 B=j;
        for(k=0; k>1; k=k+1)
        begin
            CI=k;
        end
   end
 end
        

    end

endmodule
