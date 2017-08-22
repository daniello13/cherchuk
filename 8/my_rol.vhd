library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
entity my_rol is
	port(
		A : in std_logic_vector(3 downto 0);
		B : in std_logic_vector(3 downto 0);
		RES : out std_logic_vector(3 downto 0)
	);
end entity;
architecture behaviour of my_rol is
	begin
		process(A, B) is
		variable vector : bit_vector(3 downto 0);
		variable shift_count : integer;
	begin
		vector := to_bitvector(A);
		shift_count := conv_integer(B);
		vector := vector ror shift_count;
		RES <= to_stdlogicvector(vector);
	end process;
end architecture;