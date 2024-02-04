--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : final2                                                       ==
--== Component : counter1                                                     ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY counter1 IS
   PORT ( A                 : IN  std_logic_vector( 2 DOWNTO 0 );
          logisimClockTree0 : IN  std_logic_vector( 4 DOWNTO 0 );
          b                 : OUT std_logic;
          c                 : OUT std_logic;
          d                 : OUT std_logic;
          e                 : OUT std_logic;
          f                 : OUT std_logic;
          g                 : OUT std_logic;
          x                 : OUT std_logic );
END ENTITY counter1;
