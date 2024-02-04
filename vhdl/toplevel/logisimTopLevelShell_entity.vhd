--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : final2                                                       ==
--== Component : logisimTopLevelShell                                         ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY logisimTopLevelShell IS
   PORT ( fpgaGlobalClock      : IN  std_logic;
          n_But_0              : IN  std_logic;
          n_reset_0            : IN  std_logic;
          externalLeds0        : OUT std_logic_vector( 107 DOWNTO 0 );
          n_Disp0_DecimalPoint : OUT std_logic;
          n_Disp0_Segment_A    : OUT std_logic;
          n_Disp0_Segment_B    : OUT std_logic;
          n_Disp0_Segment_C    : OUT std_logic;
          n_Disp0_Segment_D    : OUT std_logic;
          n_Disp0_Segment_E    : OUT std_logic;
          n_Disp0_Segment_F    : OUT std_logic;
          n_Disp0_Segment_G    : OUT std_logic;
          n_Disp1_DecimalPoint : OUT std_logic;
          n_Disp1_Segment_A    : OUT std_logic;
          n_Disp1_Segment_B    : OUT std_logic;
          n_Disp1_Segment_C    : OUT std_logic;
          n_Disp1_Segment_D    : OUT std_logic;
          n_Disp1_Segment_E    : OUT std_logic;
          n_Disp1_Segment_F    : OUT std_logic;
          n_Disp1_Segment_G    : OUT std_logic;
          n_Disp2_DecimalPoint : OUT std_logic;
          n_Disp2_Segment_A    : OUT std_logic;
          n_Disp2_Segment_B    : OUT std_logic;
          n_Disp2_Segment_C    : OUT std_logic;
          n_Disp2_Segment_D    : OUT std_logic;
          n_Disp2_Segment_E    : OUT std_logic;
          n_Disp2_Segment_F    : OUT std_logic;
          n_Disp2_Segment_G    : OUT std_logic );
END ENTITY logisimTopLevelShell;
