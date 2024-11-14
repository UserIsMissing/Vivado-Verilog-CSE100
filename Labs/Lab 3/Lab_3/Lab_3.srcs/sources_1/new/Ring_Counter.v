`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 01:58:07 PM
// Design Name: 
// Module Name: Ring_Counter
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


module Ring_Counter(
    input Advance,
    input clk,
    
    output [3:0] Ring_out
    );
    wire Dwire[3:0];      //  From countUD4L flip-flops FDRE
    assign Dwire[0] = Ring_out[3];
    assign Dwire[1] = Ring_out[0];
    assign Dwire[2] = Ring_out[1];
    assign Dwire[3] = Ring_out[2];
    
    FDRE #(.INIT(1'b1)) b0_ff (.C(clk), .R(1'b0), .CE(Advance), .D(Dwire[0]), .Q(Ring_out[0]));
    FDRE #(.INIT(1'b0)) b1_ff (.C(clk), .R(1'b0), .CE(Advance), .D(Dwire[1]), .Q(Ring_out[1]));
    FDRE #(.INIT(1'b0)) b2_ff (.C(clk), .R(1'b0), .CE(Advance), .D(Dwire[2]), .Q(Ring_out[2]));
    FDRE #(.INIT(1'b0)) b3_ff (.C(clk), .R(1'b0), .CE(Advance), .D(Dwire[3]), .Q(Ring_out[3]));
endmodule

