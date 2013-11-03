library ieee;
use ieee.std_logic_1164.all;

-- Define the signature of the 2-input NOT gate
entity NOT2 is
	port(
		A: in std_logic;
		F: out std_logic
	);
end NOT2;

-- Define the implementation of the 2-input NOT gate
architecture basic of NOT2 is
begin
	F <= not A;
end architecture; -- basic