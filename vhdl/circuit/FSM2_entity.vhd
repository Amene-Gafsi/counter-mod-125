--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : final2                                                       ==
--== Component : FSM2                                                         ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY FSM2 IS
   PORT ( but               : IN  std_logic;
          clock             : IN  std_logic;
          f1                : IN  std_logic_vector( 2 DOWNTO 0 );
          logisimClockTree0 : IN  std_logic_vector( 4 DOWNTO 0 );
          reset             : IN  std_logic;
          deux              : OUT std_logic;
          final             : OUT std_logic_vector( 2 DOWNTO 0 ) );
END ENTITY FSM2;
