--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : final2                                                       ==
--== Component : FSM2                                                         ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF FSM2 IS 

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

      COMPONENT FSMtrans2
         PORT ( a                 : IN  std_logic_vector( 2 DOWNTO 0 );
                b                 : IN  std_logic_vector( 2 DOWNTO 0 );
                button            : IN  std_logic;
                logisimClockTree0 : IN  std_logic_vector( 4 DOWNTO 0 );
                c                 : OUT std_logic_vector( 2 DOWNTO 0 ) );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus17 : std_logic_vector( 2 DOWNTO 0 );
   SIGNAL s_logisimBus3  : std_logic_vector( 2 DOWNTO 0 );
   SIGNAL s_logisimBus6  : std_logic_vector( 2 DOWNTO 0 );
   SIGNAL s_logisimNet0  : std_logic;
   SIGNAL s_logisimNet1  : std_logic;
   SIGNAL s_logisimNet10 : std_logic;
   SIGNAL s_logisimNet11 : std_logic;
   SIGNAL s_logisimNet12 : std_logic;
   SIGNAL s_logisimNet13 : std_logic;
   SIGNAL s_logisimNet14 : std_logic;
   SIGNAL s_logisimNet15 : std_logic;
   SIGNAL s_logisimNet16 : std_logic;
   SIGNAL s_logisimNet2  : std_logic;
   SIGNAL s_logisimNet4  : std_logic;
   SIGNAL s_logisimNet5  : std_logic;
   SIGNAL s_logisimNet7  : std_logic;
   SIGNAL s_logisimNet8  : std_logic;
   SIGNAL s_logisimNet9  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimBus6(2 DOWNTO 0) <= f1;
   s_logisimNet0             <= clock;
   s_logisimNet1             <= reset;
   s_logisimNet8             <= but;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   deux  <= s_logisimNet16;
   final <= s_logisimBus3(2 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Porte NOT
   s_logisimNet14 <=  NOT s_logisimBus3(0);

   -- Porte NOT
   s_logisimNet15 <=  NOT s_logisimBus3(2);

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet14,
                 input2 => s_logisimBus3(1),
                 input3 => s_logisimNet15,
                 result => s_logisimNet16 );

   MEMORY_2 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree0(4),
                 d      => s_logisimBus17(0),
                 preset => '0',
                 q      => s_logisimBus3(0),
                 qBar   => OPEN,
                 reset  => s_logisimNet1,
                 tick   => logisimClockTree0(2) );

   MEMORY_3 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree0(4),
                 d      => s_logisimBus17(1),
                 preset => '0',
                 q      => s_logisimBus3(1),
                 qBar   => OPEN,
                 reset  => s_logisimNet1,
                 tick   => logisimClockTree0(2) );

   MEMORY_4 : D_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => logisimClockTree0(4),
                 d      => s_logisimBus17(2),
                 preset => s_logisimNet1,
                 q      => s_logisimBus3(2),
                 qBar   => OPEN,
                 reset  => '0',
                 tick   => logisimClockTree0(2) );


   --------------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                          --
   --------------------------------------------------------------------------------

   transitions2 : FSMtrans2
      PORT MAP ( a                 => s_logisimBus6(2 DOWNTO 0),
                 b                 => s_logisimBus3(2 DOWNTO 0),
                 button            => s_logisimNet8,
                 c                 => s_logisimBus17(2 DOWNTO 0),
                 logisimClockTree0 => logisimClockTree0 );

END platformIndependent;
