library ieee;
use ieee.std_logic_1164.all;

entity gates_tb is
	generic(half_period : Time := 1 ns);
end gates_tb;

architecture behavior of gates_tb is
	-- declare signals
	signal clk: std_logic := '0';
	signal clk2: std_logic := '0';
	signal and_out, or_out, not_out: std_logic;

begin
	-- declare and map gate to test
	or2 : entity work.OR2(basic)
		port map (A => clk, B => clk2, F => or_out);

	and2 : entity work.AND2(basic)
		port map (A => clk, B => clk2, F => and_out);

	not2 : entity work.NOT2(basic)
		port map (A => clk, F => not_out);

	-- define test process
	-- test:
		-- wire things here

	-- setup the clock
	clock : process begin
		clk <= not clk;
		wait for half_period;
		assert NOW <= 200 ns report "End of Test" severity error;
	end process clock;

	-- setup the second clock
	clock2 : process begin
		clk2 <= not clk2;
		wait for half_period*2;
		assert NOW <= 200 ns report "End of Test" severity error;
	end process clock2;

end architecture; -- behavior