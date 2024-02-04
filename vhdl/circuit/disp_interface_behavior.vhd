--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : final2                                                       ==
--== Component : disp_interface                                               ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF disp_interface IS 

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimNet0  : std_logic;
   SIGNAL s_logisimNet1  : std_logic;
   SIGNAL s_logisimNet10 : std_logic;
   SIGNAL s_logisimNet11 : std_logic;
   SIGNAL s_logisimNet12 : std_logic;
   SIGNAL s_logisimNet13 : std_logic;
   SIGNAL s_logisimNet14 : std_logic;
   SIGNAL s_logisimNet15 : std_logic;
   SIGNAL s_logisimNet2  : std_logic;
   SIGNAL s_logisimNet3  : std_logic;
   SIGNAL s_logisimNet4  : std_logic;
   SIGNAL s_logisimNet5  : std_logic;
   SIGNAL s_logisimNet6  : std_logic;
   SIGNAL s_logisimNet7  : std_logic;
   SIGNAL s_logisimNet8  : std_logic;
   SIGNAL s_logisimNet9  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimNet1  <= a_in;
   s_logisimNet11 <= f_in;
   s_logisimNet13 <= g_in;
   s_logisimNet15 <= p_in;
   s_logisimNet3  <= b_in;
   s_logisimNet5  <= c_in;
   s_logisimNet7  <= d_in;
   s_logisimNet9  <= e_in;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   a_out <= s_logisimNet0;
   b_out <= s_logisimNet2;
   c_out <= s_logisimNet4;
   d_out <= s_logisimNet6;
   e_out <= s_logisimNet8;
   f_out <= s_logisimNet10;
   g_out <= s_logisimNet12;
   p_out <= s_logisimNet14;

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Porte NOT
   s_logisimNet0 <=  NOT s_logisimNet1;

   -- Porte NOT
   s_logisimNet2 <=  NOT s_logisimNet3;

   -- Porte NOT
   s_logisimNet4 <=  NOT s_logisimNet5;

   -- Porte NOT
   s_logisimNet6 <=  NOT s_logisimNet7;

   -- Porte NOT
   s_logisimNet8 <=  NOT s_logisimNet9;

   -- Porte NOT
   s_logisimNet10 <=  NOT s_logisimNet11;

   -- Porte NOT
   s_logisimNet12 <=  NOT s_logisimNet13;

   -- Porte NOT
   s_logisimNet14 <=  NOT s_logisimNet15;

END platformIndependent;
