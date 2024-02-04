--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : final2                                                       ==
--== Component : FSMtrans2                                                    ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY FSMtrans2 IS
   PORT ( a                 : IN  std_logic_vector( 2 DOWNTO 0 );
          b                 : IN  std_logic_vector( 2 DOWNTO 0 );
          button            : IN  std_logic;
          logisimClockTree0 : IN  std_logic_vector( 4 DOWNTO 0 );
          c                 : OUT std_logic_vector( 2 DOWNTO 0 ) );
END ENTITY FSMtrans2;
