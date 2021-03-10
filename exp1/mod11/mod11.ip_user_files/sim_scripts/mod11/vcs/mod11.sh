#!/bin/bash -f
#*********************************************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : mod11.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Wed Mar 10 07:23:32 +0330 2021
# SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved. 
#
# usage: mod11.sh [-help]
# usage: mod11.sh [-lib_map_path]
# usage: mod11.sh [-noclean_files]
# usage: mod11.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'mod11.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#*********************************************************************************************************

# Directory path for design sources and include directories (if any) wrt this path
ref_dir="."

# Override directory with 'export_sim_ref_dir' env path value if set in the shell
if [[ (! -z "$export_sim_ref_dir") && ($export_sim_ref_dir != "") ]]; then
  ref_dir="$export_sim_ref_dir"
fi

# Command line options
vlogan_opts="-full64"
vhdlan_opts="-full64"
vcs_elab_opts="-full64 -debug_pp -t ps -licqueue -l elaborate.log"
vcs_sim_opts="-ucli -licqueue -l simulate.log"

# Design libraries
design_libs=(util_vector_logic_v2_0_1 xil_defaultlib xlconstant_v1_1_6)

# Simulation root library directory
sim_lib_dir="vcs_lib"

# Script info
echo -e "mod11.sh - Script generated by export_simulation (Vivado v2019.1 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  # Compile design files
  vlogan -work util_vector_logic_v2_0_1 $vlogan_opts +v2k \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_bcdAdder_0_0/src/bcdAdder_Adder_4bit_0_0/src/Adder_4bit_FullAdder_0_7/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_bcdAdder_0_0/src/bcdAdder_Adder_4bit_0_0/src/Adder_4bit_FullAdder_0_7/src/FullAdder_util_vector_logic_0_0/sim/FullAdder_util_vector_logic_0_0.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_bcdAdder_0_0/src/bcdAdder_Adder_4bit_0_0/src/Adder_4bit_FullAdder_0_7/src/FullAdder_util_vector_logic_0_1/sim/FullAdder_util_vector_logic_0_1.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_bcdAdder_0_0/src/bcdAdder_Adder_4bit_0_0/src/Adder_4bit_FullAdder_0_7/src/FullAdder_util_vector_logic_0_2/sim/FullAdder_util_vector_logic_0_2.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_bcdAdder_0_0/src/bcdAdder_Adder_4bit_0_0/src/Adder_4bit_FullAdder_0_7/src/FullAdder_util_vector_logic_0_3/sim/FullAdder_util_vector_logic_0_3.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_bcdAdder_0_0/src/bcdAdder_Adder_4bit_0_0/src/Adder_4bit_FullAdder_0_7/src/FullAdder_util_vector_logic_0_4/sim/FullAdder_util_vector_logic_0_4.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_bcdAdder_0_0/src/bcdAdder_Adder_4bit_0_0/ipshared/fdfd/sim/FullAdder.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_bcdAdder_0_0/src/bcdAdder_Adder_4bit_0_0/src/Adder_4bit_FullAdder_0_7/sim/Adder_4bit_FullAdder_0_7.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_bcdAdder_0_0/src/bcdAdder_Adder_4bit_0_0/src/Adder_4bit_FullAdder_0_8/sim/Adder_4bit_FullAdder_0_8.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_bcdAdder_0_0/src/bcdAdder_Adder_4bit_0_0/src/Adder_4bit_FullAdder_1_3/sim/Adder_4bit_FullAdder_1_3.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_bcdAdder_0_0/src/bcdAdder_Adder_4bit_0_0/src/Adder_4bit_FullAdder_2_3/sim/Adder_4bit_FullAdder_2_3.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_bcdAdder_0_0/ipshared/b6f5/sim/Adder_4bit.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_bcdAdder_0_0/src/bcdAdder_Adder_4bit_0_0/sim/bcdAdder_Adder_4bit_0_0.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_bcdAdder_0_0/src/bcdAdder_Adder_4bit_0_1/sim/bcdAdder_Adder_4bit_0_1.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_bcdAdder_0_0/src/bcdAdder_util_vector_logic_0_0/sim/bcdAdder_util_vector_logic_0_0.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_bcdAdder_0_0/src/bcdAdder_util_vector_logic_0_1/sim/bcdAdder_util_vector_logic_0_1.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_bcdAdder_0_0/src/bcdAdder_util_vector_logic_1_0/sim/bcdAdder_util_vector_logic_1_0.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_bcdAdder_0_0/src/bcdAdder_util_vector_logic_2_0/sim/bcdAdder_util_vector_logic_2_0.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xlconstant_v1_1_6 $vlogan_opts +v2k \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_bcdAdder_0_0/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_bcdAdder_0_0/src/bcdAdder_xlconstant_0_0/sim/bcdAdder_xlconstant_0_0.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ipshared/6b4a/sim/bcdAdder.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_bcdAdder_0_0/sim/mod11_bcdAdder_0_0.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_bcdAdder_0_1/sim/mod11_bcdAdder_0_1.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_Adder_4bit_0_0/sim/mod11_Adder_4bit_0_0.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_Adder_4bit_0_1/sim/mod11_Adder_4bit_0_1.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_xlconstant_0_0/sim/mod11_xlconstant_0_0.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_util_vector_logic_0_0/sim/mod11_util_vector_logic_0_0.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_util_vector_logic_0_1/sim/mod11_util_vector_logic_0_1.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_util_vector_logic_1_0/sim/mod11_util_vector_logic_1_0.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_util_vector_logic_2_0/sim/mod11_util_vector_logic_2_0.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_util_vector_logic_1_1/sim/mod11_util_vector_logic_1_1.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_util_vector_logic_4_0/sim/mod11_util_vector_logic_4_0.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_util_vector_logic_5_0/sim/mod11_util_vector_logic_5_0.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/ip/mod11_util_vector_logic_6_0/sim/mod11_util_vector_logic_6_0.v" \
    "$ref_dir/../../../../mod11.srcs/sources_1/bd/mod11/sim/mod11.v" \
  2>&1 | tee -a vlogan.log


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log

}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.mod11 xil_defaultlib.glbl -o mod11_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./mod11_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./mod11.sh -help\" for more information)\n"
        exit 1
      fi
      create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
      create_lib_mappings $2
  esac

  create_lib_dir

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($1 == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  lib_map_path=""
  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# Create design library directory paths
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key mod11_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc mod11_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done

  create_lib_dir
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./mod11.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: mod11.sh [-help]\n\
Usage: mod11.sh [-lib_map_path]\n\
Usage: mod11.sh [-reset_run]\n\
Usage: mod11.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2
