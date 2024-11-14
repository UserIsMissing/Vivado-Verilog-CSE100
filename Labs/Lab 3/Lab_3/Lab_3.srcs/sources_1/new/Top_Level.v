`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 02:03:43 PM
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
    
    input clkin,    //  this is the 100MHz clock on the BASYS3 Board
    input btnR,     //  this button will be connected only to the built-in global reset of the Artix 7 FPGA 
    input btnU,     //  when pressed this button causes the counter to increment by just one 
    input btnD,     //  when pressed this button causes the counter to decrement by just one 
    input btnC,     //  when pressed this button causes the counter to advance continuously except in the FFFC to FFFF range
    input btnL,     //  when pressed this button causes the counter to load the value determined by the switches on the clock edge 
    input [15:0] sw,       //  this 16 bit vector determines the value loaded into the counter when btnL is pressed 

    output [6:0] seg,         //  this 7 bit vector controls the segments in the 7-segment display
    output dp,          //  this controls the dp segments in the 7-segment display
    output [3:0] an,          //  this 4 bit vector controls the 4 digits of 7-segment display
    output [15:0] led     //  this is the leftmost LED below the switches that should display UTC
//    output led[14:1],   //  (Set led[14:1] to 0 so that they will have a value.) 
//    output led[0]       //  this is the rightmost LED below the switches that should display DTC.
    );
    assign dp = 1'b0;
    wire UTC, DTC;
    assign led [15] = UTC; 
    assign led [14:1] = 1'b0;
    assign led [0] = DTC;
    
    wire digsel;
    wire clk;
    labCnt_clks slowit (.clkin(clkin), .greset(btnR), .clk(clk), .digsel(digsel));
    
//    Edge
    wire Edge_out, Dw;
    Edge_Detector HIGH (.btnU(btnU), .clk(clk), .Edge_out(Edge_out));
    Edge_Detector LOW (.btnU(btnD), .clk(clk), .Edge_out(Dw));
    
//    Ring      //  Selector
    wire [3:0] selector;
    assign an = ~selector;
    Ring_Counter ding_dong (.Advance(digsel), .clk(clk), .Ring_out(selector));
    
//    16
    wire Up;
    wire [15:0] Q;
    
    wire buttonC;
    assign buttonC = btnC & (~Q[15] | ~Q[14] | ~Q[13] | ~Q[12] | ~Q[11] | ~Q[10] | ~Q[9] | ~Q[8] | ~Q[7] | ~Q[6] | ~Q[5] | ~Q[4] | ~Q[3] | ~Q[2]);
    assign Up = ((buttonC) | Edge_out);

//    assign Up = ((btnC & (~|Q[15:2])) | Edge_out);
    
    Counter_16Bit counter16bit (.clk(clk), .btnU(Up), .btnD(Dw), .LD(btnL), .sw(sw), .Q(Q), .UTC(UTC), .DTC(DTC));
    
//    hex
    wire [3:0] hex;
    Selector selecting (.N(Q), .sel(selector), .H(hex));
    hex7seg segmentating (.n(hex), .seg(seg));
    
endmodule
