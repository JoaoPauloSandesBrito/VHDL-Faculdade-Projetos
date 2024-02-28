Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_unsigned.all;

Entity ula is port(
dado1, dado2: in std_logic_vector(7 downto 0);
op: in std_logic_vector(1 downto 0);
clk: in std_logic;
resultado: out std_logic_vector(7 downto 0)
);
End ula;

architecture a of ula is
begin
process(clk)
begin
if clk'event and clk='1' then
	case op is
		when "00" =>
			resultado<=dado1+dado2;
		when "01" =>
			resultado<=dado1-dado2;
		when "10" =>
			if dado1<dado2 then
				resultado <= x"01";
			else
				resultado <= x"00";
				end if;
		when others=>
	end case;
end if;
end process;
end a;
