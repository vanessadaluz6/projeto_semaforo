--Contador 0 -> 45

library IEEE;                                                        
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
 
entity contador is
	port(	clock: in std_logic;
			reset: in std_logic;
				 q: out std_logic_vector(5 downto 0));
end contador;

architecture arquitetura of contador is

	begin 
	
		process(clock, reset)
		
			variable qtemp: std_logic_vector (5 downto 0) := "000000";
			variable trava: std_logic := '0';
			
		begin
			
			if reset = '1' and trava = '0' then
			
				qtemp := "000000";
				q <= "000000";
				trava := '0';
				
			else
				if clock'event and clock = '1' then
			
					if qtemp < 46 then 
						
						qtemp := qtemp + 1;
						trava := '1';
						
					else 
					
						qtemp := "000000";
						trava := '0';
						
					end if;
					
				qtemp:=qtemp;
					
			end if;
				
			q <= qtemp;
			
		end if;
	end process;
end arquitetura;
					