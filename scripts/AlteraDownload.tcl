# Load Quartus II Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
    if {[string compare $quartus(project) "logisimTopLevelShell"]} {
        puts "Project logisimTopLevelShell is not open"
        set make_assignments 0
    }
} else {
    # Only open if not already open
    if {[project_exists logisimTopLevelShell]} {
        project_open -revision logisimTopLevelShell logisimTopLevelShell
    } else {
        project_new -revision logisimTopLevelShell logisimTopLevelShell
    }
    set need_to_close_project 1
}
# Make assignments
if {$make_assignments} {

   set_global_assignment -name FAMILY "Cyclone IV E"
   set_global_assignment -name DEVICE EP4CE30F23C8
   set_global_assignment -name DEVICE_FILTER_PACKAGE FBGA
   set_global_assignment -name DEVICE_FILTER_PIN_COUNT 432
   set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS INPUT TRI-STATED"
   set_global_assignment -name FMAX_REQUIREMENT "12 MHz "
   set_global_assignment -name RESERVE_NCEO_AFTER_CONFIGURATION "USE AS REGULAR IO"
   set_global_assignment -name CYCLONEII_RESERVE_NCEO_AFTER_CONFIGURATION "USE AS REGULAR IO"

    # Include all entities and gates


    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/base/LogisimClockComponent_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/base/logisimTickGenerator_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/circuit/butpressed_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/circuit/counter1_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/circuit/disp_interface_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/circuit/FSM2_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/circuit/FSM3_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/circuit/FSMtrans2_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/circuit/FSMtrans3_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/circuit/FSMtrans_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/circuit/FSM_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/circuit/tFlip_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/circuit/TP34_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/AND_GATE_3_INPUTS_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/AND_GATE_4_INPUTS_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/AND_GATE_5_INPUTS_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/AND_GATE_6_INPUTS_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/AND_GATE_7_INPUTS_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/AND_GATE_8_INPUTS_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/AND_GATE_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/NOR_GATE_3_INPUTS_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/NOR_GATE_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/OR_GATE_10_INPUTS_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/OR_GATE_11_INPUTS_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/OR_GATE_13_INPUTS_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/OR_GATE_3_INPUTS_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/OR_GATE_4_INPUTS_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/OR_GATE_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/XOR_GATE_ONEHOT_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/io/LedArrayLedDefault_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/memory/D_FLIPFLOP_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/toplevel/logisimTopLevelShell_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/base/LogisimClockComponent_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/base/logisimTickGenerator_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/circuit/butpressed_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/circuit/counter1_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/circuit/disp_interface_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/circuit/FSM2_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/circuit/FSM3_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/circuit/FSMtrans2_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/circuit/FSMtrans3_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/circuit/FSMtrans_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/circuit/FSM_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/circuit/tFlip_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/circuit/TP34_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/AND_GATE_3_INPUTS_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/AND_GATE_4_INPUTS_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/AND_GATE_5_INPUTS_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/AND_GATE_6_INPUTS_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/AND_GATE_7_INPUTS_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/AND_GATE_8_INPUTS_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/AND_GATE_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/NOR_GATE_3_INPUTS_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/NOR_GATE_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/OR_GATE_10_INPUTS_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/OR_GATE_11_INPUTS_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/OR_GATE_13_INPUTS_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/OR_GATE_3_INPUTS_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/OR_GATE_4_INPUTS_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/OR_GATE_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/gates/XOR_GATE_ONEHOT_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/io/LedArrayLedDefault_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/memory/D_FLIPFLOP_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/amene/logisim_evolution_workspace/final2/TP34/vhdl/toplevel/logisimTopLevelShell_behavior.vhd"

    # Map fpga_clk and ionets to fpga pins
    set_location_assignment PIN_T22 -to fpgaGlobalClock
            set_location_assignment PIN_K19 -to n_Disp2_Segment_A
            set_location_assignment PIN_T9 -to n_Disp2_Segment_B
            set_location_assignment PIN_E14 -to n_Disp2_Segment_C
            set_location_assignment PIN_T5 -to n_Disp2_Segment_D
            set_location_assignment PIN_T7 -to n_Disp2_Segment_E
            set_location_assignment PIN_R7 -to n_Disp2_Segment_F
            set_location_assignment PIN_T4 -to n_Disp2_Segment_G
            set_location_assignment PIN_T8 -to n_Disp2_DecimalPoint
            set_location_assignment PIN_U9 -to n_Disp1_Segment_A
            set_location_assignment PIN_W8 -to n_Disp1_Segment_B
            set_location_assignment PIN_V8 -to n_Disp1_Segment_C
            set_location_assignment PIN_Y4 -to n_Disp1_Segment_D
            set_location_assignment PIN_T11 -to n_Disp1_Segment_E
            set_location_assignment PIN_Y10 -to n_Disp1_Segment_F
            set_location_assignment PIN_T10 -to n_Disp1_Segment_G
            set_location_assignment PIN_W7 -to n_Disp1_DecimalPoint
            set_location_assignment PIN_U11 -to n_Disp0_Segment_A
            set_location_assignment PIN_G18 -to n_Disp0_Segment_B
            set_location_assignment PIN_M8 -to n_Disp0_Segment_C
            set_location_assignment PIN_L6 -to n_Disp0_Segment_D
            set_location_assignment PIN_W10 -to n_Disp0_Segment_E
            set_location_assignment PIN_U10 -to n_Disp0_Segment_F
            set_location_assignment PIN_V9 -to n_Disp0_Segment_G
            set_location_assignment PIN_L7 -to n_Disp0_DecimalPoint
            set_location_assignment PIN_AB11 -to n_reset_0
            set_location_assignment PIN_AA11 -to n_But_0
            set_location_assignment PIN_H22 -to externalLeds0[106]
            set_location_assignment PIN_A8 -to externalLeds0[50]
            set_location_assignment PIN_F19 -to externalLeds0[1]
            set_location_assignment PIN_C8 -to externalLeds0[86]
            set_location_assignment PIN_K21 -to externalLeds0[10]
            set_location_assignment PIN_B8 -to externalLeds0[98]
            set_location_assignment PIN_B7 -to externalLeds0[62]
            set_location_assignment PIN_A7 -to externalLeds0[74]
            set_location_assignment PIN_J22 -to externalLeds0[9]
            set_location_assignment PIN_A17 -to externalLeds0[90]
            set_location_assignment PIN_H15 -to externalLeds0[19]
            set_location_assignment PIN_D17 -to externalLeds0[35]
            set_location_assignment PIN_K22 -to externalLeds0[47]
            set_location_assignment PIN_D19 -to externalLeds0[11]
            set_location_assignment PIN_B10 -to externalLeds0[99]
            set_location_assignment PIN_F17 -to externalLeds0[23]
            set_location_assignment PIN_L21 -to externalLeds0[59]
            set_location_assignment PIN_E21 -to externalLeds0[105]
            set_location_assignment PIN_D6 -to externalLeds0[0]
            set_location_assignment PIN_A19 -to externalLeds0[91]
            set_location_assignment PIN_A9 -to externalLeds0[75]
            set_location_assignment PIN_C10 -to externalLeds0[87]
            set_location_assignment PIN_A10 -to externalLeds0[51]
            set_location_assignment PIN_B9 -to externalLeds0[63]
            set_location_assignment PIN_F14 -to externalLeds0[8]
            set_location_assignment PIN_B5 -to externalLeds0[24]
            set_location_assignment PIN_C4 -to externalLeds0[36]
            set_location_assignment PIN_A13 -to externalLeds0[88]
            set_location_assignment PIN_E5 -to externalLeds0[12]
            set_location_assignment PIN_A4 -to externalLeds0[48]
            set_location_assignment PIN_C3 -to externalLeds0[60]
            set_location_assignment PIN_B3 -to externalLeds0[72]
            set_location_assignment PIN_C22 -to externalLeds0[104]
            set_location_assignment PIN_G17 -to externalLeds0[20]
            set_location_assignment PIN_H16 -to externalLeds0[32]
            set_location_assignment PIN_A3 -to externalLeds0[84]
            set_location_assignment PIN_B4 -to externalLeds0[96]
            set_location_assignment PIN_G16 -to externalLeds0[7]
            set_location_assignment PIN_E22 -to externalLeds0[57]
            set_location_assignment PIN_D20 -to externalLeds0[69]
            set_location_assignment PIN_H19 -to externalLeds0[33]
            set_location_assignment PIN_H17 -to externalLeds0[45]
            set_location_assignment PIN_J18 -to externalLeds0[17]
            set_location_assignment PIN_G13 -to externalLeds0[29]
            set_location_assignment PIN_A5 -to externalLeds0[61]
            set_location_assignment PIN_C20 -to externalLeds0[103]
            set_location_assignment PIN_A6 -to externalLeds0[97]
            set_location_assignment PIN_J21 -to externalLeds0[21]
            set_location_assignment PIN_C6 -to externalLeds0[73]
            set_location_assignment PIN_B6 -to externalLeds0[85]
            set_location_assignment PIN_G15 -to externalLeds0[6]
            set_location_assignment PIN_D15 -to externalLeds0[46]
            set_location_assignment PIN_H21 -to externalLeds0[58]
            set_location_assignment PIN_F15 -to externalLeds0[22]
            set_location_assignment PIN_E15 -to externalLeds0[34]
            set_location_assignment PIN_H14 -to externalLeds0[18]
            set_location_assignment PIN_F22 -to externalLeds0[82]
            set_location_assignment PIN_F21 -to externalLeds0[94]
            set_location_assignment PIN_F20 -to externalLeds0[70]
            set_location_assignment PIN_F9 -to externalLeds0[42]
            set_location_assignment PIN_A18 -to externalLeds0[54]
            set_location_assignment PIN_D10 -to externalLeds0[30]
            set_location_assignment PIN_B18 -to externalLeds0[102]
            set_location_assignment PIN_G14 -to externalLeds0[5]
            set_location_assignment PIN_B19 -to externalLeds0[79]
            set_location_assignment PIN_B20 -to externalLeds0[55]
            set_location_assignment PIN_C19 -to externalLeds0[67]
            set_location_assignment PIN_H11 -to externalLeds0[39]
            set_location_assignment PIN_F11 -to externalLeds0[15]
            set_location_assignment PIN_E11 -to externalLeds0[27]
            set_location_assignment PIN_F16 -to externalLeds0[71]
            set_location_assignment PIN_E16 -to externalLeds0[83]
            set_location_assignment PIN_J17 -to externalLeds0[31]
            set_location_assignment PIN_E12 -to externalLeds0[43]
            set_location_assignment PIN_L22 -to externalLeds0[95]
            set_location_assignment PIN_B16 -to externalLeds0[101]
            set_location_assignment PIN_E10 -to externalLeds0[4]
            set_location_assignment PIN_A20 -to externalLeds0[68]
            set_location_assignment PIN_E13 -to externalLeds0[44]
            set_location_assignment PIN_B22 -to externalLeds0[56]
            set_location_assignment PIN_G7 -to externalLeds0[28]
            set_location_assignment PIN_E9 -to externalLeds0[16]
            set_location_assignment PIN_K18 -to externalLeds0[3]
            set_location_assignment PIN_C21 -to externalLeds0[80]
            set_location_assignment PIN_B21 -to externalLeds0[92]
            set_location_assignment PIN_C13 -to externalLeds0[64]
            set_location_assignment PIN_B13 -to externalLeds0[76]
            set_location_assignment PIN_F7 -to externalLeds0[40]
            set_location_assignment PIN_A14 -to externalLeds0[52]
            set_location_assignment PIN_B14 -to externalLeds0[100]
            set_location_assignment PIN_F8 -to externalLeds0[13]
            set_location_assignment PIN_G8 -to externalLeds0[25]
            set_location_assignment PIN_B15 -to externalLeds0[77]
            set_location_assignment PIN_A15 -to externalLeds0[89]
            set_location_assignment PIN_E7 -to externalLeds0[37]
            set_location_assignment PIN_C7 -to externalLeds0[49]
            set_location_assignment PIN_F10 -to externalLeds0[2]
            set_location_assignment PIN_D22 -to externalLeds0[93]
            set_location_assignment PIN_D21 -to externalLeds0[81]
            set_location_assignment PIN_A16 -to externalLeds0[53]
            set_location_assignment PIN_C15 -to externalLeds0[65]
            set_location_assignment PIN_K17 -to externalLeds0[41]
            set_location_assignment PIN_H20 -to externalLeds0[107]
            set_location_assignment PIN_G10 -to externalLeds0[14]
            set_location_assignment PIN_C17 -to externalLeds0[66]
            set_location_assignment PIN_B17 -to externalLeds0[78]
            set_location_assignment PIN_H10 -to externalLeds0[26]
            set_location_assignment PIN_G9 -to externalLeds0[38]
    # Commit assignments
    export_assignments

    # Close project
    if {$need_to_close_project} {
        project_close
    }
}

