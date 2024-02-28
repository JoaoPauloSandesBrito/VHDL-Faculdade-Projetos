library verilog;
use verilog.vl_types.all;
entity processador_vlg_check_tst is
    port(
        PC              : in     vl_logic_vector(1 downto 0);
        resultado       : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end processador_vlg_check_tst;
