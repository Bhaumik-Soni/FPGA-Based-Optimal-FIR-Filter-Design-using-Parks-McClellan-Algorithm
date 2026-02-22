module fir_demo_top(
    input CLK50M,
    input sw0,
    output DSO_OUT
);
    wire signed [15:0] test_signal;
    wire signed [31:0] filtered_signal;

    test_signal_gen gen_inst (
        .clk(CLK50M),
        .test_signal(test_signal)
    );

    parks_mcclellan_fir fir_inst (
        .clk(CLK50M),
        .x_in(test_signal),
        .y_out(filtered_signal)
    );

    wire signed [15:0] output_data;
    assign output_data = sw0 ? filtered_signal[30:15] : test_signal;

    assign DSO_OUT = output_data[10]; // Mid-bit for waveform visibility
endmodule
