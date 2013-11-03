library ieee;
use ieee.std_logic_1164.all;

-- Define the signatutre of the 2-input OR gate
entity OR2 is
	port(
		A: in std_logic;
		B: in std_logic;
		F: out std_logic
	);
end OR2;  

-- Define the implementation of the 2-input OR gate
architecture basic of OR2 is 
begin 
    F <= A or B; 
end architecture;