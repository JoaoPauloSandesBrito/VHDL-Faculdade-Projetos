Library ieee;
Use ieee.std_logic_1164.all;

Entity celulaMSB is port(
A,B,cin,negaB,menor: in std_logic;
op: in std_logic_vector(1 downto 0);
R,overflow,sinal: out std_logic);
End celulaMSB;

Architecture arq of celulaMSB is 
	signal fio0, fio1, fio2,fio3:std_logic;
Begin
	uAnd: work.portaAnd port map (a=>A,b=>B,s=>fio0);
	uOr: work.portaOr  port map (a=>A,b=>B,s=>fio1);
	uSoma: work.somadorSubtrator  port map (a=>A,b=>B,r=>fio2,cout=>fio3,cin=>cin,negaB=>negaB);
	uMux: work.mutiplexador  port map (seletor=>op ,e0=>fio0,e1=>fio1,e2=>fio2,e3=>menor,s=>r);
	uXor: work.portaXOR  port map (a=>fio3 ,b=>cin,s=>overflow);
	sinal <= fio2;
End arq;
	