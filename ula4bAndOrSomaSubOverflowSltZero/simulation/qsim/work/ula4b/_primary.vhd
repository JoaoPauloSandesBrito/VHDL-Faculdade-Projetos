library verilog;
use verilog.vl_types.all;
entity ula4b is
    port(
        op              : in     vl_logic_vector(2 downto 0);
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        overflow        : out    vl_logic;
        Zero            : out    vl_logic;
        R               : out    vl_logic_vector(3 downto 0)
    );
end ula4b;
