Library ieee;
Use ieee.std_logic_1164.all;

Entity mi is port(
endereco: in std_logic_vector(1 downto 0);
clk: in std_logic;
instrucao: out std_logic_vector(7 downto 0)
);
End mi;

architecture a of mi is
begin
process(clk)
begin
if clk'event and clk='1' then
	case endereco is
		when "00" =>
			instrucao<="00"&"00"&"11"&"11";
		when "01" =>
			instrucao<="00"&"01"&"00"&"00";
		when "10" =>
			instrucao<="01"&"10"&"01"&"11";
		when "11" =>
			instrucao<="10"&"00"&"10"&"01";
		when others=>
	end case;
end if;
end process;
end a;