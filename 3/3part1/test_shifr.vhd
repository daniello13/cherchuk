library ieee;
Use ieee.std_logic_1164.all;

entity test_shifr is
end test_shifr;

architecture behavior of test_shifr is 
	component shifr8in3
		port(
		input : in std_logic_vector(7 downto 0);
		W : in std_logic;
		output: out std_logic_vector(2 downto 0)
		);
	end component;
	signal input: std_logic_vector(7 downto 0);
	signal W: STD_logic;
	signal output : std_logic_vector(2 downto 0);
	begin
	p1: shifr8in3 port map (input => input, W => W, output => output);
	process
	begin
	
	W <= '1';
	input <= "00000001";
	
	wait for 100 ns;
	W <= '1';
	input <= "00000010";
	wait for 100 ns;
	W <= '1';
	input <= "00100000";
	wait for 100 ns;
	W <= '1';
	input <= "00100010";
	wait for 100 ns;
	W <= '0';
	input <= "10000000";
	wait for 100 ns;
	
		end process;
end behavior;
		