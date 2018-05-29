
################################################################
# This is a generated script based on design: SingleCycleCPUDesign
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
set scripts_vivado_version 2017.2
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
# source SingleCycleCPUDesign_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# SelectAndShow, SingleCycleCPU, bcdToseg7, generSingal

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
}


# CHANGE DESIGN NAME HERE
set design_name SingleCycleCPUDesign

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
  set AN0 [ create_bd_port -dir O AN0 ]
  set AN1 [ create_bd_port -dir O AN1 ]
  set AN2 [ create_bd_port -dir O AN2 ]
  set AN3 [ create_bd_port -dir O AN3 ]
  set CLK [ create_bd_port -dir I CLK ]
  set Control0 [ create_bd_port -dir I Control0 ]
  set Control1 [ create_bd_port -dir I Control1 ]
  set Enable [ create_bd_port -dir I Enable ]
  set Reset [ create_bd_port -dir I -type rst Reset ]
  set a [ create_bd_port -dir O a ]
  set b [ create_bd_port -dir O b ]
  set c [ create_bd_port -dir O c ]
  set d [ create_bd_port -dir O d ]
  set e [ create_bd_port -dir O e ]
  set f [ create_bd_port -dir O f ]
  set g [ create_bd_port -dir O g ]

  # Create instance: SelectAndShow_0, and set properties
  set block_name SelectAndShow
  set block_cell_name SelectAndShow_0
  if { [catch {set SelectAndShow_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $SelectAndShow_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: SingleCycleCPU_0, and set properties
  set block_name SingleCycleCPU
  set block_cell_name SingleCycleCPU_0
  if { [catch {set SingleCycleCPU_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $SingleCycleCPU_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: bcdToseg7_0, and set properties
  set block_name bcdToseg7
  set block_cell_name bcdToseg7_0
  if { [catch {set bcdToseg7_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $bcdToseg7_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: clk_div_0, and set properties
  set clk_div_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:clk_div:1.0 clk_div_0 ]

  # Create instance: clk_div_1, and set properties
  set clk_div_1 [ create_bd_cell -type ip -vlnv xilinx.com:xup:clk_div:1.0 clk_div_1 ]
  set_property -dict [ list \
CONFIG.N {10000} \
 ] $clk_div_1

  # Create instance: four_2_input_and_gate_0, and set properties
  set four_2_input_and_gate_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:four_2_input_and_gate:1.0 four_2_input_and_gate_0 ]

  # Create instance: generSingal_0, and set properties
  set block_name generSingal
  set block_cell_name generSingal_0
  if { [catch {set generSingal_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $generSingal_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net B1_1 [get_bd_ports Enable] [get_bd_pins four_2_input_and_gate_0/B1]
  connect_bd_net -net CLK_1 [get_bd_ports CLK] [get_bd_pins clk_div_0/clk_in] [get_bd_pins clk_div_1/clk_in]
  connect_bd_net -net Control0_1 [get_bd_ports Control0] [get_bd_pins SelectAndShow_0/showControl0]
  connect_bd_net -net Control1_1 [get_bd_ports Control1] [get_bd_pins SelectAndShow_0/showControl1]
  connect_bd_net -net Reset_1 [get_bd_ports Reset] [get_bd_pins SingleCycleCPU_0/Reset]
  connect_bd_net -net SelectShow_0_showResult [get_bd_pins SelectAndShow_0/showResult] [get_bd_pins generSingal_0/showInput]
  connect_bd_net -net SingleCycleCPU_0_Address [get_bd_pins SelectAndShow_0/PCAddress] [get_bd_pins SingleCycleCPU_0/Address]
  connect_bd_net -net SingleCycleCPU_0_DBData [get_bd_pins SelectAndShow_0/DBData] [get_bd_pins SingleCycleCPU_0/DBData]
  connect_bd_net -net SingleCycleCPU_0_DBDataSrc [get_bd_pins SelectAndShow_0/DBDataSrc] [get_bd_pins SingleCycleCPU_0/DBDataSrc]
  connect_bd_net -net SingleCycleCPU_0_Data1 [get_bd_pins SelectAndShow_0/Data1] [get_bd_pins SingleCycleCPU_0/Data1]
  connect_bd_net -net SingleCycleCPU_0_Data2 [get_bd_pins SelectAndShow_0/Data2] [get_bd_pins SingleCycleCPU_0/Data2]
  connect_bd_net -net SingleCycleCPU_0_Result [get_bd_pins SelectAndShow_0/ALUResult] [get_bd_pins SingleCycleCPU_0/Result]
  connect_bd_net -net SingleCycleCPU_0_nextAddress [get_bd_pins SelectAndShow_0/nextAddress] [get_bd_pins SingleCycleCPU_0/nextAddress]
  connect_bd_net -net SingleCycleCPU_0_rs [get_bd_pins SelectAndShow_0/rs] [get_bd_pins SingleCycleCPU_0/rs]
  connect_bd_net -net SingleCycleCPU_0_rt [get_bd_pins SelectAndShow_0/rt] [get_bd_pins SingleCycleCPU_0/rt]
  connect_bd_net -net bcdToseg7_0_a [get_bd_ports a] [get_bd_pins bcdToseg7_0/a]
  connect_bd_net -net bcdToseg7_0_b [get_bd_ports b] [get_bd_pins bcdToseg7_0/b]
  connect_bd_net -net bcdToseg7_0_c [get_bd_ports c] [get_bd_pins bcdToseg7_0/c]
  connect_bd_net -net bcdToseg7_0_d [get_bd_ports d] [get_bd_pins bcdToseg7_0/d]
  connect_bd_net -net bcdToseg7_0_e [get_bd_ports e] [get_bd_pins bcdToseg7_0/e]
  connect_bd_net -net bcdToseg7_0_f [get_bd_ports f] [get_bd_pins bcdToseg7_0/f]
  connect_bd_net -net bcdToseg7_0_g [get_bd_ports g] [get_bd_pins bcdToseg7_0/g]
  connect_bd_net -net clk_div_0_clk_out [get_bd_pins clk_div_0/clk_out] [get_bd_pins four_2_input_and_gate_0/A1]
  connect_bd_net -net clk_div_1_clk_out [get_bd_pins clk_div_1/clk_out] [get_bd_pins generSingal_0/clk]
  connect_bd_net -net four_2_input_and_gate_0_Y1 [get_bd_pins SingleCycleCPU_0/clk] [get_bd_pins four_2_input_and_gate_0/Y1]
  connect_bd_net -net generSingal_0_AN1 [get_bd_ports AN0] [get_bd_pins generSingal_0/AN1]
  connect_bd_net -net generSingal_0_AN2 [get_bd_ports AN1] [get_bd_pins generSingal_0/AN2]
  connect_bd_net -net generSingal_0_AN3 [get_bd_ports AN2] [get_bd_pins generSingal_0/AN3]
  connect_bd_net -net generSingal_0_AN4 [get_bd_ports AN3] [get_bd_pins generSingal_0/AN4]
  connect_bd_net -net generSingal_0_t0 [get_bd_pins bcdToseg7_0/t0] [get_bd_pins generSingal_0/t0]
  connect_bd_net -net generSingal_0_t1 [get_bd_pins bcdToseg7_0/t1] [get_bd_pins generSingal_0/t1]
  connect_bd_net -net generSingal_0_t2 [get_bd_pins bcdToseg7_0/t2] [get_bd_pins generSingal_0/t2]
  connect_bd_net -net generSingal_0_t3 [get_bd_pins bcdToseg7_0/t3] [get_bd_pins generSingal_0/t3]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


