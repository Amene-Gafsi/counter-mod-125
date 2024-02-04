--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : final2                                                       ==
--== Component : FSM3                                                         ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY FSM3 IS
   PORT ( a                 : IN  std_logic_vector( 2 DOWNTO 0 );
          button            : IN  std_logic;
          clock             : IN  std_logic;
          fs1               : IN  std_logic;
          logisimClockTree0 : IN  std_logic_vector( 4 DOWNTO 0 );
          reset             : IN  std_logic;
          fi                : OUT std_logic_vector( 2 DOWNTO 0 );
          zer               : OUT std_logic );
END ENTITY FSM3;
