`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2024 03:04:44 PM
// Design Name: 
// Module Name: seven_seg_tb
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


module seven_seg_tb;
wire [6:0] seg;
reg [3:0] bcdinput;
integer i;
integer j;

bcd uut(bcdinput, seg);

initial begin
    bcdinput =4'b0000;
    for(i=0; i<16; i = i+ 1)
        begin
        #10;
        bcdinput = i;
        end 
 end
endmodule
