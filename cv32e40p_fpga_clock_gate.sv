module cv32e40p_clock_gate (
    input  logic clk_i,
    input  logic en_i,
    input  logic scan_cg_en_i,
    output logic clk_o
);

    BUFGCE #(
        .CE_TYPE("SYNC"),
        .IS_CE_INVERTED(1'b0),
        .IS_I_INVERTED(1'b0)
    ) i_bufgce (
        .I  (clk_i),
        .CE (en_i | scan_cg_en_i),
        .O  (clk_o)
    );

endmodule