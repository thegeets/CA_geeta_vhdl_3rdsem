
library IEEE;

use IEEE.STD_LOGIC_1164.ALL;


entity and_gate_tb   is
end and_gate_tb;



architecture behavior  of and_gate_tb is
-- Signals to connect to  the  DUT(Design under test)
     signal A, B, Y : STD_LOGIC;
begin
  --Instantiate the AND Gate
UUT: entity work.and_gate
   port map(
   A=> A,
   B=>B,
   Y=>Y
);

--Stimulus process
stim_proc: process
begin
--Test case 1
A <= '0';
B <= '0';
wait for 10 ns;
--Test case 2
A <= '0';
B <= '1';
wait for 10 ns;
--Test case 3
A <= '1';
B <= '0';
wait for 10 ns;
--Test case 4
A <= '1';
B <= '1';
wait for 10 ns;

--stop simulation
wait;
end process;
end behavior;
