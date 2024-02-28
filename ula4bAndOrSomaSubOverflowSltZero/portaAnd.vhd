Library ieee;
Use ieee.std_logic_1164.all;

Entity portaAnd is port(
A,B: in std_logic;
S: out std_logic);
End portaAnd;

Architecture arq of portaAnd is 
Begin
	S <= A and B;
End arq;
	