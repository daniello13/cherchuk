library ieee;
Use ieee.std_logic_1164.all;

entity test_D is
end test_D;

architecture behavior of test_D is 
	component Dtrig
		port(
			D, C, R, S : in  std_logic;
			Q : out std_logic);
	end component;
	signal D, C, R, S: std_logic;
	signal Q: STD_logic;
	begin
	p1: Dtrig port map (D => D, C => C, R => R, S => S, Q => Q);
	process
	begin
	
	D <= '1';
	C <= '1';
	R <= '1';
	S <= '0';
	wait for 100 ns;
	D <= '1';
	C <= '1';
	R <= '0';
	S <= '1';
	wait for 100 ns;
	D <= '1';
	C <= '1';
	R <= '0';
	S <= '0';
	wait for 100 ns;
	D <= '1';
	C <= '1';
	R <= '1';
	S <= '1';
	wait for 100 ns;
	D <= '0';
	C <= '1';
	R <= '1';
	S <= '0';
	wait for 100 ns;
	
		end process;
end behavior;
		