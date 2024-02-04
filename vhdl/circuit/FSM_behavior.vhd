--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : final2                                                       ==
--== Component : FSM                                                          ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF FSM IS 

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

      COMPONENT D_FLIPFLOP
         GENERIC ( invertClockEnable : INTEGER );
         PORT ( clock  : IN  std_logic;
                d      : IN  std_logic;
                preset : IN  std_logic;
                reset  : IN  std_logic;
                tick   : IN  std_logic;
                q      : OUT std_logic;
                qBar   : OUT std_logic );
      END COMPONENT;

      COMPONENT FSMtrans
         PORT ( but               : IN  std_logic;
                c                 : IN  std_logic_vector( 2 DOWNTO 0 );
                logisimClockTree0 : IN  std_logic_vector( 4 DOWNTO 0 );
                D                 : OUT std_logic_vector( 2 DOWNTO 0 );
                p3                : OUT std_logic );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus0  : std_logic_vector( 2 DOWNTO 0 );
   SIGNAL s_logisimBus4  : std_logic_vector( 2 DOWNTO 0 );
   SIGNAL s_logisimNet1  : std_logic;
   SIGNAL s_logisimNet10 : std_logic;
   SIGNAL s_logisimNet11 : std_logic;
   SIGNAL s_logisimNet12 : std_logic;
   SIGNAL s_logisimNet13 : std_logic;
   SIGNAL s_logisimNet14 : std_logic;
   SIGNAL s_logisimNet15 : std_logic;
   SIGNAL s_logisimNet16 : std_logic;
   SIGNAL s_logisimNet2  : std_logic;
   SIGNAL s_logisimNet3  : std_logic;
   SIGNAL s_logisimNet5  : std_logic;
   SIGNAL s_logisimNet6  : std_logic;
   SIGNAL s_logisimNet7  : std_logic;
   SIGNAL s_logisimNet8  : std_logic;
   SIGNAL s_logisimNet9  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimNet1  <= reset;
   s_logisimNet14 <= butt;
   s_logisimNet2  <= clock;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   outt  <= s_logisimBus4(2 DOWNTO 0);
   p3    <= s_logisimNet16;
   quatr <= s_logisimNet15;

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Porte NOT
   s_logisimNet10 <=  NOT s_logisimBus4(0);

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet10,
                 input2 => s_logisimBus4(1),
                 input3 => s_logisimBus4(2),
                 result => s_logisimNet15 );

   MEMORY_2 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree0(4),
                 d      => s_logisimBus0(0),
                 preset => '0',
                 q      => s_logisimBus4(0),
                 qBar   => OPEN,
                 reset  => s_logisimNet1,
                 tick   => logisimClockTree0(2) );

   MEMORY_3 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree0(4),
                 d      => s_logisimBus0(1),
                 preset => s_logisimNet1,
                 q      => s_logisimBus4(1),
                 qBar   => OPEN,
                 reset  => '0',
                 tick   => logisimClockTree0(2) );

   MEMORY_4 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree0(4),
                 d      => s_logisimBus0(2),
                 preset => '0',
                 q      => s_logisimBus4(2),
                 qBar   => OPEN,
                 reset  => s_logisimNet1,
                 tick   => logisimClockTree0(2) );


   --------------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                          --
   --------------------------------------------------------------------------------

   transitions1 : FSMtrans
      PORT MAP ( D                 => s_logisimBus0(2 DOWNTO 0),
                 but               => s_logisimNet14,
                 c                 => s_logisimBus4(2 DOWNTO 0),
                 logisimClockTree0 => logisimClockTree0,
                 p3                => s_logisimNet16 );

END platformIndependent;
