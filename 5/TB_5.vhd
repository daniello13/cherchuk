library ieee;
use ieee.std_logic_1164.all;
use work.my_package.all;

entity TB_5 is
end TB_5;
architecture behavior of TB_5 is 
	component povtor
		port( mas: in dan_array;
			find: in integer;
         pov: out integer);
	end component;
		SIGNAL mas :   dan_array;
      SIGNAL find   :  integer;
		SIGNAL pov : integer;
begin
	p1 : povtor port map (mas => mas, find => find, pov=> pov);
	process
	begin
		mas(0) <= 15;
		mas(1) <= 24;
		mas(2) <= 11;
		mas(3) <= 23;
		mas(4) <= 14;
		mas(5) <= 248;
		mas(6) <= 11;
		mas(7) <= 27;
		mas(8) <= 11;
		mas(9) <= 44;
		find <= 11;
		wait for 100 ns;
	end process;

	
END behavior; 