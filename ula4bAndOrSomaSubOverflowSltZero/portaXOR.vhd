Library ieee;
Use ieee.std_logic_1164.all;

Entity portaXOR is port(
A,B: in std_logic;
S: out std_logic);
End portaXOR;

Architecture arq of portaXOR is 
Begin
	S <= A xor B;
End arq;
	