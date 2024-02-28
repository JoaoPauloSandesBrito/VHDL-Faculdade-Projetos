library ieee;
use ieee.std_logic_1164.all;

entity bancoReg is port(
	escrever: in std_logic;
	dado1,dado2:out std_logic_vector(7 downto 0);
	dadoesc:in std_logic_vector(7 downto 0);
	clk: in std_logic;
	rler1,rler2,rescr: in std_logic_vector(1 downto 0));
end bancoReg;

architecture a of bancoReg is
signal sT0,sT1,sT2,sUm: std_logic_vector(7 downto 0);
begin
process(clk) --leitura
begin 
if clk'event and clk='1' then
case rler1 is
when "00" =>
dado1<=sT0;
when "01" =>
dado1<=sT1;
when "10" =>
dado1<=sT2;
when "11" =>
dado1<=sUm;
end case;

case rler2 is
when "00" =>
dado2<=sT0;
when "01" =>
dado2<=sT1;
when "10" =>
dado2<=sT2;
when "11" =>
dado2<=sUm;
end case;


end if;
end process;

process(escrever)
begin 
if escrever'event and escrever='1' then
case rescr is
when "00" =>
sT0<=dadoesc;
when "01" =>
sT1<=dadoesc;
when "10" =>
sT2<=dadoesc;
when others =>
end case;

end if;
end process;

sUm<= "00000001";
end a;