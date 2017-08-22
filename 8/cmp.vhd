library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity cmp is
	port(
		A, B : in std_logic_vector(3 downto 0);
		RES : out std_logic_vector(3 downto 0)
		);
	end entity;
architecture behaviour of cmp is
	begin
	process(A, B) is
		begin
		if A = B then
		RES <= "0001";
		else RES <="0000";
		end if;
	end process;
end architecture;