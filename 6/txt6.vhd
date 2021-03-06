library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith;
use ieee.numeric_std;
use work.my_package.all;

entity txt6 is
   port( 
			mas: in dan_array;
			find: in integer;
         pov: out integer
			);
end txt6;

architecture Behavioral of txt6 is
	function counting(mas: in dan_array; find: in integer) return integer is
	variable i: natural := 0;
	variable Num: integer := 0;
	begin 
E1:		for i in 0 to 9 loop
				if (find = mas(i)) then
					Num := Num+1;
				end if;
			end loop E1;
			return Num;
	end counting;

begin
   process (mas, find) 
	begin 
		pov <= counting(mas, find);
   end process;
end Behavioral;