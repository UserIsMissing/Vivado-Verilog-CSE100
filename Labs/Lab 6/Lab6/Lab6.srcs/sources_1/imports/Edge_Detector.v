`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 02:05:39 PM
// Design Name: 
// Module Name: Edge_Detector
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


module Edge_Detector(
    input btnU,
    input clk,
    
    output Edge_out
    );
    wire x;
    assign Edge_out = btnU & ~x;
    FDRE #(.INIT(1'b0)) Edge_D1 (.C(clk), .R(1'b0), .CE(1'b1), .D(btnU), .Q(x));
endmodule
