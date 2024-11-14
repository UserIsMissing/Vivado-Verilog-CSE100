`timescale 1ns / 1ps


module Pixels(
    input clk,

    output [15:0] Horiz,
    output [15:0] Vert,
    output Vsync,
    output Hsync,

    output Active_Region
    );

    wire [15:0] Vout, Hout;

    // edge boundaries to loop back around
    wire [15:0] HboundStart, HboundEnd;
    wire [15:0] VboundStart, VboundEnd;
    // Vbound is bottom boundaries going vertically down
    assign VboundStart = 16'd489;
    assign VboundEnd = 16'd490;
    // Hbound is right boundaries going horizontally right
    assign HboundStart = 16'd655;
    assign HboundEnd = 16'd750;
    // Edge of entire screen area
    wire [15:0] Vedge, Hedge;
    // Absolute bottom edge of frame area
    assign Vedge = 16'd524;
    // Absolute right edge of frame area
    assign Hedge = 16'd799;

    // Active region
    wire ActiveH, ActiveV;      
    assign ActiveH = (Hout < 16'd640);
    assign ActiveV = (Vout < 16'd480);
    assign Active_Region = ActiveH && ActiveV;

    Counter_16Bit Horizontally (.clk(clk), .UP(1'b1),          .DW(1'b0), .LD(Hedge == Hout),                 .sw(16'h0000), .Q(Hout));
    Counter_16Bit Vertically   (.clk(clk), .UP(Hedge == Hout), .DW(1'b0), .LD(Vedge == Vout & Hedge == Hout), .sw(16'h0000), .Q(Vout));

    assign Hsync = (Hout < HboundStart) || (Hout > HboundEnd);
    assign Vsync = (Vout < VboundStart) || (Vout > VboundEnd);

    assign Horiz = Hout;
    assign Vert = Vout;


endmodule
