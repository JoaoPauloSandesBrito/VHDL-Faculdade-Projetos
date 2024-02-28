library verilog;
use verilog.vl_types.all;
entity processador is
    port(
        clk             : in     vl_logic;
        PC              : out    vl_logic_vector(1 downto 0);
        resultado       : out    vl_logic_vector(7 downto 0)
    );
end processador;
