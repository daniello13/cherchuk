library ieee;
use ieee.std_logic_1164.all;


entity majel is
	port(
		inputA : in std_logic_vector(3 downto 0);
		inputB : in std_logic_vector(3 downto 0);
		inputC : in std_logic_vector(3 downto 0);
		output : out std_logic_vector(3 downto 0)
		
		);
end entity;

architecture Behaving of majel is
begin
	output(0) <= (inputA(0) and inputB(0)) or (inputA(0) and inputC(0)) or (inputB(0) and inputC(0));
	output(1) <= (inputA(1) and inputB(1)) or (inputA(1) and inputC(1)) or (inputB(1) and inputC(1));
	output(2) <= (inputA(2) and inputB(2)) or (inputA(2) and inputC(2)) or (inputB(2) and inputC(2));
	output(3) <= (inputA(3) and inputB(3)) or (inputA(3) and inputC(3)) or (inputB(3) and inputC(3));
	
end Behaving;