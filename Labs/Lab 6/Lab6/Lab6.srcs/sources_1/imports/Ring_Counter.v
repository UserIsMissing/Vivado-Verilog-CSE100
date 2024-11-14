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
/* 
    wire [3:0] Ring_out;
    Ring_Counter ringcounter (.Advance(digsel), .clk(clk), .Ring_out(Ring_out));
 */
    input Advance,
    input clk,
    
    output [3:0] Ring_out
    );
    
    FDRE #(.INIT(1'b1)) b0_ff (.C(clk), .R(1'b0), .CE(Advance), .D(Ring_out[3]), .Q(Ring_out[0]));
    FDRE #(.INIT(1'b0)) b1_ff (.C(clk), .R(1'b0), .CE(Advance), .D(Ring_out[0]), .Q(Ring_out[1]));
    FDRE #(.INIT(1'b0)) b2_ff (.C(clk), .R(1'b0), .CE(Advance), .D(Ring_out[1]), .Q(Ring_out[2]));
    FDRE #(.INIT(1'b0)) b3_ff (.C(clk), .R(1'b0), .CE(Advance), .D(Ring_out[2]), .Q(Ring_out[3]));
endmodule

