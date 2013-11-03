library ieee;
use ieee.std_logic_1164.all;

-- Define the signature of the 2-input AND gate
entity AND2 is
	port(
		A: in std_logic;
		B: in std_logic;
		F: out std_logic
	);
end AND2;  

-- Define the implementation of the 2-input AND gate
architecture basic of AND2 is 
begin 
    F <= A and B; 
end architecture;