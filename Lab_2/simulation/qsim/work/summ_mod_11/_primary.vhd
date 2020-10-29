library verilog;
use verilog.vl_types.all;
entity summ_mod_11 is
    port(
        i_clk           : in     vl_logic;
        reset           : in     vl_logic;
        lamp            : out    vl_logic_vector(2 downto 0);
        lcd_hi          : out    vl_logic_vector(6 downto 0);
        lcd_low         : out    vl_logic_vector(6 downto 0);
        out_cnt         : out    vl_logic_vector(3 downto 0);
        test_clk        : out    vl_logic
    );
end summ_mod_11;
