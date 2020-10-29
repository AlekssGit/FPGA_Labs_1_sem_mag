library verilog;
use verilog.vl_types.all;
entity summ_mod_11_vlg_sample_tst is
    port(
        i_clk           : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end summ_mod_11_vlg_sample_tst;
