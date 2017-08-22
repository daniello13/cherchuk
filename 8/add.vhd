library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity add is
	port(
		A, B : in std_logic_vector(3 downto 0);
		RES : out std_logic_vector(3 downto 0)
		);
	end entity;
architecture behaviour of add is
	begin
	process(A, B) is
		begin
		RES <= A + B;
	end process;
end architecture;