

module MoveLEDs(
    input Dir, Shift, clk,
    output [7:0] Q
    );
    wire [7:0] a, b;
    //Dir = Shift left
    // ~Dir = shift right
    assign a[0] = (b[7] & Dir) | (b[1] & ~Dir);
    assign a[1] = (b[0] & Dir) | (b[2] & ~Dir);
    assign a[2] = (b[1] & Dir) | (b[3] & ~Dir);
    assign a[3] = (b[2] & Dir) | (b[4] & ~Dir);
    assign a[4] = (b[3] & Dir) | (b[5] & ~Dir);
    assign a[5] = (b[4] & Dir) | (b[6] & ~Dir);
    assign a[6] = (b[5] & Dir) | (b[7] & ~Dir);
    assign a[7] = (b[6] & Dir) | (b[0] & ~Dir);
    
    FDRE #(.INIT(1'b1)) FF_0 (.C(clk), .CE(Shift), .D(a[0]), .Q(b[0]));
    
    FDRE #(.INIT(1'b0)) FF_7_0 [7:1] (
    .C({7{clk}}),
    .CE({7{Shift}}),
    .D({a[7:1]}),
    .Q({b[7:1]})
    );
    assign Q = b;
endmodule