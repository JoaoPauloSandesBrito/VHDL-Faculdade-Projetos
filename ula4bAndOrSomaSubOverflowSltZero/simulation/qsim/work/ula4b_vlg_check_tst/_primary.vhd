library verilog;
use verilog.vl_types.all;
entity ula4b_vlg_check_tst is
    port(
        overflow        : in     vl_logic;
        R               : in     vl_logic_vector(3 downto 0);
        Zero            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ula4b_vlg_check_tst;
