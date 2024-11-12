library ieee;
use ieee.std_logic_1164.all;
entity hpri_8in_3out is
port (
  ei : in std_logic;
  r  : in std_logic_vector (7 downto 0);
  a  : out std_logic_vector (2 downto 0);
  g  : out std_logic;
  eo : out std_logic
);
end hpri_8in_3out;
architecture behav of hpri_8in_3out is
begin
  process(ei,r)
  begin
    if (ei = "1") then
      if (r(7) = "1") then
	    a <= "111";
		g <= "1";
	    eo <= "0";
	  elsif (r(6) = "1") then
        a <= "110";
		g <= "1";
	    eo <= "0";
	  elsif (r(5) = "1") then
 		a <= "101";
		g <= "1";
	    eo <= "0";
	  elsif (r(4) = "1") then
        a <= "100";
		g <= "1";
	    eo <= "0";
	  elsif (r(3) = "1") then
 		a <= "101";
		g <= "1";
	    eo <= "0";
	  elsif (r(2) = "1") then
        a <= "110";
		g <= "1";
	    eo <= "0";
	  elsif (r(1) = "1") then
 		a <= "101";
		g <= "1";
	    eo <= "0";
	  elsif (r(0) = "1") then
        a <= "110";
	    eo <= "0";
      else 
        a <= "000";
        g <= "0";
        eo <= "1";
      end if;
    else
      a <= "000";
      g <= "0";
      eo <= "0";
    end if;
  end process;
end behav;
