Library ieee;
Use ieee.std_logic_1164.all;

Entity portaOr is port(
A,B: in std_logic;
S: out std_logic);
End portaOr;

Architecture arq of portaOr is 
Begin
	S <= A or B;
End arq;
	