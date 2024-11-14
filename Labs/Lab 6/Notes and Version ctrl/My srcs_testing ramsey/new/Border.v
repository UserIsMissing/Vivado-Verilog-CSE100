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
    input [15:0] Horizontal, Vertical,  // Horizontal is thickness of left and right
                                        // Vertical   is thickness of top and bottom

    output top, bottom, left, right,
    output GreenWall
    );

    // Active region size
    wire [15:0] HborderStart, HborderEnd, VborderStart, VborderEnd, zero;
    assign zero = 16'd0;
    assign HborderStart = 16'd632;      // Start of right side border (green wall)
    assign HborderEnd   = 16'd639;      // Length
    assign VborderStart = 16'd472;      // Start of bottom border
    assign VborderEnd   = 16'd479;      // Height

    assign top =    ((Horizontal >= zero) & (Horizontal <= HborderEnd)      & (Vertical   >= zero)          & (Vertical   <= 16'd7));
    assign bottom = ((Horizontal >= zero) & (Horizontal <= HborderEnd)      & (Vertical   >= VborderStart)  & (Vertical   <= VborderEnd));
    assign left =   ((Vertical   >= zero) & (Vertical   <= VborderEnd)      & (Horizontal >= zero)          & (Horizontal <= 16'd7));
 // assign left =   ((Vertical   >= zero) & (Horizontal <= VborderEnd)      & (Horizontal >= zero)          & (Horizontal <= 16'd7));
    assign right =  ((Vertical   >= zero) & (Vertical   <= VborderEnd)      & (Horizontal >= HborderStart)  & (Horizontal <= HborderEnd));

    assign GreenWall = (top | bottom | left | right);
endmodule
