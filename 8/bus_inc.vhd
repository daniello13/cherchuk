library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity bus_inc is
	port(
		A : in std_logic_vector(3 downto 0);
		RES : out std_logic_vector(3 downto 0)
	);
end entity;
architecture behaviour of bus_inc is
begin
	process(A) is
		begin
		RES <= A - 1;
	end process;
end architecture;