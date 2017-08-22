LIBRARY ieee;
use IEEE.std_logic_1164.all;

entity Lab8_test is
end Lab8_test;

architecture behavior of Lab8_test is
	
	component ALU_8
		port (
		A : in std_logic_vector(3 downto 0);
		B : in std_logic_vector(3 downto 0);
		mode : in std_logic; 
		op : in std_logic_vector(1 downto 0);
		result : out std_logic_vector(3 downto 0)
		); 
	end component;
	
	signal A : std_logic_vector(3 downto 0);
	signal B : std_logic_vector(3 downto 0);
	signal op : std_logic_vector(1 downto 0);
	signal mode : std_logic;
	signal result : std_logic_vector(3 downto 0);

begin
		p1 : entity work.ALU_8 port map (A(1) => A(1), A(2) => A(2), A(3) => A(3), A(0) => A(0), B(1) => B(1), B(2) => B(2), B(3) => B(3), B(0) => B(0),op(0) => op(0), op(1) => op(1),mode => mode, result(1) => result(1), result(2) => result(2), result(3) => result(3), result(0) => result(0));
		
		process
		begin
		--rol
			
			A(0) <= '0';
			A(1) <= '0';
			A(2) <= '1';
			A(3) <= '1';
			
			B(0) <= '0';
			B(1) <= '1';
			B(2) <= '0';
			B(3) <= '0'; 
			op <= "00";
			mode <= '0';
			wait for 100 ns;
			
			
			--
			
			A(0) <= '0';
			A(1) <= '0';
			A(2) <= '1';
			A(3) <= '0';
			
			B(0) <= '0';
			B(1) <= '1';
			B(2) <= '0';
			B(3) <= '0'; 
			op <= "01";
			mode <= '0';
			wait for 100 ns;
		end process;
		
		
end behavior;

