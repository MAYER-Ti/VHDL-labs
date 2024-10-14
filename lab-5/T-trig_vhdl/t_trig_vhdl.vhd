LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY t_trig_vhdl IS
PORT (
	t : IN std_logic;
	q  : OUT std_logic
);
END t_trig_vhdl;

ARCHITECTURE behav OF t_trig_vhdl IS
SIGNAL q_s:std_logic := '0';
BEGIN
	PROCESS(t)
	BEGIN
			IF (t = '1') THEN
				q <= q_s;
				q_s <= '1';
			ELSE
				q_s <= q_s;
			END IF;
    END PROCESS;
END behav;
