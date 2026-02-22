module test_signal_gen(
    input clk,
    output reg signed [15:0] test_signal
);
    reg [23:0] counter = 0;

    always @(posedge clk) begin
        counter <= counter + 1;
        if (counter[23])
            test_signal <= 16'sd1000;
        else
            test_signal <= -16'sd1000;
    end
endmodule
