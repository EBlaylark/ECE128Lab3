`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2024 02:44:05 PM
// Design Name: 
// Module Name: FA2_RC
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


module FA2_RC(
    input [1:0] A,       
    input [1:0] B,       
    input CI,            
    output [1:0] SUM,   
    output CO            
);

    wire CO1; 
    //wire CO_t;
    
    
    
    
    FA1 fistFA (
        .A(A[0]),
        .B(B[0]),
        .CI(CI),
        .SUM(SUM[0]),
        .CO(CO1)
    );

  
    FA1 secondFA (
        .A(A[1]),
        .B(B[1]),
        .CI(CO1),
        .SUM(SUM[1]),
        .CO(CO)
    );
    
    //assign CO = CO_t;
endmodule
