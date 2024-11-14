`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 02:04:49 PM
// Design Name: 
// Module Name: Selector
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


module Selector(
    input [15:0] N,
    input [3:0] sel,
    
    output [3:0] H
    );
    assign H[3] = (sel[3]&N[15]) | (sel[2]&N[11]) | (sel[1]&N[7]) | (sel[0]&N[3]);
    assign H[2] = (sel[3]&N[14]) | (sel[2]&N[10]) | (sel[1]&N[6]) | (sel[0]&N[2]);
    assign H[1] = (sel[3]&N[13]) | (sel[2]&N[9]) | (sel[1]&N[5]) | (sel[0]&N[1]);
    assign H[0] = (sel[3]&N[12]) | (sel[2]&N[8]) | (sel[1]&N[4]) | (sel[0]&N[0]);

//    wire [3:0] sel_1000, sel_0100, sel_0010, sel_0001;
//    assign sel_1000 = (sel == 4'b1000);
//    assign sel_0100 = (sel == 4'b0100);
//    assign sel_0010 = (sel == 4'b0010);
//    assign sel_0001 = (sel == 4'b0001);
    
//    assign H[3] = (sel_1000 & N[15:12]);
//    assign H[2] = (sel_0100 & N[11:8]);
//    assign H[1] = (sel_0010 & N[7:4]);
//    assign H[0] = (sel_0001 & N[3:0]);
    
endmodule
