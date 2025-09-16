source "buffer_chain_flow_helpers.tcl"
#source "Nangate45/Nangate45.vars"


set design "buffer_chain"
set top_module "buffer_chain"
set synth_verilog "buffer_chain.v"
set sdc_file "buffer_chain.sdc"

read_liberty Nangate45/Nangate45_typ.lib
read_lef Nangate45/Nangate45_tech.lef
read_lef Nangate45/Nangate45_stdcell.lef
read_verilog buffer_chain.v
#link_design buffer_chain
#write_def tmp.def
read_def gcd_nangate45.def
read_sdc buffer_chain.sdc

pin_access

make_tracks metal1 -x_offset 0.095 -x_pitch 0.19 -y_offset 0.07 -y_pitch 0.14
make_tracks metal2 -x_offset 0.095 -x_pitch 0.19 -y_offset 0.07 -y_pitch  0.14
make_tracks metal3 -x_offset 0.095 -x_pitch 0.19 -y_offset 0.07 -y_pitch  0.14
make_tracks metal4 -x_offset 0.095 -x_pitch 0.28 -y_offset 0.07 -y_pitch  0.28
make_tracks metal5 -x_offset 0.095 -x_pitch 0.28 -y_offset 0.07 -y_pitch  0.28
make_tracks metal6 -x_offset 0.095 -x_pitch 0.28 -y_offset 0.07 -y_pitch  0.28
make_tracks metal7 -x_offset 0.095 -x_pitch 0.8 -y_offset 0.07 -y_pitch  0.8
make_tracks metal8 -x_offset 0.095 -x_pitch 0.8 -y_offset 0.07 -y_pitch  0.8
make_tracks metal9 -x_offset 0.095 -x_pitch 1.6 -y_offset 0.07 -y_pitch  1.6
make_tracks metal10 -x_offset 0.095 -x_pitch 1.6 -y_offset 0.07 -y_pitch 1.6


place_pins -hor_layers metal1 -ver_layers metal2
detailed_placement


#set die_area {0 0 1000000 11200}
#set core_area {5 5 999995 11195}

#source -echo "flow.tcl"
