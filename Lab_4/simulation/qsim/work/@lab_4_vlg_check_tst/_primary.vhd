library verilog;
use verilog.vl_types.all;
entity Lab_4_vlg_check_tst is
    port(
        led_lib         : in     vl_logic_vector(6 downto 0);
        led_rom         : in     vl_logic_vector(6 downto 0);
        res_lib         : in     vl_logic_vector(2 downto 0);
        res_rom         : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end Lab_4_vlg_check_tst;
