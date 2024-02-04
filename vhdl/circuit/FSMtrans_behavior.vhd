--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : final2                                                       ==
--== Component : FSMtrans                                                     ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF FSMtrans IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT AND_GATE_3_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT AND_GATE_4_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                input4 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT AND_GATE
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT OR_GATE_3_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT OR_GATE
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT OR_GATE_4_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                input4 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus17 : std_logic_vector( 2 DOWNTO 0 );
   SIGNAL s_logisimBus25 : std_logic_vector( 2 DOWNTO 0 );
   SIGNAL s_logisimNet0  : std_logic;
   SIGNAL s_logisimNet1  : std_logic;
   SIGNAL s_logisimNet10 : std_logic;
   SIGNAL s_logisimNet11 : std_logic;
   SIGNAL s_logisimNet12 : std_logic;
   SIGNAL s_logisimNet13 : std_logic;
   SIGNAL s_logisimNet14 : std_logic;
   SIGNAL s_logisimNet15 : std_logic;
   SIGNAL s_logisimNet16 : std_logic;
   SIGNAL s_logisimNet18 : std_logic;
   SIGNAL s_logisimNet19 : std_logic;
   SIGNAL s_logisimNet2  : std_logic;
   SIGNAL s_logisimNet20 : std_logic;
   SIGNAL s_logisimNet21 : std_logic;
   SIGNAL s_logisimNet22 : std_logic;
   SIGNAL s_logisimNet23 : std_logic;
   SIGNAL s_logisimNet24 : std_logic;
   SIGNAL s_logisimNet26 : std_logic;
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
   s_logisimBus25(2 DOWNTO 0) <= c;
   s_logisimNet2              <= but;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   D  <= s_logisimBus17(2 DOWNTO 0);
   p3 <= s_logisimNet21;

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Porte NOT
   s_logisimNet11 <=  NOT s_logisimBus25(1);

   -- Porte NOT
   s_logisimNet3 <=  NOT s_logisimBus25(0);

   -- Porte NOT
   s_logisimNet12 <=  NOT s_logisimNet2;

   -- Porte NOT
   s_logisimNet1 <=  NOT s_logisimBus25(2);

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet1,
                 input2 => s_logisimNet11,
                 input3 => s_logisimBus25(0),
                 result => s_logisimNet23 );

   GATES_2 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet1,
                 input2 => s_logisimBus25(0),
                 input3 => s_logisimNet2,
                 result => s_logisimNet13 );

   GATES_3 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet1,
                 input2 => s_logisimBus25(1),
                 input3 => s_logisimNet3,
                 input4 => s_logisimNet12,
                 result => s_logisimNet15 );

   GATES_4 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet1,
                 input2 => s_logisimBus25(0),
                 input3 => s_logisimNet12,
                 result => s_logisimNet24 );

   GATES_5 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet1,
                 input2 => s_logisimBus25(1),
                 input3 => s_logisimNet2,
                 result => s_logisimNet5 );

   GATES_6 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimBus25(2),
                 input2 => s_logisimNet11,
                 input3 => s_logisimNet3,
                 input4 => s_logisimNet2,
                 result => s_logisimNet6 );

   GATES_7 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimBus25(2),
                 input2 => s_logisimBus25(1),
                 input3 => s_logisimNet3,
                 input4 => s_logisimNet12,
                 result => s_logisimNet22 );

   GATES_8 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet1,
                 input2 => s_logisimNet11,
                 input3 => s_logisimNet3,
                 result => s_logisimNet18 );

   GATES_9 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimBus25(1),
                 input2 => s_logisimNet3,
                 input3 => s_logisimNet2,
                 result => s_logisimNet4 );

   GATES_10 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimBus25(2),
                 input2 => s_logisimNet12,
                 result => s_logisimNet16 );

   GATES_11 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimBus25(2),
                 input2 => s_logisimBus25(0),
                 result => s_logisimNet19 );

   GATES_12 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet1,
                 input2 => s_logisimNet11,
                 input3 => s_logisimBus25(0),
                 input4 => s_logisimNet12,
                 result => s_logisimNet7 );

   GATES_13 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimBus25(2),
                 input2 => s_logisimBus25(1),
                 input3 => s_logisimNet3,
                 input4 => s_logisimNet2,
                 result => s_logisimNet9 );

   GATES_14 : OR_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet23,
                 input2 => s_logisimNet13,
                 input3 => s_logisimNet15,
                 result => s_logisimBus17(2) );

   GATES_15 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet7,
                 input2 => s_logisimNet9,
                 result => s_logisimNet21 );

   GATES_16 : OR_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet24,
                 input2 => s_logisimNet5,
                 input3 => s_logisimNet6,
                 input4 => s_logisimNet22,
                 result => s_logisimBus17(1) );

   GATES_17 : OR_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet18,
                 input2 => s_logisimNet4,
                 input3 => s_logisimNet16,
                 input4 => s_logisimNet19,
                 result => s_logisimBus17(0) );


END platformIndependent;
