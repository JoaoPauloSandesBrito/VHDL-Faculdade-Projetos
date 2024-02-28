Library ieee;
Use ieee.std_logic_1164.all;

Entity ula4b is port(
op: in std_logic_vector(2 downto 0);
A,B: in std_logic_vector(3 downto 0);
overflow,Zero: out std_logic;
R: out std_logic_vector(3 downto 0));

End ula4b;

Architecture arq of ula4b is 
	signal fioR: std_logic_vector(3 downto 0);
	signal fio1, fio2, fio3, fio4:std_logic;
Begin
	u0: work.celula1b port map (a=>a(0),b=>b(0),r=>fioR(0),op=>op(1 downto 0), cin=>op(2), cout=>fio1, negaB=>op(2),menor=>fio4);
	u1: work.celula1b port map (a=>a(1),b=>b(1),r=>fioR(1),op=>op(1 downto 0), cin=> fio1, cout=>fio2, negaB=>op(2),menor=>'0');
	u2: work.celula1b port map (a=>a(2),b=>b(2),r=>fioR(2),op=>op(1 downto 0), cin=> fio2, cout=>fio3, negaB=>op(2),menor=>'0');
	u3: work.celulaMSB port map (a=>a(3),b=>b(3),r=>fioR(3),op=>op(1 downto 0), cin=> fio3, overflow=>overflow, negaB=>op(2),menor=>'0',sinal=>fio4);
	R <= fioR;
	Zero <= not(fioR(3) or fioR(2) or fioR(1) or fioR(0));
End arq;
	