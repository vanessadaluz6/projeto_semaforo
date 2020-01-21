-- Semaforo com botão 

library IEEE;                                                        
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity semaforo_com_botao is
	port(	 clock: in std_logic;
			 botao: in std_logic;
			buzzer: out std_logic;
				tvm: out std_logic;
				tam: out std_logic;
				tvd: out std_logic;
				pvm: out std_logic;
				pvd: out std_logic
			);
end semaforo_com_botao;

architecture arquitetura of semaforo_com_botao is

	signal clk: std_logic;
	signal cnt: std_logic_vector (5 downto 0);
	signal rst: std_logic;
	signal buz: std_logic;

	component divisor 
		port( clock: in std_logic;
				    q: out std_logic);
	end component;
	
	component contador
		port( clock: in std_logic;
				reset: in std_logic;
					 q: out std_logic_vector (5 downto 0));
	end component;
	
	component sequencia
		port(							  q: in std_logic_vector (5 downto 0);
				led_transito_vermelho: out std_logic;
				 led_transito_amarelo: out std_logic;
			      led_transito_verde: out std_logic;
				led_pedestre_vermelho: out std_logic;
					led_pedestre_verde: out std_logic);
	end component;
	
	begin
	
		divisorDeClock: divisor port map (clock, clk);
		contadorDe1Hz: contador port map (clk, rst, cnt);
		luzesDoSemaforo: sequencia port map (cnt, tvm, tam, tvd, pvm, buz);
		
		process(botao, clock)
		
		variable reset_p : std_logic:='0';
		
		begin
		
			if botao = '1' then
			
				reset_p := '0';
				
			else
			
				reset_p := '1';
				
			end if;
			
			rst <= reset_p;
			buzzer <= buz;
			pvd <= buz;
		end process;
		
		
	end arquitetura;
		
		
		
		
		
		