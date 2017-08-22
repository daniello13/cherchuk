library ieee;
use ieee.std_logic_1164.all;


entity shifr8in3 is
	port(
		input : in std_logic_vector(7 downto 0);
		W : in std_logic;
		output: out std_logic_vector(2 downto 0)
		);
end entity;

architecture Behaving of shifr8in3 is
begin
	output(0) <= (((not (input(1))) and input(2)) or input(1) or input(3) or input(0)) AND W;
	output(1) <= ((not (input(1)) and (not input(2)) and (not input(3)) and input(4)) or ((not input(2)) and (not input(3)) and input(5)) or input(1) or input(0)) AND W;
	output(2) <= (((not (input(1))) and (not input(2)) and (not input(3)) and (input(4))) or ((not (input(1))) and (not input(3)) and (not input(5)) and input(6)) or ((not input(1))and input(2)) or input(0)) AND W;
end Behaving;