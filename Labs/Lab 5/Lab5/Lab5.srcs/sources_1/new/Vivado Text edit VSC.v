`timescale 1ns / 1ps
/* 
    // ////////////////////////////////////////////////////////////////////////////////
    // Company: 
    // Engineer: 

    // Create Date: 11/13/2023 12:57:21 PM
    // Design Name: 
    // Module Name: Top_Level
    // Project Name: 
    // Target Devices: 
    // Tool Versions: 
    // Description: 

    // Dependencies: 

    // Revision:
    // Revision 0.01 - File Created
    // Additional Comments:
 */

module Top_Level(
    input clkin, btnU, btnD, btnC, btnR,
    input [3:0] sw,

    output [15:0] led,
    output [3:0] an,
    output dp,
    output [6:0] seg
    );
    
//    qsec_clk ----------------------------------------------------------------------------------------------------
    wire clk, digsel, qsec;
    qsec_clks slowit (.clkin(clkin), .greset(btnR), .clk(clk), .digsel(digsel), .qsec(qsec));
        
//    State Machine Stuff -----------------------------------------------------------------------------------------
    // inputs
    wire Go, TimeUp;
    wire RoundTime;
    wire [3:0] ScoreMax;
    wire [9:0] PS;
    // outputs
    wire [9:0] NS;
    wire RstTime, LDTarget, ShowTarget,
            IncScU, IncScD,
            FlashScU, FlashScD, 
            LEDonU, LEDonD, LEDonWinU, LEDonWinD, CountDown;
            
// Need /////////////////////////////////////////////////////////
    // LFSR
    // 3 4bit counters
    // 1 16bit counter
    // selector
    // hex 7 
    // ring counter
    // Edge_Detector

//    Round count down timer ---------------------------------------------------------------------------------------
    wire [7:0] TimeLeft;
    wire [3:0] target;
    // wire DTC_out;
    // assign RoundTime = DTC_out;     // Round timer is over
//    LFSR
    wire [7:0] LFSRout;
    LFSR RandNumGen (.clk(clk), .Q(LFSRout));
    Counter_16Bit GameTimer (.clk(clk), .btnD(qsec & CountDown), .LD(LDTarget), 
            .sw({11'b0, 1'b1, LFSRout[3:0]}), .Q({8'b0, TimeLeft}), .DTC(RoundTime));


//    Counter for both players ------------------------------------------------------------------------------------
    wire [3:0] PlayerUScore, PlayerDScore;
    countUD4L PlayerU (.clk(clk), .LD(1'b0), .btnU(IncScU), .Din(4'b0000), .Q(PlayerUScore));
    // Player D --------------------------------------------------------------------------
    countUD4L PlayerD (.clk(clk), .LD(1'b0), .btnU(IncScD), .Din(4'b0000), .Q(PlayerDScore));
    
    wire P1Win, P2Win;
    assign P1Win = |(PlayerUScore & 4'b0100);
    assign P2Win = |(PlayerDScore & 4'b0100);
    assign ScoreMax = P1Win | P2Win;
    //assign ScoreMax = (|(PlayerUScore & 4'b0100)) | (|(PlayerDScore & 4'b0100));

//    TimeUp counter-----------------------------------------------------------------------------------------------
    wire [3:0] Time;
    // wire UTC_out;
    // assign TimeUp = UTC_out;
    countUD4L Timesup (.clk(clk), .btnU(qsec), .LD(RstTime), .Din(4'b0), .Q(Time), .UTC(TimeUp));
    


//    FDRE4
//    FDRE #(.INIT(1'b0)) FDRE3[3:0] (.C({4{clk}}), .R(1'b0), .CE(LDTarget), .D(LFSRout[3:0]), .Q(target));

//    RingCounter
    wire [3:0] Ring_out;
    Ring_Counter ringCount(.Advance(digsel), .clk(clk), .Ring_out(Ring_out));
//    Selector
    wire [3:0] Sel_out;
    wire [15:0] an_select;
    assign an_select = {PlayerUScore, 4'b0000, TimeLeft, PlayerDScore};
    Selector selector (.N({PlayerUScore, TimeLeft, PlayerDScore}), .sel(Ring_out), .H(Sel_out));
    // Selector selector (.N({PlayerUScore, 4'b0, TimeLeft, PlayerDScore}), .sel(Ring_out), .H(Sel_out));
//    hex7seg    
    hex7seg Hex7Seggs (.n(Sel_out), .seg(seg));
//    flipflop for btnC and Go
    //FDRE #(.INIT(1'b0)) JustGoAlready (.C(clk), .R(1'b0), .CE(1'b1), .D(btnC), .Q(Go));

//    Edge Detector btnC
    wire BC, BU, BD;
    Edge_Detector Edge_btnC (.btnU(btnC), .clk(clk), .Edge_out(BC));
//    Edge Detector btnU
    Edge_Detector Edge_btnU (.btnU(btnU), .clk(clk), .Edge_out(BU));
//    Edge Detector btnD
    Edge_Detector Edge_btnD (.btnU(btnD), .clk(clk), .Edge_out(BD));

//    State Maohine------------------------------------------------------------------------------------------------
    State_Machine THE_BRAIN (.clk(clk), .Go(BC), .btnU(BU), .btnD(BD), 
                            // .btnR(btnR),
                            .TimeUp(TimeUp), .RoundTime(RoundTime),
                            .ScoreMax(ScoreMax),
//                            .PS(PS),
//                            // outputs
//                            .NS(NS),
                            .RstTime(RstTime), .LDTarget(LDTarget), .ShowTarget(ShowTarget),
                            .IncScU(IncScU), .IncScD(IncScD),
                            .FlashScU(FlashScU), .FlashScD(FlashScD), 
                            .LEDonU(LEDonU), .LEDonD(LEDonD), .LEDonWinU(LEDonWinU), .LEDonWinD(LEDonWinD), .CountDown(CountDown)
                            );
    /*
        FDRE #(.INIT(1'b1)) FF_SM0 (.C(clk), .R(1'b0), .CE(1'b1), .D(NS[0]), .Q(PS[0]));
        FDRE #(.INIT(1'b0)) FF_SM1_9 [9:1] (.C({9{clk}}), .R(1'b0), .CE(1'b1), .D(NS[9:1]), .Q(PS[9:1]));
    
        // FDRE #(.INIT(1'b0)) FF_SM1 (.C(clk), .R(1'b0), .CE(1'b1), .D(NS[1]), .Q(PS[1]));
        // FDRE #(.INIT(1'b0)) FF_SM2 (.C(clk), .R(1'b0), .CE(1'b1), .D(NS[2]), .Q(PS[2]));
        // FDRE #(.INIT(1'b0)) FF_SM3 (.C(clk), .R(1'b0), .CE(1'b1), .D(NS[3]), .Q(PS[3]));
        // FDRE #(.INIT(1'b0)) FF_SM4 (.C(clk), .R(1'b0), .CE(1'b1), .D(NS[4]), .Q(PS[4]));
        // FDRE #(.INIT(1'b0)) FF_SM5 (.C(clk), .R(1'b0), .CE(1'b1), .D(NS[5]), .Q(PS[5]));
        // FDRE #(.INIT(1'b0)) FF_SM6 (.C(clk), .R(1'b0), .CE(1'b1), .D(NS[6]), .Q(PS[6]));
        // FDRE #(.INIT(1'b0)) FF_SM7 (.C(clk), .R(1'b0), .CE(1'b1), .D(NS[7]), .Q(PS[7]));
        // FDRE #(.INIT(1'b0)) FF_SM8 (.C(clk), .R(1'b0), .CE(1'b1), .D(NS[8]), .Q(PS[8]));
        // FDRE #(.INIT(1'b0)) FF_SM9 (.C(clk), .R(1'b0), .CE(1'b1), .D(NS[9]), .Q(PS[9]));
    */


    // All OFF
    assign led [14:10] = 5'b0;
    assign led [8:7] = 2'b0;
    assign led [5:1] = 5'b0;
    assign dp = 1'b1;
//    assign sw [15:4] = 1'b0;
//    assign sw [2:0] = 3'b0;
    
    // Assign LEDs
    assign led [15] = LEDonWinU & P1Win & ~P2Win;
    assign led [9] = LEDonU;
    assign led [6] = LEDonD;
    assign led [0] = LEDonWinD & ~P1Win &  P2Win;
    
    // assign an[3] = ~(~Ring_out[3] | (PlayerUScore & ~Time[3]));
    // assign an[0] = ~Ring_out[0] | (PlayerDScore & ~Time[0]);



    //assign an[3] = (~Ring_out[3] | (~Time[0] & FlashScU));
   // assign an[0] = (~Ring_out[0] | (~Time[0] & FlashScD));
    
//    assign an[3] = ~((Ring_out[3] & ~FlashScU) | (Ring_out[3] & FlashScU));
//    assign an[0] = ~((Ring_out[0] & ~FlashScD) | (Ring_out[0] & FlashScD));
    assign an[3] = ~(Ring_out[3] & (~FlashScU | Time[0]));
    assign an[0] = ~(Ring_out[0] & (~FlashScD | Time[0]));
    assign an[2] = ~(((ShowTarget|sw[3]) & Ring_out[2]));
    assign an[1] = ~(((ShowTarget|sw[3]) & Ring_out[1]));

    
    
    
    // wire cheat;
    // assign cheat = 8'b0 | sw[3];
    // assign an[2:1] = cheat;    // Cheat Wire


endmodule
