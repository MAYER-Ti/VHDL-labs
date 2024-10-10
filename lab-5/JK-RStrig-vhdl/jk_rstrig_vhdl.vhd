LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY jk_rstrig_vhdl IS
PORT (
	s : IN std_logic;
	j : IN std_logic;
	
	r : IN std_logic;
	k : IN std_logic;

	q  : OUT std_logic;
	qi : OUT std_logic;

	q_temp : INOUT std_logic
);
END jk_rstrig_vhdl;

ARCHITECTURE behav OF jk_rstrig_vhdl IS
--SIGNAL q_s:std_logic := '0';
BEGIN
	PROCESS(s, j, r, k)
	BEGIN
			IF(r = '0') THEN
				q_temp <= '0';
			ELSIF(s = '0') THEN
				q_temp <= '1';
			ELSE
				q_temp <= q_temp;
			END IF;
--	END PROCESS;
--	PROCESS(k, j)
--	BEGIN
			IF(k = '1') THEN
				q <= '0';
				qi <= '1';
			ELSIF(j = '1') THEN
				q <= '1';
				qi <= '0';				
			ELSE
				q <= q_temp;
				qi <= NOT q_temp;
			END IF;
    END PROCESS;
END behav;
