library IEEE; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;
use work.my_package.all;

entity test is 
generic(	file_name_in : string := "in.txt";
			file_name_out : string := "out.txt");
end test; 

architecture behavior of test is 
	component txt6
		port( mas: in dan_array;
			find: in integer;
         pov: out integer);
	end component;
			signal mas: dan_array;
			signal find: integer;
         signal pov: integer;
begin 
	Y : entity work.txt6 port map(mas,find,pov); 
	FileWork : process 
	FILE In_F : TEXT OPEN READ_MODE IS file_name_in;
	FILE file_output : TEXT OPEN WRITE_MODE IS file_name_out;
	variable buf_in: line;
	variable buf_out: line;
	variable vect: integer;
	variable find_in: integer;
	variable pov_res: integer;
	
	
	
	begin 
		
			readline(In_F, buf_in);
			read(buf_in, vect);
			mas(0)<=vect;
			readline(In_F, buf_in);
			read(buf_in, vect);
			mas(1)<=vect;
			readline(In_F, buf_in);
			read(buf_in, vect);
			mas(2)<=vect;
			readline(In_F, buf_in);
			read(buf_in, vect);
			mas(3)<=vect;
			readline(In_F, buf_in);
			read(buf_in, vect);
			mas(4)<=vect;
			readline(In_F, buf_in);
			read(buf_in, vect);
			mas(5)<=vect;
			readline(In_F, buf_in);
			read(buf_in, vect);
			mas(6)<=vect;
			readline(In_F, buf_in);
			read(buf_in, vect);
			mas(7)<=vect;
			readline(In_F, buf_in);
			read(buf_in, vect);
			mas(8)<=vect;
			readline(In_F, buf_in);
			read(buf_in, vect);
			mas(9)<=vect;
			readline(In_F, buf_in);
			read(buf_in, find_in);
			find<=find_in;
			wait for 100 ps;
			pov_res:= pov;
			
			
			write(buf_out, string'("povtoreniy = "));
			write(buf_out, pov_res);
			writeline(file_output, buf_out);
			wait for 50 ps;
	
		file_close(In_F);
		file_close(file_output);
		wait;
	end process FileWork;
end;