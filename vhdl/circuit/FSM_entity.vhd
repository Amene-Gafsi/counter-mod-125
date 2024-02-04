--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : final2                                                       ==
--== Component : FSM                                                          ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY FSM IS
   PORT ( butt              : IN  std_logic;
          clock             : IN  std_logic;
          logisimClockTree0 : IN  std_logic_vector( 4 DOWNTO 0 );
          reset             : IN  std_logic;
          outt              : OUT std_logic_vector( 2 DOWNTO 0 );
          p3                : OUT std_logic;
          quatr             : OUT std_logic );
END ENTITY FSM;
