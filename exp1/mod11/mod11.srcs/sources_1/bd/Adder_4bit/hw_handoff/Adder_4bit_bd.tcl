
################################################################
# This is a generated script based on design: Adder_4bit
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source Adder_4bit_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7k325tffg900-2
   set_property BOARD_PART xilinx.com:kc705:part0:1.6 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name Adder_4bit

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set C_in [ create_bd_port -dir I -from 0 -to 0 C_in ]
  set C_out [ create_bd_port -dir O -from 0 -to 0 C_out ]
  set a1 [ create_bd_port -dir I -from 0 -to 0 a1 ]
  set a2 [ create_bd_port -dir I -from 0 -to 0 a2 ]
  set a3 [ create_bd_port -dir I -from 0 -to 0 a3 ]
  set a4 [ create_bd_port -dir I -from 0 -to 0 a4 ]
  set b1 [ create_bd_port -dir I -from 0 -to 0 b1 ]
  set b2 [ create_bd_port -dir I -from 0 -to 0 b2 ]
  set b3 [ create_bd_port -dir I -from 0 -to 0 b3 ]
  set b4 [ create_bd_port -dir I -from 0 -to 0 b4 ]
  set s1 [ create_bd_port -dir O -from 0 -to 0 s1 ]
  set s2 [ create_bd_port -dir O -from 0 -to 0 s2 ]
  set s3 [ create_bd_port -dir O -from 0 -to 0 s3 ]
  set s4 [ create_bd_port -dir O -from 0 -to 0 s4 ]

  # Create instance: FullAdder_0, and set properties
  set FullAdder_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:FullAdder:1.0 FullAdder_0 ]

  # Create instance: FullAdder_1, and set properties
  set FullAdder_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:FullAdder:1.0 FullAdder_1 ]

  # Create instance: FullAdder_2, and set properties
  set FullAdder_2 [ create_bd_cell -type ip -vlnv xilinx.com:user:FullAdder:1.0 FullAdder_2 ]

  # Create instance: FullAdder_3, and set properties
  set FullAdder_3 [ create_bd_cell -type ip -vlnv xilinx.com:user:FullAdder:1.0 FullAdder_3 ]

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_3

  # Create port connections
  connect_bd_net -net C_in_1 [get_bd_ports C_in] [get_bd_pins FullAdder_0/A] [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins util_vector_logic_1/Op1] [get_bd_pins util_vector_logic_2/Op1] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net FullAdder_0_C_out [get_bd_pins FullAdder_0/C_out] [get_bd_pins FullAdder_1/A]
  connect_bd_net -net FullAdder_0_Sum [get_bd_ports s1] [get_bd_pins FullAdder_0/Sum]
  connect_bd_net -net FullAdder_1_C_out [get_bd_pins FullAdder_1/C_out] [get_bd_pins FullAdder_3/A]
  connect_bd_net -net FullAdder_1_Sum [get_bd_ports s2] [get_bd_pins FullAdder_1/Sum]
  connect_bd_net -net FullAdder_2_C_out [get_bd_ports C_out] [get_bd_pins FullAdder_2/C_out]
  connect_bd_net -net FullAdder_2_Sum [get_bd_ports s4] [get_bd_pins FullAdder_2/Sum]
  connect_bd_net -net FullAdder_3_C_out [get_bd_pins FullAdder_2/A] [get_bd_pins FullAdder_3/C_out]
  connect_bd_net -net FullAdder_3_Sum [get_bd_ports s3] [get_bd_pins FullAdder_3/Sum]
  connect_bd_net -net a1_1 [get_bd_ports a1] [get_bd_pins FullAdder_0/B]
  connect_bd_net -net a2_1 [get_bd_ports a2] [get_bd_pins FullAdder_1/C_in]
  connect_bd_net -net a3_1 [get_bd_ports a3] [get_bd_pins FullAdder_3/C_in]
  connect_bd_net -net a4_1 [get_bd_ports a4] [get_bd_pins FullAdder_2/C_in]
  connect_bd_net -net b1_1 [get_bd_ports b1] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net b2_1 [get_bd_ports b2] [get_bd_pins util_vector_logic_1/Op2]
  connect_bd_net -net b3_1 [get_bd_ports b3] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net b4_1 [get_bd_ports b4] [get_bd_pins util_vector_logic_3/Op2]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins FullAdder_0/C_in] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins FullAdder_1/B] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins FullAdder_3/B] [get_bd_pins util_vector_logic_2/Res]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins FullAdder_2/B] [get_bd_pins util_vector_logic_3/Res]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


