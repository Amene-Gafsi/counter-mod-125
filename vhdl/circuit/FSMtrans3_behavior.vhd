--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : final2                                                       ==
--== Component : FSMtrans3                                                    ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF FSMtrans3 IS 

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

      COMPONENT AND_GATE_4_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                input4 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT AND_GATE_8_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                input4 : IN  std_logic;
                input5 : IN  std_logic;
                input6 : IN  std_logic;
                input7 : IN  std_logic;
                input8 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT AND_GATE_5_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                input4 : IN  std_logic;
                input5 : IN  std_logic;
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

      COMPONENT OR_GATE_13_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1  : IN  std_logic;
                input10 : IN  std_logic;
                input11 : IN  std_logic;
                input12 : IN  std_logic;
                input13 : IN  std_logic;
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
   SIGNAL s_logisimBus24 : std_logic_vector( 2 DOWNTO 0 );
   SIGNAL s_logisimBus32 : std_logic_vector( 2 DOWNTO 0 );
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
   SIGNAL s_logisimNet25 : std_logic;
   SIGNAL s_logisimNet26 : std_logic;
   SIGNAL s_logisimNet27 : std_logic;
   SIGNAL s_logisimNet28 : std_logic;
   SIGNAL s_logisimNet29 : std_logic;
   SIGNAL s_logisimNet3  : std_logic;
   SIGNAL s_logisimNet30 : std_logic;
   SIGNAL s_logisimNet31 : std_logic;
   SIGNAL s_logisimNet33 : std_logic;
   SIGNAL s_logisimNet34 : std_logic;
   SIGNAL s_logisimNet35 : std_logic;
   SIGNAL s_logisimNet36 : std_logic;
   SIGNAL s_logisimNet37 : std_logic;
   SIGNAL s_logisimNet38 : std_logic;
   SIGNAL s_logisimNet39 : std_logic;
   SIGNAL s_logisimNet4  : std_logic;
   SIGNAL s_logisimNet40 : std_logic;
   SIGNAL s_logisimNet41 : std_logic;
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
   SIGNAL s_logisimNet52 : std_logic;
   SIGNAL s_logisimNet53 : std_logic;
   SIGNAL s_logisimNet54 : std_logic;
   SIGNAL s_logisimNet55 : std_logic;
   SIGNAL s_logisimNet56 : std_logic;
   SIGNAL s_logisimNet57 : std_logic;
   SIGNAL s_logisimNet58 : std_logic;
   SIGNAL s_logisimNet6  : std_logic;
   SIGNAL s_logisimNet7  : std_logic;
   SIGNAL s_logisimNet8  : std_logic;
   SIGNAL s_logisimNet9  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimBus24(2 DOWNTO 0) <= a;
   s_logisimBus42(2 DOWNTO 0) <= b;
   s_logisimNet12             <= but;
   s_logisimNet30             <= fs1;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   c <= s_logisimBus32(2 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Porte NOT
   s_logisimNet10 <=  NOT s_logisimBus24(2);

   -- Porte NOT
   s_logisimNet23 <=  NOT s_logisimBus24(1);

   -- Porte NOT
   s_logisimNet17 <=  NOT s_logisimBus24(0);

   -- Porte NOT
   s_logisimNet13 <=  NOT s_logisimBus42(2);

   -- Porte NOT
   s_logisimNet1 <=  NOT s_logisimBus42(1);

   -- Porte NOT
   s_logisimNet0 <=  NOT s_logisimBus42(0);

   -- Porte NOT
   s_logisimNet34 <=  NOT s_logisimNet30;

   -- Porte NOT
   s_logisimNet11 <=  NOT s_logisimNet12;

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimBus24(2),
                 input2 => s_logisimBus24(0),
                 input3 => s_logisimBus42(2),
                 result => s_logisimNet19 );

   GATES_2 : AND_GATE_7_INPUTS
      GENERIC MAP ( BubblesMask => "000"&X"0" )
      PORT MAP ( input1 => s_logisimBus24(2),
                 input2 => s_logisimBus24(1),
                 input3 => s_logisimNet17,
                 input4 => s_logisimNet13,
                 input5 => s_logisimNet1,
                 input6 => s_logisimNet0,
                 input7 => s_logisimNet30,
                 result => s_logisimNet46 );

   GATES_3 : AND_GATE_6_INPUTS
      GENERIC MAP ( BubblesMask => "00"&X"0" )
      PORT MAP ( input1 => s_logisimBus24(2),
                 input2 => s_logisimBus24(1),
                 input3 => s_logisimNet17,
                 input4 => s_logisimBus42(0),
                 input5 => s_logisimNet30,
                 input6 => s_logisimNet12,
                 result => s_logisimNet25 );

   GATES_4 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet17,
                 input2 => s_logisimNet13,
                 input3 => s_logisimBus42(1),
                 result => s_logisimNet37 );

   GATES_5 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimBus42(1),
                 input2 => s_logisimNet0,
                 input3 => s_logisimNet34,
                 result => s_logisimNet28 );

   GATES_6 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet13,
                 input2 => s_logisimBus42(1),
                 input3 => s_logisimNet12,
                 result => s_logisimNet29 );

   GATES_7 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet23,
                 input2 => s_logisimBus42(1),
                 input3 => s_logisimBus42(0),
                 result => s_logisimNet20 );

   GATES_8 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet13,
                 input2 => s_logisimBus42(1),
                 input3 => s_logisimBus42(0),
                 result => s_logisimNet7 );

   GATES_9 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet23,
                 input2 => s_logisimBus42(2),
                 input3 => s_logisimBus42(1),
                 result => s_logisimNet31 );

   GATES_10 : AND_GATE_7_INPUTS
      GENERIC MAP ( BubblesMask => "000"&X"0" )
      PORT MAP ( input1 => s_logisimNet10,
                 input2 => s_logisimNet23,
                 input3 => s_logisimBus24(0),
                 input4 => s_logisimNet13,
                 input5 => s_logisimBus42(0),
                 input6 => s_logisimNet30,
                 input7 => s_logisimNet11,
                 result => s_logisimNet50 );

   GATES_11 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimBus24(0),
                 input2 => s_logisimBus42(1),
                 input3 => s_logisimNet34,
                 result => s_logisimNet51 );

   GATES_12 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet10,
                 input2 => s_logisimBus24(1),
                 input3 => s_logisimBus42(1),
                 result => s_logisimNet36 );

   GATES_13 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimBus24(1),
                 input2 => s_logisimBus42(1),
                 input3 => s_logisimNet0,
                 input4 => s_logisimNet11,
                 result => s_logisimNet56 );

   GATES_14 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimBus24(2),
                 input2 => s_logisimNet23,
                 input3 => s_logisimBus42(1),
                 result => s_logisimNet57 );

   GATES_15 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimBus24(2),
                 input2 => s_logisimBus24(0),
                 input3 => s_logisimBus42(1),
                 result => s_logisimNet44 );

   GATES_16 : AND_GATE_8_INPUTS
      GENERIC MAP ( BubblesMask => X"00" )
      PORT MAP ( input1 => s_logisimBus24(2),
                 input2 => s_logisimBus24(1),
                 input3 => s_logisimNet17,
                 input4 => s_logisimBus42(2),
                 input5 => s_logisimNet1,
                 input6 => s_logisimNet0,
                 input7 => s_logisimNet30,
                 input8 => s_logisimNet12,
                 result => s_logisimNet9 );

   GATES_17 : AND_GATE_5_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"0" )
      PORT MAP ( input1 => s_logisimNet10,
                 input2 => s_logisimNet23,
                 input3 => s_logisimNet17,
                 input4 => s_logisimNet13,
                 input5 => s_logisimNet1,
                 result => s_logisimNet8 );

   GATES_18 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet23,
                 input2 => s_logisimNet17,
                 input3 => s_logisimBus42(0),
                 result => s_logisimNet52 );

   GATES_19 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet13,
                 input2 => s_logisimBus42(0),
                 input3 => s_logisimNet34,
                 result => s_logisimNet47 );

   GATES_20 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet1,
                 input2 => s_logisimBus42(0),
                 input3 => s_logisimNet34,
                 input4 => s_logisimNet11,
                 result => s_logisimNet43 );

   GATES_21 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet23,
                 input2 => s_logisimBus42(0),
                 input3 => s_logisimNet12,
                 result => s_logisimNet58 );

   GATES_22 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimBus24(0),
                 input2 => s_logisimBus42(0),
                 input3 => s_logisimNet34,
                 result => s_logisimNet38 );

   GATES_23 : AND_GATE_6_INPUTS
      GENERIC MAP ( BubblesMask => "00"&X"0" )
      PORT MAP ( input1 => s_logisimNet10,
                 input2 => s_logisimNet23,
                 input3 => s_logisimBus24(0),
                 input4 => s_logisimBus42(2),
                 input5 => s_logisimNet30,
                 input6 => s_logisimNet11,
                 result => s_logisimNet45 );

   GATES_24 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet10,
                 input2 => s_logisimBus24(1),
                 input3 => s_logisimBus42(0),
                 result => s_logisimNet21 );

   GATES_25 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimBus24(1),
                 input2 => s_logisimNet13,
                 input3 => s_logisimBus42(0),
                 input4 => s_logisimNet11,
                 result => s_logisimNet40 );

   GATES_26 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimBus24(2),
                 input2 => s_logisimBus24(0),
                 input3 => s_logisimBus42(0),
                 result => s_logisimNet49 );

   GATES_27 : AND_GATE_7_INPUTS
      GENERIC MAP ( BubblesMask => "000"&X"0" )
      PORT MAP ( input1 => s_logisimBus24(2),
                 input2 => s_logisimBus24(1),
                 input3 => s_logisimNet17,
                 input4 => s_logisimBus42(1),
                 input5 => s_logisimNet0,
                 input6 => s_logisimNet30,
                 input7 => s_logisimNet12,
                 result => s_logisimNet6 );

   GATES_28 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet23,
                 input2 => s_logisimNet17,
                 input3 => s_logisimBus42(2),
                 result => s_logisimNet41 );

   GATES_29 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet17,
                 input2 => s_logisimBus42(2),
                 input3 => s_logisimNet11,
                 result => s_logisimNet33 );

   GATES_30 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimBus42(2),
                 input2 => s_logisimNet34,
                 result => s_logisimNet35 );

   GATES_31 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet10,
                 input2 => s_logisimBus42(2),
                 input3 => s_logisimNet12,
                 result => s_logisimNet27 );

   GATES_32 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet23,
                 input2 => s_logisimBus42(2),
                 input3 => s_logisimNet12,
                 result => s_logisimNet22 );

   GATES_33 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimBus42(2),
                 input2 => s_logisimBus42(0),
                 result => s_logisimNet14 );

   GATES_34 : AND_GATE_7_INPUTS
      GENERIC MAP ( BubblesMask => "000"&X"0" )
      PORT MAP ( input1 => s_logisimNet10,
                 input2 => s_logisimNet23,
                 input3 => s_logisimBus24(0),
                 input4 => s_logisimNet1,
                 input5 => s_logisimBus42(0),
                 input6 => s_logisimNet30,
                 input7 => s_logisimNet11,
                 result => s_logisimNet53 );

   GATES_35 : AND_GATE_8_INPUTS
      GENERIC MAP ( BubblesMask => X"00" )
      PORT MAP ( input1 => s_logisimNet10,
                 input2 => s_logisimNet23,
                 input3 => s_logisimBus24(0),
                 input4 => s_logisimNet13,
                 input5 => s_logisimBus42(1),
                 input6 => s_logisimNet0,
                 input7 => s_logisimNet30,
                 input8 => s_logisimNet11,
                 result => s_logisimNet54 );

   GATES_36 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimBus24(1),
                 input2 => s_logisimBus24(0),
                 input3 => s_logisimBus42(2),
                 result => s_logisimNet39 );

   GATES_37 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimBus24(2),
                 input2 => s_logisimBus42(2),
                 input3 => s_logisimNet11,
                 result => s_logisimNet3 );

   GATES_38 : OR_GATE_11_INPUTS
      GENERIC MAP ( BubblesMask => "000"&X"00" )
      PORT MAP ( input1  => s_logisimNet8,
                 input10 => s_logisimNet49,
                 input11 => s_logisimNet6,
                 input2  => s_logisimNet52,
                 input3  => s_logisimNet47,
                 input4  => s_logisimNet43,
                 input5  => s_logisimNet58,
                 input6  => s_logisimNet38,
                 input7  => s_logisimNet45,
                 input8  => s_logisimNet21,
                 input9  => s_logisimNet40,
                 result  => s_logisimBus32(0) );

   GATES_39 : OR_GATE_13_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"000" )
      PORT MAP ( input1  => s_logisimNet37,
                 input10 => s_logisimNet56,
                 input11 => s_logisimNet57,
                 input12 => s_logisimNet44,
                 input13 => s_logisimNet9,
                 input2  => s_logisimNet28,
                 input3  => s_logisimNet29,
                 input4  => s_logisimNet20,
                 input5  => s_logisimNet7,
                 input6  => s_logisimNet31,
                 input7  => s_logisimNet50,
                 input8  => s_logisimNet51,
                 input9  => s_logisimNet36,
                 result  => s_logisimBus32(1) );

   GATES_40 : OR_GATE_13_INPUTS
      GENERIC MAP ( BubblesMask => "0"&X"000" )
      PORT MAP ( input1  => s_logisimNet41,
                 input10 => s_logisimNet3,
                 input11 => s_logisimNet19,
                 input12 => s_logisimNet46,
                 input13 => s_logisimNet25,
                 input2  => s_logisimNet33,
                 input3  => s_logisimNet35,
                 input4  => s_logisimNet27,
                 input5  => s_logisimNet22,
                 input6  => s_logisimNet14,
                 input7  => s_logisimNet53,
                 input8  => s_logisimNet54,
                 input9  => s_logisimNet39,
                 result  => s_logisimBus32(2) );


END platformIndependent;
