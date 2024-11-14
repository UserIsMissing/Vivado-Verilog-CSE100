`timescale 1ns / 1ps

module StateMachine_SIM();
    reg clk, Go, Pick, TimeUp, Match;
    reg [4:0] prevState;
    
    wire LDTarget, IncSc, DecSc, ShowTarget, FlashSc, FlashLED, LEDon, RstTime;
    wire [4:0] nextState;
    
    State_Machine UUT(.clk(clk), .Go(Go), 
            .Pick(Pick), .TimeUp(TimeUp), 
            .Match(Match), .LDTarget(LDTarget), .IncSc(IncSc), 
            .DecSc(DecSc), .ShowTarget(ShowTarget), 
            .FlashSc(FlashSc), .FlashLED(FlashLED),
            .LEDon(LEDon), .RstTime(RstTime)
            , .nextState(nextState), .prevState(prevState)
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
    
        // set all values low
        assign Go = 1'b0;
        assign Pick = 1'b0;
        assign TimeUp = 1'b0;
        assign Match = 1'b0;
        
        //START SIMULATION TESTING HERE
        //Display target#
        #100
        assign Go = 1'b1;
        
        #5000
        assign Match = 1;
        
        #100
        assign Go = 1'b0;
        #100
        
        //LED Rotation state
        assign TimeUp = 1'b1;
        #100
        assign TimeUp = 1'b0;
        #100;
        
        //Win state
        assign Pick = 1'b1;
        assign Match = 1'b1;
        #100;  
       // Go back to chill
        assign TimeUp = 1'b1;
        #100
        //Lose state
        assign Pick = 1'b1;
        assign Match = 1'b0;
        #100;
        //Go back to chill
        assign TimeUp = 1'b1;
        #100;
        
    end
endmodule
