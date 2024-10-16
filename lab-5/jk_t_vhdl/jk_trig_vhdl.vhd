LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY jk_trig_vhdl IS
PORT (
	j : IN std_logic;
	k : IN std_logic;
	q  : OUT std_logic
);
END jk_trig_vhdl;

ARCHITECTURE behav OF jk_trig_vhdl IS
SIGNAL q_s:std_logic := '0';
BEGIN
	PROCESS(j, k)
	BEGIN
			IF (j = '1') THEN
				q_s <= '1';
			ELSIF (k = '1') THEN
				q_s <= '0';
			ELSE
				q_s <= q_s;
			END IF;
    END PROCESS;
q <= q_s;
END behav;

