
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2024
// Design Name: 
// Module Name: FA2_CLA_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
//
//////////////////////////////////////////////////////////////////////////////////

module FA2_CLA_tb;

    reg [1:0] A;
    reg [1:0] B;
    reg CI;
    wire [1:0] SUM;
    wire CO;

    
    FA2_CLA uut (
        .A(A),
        .B(B),
        .CI(CI),
        .SUM(SUM),
        .CO(CO)
    );

    integer i, j, k;

    initial begin
        for (i = 0; i < 4; i = i + 1) begin
            #10 A = i;
            for (j = 0; j < 4; j = j + 1) begin
                #10 B = j;
                for (k = 0; k < 2; k = k + 1) begin
                    CI = k;
                    #10;
                end
            end
        end
    end
endmodule
