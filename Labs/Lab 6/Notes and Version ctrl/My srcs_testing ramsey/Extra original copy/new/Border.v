`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2023 03:59:14 PM
// Design Name: 
// Module Name: Border
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


module Border(
    input clk,
    input [15:0] Horizontal, Vertical,

    output top, bottom, left, right,
    output GreenWall
    );

    // Active region size
    wire [15:0] Hsize, Vsize, zero;
    assign zero = 16'd0;
    assign Hsize = 16'd639;       // Length
    assign Vsize = 16'd479;       // Height

    assign top =    ((Horizontal >= zero)  & (Horizontal <= Hsize)     & (Vertical <= zero)  & (Vertical <= 16'd7));
    assign bottom = ((Horizontal >= zero)  & (Horizontal <= Hsize)     & (Vertical <= zero)  & (Vertical <= 16'd7));
    assign left =   ((Horizontal >= zero)  & (Horizontal <= 16'd7)     & (Vertical <= zero)  & (Vertical <= Vsize));
    assign right =  ((Horizontal >= zero)  & (Horizontal <= 16'd7)     & (Vertical <= zero)  & (Horizontal <= Vsize));

    assign GreenWall = (top | bottom | left | right);
endmodule
