`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2023 05:10:02 PM
// Design Name: 
// Module Name: Ball
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

// q: how do I create the shape of a square on the screen?
// a: create a 16x16 square of pixels and move it around the screen
// q: how do I move the square around the screen?
// a: create a state machine that moves the square around the screen

module Ball(
    input clk, Go,
    input [15:0] Hstart, Vstart,        // Starting coordinates of ball for Top_Level
    input [15:0] HPixel, VPixel,        // Current coordinates of pixel
    input [15:0] BallposX, BallposY,    // Ball position to compare to HPixel, VPixel
    // State Machine states
    input Top, Bottom, Left, Right,
            // State 1      2       3        4
            // DowRight, DownLeft, UpLeft, UpRight
    input [4:0] PS,         // Present State
    output [4:0] NS,        // Next State

    output Ball,
    output vgaRed, vgaGreen, vgaBlue
    );
//  Active Region size
    // wire [15:0] VActiveTop, VActiveBottom, HActiveLeft, HActiveRight;
    // assign Top = 16'd8;
    // assign Bottom = 16'd471;
    // assign Left = 16'd8;
    // assign Right = 16'd631;

//  FlipFlops to store ball position
    FDRE #(.INIT(1'b1)) BallStorage_0 (.C(clk), .CE(1'b1), .R(1'b0), .D(NS[0]), .Q(PS[0]));        //Start State
    FDRE #(.INIT(1'b0)) BallStorage_1to4 [4:1] (.C({4{clk}}), .R({4{1'b0}}), .CE({4{1'b1}}), .D(NS[4:1]), .Q(PS[4:1]));

//  State Machine
        // Chill / Start / Go
    assign NS[0] = PS[0] & ~Go;
        // Down-Right   Top/Left   Start
    assign NS[1] = (PS[0] & Go) | (PS[1] & ~Bottom & ~Right) | (PS[2] & ~Bottom & Left) | (PS[3]) | (PS[4] & Top & ~Right);  
        // Down-Left    Top/Right
    assign NS[2] = (PS[2] & ~Bottom & ~Left) | (PS[1] & ~Bottom & Right) | (PS[3] & Top & ~Left) | (PS[4]);
        // Up-Left      Bottom/Right
    assign NS[3] = (PS[3] & ~Top & ~Left) | (PS[4] & ~Top & Right) | (PS[1]) | (PS[2] & Bottom & ~Left);
        // Up-Right     Bottom/Left
    assign NS[4] = (PS[4] & ~Top & ~Right) | (PS[3] & ~Top & Left) | (PS[1] & Bottom & ~Right) | (PS[2]);

    // Make ball happen     States Out
    assign Ball = ( | (PS[4:0])) & (BallposX <= HPixel & HPixel <= BallposX + 16 & BallposY <= VPixel & VPixel <= BallposY +16);
    
//  16 Bit counter is for moving balls. Need state machine above it for moving balls
    /////////DOUBLE CHECK THIS/////////
    Counter_16Bit Ball_horiz (.clk(clk), .btnU(PS[2] | PS[3]), .btnD(PS[1] | PS[4]), .LD(), .sw(), .Q(), .UTC(), .DTC());
    Counter_16Bit Ball_vert (.clk(clk), .btnU(PS[3] | PS[4]), .btnD(PS[1] | PS[2]), .LD(), .sw(), .Q(), .UTC(), .DTC());
    

endmodule
