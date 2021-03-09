
################################################################
# This is a generated script based on design: two_dig_add
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
# source two_dig_add_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7vx485tffg1157-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name two_dig_add

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
  set A0 [ create_bd_port -dir I -from 0 -to 0 A0 ]
  set A1 [ create_bd_port -dir I -from 0 -to 0 A1 ]
  set A2 [ create_bd_port -dir I -from 0 -to 0 A2 ]
  set A3 [ create_bd_port -dir I -from 0 -to 0 A3 ]
  set B0 [ create_bd_port -dir I -from 0 -to 0 B0 ]
  set B1 [ create_bd_port -dir I -from 0 -to 0 B1 ]
  set B2 [ create_bd_port -dir I -from 0 -to 0 B2 ]
  set B3 [ create_bd_port -dir I -from 0 -to 0 B3 ]
  set C_in [ create_bd_port -dir I -from 0 -to 0 C_in ]
  set S0_0 [ create_bd_port -dir O -from 0 -to 0 S0_0 ]
  set S0_1 [ create_bd_port -dir O -from 0 -to 0 S0_1 ]
  set S0_2 [ create_bd_port -dir O -from 0 -to 0 S0_2 ]
  set S0_3 [ create_bd_port -dir O -from 0 -to 0 S0_3 ]
  set S1_0 [ create_bd_port -dir O -from 0 -to 0 S1_0 ]
  set S1_1 [ create_bd_port -dir O -from 0 -to 0 S1_1 ]
  set S1_2 [ create_bd_port -dir O -from 0 -to 0 S1_2 ]
  set S1_3 [ create_bd_port -dir O -from 0 -to 0 S1_3 ]

  # Create instance: HalfAdder_0, and set properties
  set HalfAdder_0 [ create_bd_cell -type ip -vlnv Group5:user:HalfAdder:1.0 HalfAdder_0 ]

  # Create instance: binary_4_bit_adder_0, and set properties
  set binary_4_bit_adder_0 [ create_bd_cell -type ip -vlnv Group5:user:binary_4_bit_adder:1.0 binary_4_bit_adder_0 ]

  # Create instance: binary_4_bit_adder_1, and set properties
  set binary_4_bit_adder_1 [ create_bd_cell -type ip -vlnv Group5:user:binary_4_bit_adder:1.0 binary_4_bit_adder_1 ]

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_1

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_1

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_2

  # Create port connections
  connect_bd_net -net A0_1 [get_bd_ports A0] [get_bd_pins binary_4_bit_adder_0/A0]
  connect_bd_net -net A1_1 [get_bd_ports A1] [get_bd_pins binary_4_bit_adder_0/A1]
  connect_bd_net -net A2_1 [get_bd_ports A2] [get_bd_pins binary_4_bit_adder_0/A2]
  connect_bd_net -net A3_1 [get_bd_ports A3] [get_bd_pins binary_4_bit_adder_0/A3]
  connect_bd_net -net B0_1 [get_bd_ports B0] [get_bd_pins binary_4_bit_adder_0/B0]
  connect_bd_net -net B1_1 [get_bd_ports B1] [get_bd_pins binary_4_bit_adder_0/B1]
  connect_bd_net -net B2_1 [get_bd_ports B2] [get_bd_pins binary_4_bit_adder_0/B2]
  connect_bd_net -net B3_1 [get_bd_ports B3] [get_bd_pins binary_4_bit_adder_0/B3]
  connect_bd_net -net C_in_1 [get_bd_ports C_in] [get_bd_pins binary_4_bit_adder_0/C_in]
  connect_bd_net -net HalfAdder_0_C_out [get_bd_ports S1_1] [get_bd_pins HalfAdder_0/C_out]
  connect_bd_net -net HalfAdder_0_S [get_bd_ports S1_0] [get_bd_pins HalfAdder_0/S]
  connect_bd_net -net binary_4_bit_adder_0_C_out [get_bd_pins HalfAdder_0/B] [get_bd_pins binary_4_bit_adder_0/C_out]
  connect_bd_net -net binary_4_bit_adder_0_S0 [get_bd_pins binary_4_bit_adder_0/S0] [get_bd_pins binary_4_bit_adder_1/A0]
  connect_bd_net -net binary_4_bit_adder_0_S1 [get_bd_pins binary_4_bit_adder_0/S1] [get_bd_pins binary_4_bit_adder_1/A1] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net binary_4_bit_adder_0_S2 [get_bd_pins binary_4_bit_adder_0/S2] [get_bd_pins binary_4_bit_adder_1/A2] [get_bd_pins util_vector_logic_1/Op2]
  connect_bd_net -net binary_4_bit_adder_0_S3 [get_bd_pins binary_4_bit_adder_0/S3] [get_bd_pins binary_4_bit_adder_1/A3] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net binary_4_bit_adder_1_C_out [get_bd_pins HalfAdder_0/A] [get_bd_pins binary_4_bit_adder_1/C_out]
  connect_bd_net -net binary_4_bit_adder_1_S0 [get_bd_ports S0_0] [get_bd_pins binary_4_bit_adder_1/S0]
  connect_bd_net -net binary_4_bit_adder_1_S1 [get_bd_ports S0_1] [get_bd_pins binary_4_bit_adder_1/S1]
  connect_bd_net -net binary_4_bit_adder_1_S2 [get_bd_ports S0_2] [get_bd_pins binary_4_bit_adder_1/S2]
  connect_bd_net -net binary_4_bit_adder_1_S3 [get_bd_ports S0_3] [get_bd_pins binary_4_bit_adder_1/S3]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins binary_4_bit_adder_1/B1] [get_bd_pins binary_4_bit_adder_1/B2] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins binary_4_bit_adder_1/B0] [get_bd_pins binary_4_bit_adder_1/B3] [get_bd_pins binary_4_bit_adder_1/C_in] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_ports S1_2] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_ports S1_3] [get_bd_pins xlconstant_2/dout]

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


