`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2023 03:17:29 PM
// Design Name: 
// Module Name: Top_Level
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

module Top_Level(
    input btnU, btnD, btnC, btnL, btnR,     // btnC is global reset (not btnR)
    input [15:0] sw,
    input clkin,

    output dp,
    output [6:0] seg,
    output [3:0] an,
    output [15:0] led,

    output Hsync, Vsync,
    output [3:0] vgaBlue,
    output [3:0] vgaGreen,
    output [3:0] vgaRed
    );

    wire clk, digsel;
    labVGA_clks not_so_slow (.clkin(clkin), .greset(btnC), .clk(clk), .digsel(digsel));

    wire [3:0] Red, Green, Blue;
/* 
    // wire btnU_Click, btnD_Click, btnC_Click, btnL_Click, btnR_Click;
    // FDRE #(.INIT(1'b1)) buttonU (.C(clk), .R(1'b0), .CE(1'b1), .D(btnU), .Q(btnU_Click));
    // FDRE #(.INIT(1'b1)) buttonD (.C(clk), .R(1'b0), .CE(1'b1), .D(btnD), .Q(btnD_Click));
    // FDRE #(.INIT(1'b1)) buttonC (.C(clk), .R(1'b0), .CE(1'b1), .D(btnC), .Q(btnC_Click));
    // FDRE #(.INIT(1'b1)) buttonL (.C(clk), .R(1'b0), .CE(1'b1), .D(btnL), .Q(btnL_Click));
    // FDRE #(.INIT(1'b1)) buttonR (.C(clk), .R(1'b0), .CE(1'b1), .D(btnR), .Q(btnR_Click));
  */
 
    wire [15:0] Vrow, Hcol;
    // wire Active_Region;
    // Pixels PixelAddress (.clk(clk), .Vert(Vrow), .Horiz(Hcol), .Hsync(Hsync), .Vsync(Vsync), .Active_Region(Active_Region));  //  .vgaGreen(green), .vgaRed(red), .vgaBlue(blue));
    Pixels pixel (.clk(clk), .Vert(Vrow), .Horiz(Hcol), .Hsync(Hsync), .Vsync(Vsync), .vgaGreen(Green), .vgaRed(Red), .vgaBlue(Blue));
    // ^^^^^^ I couldnt display enything because that was called "PixelAddress". had to change to pixel

    wire border;
    Border TheBorder (.clk(clk), .GreenWall(border), .Horizontal(Hcol), .Vertical(Vrow));
    assign vgaGreen = Green & {4{border}};

    
    // wire frame;
    // Edge_Detector TheFrame (.clk(clk), .btnU(Vsync), .Edge_out(frame));
 
    // wire slow_balls;
    // Edge_Detector slowing_balls (.clk(clk), .btnU(btnU), .Edge_out(slow_balls));

endmodule
