 -- ensure VHDL 2008 is selected in Quartus menu Assignments:Settings:Compiler Settings:VHDL Input 
-- include ieee standard logic signal library 
library ieee; 
use ieee.std_logic_1164.all;
-- describe the functional block diagram symbol 
entity SEG7DECODE is 
port(A: in std_logic_vector(5 downto 0); 
 SEG: out std_logic_vector(7 downto 0)
 ); 
end entity SEG7DECODE; 

-- describe signals and vectors using multiplexer with-select syntax 

architecture MULTIPLEXER of SEG7DECODE is 
begin 
with A select
SEG <= 8X"C0" when 6X"00",
	8X"F9" when 6X"01",
	8X"A4" when 6X"02",
	8X"B0" when 6X"03",
	8X"99" when 6X"04",
	8x"92" when 6x"05",
	8x"82" when 6x"06",
	8x"d8" when 6x"07",
	8x"80" when 6x"08",
	8x"90" when 6x"09",
	8x"88" when 6x"0a",
	8x"83" when 6x"0b",
	8x"a7" when 6x"0c",
	8x"a1" when 6x"0d",
	8x"86" when 6x"0e",
	8x"8e" when 6x"0f",
	8X"c2" when 6X"10",
	8X"8b" when 6X"11",
	8X"fb" when 6X"12",
	8X"e1" when 6X"13",
	8X"8a" when 6X"14",
	8x"c7" when 6x"15",
	8x"c8" when 6x"16",
	8x"ab" when 6x"17",
	8x"a3" when 6x"18",
	8x"8c" when 6x"19",
	8x"98" when 6x"1a",
	8x"af" when 6x"1b",
	8x"93" when 6x"1c",
	8x"87" when 6x"1d",
	8x"e3" when 6x"1e",
	8x"c1" when 6x"1f",
	8X"81" when 6X"20",
	8X"89" when 6X"21",
	8X"91" when 6X"22",
	8X"e4" when 6X"23",
	8X"bf" when 6X"24",
	8x"f7" when 6x"25",
	8X"7F" when 6X"26",
	8X"FF" when others;

end architecture MULTIPLEXER; 