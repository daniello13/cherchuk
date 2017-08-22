library IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

entity bus_change is
	port(
		A : in std_logic_vector(3 downto 0);
		RES : out std_logic_vector(3 downto 0)
	);
end entity;
architecture behaviour of bus_change is
	begin
		process(A) is
			variable Aint: integer range 0 to 127:=0;
			variable Bint: integer range -5 to 127:=-1;
			variable resInt: integer range -127 to 127:=0;
		begin
		 Aint := to_integer(signed(A));
		 resInt := Aint*Bint;
		 RES <= std_logic_vector(to_signed(resInt, RES'length));
		end process;
end architecture;