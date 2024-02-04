--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : final2                                                       ==
--== Component : TP34                                                         ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF TP34 IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT AND_GATE_4_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                input4 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT FSM3
         PORT ( a                 : IN  std_logic_vector( 2 DOWNTO 0 );
                button            : IN  std_logic;
                clock             : IN  std_logic;
                fs1               : IN  std_logic;
                logisimClockTree0 : IN  std_logic_vector( 4 DOWNTO 0 );
                reset             : IN  std_logic;
                fi                : OUT std_logic_vector( 2 DOWNTO 0 );
                zer               : OUT std_logic );
      END COMPONENT;

      COMPONENT FSM2
         PORT ( but               : IN  std_logic;
                clock             : IN  std_logic;
                f1                : IN  std_logic_vector( 2 DOWNTO 0 );
                logisimClockTree0 : IN  std_logic_vector( 4 DOWNTO 0 );
                reset             : IN  std_logic;
                deux              : OUT std_logic;
                final             : OUT std_logic_vector( 2 DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT FSM
         PORT ( butt              : IN  std_logic;
                clock             : IN  std_logic;
                logisimClockTree0 : IN  std_logic_vector( 4 DOWNTO 0 );
                reset             : IN  std_logic;
                outt              : OUT std_logic_vector( 2 DOWNTO 0 );
                p3                : OUT std_logic;
                quatr             : OUT std_logic );
      END COMPONENT;

      COMPONENT counter1
         PORT ( A                 : IN  std_logic_vector( 2 DOWNTO 0 );
                logisimClockTree0 : IN  std_logic_vector( 4 DOWNTO 0 );
                b                 : OUT std_logic;
                c                 : OUT std_logic;
                d                 : OUT std_logic;
                e                 : OUT std_logic;
                f                 : OUT std_logic;
                g                 : OUT std_logic;
                x                 : OUT std_logic );
      END COMPONENT;

      COMPONENT disp_interface
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
      END COMPONENT;

      COMPONENT butpressed
         PORT ( clk               : IN  std_logic;
                logisimClockTree0 : IN  std_logic_vector( 4 DOWNTO 0 );
                reset0            : IN  std_logic;
                reset1            : IN  std_logic;
                set               : IN  std_logic;
                outt              : OUT std_logic );
      END COMPONENT;

      COMPONENT tFlip
         PORT ( clk               : IN  std_logic;
                con               : IN  std_logic;
                logisimClockTree0 : IN  std_logic_vector( 4 DOWNTO 0 );
                res               : IN  std_logic;
                outtt             : OUT std_logic );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus19 : std_logic_vector( 2 DOWNTO 0 );
   SIGNAL s_logisimBus6  : std_logic_vector( 2 DOWNTO 0 );
   SIGNAL s_logisimBus8  : std_logic_vector( 2 DOWNTO 0 );
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
   SIGNAL s_logisimNet38 : std_logic;
   SIGNAL s_logisimNet39 : std_logic;
   SIGNAL s_logisimNet4  : std_logic;
   SIGNAL s_logisimNet40 : std_logic;
   SIGNAL s_logisimNet41 : std_logic;
   SIGNAL s_logisimNet42 : std_logic;
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
   SIGNAL s_logisimNet59 : std_logic;
   SIGNAL s_logisimNet60 : std_logic;
   SIGNAL s_logisimNet61 : std_logic;
   SIGNAL s_logisimNet62 : std_logic;
   SIGNAL s_logisimNet63 : std_logic;
   SIGNAL s_logisimNet64 : std_logic;
   SIGNAL s_logisimNet65 : std_logic;
   SIGNAL s_logisimNet66 : std_logic;
   SIGNAL s_logisimNet67 : std_logic;
   SIGNAL s_logisimNet7  : std_logic;
   SIGNAL s_logisimNet9  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- All clock generator connections are defined here                           --
   --------------------------------------------------------------------------------
   s_logisimNet9 <= logisimClockTree0(0);

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Constante
    s_logisimNet3  <=  '0';


   -- Bouton: But
   s_logisimNet7 <= logisimInputBubbles(0);

   -- Bouton: reset
   s_logisimNet0 <= logisimInputBubbles(1);

   -- Afficheur 7 segments: Disp1
   logisimOutputBubbles(0) <= s_logisimNet25;
   logisimOutputBubbles(1) <= s_logisimNet11;
   logisimOutputBubbles(2) <= s_logisimNet13;
   logisimOutputBubbles(3) <= s_logisimNet43;
   logisimOutputBubbles(4) <= s_logisimNet23;
   logisimOutputBubbles(5) <= s_logisimNet27;
   logisimOutputBubbles(6) <= s_logisimNet5;
   logisimOutputBubbles(7) <= s_logisimNet41;

   -- Afficheur 7 segments: Disp0
   logisimOutputBubbles(10) <= s_logisimNet2;
   logisimOutputBubbles(11) <= s_logisimNet31;
   logisimOutputBubbles(12) <= s_logisimNet22;
   logisimOutputBubbles(13) <= s_logisimNet12;
   logisimOutputBubbles(14) <= s_logisimNet28;
   logisimOutputBubbles(15) <= s_logisimNet26;
   logisimOutputBubbles(8)  <= s_logisimNet29;
   logisimOutputBubbles(9)  <= s_logisimNet24;

   -- Afficheur 7 segments: Disp2
   logisimOutputBubbles(16) <= s_logisimNet40;
   logisimOutputBubbles(17) <= s_logisimNet34;
   logisimOutputBubbles(18) <= s_logisimNet10;
   logisimOutputBubbles(19) <= s_logisimNet52;
   logisimOutputBubbles(20) <= s_logisimNet1;
   logisimOutputBubbles(21) <= s_logisimNet42;
   logisimOutputBubbles(22) <= s_logisimNet32;
   logisimOutputBubbles(23) <= s_logisimNet51;

   -- LED: Q12
   logisimOutputBubbles(24) <= s_logisimBus8(2);

   -- LED: Q02
   logisimOutputBubbles(25) <= s_logisimBus19(2);

   -- LED: Q22
   logisimOutputBubbles(26) <= s_logisimBus6(2);

   -- LED: Q11
   logisimOutputBubbles(27) <= s_logisimBus8(1);

   -- LED: Q01
   logisimOutputBubbles(28) <= s_logisimBus19(1);

   -- LED: Q21
   logisimOutputBubbles(29) <= s_logisimBus6(1);

   -- LED: Q10
   logisimOutputBubbles(30) <= s_logisimBus8(0);

   -- LED: Q00
   logisimOutputBubbles(31) <= s_logisimBus19(0);

   -- LED: Q20
   logisimOutputBubbles(32) <= s_logisimBus6(0);

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : AND_GATE_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0" )
      PORT MAP ( input1 => s_logisimNet44,
                 input2 => s_logisimNet45,
                 input3 => s_logisimNet30,
                 input4 => s_logisimNet20,
                 result => s_logisimNet33 );


   --------------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                          --
   --------------------------------------------------------------------------------

   finalsm3 : FSM3
      PORT MAP ( a                 => s_logisimBus8(2 DOWNTO 0),
                 button            => s_logisimNet4,
                 clock             => s_logisimNet9,
                 fi                => s_logisimBus6(2 DOWNTO 0),
                 fs1               => s_logisimNet21,
                 logisimClockTree0 => logisimClockTree0,
                 reset             => s_logisimNet0,
                 zer               => s_logisimNet20 );

   finalsm2 : FSM2
      PORT MAP ( but               => s_logisimNet4,
                 clock             => s_logisimNet9,
                 deux              => s_logisimNet30,
                 f1                => s_logisimBus19(2 DOWNTO 0),
                 final             => s_logisimBus8(2 DOWNTO 0),
                 logisimClockTree0 => logisimClockTree0,
                 reset             => s_logisimNet0 );

   finalsm1 : FSM
      PORT MAP ( butt              => s_logisimNet4,
                 clock             => s_logisimNet9,
                 logisimClockTree0 => logisimClockTree0,
                 outt              => s_logisimBus19(2 DOWNTO 0),
                 p3                => s_logisimNet21,
                 quatr             => s_logisimNet44,
                 reset             => s_logisimNet0 );

   counter2 : counter1
      PORT MAP ( A                 => s_logisimBus19(2 DOWNTO 0),
                 b                 => s_logisimNet49,
                 c                 => s_logisimNet57,
                 d                 => s_logisimNet18,
                 e                 => s_logisimNet39,
                 f                 => s_logisimNet50,
                 g                 => s_logisimNet58,
                 logisimClockTree0 => logisimClockTree0,
                 x                 => s_logisimNet38 );

   counter0 : counter1
      PORT MAP ( A                 => s_logisimBus6(2 DOWNTO 0),
                 b                 => s_logisimNet15,
                 c                 => s_logisimNet36,
                 d                 => s_logisimNet47,
                 e                 => s_logisimNet56,
                 f                 => s_logisimNet16,
                 g                 => s_logisimNet37,
                 logisimClockTree0 => logisimClockTree0,
                 x                 => s_logisimNet55 );

   counter : counter1
      PORT MAP ( A                 => s_logisimBus8(2 DOWNTO 0),
                 b                 => s_logisimNet53,
                 c                 => s_logisimNet14,
                 d                 => s_logisimNet35,
                 e                 => s_logisimNet46,
                 f                 => s_logisimNet54,
                 g                 => s_logisimNet17,
                 logisimClockTree0 => logisimClockTree0,
                 x                 => s_logisimNet48 );

   disp0i : disp_interface
      PORT MAP ( a_in              => s_logisimNet38,
                 a_out             => s_logisimNet29,
                 b_in              => s_logisimNet49,
                 b_out             => s_logisimNet24,
                 c_in              => s_logisimNet57,
                 c_out             => s_logisimNet2,
                 d_in              => s_logisimNet18,
                 d_out             => s_logisimNet31,
                 e_in              => s_logisimNet39,
                 e_out             => s_logisimNet22,
                 f_in              => s_logisimNet50,
                 f_out             => s_logisimNet12,
                 g_in              => s_logisimNet58,
                 g_out             => s_logisimNet28,
                 logisimClockTree0 => logisimClockTree0,
                 p_in              => s_logisimNet3,
                 p_out             => s_logisimNet26 );

   disp2i : disp_interface
      PORT MAP ( a_in              => s_logisimNet55,
                 a_out             => s_logisimNet40,
                 b_in              => s_logisimNet15,
                 b_out             => s_logisimNet34,
                 c_in              => s_logisimNet36,
                 c_out             => s_logisimNet10,
                 d_in              => s_logisimNet47,
                 d_out             => s_logisimNet52,
                 e_in              => s_logisimNet56,
                 e_out             => s_logisimNet1,
                 f_in              => s_logisimNet16,
                 f_out             => s_logisimNet42,
                 g_in              => s_logisimNet37,
                 g_out             => s_logisimNet32,
                 logisimClockTree0 => logisimClockTree0,
                 p_in              => s_logisimNet3,
                 p_out             => s_logisimNet51 );

   disp1i : disp_interface
      PORT MAP ( a_in              => s_logisimNet48,
                 a_out             => s_logisimNet25,
                 b_in              => s_logisimNet53,
                 b_out             => s_logisimNet11,
                 c_in              => s_logisimNet14,
                 c_out             => s_logisimNet13,
                 d_in              => s_logisimNet35,
                 d_out             => s_logisimNet43,
                 e_in              => s_logisimNet46,
                 e_out             => s_logisimNet23,
                 f_in              => s_logisimNet54,
                 f_out             => s_logisimNet27,
                 g_in              => s_logisimNet17,
                 g_out             => s_logisimNet5,
                 logisimClockTree0 => logisimClockTree0,
                 p_in              => s_logisimNet3,
                 p_out             => s_logisimNet41 );

   butpress : butpressed
      PORT MAP ( clk               => s_logisimNet9,
                 logisimClockTree0 => logisimClockTree0,
                 outt              => s_logisimNet45,
                 reset0            => s_logisimNet0,
                 reset1            => s_logisimNet33,
                 set               => s_logisimNet7 );

   tFlip_1 : tFlip
      PORT MAP ( clk               => s_logisimNet9,
                 con               => s_logisimNet33,
                 logisimClockTree0 => logisimClockTree0,
                 outtt             => s_logisimNet4,
                 res               => s_logisimNet0 );

END platformIndependent;
