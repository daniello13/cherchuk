library ieee;
Use ieee.std_logic_1164.all;

entity test_majel is
end test_majel;

architecture behavior of test_majel is 
	component majel
		port(
		inputA : in std_logic_vector(3 downto 0);
		inputB : in std_logic_vector(3 downto 0);
		inputC : in std_logic_vector(3 downto 0);
		output : out std_logic_vector(3 downto 0)
		);
	end component;
	signal inputA: std_logic_vector(3 downto 0);
	signal inputB: std_logic_vector(3 downto 0);
	signal inputC: std_logic_vector(3 downto 0);
	signal output : std_logic_vector(3 downto 0);
	begin
	p1: majel port map (inputA => inputA, inputB => inputB, inputC => inputC, output => output);
	process
	begin
	
	inputA <= "0001";
	inputB <= "0010";
	inputC <= "0001";
	
	wait for 100 ns;
	
	inputA <= "0100";
	inputB <= "0010";
	inputC <= "0001";	

	wait for 100 ns;
	inputA <= "1000";
	inputB <= "0000";
	inputC <= "0001";
	wait for 100 ns;
	inputA <= "0100";
	inputB <= "0100";
	inputC <= "0001";
	wait for 100 ns;
	inputA <= "0000";
	inputB <= "0000";
	inputC <= "0000";
	wait for 100 ns;
	
		end process;
end behavior;
		