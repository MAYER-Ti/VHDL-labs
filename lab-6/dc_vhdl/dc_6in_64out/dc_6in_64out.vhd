library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity dc_6in_64out is
port ( 
  en : IN std_logic;
  a  : IN std_logic_vector (5 downto 0);
  q  : OUT std_logic_vector (63 downto 0)
);
end dc_6in_64out;
architecture behav of dc_6in_64out is
  component dc_3in_8out
    port (
   	  eni : IN std_logic;
      ai  : IN std_logic_vector (2 downto 0);
	  qi  : OUT std_logic_vector (7 downto 0); 
    );
  signal nota : std_logic_vector (5 downto 0);
  end component;
begin
  
end behav;
