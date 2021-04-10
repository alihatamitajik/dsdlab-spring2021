
################################################################
# This is a generated script based on design: dig_reduce
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
# source dig_reduce_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7vx485tffg1157-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name dig_reduce

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
  set C0 [ create_bd_port -dir I -from 0 -to 0 C0 ]
  set C1 [ create_bd_port -dir I -from 0 -to 0 C1 ]
  set C2 [ create_bd_port -dir I -from 0 -to 0 C2 ]
  set C3 [ create_bd_port -dir I -from 0 -to 0 C3 ]
  set D0 [ create_bd_port -dir I -from 0 -to 0 D0 ]
  set D1 [ create_bd_port -dir I -from 0 -to 0 D1 ]
  set D2 [ create_bd_port -dir I -from 0 -to 0 D2 ]
  set D3 [ create_bd_port -dir I -from 0 -to 0 D3 ]
  set S0 [ create_bd_port -dir O -from 0 -to 0 S0 ]
  set S1 [ create_bd_port -dir O -from 0 -to 0 S1 ]
  set S2 [ create_bd_port -dir O -from 0 -to 0 S2 ]
  set S3 [ create_bd_port -dir O -from 0 -to 0 S3 ]

  # Create instance: BCDAWOC_0, and set properties
  set BCDAWOC_0 [ create_bd_cell -type ip -vlnv Group5:user:BCDAWOC:1.0 BCDAWOC_0 ]

  # Create instance: BCDAWOC_1, and set properties
  set BCDAWOC_1 [ create_bd_cell -type ip -vlnv Group5:user:BCDAWOC:1.0 BCDAWOC_1 ]

  # Create instance: BCDAWOC_2, and set properties
  set BCDAWOC_2 [ create_bd_cell -type ip -vlnv Group5:user:BCDAWOC:1.0 BCDAWOC_2 ]

  # Create instance: BCDAWOC_3, and set properties
  set BCDAWOC_3 [ create_bd_cell -type ip -vlnv Group5:user:BCDAWOC:1.0 BCDAWOC_3 ]

  # Create instance: BCDAWOC_4, and set properties
  set BCDAWOC_4 [ create_bd_cell -type ip -vlnv Group5:user:BCDAWOC:1.0 BCDAWOC_4 ]

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create port connections
  connect_bd_net -net A0_1 [get_bd_ports A0] [get_bd_pins BCDAWOC_0/A0]
  connect_bd_net -net A1_1 [get_bd_ports A1] [get_bd_pins BCDAWOC_0/A1]
  connect_bd_net -net A2_1 [get_bd_ports A2] [get_bd_pins BCDAWOC_0/A2]
  connect_bd_net -net A3_1 [get_bd_ports A3] [get_bd_pins BCDAWOC_0/A3]
  connect_bd_net -net B0_1 [get_bd_ports B0] [get_bd_pins BCDAWOC_0/B0]
  connect_bd_net -net B1_1 [get_bd_ports B1] [get_bd_pins BCDAWOC_0/B1]
  connect_bd_net -net B2_1 [get_bd_ports B2] [get_bd_pins BCDAWOC_0/B2]
  connect_bd_net -net B3_1 [get_bd_ports B3] [get_bd_pins BCDAWOC_0/B3]
  connect_bd_net -net BCDAWOC_0_C_out [get_bd_pins BCDAWOC_0/C_out] [get_bd_pins BCDAWOC_3/A0]
  connect_bd_net -net BCDAWOC_0_S0 [get_bd_pins BCDAWOC_0/S0] [get_bd_pins BCDAWOC_2/A0]
  connect_bd_net -net BCDAWOC_0_S1 [get_bd_pins BCDAWOC_0/S1] [get_bd_pins BCDAWOC_2/A1]
  connect_bd_net -net BCDAWOC_0_S2 [get_bd_pins BCDAWOC_0/S2] [get_bd_pins BCDAWOC_2/A2]
  connect_bd_net -net BCDAWOC_0_S3 [get_bd_pins BCDAWOC_0/S3] [get_bd_pins BCDAWOC_2/A3]
  connect_bd_net -net BCDAWOC_1_C_out [get_bd_pins BCDAWOC_1/C_out] [get_bd_pins BCDAWOC_2/C_in]
  connect_bd_net -net BCDAWOC_1_S0 [get_bd_pins BCDAWOC_1/S0] [get_bd_pins BCDAWOC_2/B0]
  connect_bd_net -net BCDAWOC_1_S1 [get_bd_pins BCDAWOC_1/S1] [get_bd_pins BCDAWOC_2/B1]
  connect_bd_net -net BCDAWOC_1_S2 [get_bd_pins BCDAWOC_1/S2] [get_bd_pins BCDAWOC_2/B2]
  connect_bd_net -net BCDAWOC_1_S3 [get_bd_pins BCDAWOC_1/S3] [get_bd_pins BCDAWOC_2/B3]
  connect_bd_net -net BCDAWOC_2_C_out [get_bd_pins BCDAWOC_2/C_out] [get_bd_pins BCDAWOC_3/C_in]
  connect_bd_net -net BCDAWOC_2_S0 [get_bd_pins BCDAWOC_2/S0] [get_bd_pins BCDAWOC_3/B0]
  connect_bd_net -net BCDAWOC_2_S1 [get_bd_pins BCDAWOC_2/S1] [get_bd_pins BCDAWOC_3/B1]
  connect_bd_net -net BCDAWOC_2_S2 [get_bd_pins BCDAWOC_2/S2] [get_bd_pins BCDAWOC_3/B2]
  connect_bd_net -net BCDAWOC_2_S3 [get_bd_pins BCDAWOC_2/S3] [get_bd_pins BCDAWOC_3/B3]
  connect_bd_net -net BCDAWOC_3_C_out [get_bd_pins BCDAWOC_3/C_out] [get_bd_pins BCDAWOC_4/C_in]
  connect_bd_net -net BCDAWOC_3_S0 [get_bd_pins BCDAWOC_3/S0] [get_bd_pins BCDAWOC_4/B0]
  connect_bd_net -net BCDAWOC_3_S1 [get_bd_pins BCDAWOC_3/S1] [get_bd_pins BCDAWOC_4/B1]
  connect_bd_net -net BCDAWOC_3_S2 [get_bd_pins BCDAWOC_3/S2] [get_bd_pins BCDAWOC_4/B2]
  connect_bd_net -net BCDAWOC_3_S3 [get_bd_pins BCDAWOC_3/S3] [get_bd_pins BCDAWOC_4/B3]
  connect_bd_net -net BCDAWOC_4_S0 [get_bd_ports S0] [get_bd_pins BCDAWOC_4/S0]
  connect_bd_net -net BCDAWOC_4_S1 [get_bd_ports S1] [get_bd_pins BCDAWOC_4/S1]
  connect_bd_net -net BCDAWOC_4_S2 [get_bd_ports S2] [get_bd_pins BCDAWOC_4/S2]
  connect_bd_net -net BCDAWOC_4_S3 [get_bd_ports S3] [get_bd_pins BCDAWOC_4/S3]
  connect_bd_net -net C0_1 [get_bd_ports C0] [get_bd_pins BCDAWOC_1/A0]
  connect_bd_net -net C1_1 [get_bd_ports C1] [get_bd_pins BCDAWOC_1/A1]
  connect_bd_net -net C2_1 [get_bd_ports C2] [get_bd_pins BCDAWOC_1/A2]
  connect_bd_net -net C3_1 [get_bd_ports C3] [get_bd_pins BCDAWOC_1/A3]
  connect_bd_net -net D0_1 [get_bd_ports D0] [get_bd_pins BCDAWOC_1/B0]
  connect_bd_net -net D1_1 [get_bd_ports D1] [get_bd_pins BCDAWOC_1/B1]
  connect_bd_net -net D2_1 [get_bd_ports D2] [get_bd_pins BCDAWOC_1/B2]
  connect_bd_net -net D3_1 [get_bd_ports D3] [get_bd_pins BCDAWOC_1/B3]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins BCDAWOC_0/C_in] [get_bd_pins BCDAWOC_1/C_in] [get_bd_pins BCDAWOC_3/A1] [get_bd_pins BCDAWOC_3/A2] [get_bd_pins BCDAWOC_3/A3] [get_bd_pins BCDAWOC_4/A0] [get_bd_pins BCDAWOC_4/A1] [get_bd_pins BCDAWOC_4/A2] [get_bd_pins BCDAWOC_4/A3] [get_bd_pins xlconstant_0/dout]

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


