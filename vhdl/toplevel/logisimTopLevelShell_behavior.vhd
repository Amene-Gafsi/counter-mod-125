--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : final2                                                       ==
--== Component : logisimTopLevelShell                                         ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF logisimTopLevelShell IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------
      COMPONENT logisimTickGenerator
         GENERIC ( nrOfBits    : INTEGER;
                   reloadValue : INTEGER );
         PORT ( FPGAClock : IN  std_logic;
                FPGATick  : OUT std_logic );
      END COMPONENT;

      COMPONENT LogisimClockComponent
         GENERIC ( highTicks : INTEGER;
                   lowTicks  : INTEGER;
                   nrOfBits  : INTEGER;
                   phase     : INTEGER );
         PORT ( clockTick   : IN  std_logic;
                globalClock : IN  std_logic;
                clockBus    : OUT std_logic_vector( 4 DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT LedArrayLedDefault
         GENERIC ( activeLow : INTEGER;
                   nrOfLeds  : INTEGER );
         PORT ( internalLeds : IN  std_logic_vector( (nrOfLeds - 1) DOWNTO 0 );
                externalLeds : OUT std_logic_vector( (nrOfLeds - 1) DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT TP34
         PORT ( logisimClockTree0    : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimInputBubbles  : IN  std_logic_vector( 1 DOWNTO 0 );
                logisimOutputBubbles : OUT std_logic_vector( 32 DOWNTO 0 ) );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_fpgaTick             : std_logic;
   SIGNAL s_internalLeds0        : std_logic_vector( 107 DOWNTO 0 );
   SIGNAL s_logisimClockTree0    : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_logisimInputBubbles  : std_logic_vector( 1 DOWNTO 0 );
   SIGNAL s_logisimOutputBubbles : std_logic_vector( 32 DOWNTO 0 );

BEGIN

   --------------------------------------------------------------------------------
   -- All signal adaptations are performed here                                  --
   --------------------------------------------------------------------------------
   n_Disp0_DecimalPoint     <=  NOT s_logisimOutputBubbles(15);
   n_Disp0_Segment_A        <=  NOT s_logisimOutputBubbles(8);
   n_Disp0_Segment_B        <=  NOT s_logisimOutputBubbles(9);
   n_Disp0_Segment_C        <=  NOT s_logisimOutputBubbles(10);
   n_Disp0_Segment_D        <=  NOT s_logisimOutputBubbles(11);
   n_Disp0_Segment_E        <=  NOT s_logisimOutputBubbles(12);
   n_Disp0_Segment_F        <=  NOT s_logisimOutputBubbles(13);
   n_Disp0_Segment_G        <=  NOT s_logisimOutputBubbles(14);
   n_Disp1_DecimalPoint     <=  NOT s_logisimOutputBubbles(7);
   n_Disp1_Segment_A        <=  NOT s_logisimOutputBubbles(0);
   n_Disp1_Segment_B        <=  NOT s_logisimOutputBubbles(1);
   n_Disp1_Segment_C        <=  NOT s_logisimOutputBubbles(2);
   n_Disp1_Segment_D        <=  NOT s_logisimOutputBubbles(3);
   n_Disp1_Segment_E        <=  NOT s_logisimOutputBubbles(4);
   n_Disp1_Segment_F        <=  NOT s_logisimOutputBubbles(5);
   n_Disp1_Segment_G        <=  NOT s_logisimOutputBubbles(6);
   n_Disp2_DecimalPoint     <=  NOT s_logisimOutputBubbles(23);
   n_Disp2_Segment_A        <=  NOT s_logisimOutputBubbles(16);
   n_Disp2_Segment_B        <=  NOT s_logisimOutputBubbles(17);
   n_Disp2_Segment_C        <=  NOT s_logisimOutputBubbles(18);
   n_Disp2_Segment_D        <=  NOT s_logisimOutputBubbles(19);
   n_Disp2_Segment_E        <=  NOT s_logisimOutputBubbles(20);
   n_Disp2_Segment_F        <=  NOT s_logisimOutputBubbles(21);
   n_Disp2_Segment_G        <=  NOT s_logisimOutputBubbles(22);
   s_logisimInputBubbles(0) <=  NOT n_But_0;
   s_logisimInputBubbles(1) <=  NOT n_reset_0;

   --------------------------------------------------------------------------------
   -- The clock tree components are defined here                                 --
   --------------------------------------------------------------------------------
   BASE_0 : logisimTickGenerator
      GENERIC MAP ( nrOfBits    => 21,
                    reloadValue => 1500000 )
      PORT MAP ( FPGAClock => fpgaGlobalClock,
                 FPGATick  => s_fpgaTick );

   clk : LogisimClockComponent
      GENERIC MAP ( highTicks => 1,
                    lowTicks  => 1,
                    nrOfBits  => 1,
                    phase     => 1 )
      PORT MAP ( clockBus    => s_logisimClockTree0,
                 clockTick   => s_fpgaTick,
                 globalClock => fpgaGlobalClock );

   --------------------------------------------------------------------------------
   -- The toplevel component is connected here                                   --
   --------------------------------------------------------------------------------
   CIRCUIT_0 : TP34
      PORT MAP ( logisimClockTree0    => s_logisimClockTree0,
                 logisimInputBubbles  => s_logisimInputBubbles,
                 logisimOutputBubbles => s_logisimOutputBubbles );

   --------------------------------------------------------------------------------
   -- The Led arrays are connected here                                          --
   --------------------------------------------------------------------------------
   array0 : LedArrayLedDefault
      GENERIC MAP ( nrOfLeds  => 108,
                    activeLow => 0 )
   PORT MAP ( externalLeds => externalLeds0,
              internalLeds => s_internalLeds0 );

   s_internalLeds0(0)   <= s_logisimOutputBubbles(26);
   s_internalLeds0(1)   <= s_logisimOutputBubbles(29);
   s_internalLeds0(10)  <= '0';
   s_internalLeds0(100) <= '0';
   s_internalLeds0(101) <= '0';
   s_internalLeds0(102) <= '0';
   s_internalLeds0(103) <= '0';
   s_internalLeds0(104) <= '0';
   s_internalLeds0(105) <= '0';
   s_internalLeds0(106) <= '0';
   s_internalLeds0(107) <= '0';
   s_internalLeds0(11)  <= '0';
   s_internalLeds0(12)  <= '0';
   s_internalLeds0(13)  <= '0';
   s_internalLeds0(14)  <= '0';
   s_internalLeds0(15)  <= '0';
   s_internalLeds0(16)  <= '0';
   s_internalLeds0(17)  <= '0';
   s_internalLeds0(18)  <= '0';
   s_internalLeds0(19)  <= '0';
   s_internalLeds0(2)   <= s_logisimOutputBubbles(32);
   s_internalLeds0(20)  <= '0';
   s_internalLeds0(21)  <= '0';
   s_internalLeds0(22)  <= '0';
   s_internalLeds0(23)  <= '0';
   s_internalLeds0(24)  <= s_logisimOutputBubbles(24);
   s_internalLeds0(25)  <= s_logisimOutputBubbles(27);
   s_internalLeds0(26)  <= s_logisimOutputBubbles(30);
   s_internalLeds0(27)  <= '0';
   s_internalLeds0(28)  <= '0';
   s_internalLeds0(29)  <= '0';
   s_internalLeds0(3)   <= '0';
   s_internalLeds0(30)  <= '0';
   s_internalLeds0(31)  <= '0';
   s_internalLeds0(32)  <= '0';
   s_internalLeds0(33)  <= '0';
   s_internalLeds0(34)  <= '0';
   s_internalLeds0(35)  <= '0';
   s_internalLeds0(36)  <= '0';
   s_internalLeds0(37)  <= '0';
   s_internalLeds0(38)  <= '0';
   s_internalLeds0(39)  <= '0';
   s_internalLeds0(4)   <= '0';
   s_internalLeds0(40)  <= '0';
   s_internalLeds0(41)  <= '0';
   s_internalLeds0(42)  <= '0';
   s_internalLeds0(43)  <= '0';
   s_internalLeds0(44)  <= '0';
   s_internalLeds0(45)  <= '0';
   s_internalLeds0(46)  <= '0';
   s_internalLeds0(47)  <= '0';
   s_internalLeds0(48)  <= s_logisimOutputBubbles(25);
   s_internalLeds0(49)  <= s_logisimOutputBubbles(28);
   s_internalLeds0(5)   <= '0';
   s_internalLeds0(50)  <= s_logisimOutputBubbles(31);
   s_internalLeds0(51)  <= '0';
   s_internalLeds0(52)  <= '0';
   s_internalLeds0(53)  <= '0';
   s_internalLeds0(54)  <= '0';
   s_internalLeds0(55)  <= '0';
   s_internalLeds0(56)  <= '0';
   s_internalLeds0(57)  <= '0';
   s_internalLeds0(58)  <= '0';
   s_internalLeds0(59)  <= '0';
   s_internalLeds0(6)   <= '0';
   s_internalLeds0(60)  <= '0';
   s_internalLeds0(61)  <= '0';
   s_internalLeds0(62)  <= '0';
   s_internalLeds0(63)  <= '0';
   s_internalLeds0(64)  <= '0';
   s_internalLeds0(65)  <= '0';
   s_internalLeds0(66)  <= '0';
   s_internalLeds0(67)  <= '0';
   s_internalLeds0(68)  <= '0';
   s_internalLeds0(69)  <= '0';
   s_internalLeds0(7)   <= '0';
   s_internalLeds0(70)  <= '0';
   s_internalLeds0(71)  <= '0';
   s_internalLeds0(72)  <= '0';
   s_internalLeds0(73)  <= '0';
   s_internalLeds0(74)  <= '0';
   s_internalLeds0(75)  <= '0';
   s_internalLeds0(76)  <= '0';
   s_internalLeds0(77)  <= '0';
   s_internalLeds0(78)  <= '0';
   s_internalLeds0(79)  <= '0';
   s_internalLeds0(8)   <= '0';
   s_internalLeds0(80)  <= '0';
   s_internalLeds0(81)  <= '0';
   s_internalLeds0(82)  <= '0';
   s_internalLeds0(83)  <= '0';
   s_internalLeds0(84)  <= '0';
   s_internalLeds0(85)  <= '0';
   s_internalLeds0(86)  <= '0';
   s_internalLeds0(87)  <= '0';
   s_internalLeds0(88)  <= '0';
   s_internalLeds0(89)  <= '0';
   s_internalLeds0(9)   <= '0';
   s_internalLeds0(90)  <= '0';
   s_internalLeds0(91)  <= '0';
   s_internalLeds0(92)  <= '0';
   s_internalLeds0(93)  <= '0';
   s_internalLeds0(94)  <= '0';
   s_internalLeds0(95)  <= '0';
   s_internalLeds0(96)  <= '0';
   s_internalLeds0(97)  <= '0';
   s_internalLeds0(98)  <= '0';
   s_internalLeds0(99)  <= '0';

END platformIndependent;
