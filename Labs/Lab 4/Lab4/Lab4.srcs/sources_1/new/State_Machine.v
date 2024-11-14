module State_Machine(
    input Go, Pick, TimeUp, Match,
    input clk,
    input [4:0] prevState,
    output [4:0] nextState,
    output LDTarget, IncSc, DecSc, ShowTarget, FlashSc, FlashLED, LEDon, RstTime
    );

    // Assign states with one hot
//    Chill
    assign nextState[0] = (prevState[0] & ~Go) | (prevState[3] & TimeUp) | (prevState[4] & TimeUp);
//    Generate #
    assign nextState[1] = (prevState[0] & Go) | (prevState[1] & ~TimeUp);
//    LED rotation
    assign nextState[2] = (prevState[1] & TimeUp) | (prevState[2] & ~Pick);
//    Win
    assign nextState[3] = (prevState[2] & Pick & Match) | (prevState[3] & ~TimeUp);
//    Lose
    assign nextState[4] = (prevState[2] & Pick & ~Match) | (prevState[4] & ~TimeUp);
    
    // Assign outputs
    assign RstTime = (prevState[0]&Go) | (prevState[2]&Pick&Match) | (prevState[2]&Pick&~Match);
    assign LDTarget = prevState[0] & Go;
    assign IncSc = prevState[2]&Pick&Match;
    assign DecSc = prevState[2]&Pick&~Match;
    assign ShowTarget = (prevState[4]) | (prevState[3]) | (prevState[2]) | (prevState[1]);
    assign FlashSc = prevState[3];                  // Flash Score when you win
    assign FlashLED = prevState[4];         // When you pick
    assign LEDon = prevState[2];


endmodule