`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2024 01:59:44 PM
// Design Name: 
// Module Name: FA1
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


module FA1(

    input A,       
    input B,       
    input CI,      //carry in
    output SUM,    //sum output
    output CO      //carry out
);

    
    assign SUM = A ^ B ^ CI; //xor for sum
    assign CO = (A & B) | (CI & (A ^ B));  //carry out logic

endmodule
