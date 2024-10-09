LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY jk_rstrig_vhdl IS
PORT (
	s : IN std_logic;
	j : IN std_logic;
	
	r : IN std_logic;
	k : IN std_logic;

	q  : OUT std_logic;
	qi : OUT std_logic
);
END jk_rstrig_vhdl;

ARCHITECTURE behav OF jk_rstrig_vhdl IS
SIGNAL q_s,qi_s:std_logic := '0';
BEGIN
	PROCESS(s, j)
	BEGIN
        IF (s = '1') THEN
            q_s <= '1';
            qi_s <= '0';
        ELSIF (r = '1') THEN
            q_s <= '0';
            qi_s <= '1';
        ELSIF (j'event AND j = '1' AND k = '0') THEN
            q_s <= '1';
            qi_s <= '0';
        ELSIF (k'event AND k = '1' AND j = '0') THEN
            q_s <= '0';
            qi_s <= '1';
        ELSIF (j'event AND j = '1' AND k'event AND k = '1') THEN
            q_s <= NOT q_s;
            qi_s <= NOT qi_s;
        END IF;	END PROCESS;
q <= q_s;
qi <= qi_s;
END behav;
