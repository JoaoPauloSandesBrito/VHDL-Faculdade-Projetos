Library ieee;
Use ieee.std_logic_1164.all;

Entity somadorSubtrator is port(
A,B,negaB,cin: in std_logic;
r,cout: out std_logic);
End somadorSubtrator;

Architecture arq of somadorSubtrator is 
	signal fio:std_logic;
Begin
	uXor: work.portaXOR port map (a=>b,b=>negaB,s=>fio);
	uSoma: work.somador  port map (a=>A,b=>fio,r=>r,cout=>cout,cin=>cin);

End arq;
	