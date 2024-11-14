`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2023 05:34:18 PM
// Design Name: 
// Module Name: State_Machine_SIM
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


module State_Machine_SIM();
    reg clk, Go, btnU, btnD, btnR,
            TimeUp, RoundTime; 
    reg ScoreMax;
//    reg [9:0] PS;
    
//    wire [9:0] NS;
    wire RstTime, LDTarget, ShowTarget,
            IncScU, IncScD,
            FlashScU, FlashScD, 
            LEDonU, LEDonD, LEDonWinU, LEDonWinD, CountDown;
            
    State_Machine UUT(.clk(clk), .Go(Go), .btnU(btnU), .btnD(btnD), .btnR(btnR),
                    .TimeUp(TimeUp), .RoundTime(RoundTime), .ScoreMax(ScoreMax), 
//                    .PS(PS), 
//                    .NS(NS), 
                    .RstTime(RstTime), .LDTarget(LDTarget), .ShowTarget(ShowTarget), 
                    .IncScU(IncScU), .IncScD(IncScD), 
                    .FlashScU(FlashScU), .FlashScD(FlashScD), 
                    .LEDonU(LEDonU), .LEDonD(LEDonD), .LEDonWinU(LEDonWinU), .LEDonWinD(LEDonWinD), .CountDown(CountDown)
    );
            
    parameter PERIOD = 20;
    parameter real DUTY_CYCLE = 0.5;
    parameter OFFSET = 2;

    initial    // Clock process for clkin
    begin
        #OFFSET
          clk = 1'b1;
        forever
        begin
            #(PERIOD-(PERIOD*DUTY_CYCLE)) clk = ~clk;
        end
    end
    
    initial
    begin

//    #50
//    assign clk  = 1'b0;
    assign Go = 1'b0;
    assign btnU = 1'b0;
    assign btnD = 1'b0;
    assign btnR = 1'b0;
    assign TimeUp = 1'b0;
    assign RoundTime = 1'b0;
    assign ScoreMax = 1'b0;
//    assign PS = 0;
//    assign NS = 0;
    
//    Chill to Draw
    #100
    assign Go = 1'b1;    
    #50
    assign TimeUp = 1'b1;  // Count Down
    #50
    assign TimeUp = 1'b0;
    assign RoundTime = 1'b1;
    #50
    assign TimeUp = 1'b1;
    
//    PlayerU point
    #100
    assign Go = 1'b1;
    #50
//    assign PS = 1;
    #50
    assign TimeUp = 1'b1;  // Count Down
    #50
    assign TimeUp = 1'b0;
    assign btnU = 1'b1;
    #50
    assign RoundTime = 1'b1;
    #50
    assign ScoreMax = 1'b0;
    assign TimeUp = 1'b1;
    
//    Player D Win case
    # 100
    assign Go = 1'b1;    
    #50
    assign TimeUp = 1'b1;  // Count Down
    #50
    assign TimeUp = 1'b0;
    assign btnD = 1'b1;
    #50
    assign RoundTime = 1'b1;
    #50
    assign ScoreMax = 1'b1;
    assign TimeUp = 1'b1;
       
    
/*
`timescale 1ns / 1ps

module TopLevelSim();
    reg clkin, btnR, btnU, btnD;
    wire [15:0] led;
    wire [3:0] an;
    wire dp;
    wire [6:0] seg;
    
    Top_Level UUT(.clkin(clkin), .btnR(btnR), .btnU(btnU), .btnD(btnD),
                    .led(led), .an(an), .dp(dp), .seg(seg)
    );
            
    parameter PERIOD = 20;
    parameter real DUTY_CYCLE = 0.5;
    parameter OFFSET = 2;

    initial    // Clock process for clkin
    begin
        #OFFSET
          clkin = 1'b1;
        forever
        begin
            #(PERIOD-(PERIOD*DUTY_CYCLE)) clkin = ~clkin;
        end
    end
    
    initial
    begin
    
//        clkin, btnR, btnU, btnD

        // set all values low
        //assign clkin = 1'b0;
        assign btnR = 1'b0;
        assign btnU = 1'b0;
        assign btnD = 1'b0;
        
        //START SIMULATION TESTING HERE
        //Display target#
        #4000
        assign btnR = 1'b1;
        
        #100
        assign btnR = 1'b0;
        assign btnU = 1'b1;
        
        #100
        assign btnR = 1'b0;
        #100
        assign btnU = 1'b0;
        
        #100
        assign btnD = 1'b0;
        
        #100
        assign btnD = 1'b1;
        
end
endmodule

*/

end
endmodule
