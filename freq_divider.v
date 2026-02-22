module freq_divider #(parameter DIV = 500000)(
    input clk_in,
    output reg clk_out
);
    reg [31:0] count = 0;

    always @(posedge clk_in) begin
        count <= count + 1;
        if (count >= DIV) begin
            clk_out <= ~clk_out;
            count <= 0;
        end
    end
endmodule
