Library ieee;
Use ieee.std_logic_1164.all;

Entity mutiplexador is port(
e0,e1,e2,e3: in std_logic;
seletor: in std_logic_vector(1 downto 0);
S: out std_logic);
End mutiplexador;

Architecture arq of mutiplexador is 
Begin
	S <= e0 when seletor="00" else 
		  e1 when seletor="01" else
		  e2 when seletor="10" else
		  e3;
End arq;
	