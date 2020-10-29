library verilog;
use verilog.vl_types.all;
entity Lab_4 is
    port(
        i_clk           : in     vl_logic;
        A               : in     vl_logic_vector(2 downto 0);
        B               : in     vl_logic_vector(2 downto 0);
        led_lib         : out    vl_logic_vector(6 downto 0);
        led_rom         : out    vl_logic_vector(6 downto 0);
        res_lib         : out    vl_logic_vector(2 downto 0);
        res_rom         : out    vl_logic_vector(2 downto 0)
    );
end Lab_4;
