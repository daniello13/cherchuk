LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
entity div is
	port(
		A, B : in std_logic_vector(3 downto 0);
		RES : out std_logic_vector(3 downto 0)
	);
end entity;
architecture behaviour of div is
	begin
		process(A, B) is
			variable Aint: integer range 0 to 127;
			variable Bint: integer range 0 to 127;
			variable resInt: integer range 0 to 127;
		begin
		 Aint := to_integer(signed(A));
		 Bint := to_integer(signed(B));
		 resInt := Aint/Bint;
		 RES <= std_logic_vector(to_signed(resInt, RES'length));
		end process;
end architecture;