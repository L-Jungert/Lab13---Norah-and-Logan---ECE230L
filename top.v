module top(
    input [0:0] sw,
    output [9:0] led,
    input btnC,
    input btnU
);
    onehot onehot_inst(
        .w(sw[0]),
        .clk(btnC),
        .reset(btnU),
        .z(led[0]),
        .states(led[6:2])
    );
    
    binary binary_inst(
        .w(sw[0]),
        .clk(btnC),
        .reset(btnU),
        .z(led[1]),
        .states(led[9:7])
    );
endmodule
