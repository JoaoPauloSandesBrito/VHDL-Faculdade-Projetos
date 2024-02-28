Library ieee;
Use ieee.std_logic_1164.all;

Entity somador is port(
A,B,cin: in std_logic;
r,cout: out std_logic);
End somador;

Architecture arq of somador is 
Begin
 r <= ((not A) and (not B) and cin) or
		((not A) and (B) and (not cin)) or
		((A) and (not B) and (not cin)) or
		((A) and (B) and (cin));
		
		cout <= (A and B) or (A and cin) or (B and cin);
End arq;
	