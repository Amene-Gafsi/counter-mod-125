--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : final2                                                       ==
--== Component : FSMtrans                                                     ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY FSMtrans IS
   PORT ( but               : IN  std_logic;
          c                 : IN  std_logic_vector( 2 DOWNTO 0 );
          logisimClockTree0 : IN  std_logic_vector( 4 DOWNTO 0 );
          D                 : OUT std_logic_vector( 2 DOWNTO 0 );
          p3                : OUT std_logic );
END ENTITY FSMtrans;
