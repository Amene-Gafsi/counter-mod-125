--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : final2                                                       ==
--== Component : FSMtrans2                                                    ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF FSMtrans2 IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT AND_GATE_5_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                input4 : IN  std_logic;
                input5 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT AND_GATE_3_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT AND_GATE_6_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                input4 : IN  std_logic;
                input5 : IN  std_logic;
                input6 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT AND_GATE_7_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                input4 : IN  std_logic;
                input5 : IN  std_logic;
                input6 : IN  std_logic;
                input7 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT AND_GATE
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT OR_GATE_11_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1  : IN  std_logic;
                input10 : IN  std_logic;
                input11 : IN  std_logic;
                input2  : IN  std_logic;
                input3  : IN  std_logic;
                input4  : IN  std_logic;
                input5  : IN  std_logic;
                input6  : IN  std_logic;
                input7  : IN  std_logic;
                input8  : IN  std_logic;
                input9  : IN  std_logic;
                result  : OUT std_logic );
      END COMPONENT;

      COMPONENT OR_GATE_10_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1  : IN  std_logic;
                input10 : IN  std_logic;
                input2  : IN  std_logic;
                input3  : IN  std_logic;
                input4  : IN  std_logic;
                input5  : IN  std_logic;
                input6  : IN  std_logic;
                input7  : IN  std_logic;
                input8  : IN  std_logic;
                input9  : IN  std_logic;
                result  : OUT std_logic );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus38 : std_logic_vector( 2 DOWNTO 0 );
   SIGNAL s_logisimBus41 : std_logic_vector( 2 DOWNTO 0 );
   SIGNAL s_logisimBus42 : std_logic_vector( 2 DOWNTO 0 );
   SIGNAL s_logisimNet0  : std_logic;
   SIGNAL s_logisimNet1  : std_logic;
   SIGNAL s_logisimNet10 : std_logic;
   SIGNAL s_logisimNet11 : std_logic;
   SIGNAL s_logisimNet12 : std_logic;
   SIGNAL s_logisimNet13 : std_logic;
   SIGNAL s_logisimNet14 : std_logic;
   SIGNAL s_logisimNet15 : std_logic;
   SIGNAL s_logisimNet16 : std_logic;
   SIGNAL s_logisimNet17 : std_logic;
   SIGNAL s_logisimNet18 : std_logic;
   SIGNAL s_logisimNet19 : std_logic;
   SIGNAL s_logisimNet2  : std_logic;
   SIGNAL s_logisimNet20 : std_logic;
   SIGNAL s_logisimNet21 : std_logic;
   SIGNAL s_logisimNet22 : std_logic;
   SIGNAL s_logisimNet23 : std_logic;
   SIGNAL s_logisimNet24 : std_logic;
   SIGNAL s_logisimNet25 : std_logic;
   SIGNAL s_logisimNet26 : std_logic;
   SIGNAL s_logisimNet27 : std_logic;
   SIGNAL s_logisimNet28 : std_logic;
   SIGNAL s_logisimNet29 : std_logic;
   SIGNAL s_logisimNet3  : std_logic;
   SIGNAL s_logisimNet30 : std_logic;
   SIGNAL s_logisimNet31 : std_logic;
   SIGNAL s_logisimNet32 : std_logic;
   SIGNAL s_logisimNet33 : std_logic;
   SIGNAL s_logisimNet34 : std_logic;
   SIGNAL s_logisimNet35 : std_logic;
   SIGNAL s_logisimNet36 : std_logic;
   SIGNAL s_logisimNet37 : std_logic;
   SIGNAL s_logisimNet39 : std_logic;
   SIGNAL s_logisimNet4  : std_logic;
   SIGNAL s_logisimNet40 : std_logic;
   SIGNAL s_logisimNet43 : std_logic;
   SIGNAL s_logisimNet44 : std_logic;
   SIGNAL s_logisimNet45 : std_logic;
   SIGNAL s_logisimNet46 : std_logic;
   SIGNAL s_logisimNet47 : std_logic;
   SIGNAL s_logisimNet48 : std_logic;
   SIGNAL s_logisimNet49 : std_logic;
   SIGNAL s_logisimNet5  : std_logic;
   SIGNAL s_logisimNet50 : std_logic;
   SIGNAL s_logisimNet51 : std_logic;
   SIGNAL s_logisimNet6  : std_logic;
   SIGNAL s_logisimNet7  : std_logic;
   SIGNAL s_logisimNet8  : std_logic;
   SIGNAL s_logisimNet9  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimBus38(2 DOWNTO 0) <= a;
   s_logisimBus41(2 DOWNTO 0) <= b;
   s_logisimNet18             <= button;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   c <= s_logisimBus42(2 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Porte NOT
   s_logisimNet10 <=  NOT s_logisimBus38(2);

   -- Porte NOT
   s_logisimNet27 <=  NOT s_logisimBus38(1);

   -- Porte NOT
   s_logisimNet7 <=  NOT s_logisimBus38(0);

   -- Porte NOT
   s_logisimNet19 <=  NOT s_logisimBus41(2);

   -- Porte NOT
   s_logisimNet3 <=  NOT s_logisimBus41(1);

   -- Porte NOT
   s_logisimNet4 <=  NOT s_logisimBus41(0);

   -- Porte NOT
   s_logisimNet14 <=  NOT s_logisimNet18;

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimBus38(2),
                 input2 => s_logisimBus38(1),
                 input3 => s_logisimNet7,
                 input4 => s_logisimBus41(0),
                 input5 => s_logisimNet18,
                 result => s_logisimNet47 );

   GATES_2 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet27,
                 input2 => s_logisimNet7,
                 input3 => s_logisimBus41(1),
                 result => s_logisimNet34 );

   GATES_3 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet10,
                 input2 => s_logisimBus41(1),
                 input3 => s_logisimNet18,
                 result => s_logisimNet46 );

   GATES_4 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet27,
                 input2 => s_logisimBus41(1),
                 input3 => s_logisimNet18,
                 result => s_logisimNet36 );

   GATES_5 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet19,
                 input2 => s_logisimBus41(1),
                 input3 => s_logisimNet18,
                 result => s_logisimNet21 );

   GATES_6 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimBus41(1),
                 input2 => s_logisimBus41(0),
                 input3 => s_logisimNet14,
                 result => s_logisimNet8 );

   GATES_7 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet10,
                 input2 => s_logisimBus41(2),
                 input3 => s_logisimBus41(1),
                 result => s_logisimNet17 );

   GATES_8 : AND_GATE_6_INPUTS
      GENERIC MAP ( BubblesMask => "00"&X"0" )
      PORT MAP ( input1 => s_logisimNet10,
                 input2 => s_logisimNet27,
                 input3 => s_logisimBus38(0),
                 input4 => s_logisimNet19,
                 input5 => s_logisimBus41(0),
                 input6 => s_logisimNet14,
                 result => s_logisimNet35 );

   GATES_9 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimBus38(0),
                 input2 => s_logisimBus41(1),
                 input3 => s_logisimNet18,
                 result => s_logisimNet49 );

   GATES_10 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet10,
                 input2 => s_logisimBus38(1),
                 input3 => s_logisimBus41(1),
                 result => s_logisimNet9 );

   GATES_11 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimBus38(2),
                 input2 => s_logisimBus41(1),
                 input3 => s_logisimNet14,
                 result => s_logisimNet0 );

   GATES_12 : AND_GATE_7_INPUTS
      GENERIC MAP ( BubblesMask => "000"&X"0" )
      PORT MAP ( input1 => s_logisimBus38(2),
                 input2 => s_logisimBus38(1),
                 input3 => s_logisimNet7,
                 input4 => s_logisimBus41(2),
                 input5 => s_logisimNet3,
                 input6 => s_logisimNet4,
                 input7 => s_logisimNet18,
                 result => s_logisimNet23 );

   GATES_13 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet10,
                 input2 => s_logisimNet27,
                 input3 => s_logisimNet7,
                 input4 => s_logisimNet19,
                 input5 => s_logisimNet3,
                 result => s_logisimNet33 );

   GATES_14 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet10,
                 input2 => s_logisimNet7,
                 input3 => s_logisimBus41(0),
                 result => s_logisimNet43 );

   GATES_15 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet27,
                 input2 => s_logisimNet7,
                 input3 => s_logisimBus41(0),
                 result => s_logisimNet32 );

   GATES_16 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet27,
                 input2 => s_logisimBus41(0),
                 input3 => s_logisimNet18,
                 result => s_logisimNet45 );

   GATES_17 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimBus38(0),
                 input2 => s_logisimBus41(0),
                 input3 => s_logisimNet18,
                 result => s_logisimNet44 );

   GATES_18 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet10,
                 input2 => s_logisimNet27,
                 input3 => s_logisimBus38(0),
                 input4 => s_logisimBus41(2),
                 input5 => s_logisimNet14,
                 result => s_logisimNet11 );

   GATES_19 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimBus38(1),
                 input2 => s_logisimBus41(0),
                 input3 => s_logisimNet14,
                 result => s_logisimNet6 );

   GATES_20 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimBus38(1),
                 input2 => s_logisimBus38(0),
                 input3 => s_logisimBus41(0),
                 result => s_logisimNet29 );

   GATES_21 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimBus38(2),
                 input2 => s_logisimBus38(0),
                 input3 => s_logisimBus41(0),
                 result => s_logisimNet37 );

   GATES_22 : AND_GATE_6_INPUTS
      GENERIC MAP ( BubblesMask => "00"&X"0" )
      PORT MAP ( input1 => s_logisimBus38(2),
                 input2 => s_logisimBus38(1),
                 input3 => s_logisimNet7,
                 input4 => s_logisimBus41(1),
                 input5 => s_logisimNet4,
                 input6 => s_logisimNet18,
                 result => s_logisimNet28 );

   GATES_23 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet10,
                 input2 => s_logisimNet7,
                 input3 => s_logisimBus41(2),
                 result => s_logisimNet20 );

   GATES_24 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet27,
                 input2 => s_logisimBus41(2),
                 input3 => s_logisimNet18,
                 result => s_logisimNet39 );

   GATES_25 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimBus41(2),
                 input2 => s_logisimBus41(0),
                 result => s_logisimNet25 );

   GATES_26 : AND_GATE_6_INPUTS
      GENERIC MAP ( BubblesMask => "00"&X"0" )
      PORT MAP ( input1 => s_logisimNet10,
                 input2 => s_logisimNet27,
                 input3 => s_logisimBus38(0),
                 input4 => s_logisimNet3,
                 input5 => s_logisimBus41(0),
                 input6 => s_logisimNet14,
                 result => s_logisimNet5 );

   GATES_27 : AND_GATE_7_INPUTS
      GENERIC MAP ( BubblesMask => "000"&X"0" )
      PORT MAP ( input1 => s_logisimNet10,
                 input2 => s_logisimNet27,
                 input3 => s_logisimBus38(0),
                 input4 => s_logisimNet19,
                 input5 => s_logisimBus41(1),
                 input6 => s_logisimNet4,
                 input7 => s_logisimNet14,
                 result => s_logisimNet48 );

   GATES_28 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimBus38(0),
                 input2 => s_logisimBus41(2),
                 input3 => s_logisimNet18,
                 result => s_logisimNet51 );

   GATES_29 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet10,
                 input2 => s_logisimBus38(1),
                 input3 => s_logisimBus41(2),
                 result => s_logisimNet22 );

   GATES_30 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimBus38(2),
                 input2 => s_logisimBus41(2),
                 input3 => s_logisimNet14,
                 result => s_logisimNet31 );

   GATES_31 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimBus38(2),
                 input2 => s_logisimBus38(0),
                 input3 => s_logisimBus41(2),
                 result => s_logisimNet50 );

   GATES_32 : AND_GATE_6_INPUTS
      GENERIC MAP ( BubblesMask => "00"&X"0" )
      PORT MAP ( input1 => s_logisimBus38(2),
                 input2 => s_logisimBus38(1),
                 input3 => s_logisimNet7,
                 input4 => s_logisimNet19,
                 input5 => s_logisimNet3,
                 input6 => s_logisimNet18,
                 result => s_logisimNet40 );

   GATES_33 : OR_GATE_11_INPUTS
      GENERIC MAP ( BubblesMask => "000"&X"00" )
      PORT MAP ( input1  => s_logisimNet34,
                 input10 => s_logisimNet0,
                 input11 => s_logisimNet23,
                 input2  => s_logisimNet46,
                 input3  => s_logisimNet36,
                 input4  => s_logisimNet21,
                 input5  => s_logisimNet8,
                 input6  => s_logisimNet17,
                 input7  => s_logisimNet35,
                 input8  => s_logisimNet49,
                 input9  => s_logisimNet9,
                 result  => s_logisimBus42(1) );

   GATES_34 : OR_GATE_10_INPUTS
      GENERIC MAP ( BubblesMask => "00"&X"00" )
      PORT MAP ( input1  => s_logisimNet33,
                 input10 => s_logisimNet28,
                 input2  => s_logisimNet43,
                 input3  => s_logisimNet32,
                 input4  => s_logisimNet45,
                 input5  => s_logisimNet44,
                 input6  => s_logisimNet11,
                 input7  => s_logisimNet6,
                 input8  => s_logisimNet29,
                 input9  => s_logisimNet37,
                 result  => s_logisimBus42(0) );

   GATES_35 : OR_GATE_11_INPUTS
      GENERIC MAP ( BubblesMask => "000"&X"00" )
      PORT MAP ( input1  => s_logisimNet20,
                 input10 => s_logisimNet40,
                 input11 => s_logisimNet47,
                 input2  => s_logisimNet39,
                 input3  => s_logisimNet25,
                 input4  => s_logisimNet5,
                 input5  => s_logisimNet48,
                 input6  => s_logisimNet51,
                 input7  => s_logisimNet22,
                 input8  => s_logisimNet31,
                 input9  => s_logisimNet50,
                 result  => s_logisimBus42(2) );


END platformIndependent;
