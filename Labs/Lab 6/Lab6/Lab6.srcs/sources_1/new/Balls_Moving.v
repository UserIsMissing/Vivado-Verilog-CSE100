`timescale 1ns / 1ps


module Balls_Moving(
    input clk, btnU, btnR, btnL,
    input BallRed, BallBlue,
    input ShowMem,
    input [15:0] BallStartx, BallStarty,
    input [15:0] Hpixel, Vpixel,
    input frame,

    output MemBlue, MemRed, MemPurp, // Blue and Red Membranes
    output [3:0] vgaRed, vgaGreen, vgaBlue,

    output [15:0] Ballx, Bally,

    output MakeBall,
    output [4:0] NS
    );
    wire [4:0] PS;

    wire [15:0] BallEdgeLeft, BallEdgeRight, TopEdge, BottomEdge;
    // Top left corner of ball is (0,0) so need to subtract 16 from left side of membrane to see when it touches the right side of the ball
    assign BallEdgeLeft = 16'd300;       // Ball left edge when touching membrane left edge
    assign BallEdgeRight = 16'd323;      // Ball right edge when touching membrane right edge
    assign TopEdge = 16'd8;         // Edge of top border
    assign BottomEdge = 16'd471;    // Edge of bottom border

    // Invisible membrane, No membrane, Purple membrane
    wire [3:0] MemInvis, MemNone;
    assign MemInvis = ((Hpixel >= 16'd316) & (Hpixel <= 16'd323) & (Vpixel <= 16'd471) & (Vpixel >= 16'd8)) & ShowMem;
    assign MemNone =  (MemInvis & btnR & btnL);
    assign MemPurp =  (MemInvis & ~btnR & ~btnL);
    assign MemBlue =  (MemInvis & ~btnL);
    assign MemRed =   (MemInvis & ~btnR);


    wire MemLeftRed, MemLeftBlue, MemLeftPurp, MemRightRed, MemRightBlue, MemRightPurp;
    /////////////////////////        Making Ball sizing stuff        \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
                wire [15:0] Posx;
                wire [15:0] Posy;
                assign Ballx = Posx;
                assign Bally = Posy;
    assign MemLeftRed =     (Posx == 16'd300) & MemRed;
    assign MemRightRed =    (Posx == 16'd323) & MemRed;
    assign MemLeftBlue =    (Posx == 16'd300) & MemBlue;
    assign MemRightBlue =   (Posx == 16'd323) & MemBlue;
    // These 2 Purples are unnecessary
    assign MemLeftPurp =    (Posx == 16'd300) & MemPurp;
    assign MemRightPurp =   (Posx == 16'd323) & MemPurp;
        
        wire Count, Upx, Upy, Downx, Downy;
        wire Top, Bottom, Left, Right;
    
    assign Top =    (Posy == 16'd8);
    // 455 because ball top left corner is (0,0) so subtract 16 from bottom border edge
    assign Bottom = (Posy == 16'd455);
    // | MemRightBlue);
    assign Left =   (Posx == 16'd8)   | ((BallRed & MemRightRed) | (BallBlue & MemRightBlue) | MemRightPurp);
    // | MemLeftBlue);      // 608 because ball top left corner is (0,0) so subtract 16 from right border edge (640-16-16=608)
    assign Right =  (Posx == 16'd608) | ((BallRed & MemLeftRed)  | (BallBlue & MemLeftBlue)  | MemLeftPurp);     




        Counter_16Bit Ball1x (.clk(clk), .UP(Upx & frame), .DW(Downx & frame), .LD(Count), .sw(BallStartx), .Q(Posx));
        Counter_16Bit Ball1y (.clk(clk), .UP(Upy & frame), .DW(Downy & frame), .LD(Count), .sw(BallStarty), .Q(Posy));


    //----------------------- Making Ball #1 -----------------------\\ (Red)
    Ball MakinBall_1 (.clk(clk), .Go(btnU), .Top(Top), .Bottom(Bottom), .Left(Left), .Right(Right), 
                        .Count(Count), .Upx(Upx), .Upy(Upy), .Downx(Downx), .Downy(Downy), .NS(NS));
    assign MakeBall = ((Posx <= Hpixel) & (Hpixel <= Posx + 16'd16) & (Posy <= Vpixel) & (Vpixel <= Posy + 16'd16));
                                                                          


endmodule    