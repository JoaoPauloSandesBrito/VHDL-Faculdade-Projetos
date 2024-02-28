library ieee;
use ieee.std_logic_1164.all;

entity PC is port(
	clk: in std_logic;
	endereco: out std_logic_vector(1 downto 0));
end PC;

architecture a of PC is
type estado is (e0,e1,e2,e3);
signal estAtual, pxEst: estado;
begin
  estAtual <= pxEst;
  process (clk)
  begin
    if clk'event and clk='1' then
     case estAtual is 
      when e0 =>
		  endereco <= "00";
        pxEst <= e1; 
      when e1 =>
		  endereco <= "01";
        pxEst <= e2; 
      when e2 =>
        endereco <= "10";
        pxEst <= e3; 
      when e3 =>
		  endereco <= "11";
        pxEst <= e0; 
    end case;
   end if;
  end process;
end a;
