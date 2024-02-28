library ieee;
use ieee.std_logic_1164.all;

entity uc is port(
	clk: in std_logic;
	pc,mi,reg,ula,escReg: out std_logic);
end uc;

architecture a of uc is
type estado is (e0,e1,e2,e3,e4);
signal estAtual, pxEst: estado;
begin
  estAtual <= pxEst;
  process (clk)
  begin
    if clk'event and clk='1' then
     case estAtual is 
      when e0 =>
			pc <= '1';
			mi <= '0';
			reg <= '0';
			ula <= '0';
			escReg <= '0';
			pxEst <= e1; 
      when e1 =>
			pc <= '0';
			mi <= '1';
			reg <= '0';
			ula <= '0';
			escReg <= '0';
			pxEst <= e2; 
      when e2 =>
			pc <= '0';
			mi <= '0';
			reg <= '1';
			ula <= '0';
			escReg <= '0';
			pxEst <= e3; 
		when e3 =>
			pc <= '0';
			mi <= '0';
			reg <= '0';
			ula <= '1';
			escReg <= '0';
			pxEst <= e4; 
		when e4 =>
			pc <= '0';
			mi <= '0';
			reg <= '0';
			ula <= '0';
			escReg <= '1';
			pxEst <= e0; 
    end case;
   end if;
  end process;
end a;
