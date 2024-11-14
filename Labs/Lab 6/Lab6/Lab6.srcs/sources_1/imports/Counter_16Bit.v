`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 02:03:43 PM
// Design Name: 
// Module Name: Counter_16Bit
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


module Counter_16Bit(
/* 
    Counter_16Bit Counter16bit (.clk(), .UP(), .DW(), .LD(), .sw(),    .Q(), .UTC(), .DTC());
*/
    input clk,        //  the system clock,
    input UP,           //  (increment)
    input DW,           //  (decrement)
    input LD,           //  (load control)
    input [15:0] sw,          //  the 4-bit bus Din that will be loaded on the clock edge if LD is high. 
    
    
    output [15:0] Q,
    output UTC,
    output DTC
    );
    
    wire [3:0] UPTC, DOWNTC;
    assign UTC = &UPTC[3:0];
    assign DTC = &DOWNTC[3:0];
    
    countUD4L counter4Bit_0 (.UP(UP),                               .DW(DW),                                        .clk(clk), .LD(LD), .Din(sw[3:0]),   .UTC(UPTC[0]), .DTC(DOWNTC[0]), .Q(Q[3:0]));
    countUD4L counter4Bit_1 (.UP(UP & UPTC[0]),                     .DW(DW & DOWNTC[0]),                            .clk(clk), .LD(LD), .Din(sw[7:4]),   .UTC(UPTC[1]), .DTC(DOWNTC[1]), .Q(Q[7:4]));
    countUD4L counter4Bit_2 (.UP(UP & UPTC[0]& UPTC[1]),            .DW(DW & DOWNTC[0] & DOWNTC[1]),                .clk(clk), .LD(LD), .Din(sw[11:8]),  .UTC(UPTC[2]), .DTC(DOWNTC[2]), .Q(Q[11:8]));
    countUD4L counter4Bit_3 (.UP(UP & UPTC[0] & UPTC[1] & UPTC[2]), .DW(DW & DOWNTC[0] & DOWNTC[1] & DOWNTC[2]),    .clk(clk), .LD(LD), .Din(sw[15:12]), .UTC(UPTC[3]), .DTC(DOWNTC[3]), .Q(Q[15:12]));
endmodule
