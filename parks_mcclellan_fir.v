module parks_mcclellan_fir #(parameter N = 21)(
    input clk,
    input signed [15:0] x_in,
    output reg signed [31:0] y_out
);
    reg signed [15:0] x_reg [0:N-1];
    reg signed [15:0] h [0:N-1];
    integer i;

    initial begin
        h[0]  = -1244; h[1]  = -276;  h[2]  = 677;   h[3]  = 1288;  h[4]  = 549;
        h[5]  = -1246; h[6]  = -2241; h[7]  = -447;  h[8]  = 4228;  h[9]  = 9332;
        h[10] = 11546; h[11] = 9332;  h[12] = 4228;  h[13] = -447;  h[14] = -2241;
        h[15] = -1246; h[16] = 549;   h[17] = 1288;  h[18] = 677;   h[19] = -276;
        h[20] = -1244;
    end

    always @(posedge clk) begin
        for (i = N-1; i > 0; i = i - 1)
            x_reg[i] <= x_reg[i-1];
        x_reg[0] <= x_in;

        y_out <= 0;
        for (i = 0; i < N; i = i + 1)
            y_out <= y_out + x_reg[i] * h[i];
    end
endmodule
