`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2024 03:09:21 PM
// Design Name: 
// Module Name: TopModule
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


module TopModule(

input [1:0] A, B,
input CI,
output [6:0] seg);

wire [1:0] SUM;
wire CO;
wire [3:0] bcdvar;


FA2_RC uut1 (A, B, CI,  SUM,CO);

assign bcdvar = {1'b0, CO, SUM};

seven_seg uut2 (bcdvar, seg);

endmodule
