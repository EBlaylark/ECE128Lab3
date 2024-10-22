
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2024
// Design Name: 
// Module Name: FA2_CLA
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
//////////////////////////////////////////////////////////////////////////////////

module FA2_CLA (
    input [1:0] A,
    input [1:0] B,
    input CI,      
    output [1:0] SUM,
    output CO      
);

    wire G0, G1; 
    wire P0, P1; 
    wire C1;     

    
    assign G0 = A[0] & B[0];
    assign G1 = A[1] & B[1];
    
    assign P0 = A[0] ^ B[0];
    assign P1 = A[1] ^ B[1];

   
    assign C1 = G0 | (P0 & CI);     
    assign CO = G1 | (P1 & C1);     

    
    assign SUM[0] = P0 ^ CI;
    assign SUM[1] = P1 ^ C1;

endmodule
