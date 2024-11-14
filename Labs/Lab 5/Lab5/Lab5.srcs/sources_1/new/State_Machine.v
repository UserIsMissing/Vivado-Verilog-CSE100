`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2023 12:57:21 PM
// Design Name: 
// Module Name: State_Machine
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


module State_Machine(
    input clk, Go, btnU, btnD,
            TimeUp, RoundTime, // RoundTime
    input [3:0] ScoreMax,

    output RstTime, LDTarget, ShowTarget,
            IncScU, IncScD,
            FlashScU, FlashScD, 
            LEDonU, LEDonD, LEDonWinU, LEDonWinD, CountDown
    );
    wire [9:0] PS, NS;
    
    
//    Chill
    assign NS[0] = (PS[0] & ~Go) | (PS[3] & TimeUp) | (PS[6] & ~ScoreMax & TimeUp) | (PS[7] & ~ScoreMax & TimeUp);
//    Display Time
    assign NS[1] = (PS[0] & Go) | (PS[1] & ~TimeUp);
//    CountDown
    assign NS[2] = (PS[1] & TimeUp) | (PS[2] & ~btnU & ~btnD & ~RoundTime);
//    Draw
    assign NS[3] = (PS[2] & RoundTime) | (PS[3] & ~TimeUp);
//    Player U on
    assign NS[4] = (PS[2] & btnU & ~btnD & ~RoundTime) | (PS[4] & ~RoundTime & ~btnD) | (PS[5] & btnU);
//    Player D on
    assign NS[5] = (PS[2] & btnD & ~btnU & ~RoundTime) | (PS[5] & ~RoundTime & ~btnU) | (PS[4] & btnD);
//    Player U +1 point
    assign NS[6] = (PS[6] & ~TimeUp) | (PS[4] & RoundTime);
//    Player D +1 point
    assign NS[7] = (PS[7] & ~TimeUp) | (PS[5] & RoundTime);
//    Player U Win
//    assign NS[8] = (PS[6] & ScoreMax);
    assign NS[8] = (PS[6] & ScoreMax & TimeUp) | (1'b1 & PS[8]);
//    Player D Win
//    assign NS[9] = (PS[7] & ScoreMax);
    assign NS[9] = (PS[7] & ScoreMax & TimeUp) | (1'b1 & PS[9]);
    
    assign RstTime = (PS[0] & Go) | (PS[2] & RoundTime & ~btnU & ~btnD) |
                    (PS[4] & RoundTime) | (PS[5] & RoundTime);                    
    assign LDTarget = (PS[0] & Go);
    assign ShowTarget = PS[1];
    assign IncScU = (PS[4] & RoundTime);
    assign IncScD = (PS[5] & RoundTime);
    assign FlashScU = (PS[3] | (RoundTime & PS[4]) | (~TimeUp & PS[6]));
    assign FlashScD = (PS[3] | (RoundTime & PS[5]) | (~TimeUp & PS[7]));
    assign LEDonU = PS[4] | PS[6] | PS[8];
    assign LEDonD = PS[5] | PS[7] | PS[9];
    assign LEDonWinU = (PS[8] | (PS[6] & ScoreMax));
    assign LEDonWinD = (PS[9] | (PS[7] & ScoreMax));
    assign CountDown = (PS[2] | PS[4] | PS[5]);
    
    FDRE #(.INIT(1'b1)) FF_SM0 (.C(clk), .R(1'b0), .CE(1'b1), .D(NS[0]), .Q(PS[0]));
    FDRE #(.INIT(1'b0)) FF_SM1_9 [9:1] (.C({9{clk}}), .R(1'b0), .CE(1'b1), .D(NS[9:1]), .Q(PS[9:1]));


endmodule
