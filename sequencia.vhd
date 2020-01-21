-- Sequencia 

library IEEE;                                                        
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity sequencia is 
	port ( 				  			q: in std_logic_vector;
			 led_transito_vermelho: out std_logic;
			  led_transito_amarelo: out std_logic;
			    led_transito_verde: out std_logic;
			 led_pedestre_vermelho: out std_logic;
			    led_pedestre_verde: out std_logic);
end sequencia;

architecture arquitetura of sequencia is

	begin 
	
		process(q)
		
			begin
			
				if q < 10 then
	
					led_transito_vermelho <= '0';
					led_transito_amarelo <= '0';
					led_transito_verde <= '1';
					led_pedestre_vermelho <= '1';
					led_pedestre_verde <= '0';
					
				elsif q < 11 then
				
					led_transito_vermelho <= '0';
					led_transito_amarelo <= '0';
					led_transito_verde <= '0';
					led_pedestre_vermelho <= '1';
					led_pedestre_verde <= '0';
											
				elsif q < 21 then
				
					led_transito_vermelho <= '0';
					led_transito_amarelo <= '0';
					led_transito_verde <= '1';
					led_pedestre_vermelho <= '1';
					led_pedestre_verde <= '0';
					
				elsif q < 26 then
				
					led_transito_vermelho <= '0';
					led_transito_amarelo <= '1';
					led_transito_verde <= '0';
					led_pedestre_vermelho <= '1';
					led_pedestre_verde <= '0';
					
				elsif q < 29 then	
				
					led_transito_vermelho <= '1';
					led_transito_amarelo <= '0';
					led_transito_verde <= '0';
					led_pedestre_vermelho <= '1';
					led_pedestre_verde <= '0';
					
				elsif q < 44 then	
				
					led_transito_vermelho <= '1';
					led_transito_amarelo <= '0';
					led_transito_verde <= '0';
					led_pedestre_vermelho <= '0';
					led_pedestre_verde <= '1';

				elsif q < 46 then	
				
					led_transito_vermelho <= '1';
					led_transito_amarelo <= '0';
					led_transito_verde <= '0';
					led_pedestre_vermelho <= '1';
					led_pedestre_verde <= '0';
					
				end if;
			end process;
		end arquitetura;