`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2023 05:15:40 PM
// Design Name: 
// Module Name: Decoder
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


module Decoder(
    input [2:0] x,
    output [7:0] y
    );
    
    assign y[0] = ~x[2] & ~x[1] & ~x[0];
    assign y[1] = ~x[2] & ~x[1] & x[0];
    assign y[2] = ~x[2] & x[1] & ~x[0];
    assign y[3] = ~x[2] & x[1] & x[0];
    assign y[4] = x[2] & ~x[1] & ~x[0];
    assign y[5] = x[2] & ~x[1] & x[0];
    assign y[6] = x[2] & x[1] & ~x[0];
    assign y[7] = x[2] & x[1] & x[0];
    
endmodule
