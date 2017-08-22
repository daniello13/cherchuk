library ieee;
use ieee.std_logic_1164.all;

entity Dtrig is
	port(
		D, C, R, S : in  std_logic;
		Q : out std_logic
	);
end entity;

architecture Behavioral of Dtrig is
begin
	process(D, R, S)
		begin 
			if R = '1' and S = '0' then
				Q <= '0';
			end if;
			if R = '0' and S = '1' then
				Q <= '1';
			end if;
			if R = '1' and S = '1' then
				Q <= '1';
			end if;
			if R = '0' and S = '0' and D = '1' then
				Q <= '1';
			end if;
			if R = '0' and S = '0' and D = '0' then
				Q <= '0';
			end if;
			
	end process;
end Behavioral;
