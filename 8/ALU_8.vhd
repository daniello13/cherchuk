 library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.my_rol;
use work.bus_or;
use work.bus_change;
use work.div;
use work.cmp;

entity ALU_8 is
	port(
		mode : in std_logic; 
		A, B : in std_logic_vector(3 downto 0);
		op : in std_logic_vector(1 downto 0);
		result : out std_logic_vector(3 downto 0)
		);
	end entity;
architecture behaviour of ALU_8 is
	signal resROL, resOR, reschn, resDIV, resCMP : std_logic_vector(3 downto 0);
	begin
e1:		entity my_rol(behaviour) port map (A, B, resROL);
e2:		entity bus_or(behaviour) port map (A, B, resOR);
--e3:		entity bus_change(behaviour) port map (A, reschn);
--e4:		entity div(behaviour) port map (A, B, resDIV);
e5:		entity cmp(behaviour) port map (A, B, resCMP);
	process(A, B, op, mode) is
		begin
			if(mode = '0') then
				case op is
					when "00" => 
						result<= resROL;
					when "01" => 
						result<= resOR;
					when "10" => 
						result<= resCMP;
					when "11" => 
						result<= resDIV;
					when others =>
						result <= "0000";
				end case;
			end if;
			if(mode = '1') then
				result <= reschn;
			end if;
	end process;
end architecture;