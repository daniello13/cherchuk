library ieee;
use ieee.std_logic_1164.all;
entity bus_or is
	port(
		A : in std_logic_vector(3 downto 0);
		B : in std_logic_vector(3 downto 0);
		RES : out std_logic_vector(3 downto 0)
);
end entity;
architecture behaviour of bus_or is
	begin
	process(A, B) is
		begin	
		RES <= A or B;
	end process;
end architecture;