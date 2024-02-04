--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : final2                                                       ==
--== Component : disp_interface                                               ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY disp_interface IS
   PORT ( a_in              : IN  std_logic;
          b_in              : IN  std_logic;
          c_in              : IN  std_logic;
          d_in              : IN  std_logic;
          e_in              : IN  std_logic;
          f_in              : IN  std_logic;
          g_in              : IN  std_logic;
          logisimClockTree0 : IN  std_logic_vector( 4 DOWNTO 0 );
          p_in              : IN  std_logic;
          a_out             : OUT std_logic;
          b_out             : OUT std_logic;
          c_out             : OUT std_logic;
          d_out             : OUT std_logic;
          e_out             : OUT std_logic;
          f_out             : OUT std_logic;
          g_out             : OUT std_logic;
          p_out             : OUT std_logic );
END ENTITY disp_interface;
