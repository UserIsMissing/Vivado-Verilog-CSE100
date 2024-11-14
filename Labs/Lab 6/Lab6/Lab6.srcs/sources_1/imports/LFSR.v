`timescale 1ns / 1ps


module LFSR(
    input clk,
    output [7:0] Q
    );
    wire [7:0] rnd;
    wire D_0;
    
    assign D_0 = rnd[7] ^ rnd[6] ^ rnd[5] ^ rnd[0];
    
    FDRE #(.INIT(1'b1)) RND0 (.C(clk), .R(1'b0), .CE(1'b1), .D(D_0), .Q(rnd[0]));
    FDRE #(.INIT(1'b0)) RND1 (.C(clk), .R(1'b0), .CE(1'b1), .D(rnd[0]), .Q(rnd[1]));
    FDRE #(.INIT(1'b0)) RND2 (.C(clk), .R(1'b0), .CE(1'b1), .D(rnd[1]), .Q(rnd[2]));
    FDRE #(.INIT(1'b0)) RND3 (.C(clk), .R(1'b0), .CE(1'b1), .D(rnd[2]), .Q(rnd[3]));
    FDRE #(.INIT(1'b0)) RND4 (.C(clk), .R(1'b0), .CE(1'b1), .D(rnd[3]), .Q(rnd[4]));
    FDRE #(.INIT(1'b0)) RND5 (.C(clk), .R(1'b0), .CE(1'b1), .D(rnd[4]), .Q(rnd[5]));
    FDRE #(.INIT(1'b0)) RND6 (.C(clk), .R(1'b0), .CE(1'b1), .D(rnd[5]), .Q(rnd[6]));
    FDRE #(.INIT(1'b0)) RND7 (.C(clk), .R(1'b0), .CE(1'b1), .D(rnd[6]), .Q(rnd[7]));
    
//    FDRE #(.INIT(1'b0)) RND[7:1] (.C({7{clk}}), .R(1'b0), .CE(1'b1), .D(rnd[6:0]), .Q(rnd[7:1]));

    
    assign Q = rnd;
    
endmodule
