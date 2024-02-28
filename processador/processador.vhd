Library ieee;
Use ieee.std_logic_1164.all;

Entity processador is port(
clk: in std_logic;
PC: out std_logic_vector(1 downto 0);
resultado: out std_logic_vector(7 downto 0)
);
End processador;

architecture a of processador is
signal sInstrucao, sDado1, sDado2, sResultado : std_logic_vector(7 downto 0);
signal sPc, sMi, sEscReg,sLerReg, sUla : std_logic;
signal sEndereco : std_logic_vector(1 downto 0);

begin
uPc:work.PC port map (clk => sPc, endereco=> sEndereco);

uUc:work.uc port map(clk => clk, pc => sPc, mi => sMi, reg => sLerReg, ula => sUla, escReg => sEscReg);

uMi:work.mi port map (clk=>sMi, endereco=> sEndereco, instrucao => sInstrucao);

uBr:work.bancoReg port map(rescr => sInstrucao(5 downto 4),
									rler1 => sInstrucao(3 downto 2),
									rler2 => sInstrucao(1 downto 0),
									dadoesc => sResultado,
									escrever => sEscReg,
									clk => sLerReg,
									dado1 => sDado1,
									dado2 => sDado2);

uUla:work.ula port map (clk => sUla, dado1 => sDado1, dado2 => sDado2, op => sInstrucao(7 downto 6), resultado => sResultado);
resultado <= sResultado;
PC <=	sEndereco;							
end a;