module binary(
    input w,
    input clk,
    input reset,
    output z,
    output [2:0] states
);
    wire [2:0] State;
    reg  [2:0] Next;

    dff zero(
        .Default(1'b0),
        .D(Next[0]),
        .clk(clk),
        .Q(State[0]),
        .reset(reset)
    );

    dff one(
        .Default(1'b0),
        .D(Next[1]),
        .clk(clk),
        .Q(State[1]),
        .reset(reset)
    );
    
    dff two(
        .Default(1'b0),
        .D(Next[2]),
        .clk(clk),
        .Q(State[2]),
        .reset(reset)
    );

    assign states = State;
    assign z = (State == 3'b010) | (State == 3'b100);

    always @(*) begin
        case (State)
            3'b000:  Next = (w ? 3'b011 : 3'b001);
            3'b001:  Next = (w ? 3'b011 : 3'b010);
            3'b010:  Next = (w ? 3'b011 : 3'b010);
            3'b011:  Next = (w ? 3'b100 : 3'b001);
            3'b100:  Next = (w ? 3'b100 : 3'b001);
            default: Next = 3'b000;
        endcase
    end
endmodule
