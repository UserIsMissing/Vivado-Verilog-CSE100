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
