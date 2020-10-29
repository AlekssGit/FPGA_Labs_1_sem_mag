library verilog;
use verilog.vl_types.all;
entity summ_mod_11_vlg_check_tst is
    port(
        lamp            : in     vl_logic_vector(2 downto 0);
        lcd_hi          : in     vl_logic_vector(6 downto 0);
        lcd_low         : in     vl_logic_vector(6 downto 0);
        out_cnt         : in     vl_logic_vector(3 downto 0);
        test_clk        : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end summ_mod_11_vlg_check_tst;
