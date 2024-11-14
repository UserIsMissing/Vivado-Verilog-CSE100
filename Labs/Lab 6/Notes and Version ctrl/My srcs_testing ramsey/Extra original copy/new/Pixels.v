`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2023 02:15:03 PM
// Design Name: 
// Module Name: AddressPixels
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


module Pixels(
    input clk,

    output [15:0] Horiz,
    output [15:0] Vert,
    output Vsync,
    output Hsync,

    output [3:0] vgaRed, vgaGreen, vgaBlue
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
    wire ActiveH, ActiveV, Active_Region;
    assign ActiveH = (Hout < 16'd640);
    assign ActiveV = (Vout < 16'd480);
    assign Active_Region = ActiveH && ActiveV;

    Counter_16Bit Horizontal (.clk(clk), .btnU(1'b1),          .btnD(1'b0), .LD(Hedge == Hout),                 .sw(16'h0000), .Q(Hout));//   , .UTC(), .DTC());
    Counter_16Bit Vertical   (.clk(clk), .btnU(Hedge == Hout), .btnD(1'b0), .LD(Vedge == Vout & Hedge == Hout), .sw(16'h0000), .Q(Vout));//   , .UTC(), .DTC());

    assign Hsync = (Hout < HboundStart) || (Hout > HboundEnd);
    assign Vsync = (Vout < VboundStart) || (Vout > VboundEnd);

    assign Horiz = Hout;
    assign Vert = Vout;

    assign vgaRed =   4'b1111 & {4{Active_Region}};
    assign vgaGreen = 4'b1111 & {4{Active_Region}};
    assign vgaBlue =  4'b1111 & {4{Active_Region}};

endmodule
