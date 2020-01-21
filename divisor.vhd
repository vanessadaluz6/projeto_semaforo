--Divisor de clock 50Hz -> 1Hz

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity divisor is 
	port ( clock: in std_logic;
				  q: out std_logic);
end divisor;

architecture comportamental of divisor is

	signal div: std_logic;
	
	begin
	
		process(div)
			variable count: integer:= 1;
			
			begin
			
				if clock'event and clock='1' then
					
					count := count+1;
					
					if count = 25000000 then
					
						div <= not div;
						count := 1;
						
					end if;
				end if;
			end process;
			
		q <= div;
	end comportamental;
