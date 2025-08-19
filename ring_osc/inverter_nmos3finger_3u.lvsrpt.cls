##############################################################################################################
#####  
#####                                       Pegasus LVS COMPARISON
#####  
#####  Version                       :   22.14-s007
#####  NVN Run Start                 :   Mon Aug 18 00:47:56 2025
#####  ERC Summary File              :   result.sum
#####  Extraction Report File        :   inverter_nmos3finger_3u.lvsrpt
#####  Comparison Report File        :   inverter_nmos3finger_3u.lvsrpt.cls
#####  Top Cell                      :   inverter_nmos3finger_3u  <vs>  inverter_nmos3finger_3u
#####  
#####                                :      @     @
#####                                :       @   @ 
#####                                :        @ @  
#####  Run Result                    :     MISMATCH
#####                                :        @ @  
#####                                :       @   @ 
#####                                :      @     @
#####  
#####  Run Summary                   :   [ERROR] Connectivity Mismatches
#####                                :   [ERROR] Pin Mismatches
#####                                :   [INFO]  ERC Results: Empty
#####                                :   [INFO]  Extraction Clean
#####  
#####  Layout Design                 :   /home/aa/users/cs199-anb/Desktop/tvip-analog-workspace/inverter_nmos3finger_3u.gds (GDSII)
#####  Layout File                   :   inverter_nmos3finger_3u.net (cdl)
#####  Schematic File                :   ../inverter_nmos3finger_3u.cdl (cdl)
#####  Rules File                    :   /home/aa/users/cs199-anb/Desktop/tvip-analog-workspace/ring_osc/../Sky130_LVS/sky130.lvs.pvl
#####  Pin Swap File                 :   inverter_nmos3finger_3u.lvsrpt.cps
#####  
#####  Extraction CPU Time           :   0h 0m 1s - (1s)
#####  Extraction Exec Time          :   0h 0m 6s - (6s)
#####  Extraction Peak Memory Usage  :   142.00MB
#####  NVN CPU Time                  :   0h 0m 0s - (0s)                 
#####  NVN Exec Time                 :   0h 0m 1s - (1s)                 
#####  NVN Peak Memory Usage         :   323.52MB
#####  LVS Total CPU Time            :   0h 0m 1s - (1s)                 
#####  LVS Total Exec Time           :   0h 0m 7s - (7s)                 
#####  LVS Total Peak Memory Usage   :   323.52MB
#####  
##############################################################################################################


##############################################################################################################
#
#                                            CELL MATCH STATISTICS                                            
#
##############################################################################################################

Cell Statistic Descriptions                  | Count
---------------------------------------------+----------
Cells matched                                |         0
Cells expanded                               |         0
Cells not run                                |         0
Cells which mismatch                         |         1
---------------------------------------------+----------
Total                                        |         1


Cell Statistic Detail                        | Count
---------------------------------------------+----------
Cells with parameter mismatches              |         0
Cells with mismatched instance subtypes      |         0
Cells that have been blackboxed              |         0


##############################################################################################################
#
#                                             CELL MATCH SUMMARY                                              
#
##############################################################################################################

                            |     Initial Pins     |     Compare Pins     |              | 
Cell                        |   lay    :    sch    |   lay    :    sch    | Status       | Detail
----------------------------+----------+-----------+----------+-----------+--------------+-------------------
inverter_nmos3finger_3u     |       *0 :         4 |       *0 :         4 | mismatch     | pin mismatches


##############################################################################################################
#
#                                                  LVS RULES                                                  
#
##############################################################################################################

Command Line LVS Rule Values
----------------------------

    lvs_cname                               yes -cell {-automatch}
    layout_primary                          inverter_nmos3finger_3u {-layout_top_cell inverter_nmos3finger_3u}
    layout_path                             /home/aa/users/cs199-anb/Desktop/tvip-analog-workspace/inverter_nmos3finger_3u.gds
                                            {-gds
                                            /home/aa/users/cs199-anb/Desktop/tvip-analog-workspace/inverter_nmos3finger_3u.gds}
    layout_format                           GDSII {-gds
                                            /home/aa/users/cs199-anb/Desktop/tvip-analog-workspace/inverter_nmos3finger_3u.gds}
    schematic_primary                       inverter_nmos3finger_3u {-source_top_cell inverter_nmos3finger_3u}
    schematic_path                          ../inverter_nmos3finger_3u.cdl {-source_cdl
                                            ../inverter_nmos3finger_3u.cdl}
    schematic_format                        CDL {-source_cdl ../inverter_nmos3finger_3u.cdl}

LVS Rules Given in the Rules File
---------------------------------

    layout_path                             ./sky130_fd_sc_ls__bufinv_16.gds
    layout_format                           gdsii
    layout_primary                          sky130_fd_sc_ls__bufinv_16
    lvs_black_box                           cap_vpp_02p4x04p6_m1m2_noshield -grey
    lvs_black_box                           cap_vpp_04p4x04p6_m1m2_noshield -grey
    lvs_black_box                           cap_vpp_04p4x04p6_m1m2m3_shieldl1 -grey
    lvs_black_box                           cap_vpp_08p6x07p8_m1m2_noshield -grey
    lvs_black_box                           cap_vpp_08p6x07p8_m1m2m3_shieldl1 -grey
    lvs_black_box                           cap_vpp_08p6x07p8_m1m2m3_shieldl1m5_floatm4 -grey
    lvs_black_box                           cap_vpp_11p5x11p7_l1m1m2_shieldpom3 -grey
    lvs_black_box                           cap_vpp_11p5x11p7_l1m1m2m3_shieldm4 -grey
    lvs_black_box                           cap_vpp_11p5x11p7_l1m1m2m3_shieldpom4 -grey
    lvs_black_box                           cap_vpp_11p5x11p7_l1m1m2m3m4_shieldm5 -grey
    lvs_black_box                           cap_vpp_11p5x11p7_l1m1m2m3m4_shieldpom5 -grey
    lvs_black_box                           cap_vpp_11p5x11p7_m1m2_noshield -grey
    lvs_black_box                           cap_vpp_11p5x11p7_m1m2m3_shieldl1 -grey
    lvs_black_box                           cap_vpp_11p5x11p7_m1m2m3m4_shieldl1m5 -grey
    lvs_black_box                           cap_vpp_11p5x11p7_m1m2m3m4_shieldm5 -grey
                                             
    lvs_cdn_flow_options                    -cdl_use_scale
                                             
    lvs_reduce_split_gates                  no  
    lvs_recognize_gates                     -none
    lvs_recognize_gates                     -none
    lvs_reduce                              yes -parallel_mos
    lvs_reduce                              yes -series_mos
                                             
    lvs_check_property                      MP L l
    lvs_check_property                      MP W w
    lvs_check_property                      MN L l
    lvs_check_property                      MN W w
    lvs_check_property                      R W W
    lvs_check_property                      R L L
    lvs_check_property                      C L L
    lvs_check_property                      C W W
    lvs_report_file                         inverter_nmos3finger_3u.lvsrpt
    lvs_short_equivalent_nodes              yes
    lvs_generic_device                      C ( cap_vpp_02p4x04p6_m1m2_noshield ) [ PLUS = C0 MINUS = C1 BULK
                                            = B ] -source
    lvs_generic_device                      C ( cap_vpp_04p4x04p6_m1m2_noshield ) [ PLUS = C0 MINUS = C1 BULK
                                            = B ] -source
    lvs_generic_device                      C ( cap_vpp_04p4x04p6_m1m2m3_shieldl1 ) [ PLUS = C0 MINUS = C1
                                            BULK = B ] -source
    lvs_generic_device                      C ( cap_vpp_08p6x07p8_m1m2_noshield ) [ PLUS = C0 MINUS = C1 BULK
                                            = B ] -source
    lvs_generic_device                      C ( cap_vpp_08p6x07p8_m1m2m3_shieldl1 ) [ PLUS = C0 MINUS = C1
                                            BULK = B ] -source
    lvs_generic_device                      C ( cap_vpp_08p6x07p8_m1m2m3_shieldl1m5_floatm4 ) [ PLUS = C0
                                            MINUS = C1 BULK = B ] -source
    lvs_generic_device                      C ( cap_vpp_11p5x11p7_l1m1m2_shieldpom3 ) [ PLUS = C0 MINUS = C1
                                            BULK = B ] -source
    lvs_generic_device                      C ( cap_vpp_11p5x11p7_l1m1m2m3_shieldm4 ) [ PLUS = C0 MINUS = C1
                                            BULK = B ] -source
    lvs_generic_device                      C ( cap_vpp_11p5x11p7_l1m1m2m3_shieldpom4 ) [ PLUS = C0 MINUS = C1
                                            BULK = B ] -source
    lvs_generic_device                      C ( cap_vpp_11p5x11p7_l1m1m2m3m4_shieldm5 ) [ PLUS = C0 MINUS = C1
                                            BULK = B ] -source
    lvs_generic_device                      C ( cap_vpp_11p5x11p7_l1m1m2m3m4_shieldpom5 ) [ PLUS = C0 MINUS =
                                            C1 BULK = B ] -source
    lvs_generic_device                      C ( cap_vpp_11p5x11p7_m1m2_noshield ) [ PLUS = C0 MINUS = C1 BULK
                                            = B ] -source
    lvs_generic_device                      C ( cap_vpp_11p5x11p7_m1m2m3_shieldl1 ) [ PLUS = C0 MINUS = C1
                                            BULK = B ] -source
    lvs_generic_device                      C ( cap_vpp_11p5x11p7_m1m2m3m4_shieldl1m5 ) [ PLUS = C0 MINUS = C1
                                            BULK = B ] -source
    lvs_generic_device                      C ( cap_vpp_11p5x11p7_m1m2m3m4_shieldm5 ) [ PLUS = C0 MINUS = C1
                                            BULK = B ] -source
    text_depth                              -primary
                                             

Default LVS Rule Values
-----------------------

    lvs_abort                               -softchk no
    lvs_abort                               -supply_error no
    lvs_abort                               -check_device_for_property_rule no
    lvs_abort                               -missing_hcell no
    lvs_abort                               -erc_error yes
    lvs_abort                               -inconsistent_reduction yes
    layout_case_sensitive                   no
    // layout_cpf_file                       
    // schematic_cpf_file                    
    schematic_case_sensitive                no
    // hcell_file                            
    // hcell                                 
    // lvs_exclude_hcell                     
    // lvs_delete_cell                       
    lvs_push_devices                        yes
    lvs_push_devices_properties             no
    lvs_netlist                             yes -substrate_comment
    lvs_netlist                             yes -box_contents
    lvs_netlist                             yes -unnamed_box_pins
    lvs_netlist                             no -allow_inconsistent_model
    lvs_netlist                             yes -properties_comment
    // lvs_write_netlist                     
    // lvs_write_netlist_reduced             
    // lvs_delete_cell_pin                   
    // lvs_interposer                        
    lvs_spice                               yes -allow_floating_pins
    lvs_spice                               yes -allow_duplicate_subcircuit_names
    lvs_spice                               no  -conditional_ldd
    lvs_spice                               no  -prefer_pins
    lvs_spice                               no  -override_globals
    lvs_spice                               no  -redefine_param
    lvs_spice                               no  -replicate_devices
    lvs_spice                               no  -replicate_devices_enhanced
    lvs_spice                               yes -slash_is_space
    lvs_spice                               yes -keep_back_slash
    lvs_spice                               no  -allow_unquoted_strings
    lvs_spice                               no  -allow_inline_parameters
    lvs_spice                               no  -calculate_mos_area
    lvs_spice                               no  -strict_wl
    lvs_spice                               no  -cull_primitive_subcircuits
    lvs_spice                               no  -ignore_option_scale
    lvs_spice                               no  -show_neg_param_warning
    lvs_spice                               no  -scale_x_parameters
    lvs_spice                               yes -strict_subckts_order
    // lvs_spice_option                      
    lvs_reverse_wl                          no
    // lvs_spice_multiplier_name             
                                             
    lvs_compare_case                        no
    lvs_cname                               yes -pin
    lvs_cname                               yes -net
    lvs_cname                               no  -instance
    lvs_non_user_name                       -port "^[0-9]+$"
    lvs_non_user_name                       -net  "^[0-9]+$"
    // lvs_non_user_name                    -instance 
    lvs_out_of_range_exclude_zero           no
    // lvs_group_models                      
    lvs_strict_subtypes                     no
    lvs_exact_subtypes                      no
    lvs_preserve_box_ports                  no
    // lvs_cpoint                            
    // lvs_power_name                        
    // lvs_ground_name                       
    // lvs_cell_list                         
    // lvs_device_type                       
                                             
    lvs_auto_pin_swap                       yes -swap_threshold 4000000
    lvs_swap_non_cpoint_pins                yes
    // lvs_swap_pins                         
    lvs_all_cap_pins_swappable              no
    lvs_builtin_device_pin_swap             yes
    // lvs_join_nets                         
    lvs_ignore_ports                        no
    lvs_compare_port_names                  no
    lvs_find_shorts                         no
    lvs_global_sigs_are_ports               yes
    lvs_discard_pins                        no
    lvs_break_ambig_max                     32
                                             
    lvs_filter                              no  -bipolar
    lvs_filter                              no  -capacitors
    lvs_filter                              no  -diodes
    lvs_filter                              no  -mos
    lvs_filter                              no  -resistors
    // lvs_filter_option                     
    // lvs_filter_device                     
                                             
    lvs_reduction_priority                  -parallel
    lvs_derive_logic                        yes -sram
    lvs_derive_logic                        no  -dram
    lvs_derive_logic                        no  -rom
    // lvs_recognize_gates_tolerance         
    lvs_reduce                              yes -parallel_bipolar
    lvs_reduce                              yes -parallel_caps
    lvs_reduce                              yes -series_caps
    lvs_reduce                              yes -parallel_diodes
    lvs_reduce                              no  -series_diodes
    lvs_reduce                              yes -parallel_resistors
    lvs_reduce                              yes -series_resistors
    // lvs_reduce_device                     
    // lvs_reduce_do_not_merge               
                                             
    lvs_expand_on_device_climbing           no
    lvs_expand_unbalanced_cells             yes
    lvs_expand_cell_on_error                no
                                             
    // lvs_check_all_properties_by_name      
    // lvs_property_map                      
    // lvs_transfer_property                 
    lvs_report_max                          50 -mismatched_net_limit 100
    lvs_warn_max                            50
    lvs_inconsistent_reduction_threshold    1000000
    // lvs_report_opt                        
    lvs_report_units                        yes
    lvs_keep_data                           no
    lvs_keep_source_cells                   no
    lvs_create_match_db                     no
    // lvs_map_device                        
    unit                                    -length u
    unit                                    -resistance ohm
    unit                                    -capacitance pf
    lvs_verilog_bus_map_by_position         no
    lvs_verilog_keep_backslash              no
    lvs_verilog_detect_buses                no
    lvs_do_not_normalize                    no
    input_scale                             1000
    virtual_connect                         no  -colon
    virtual_connect                         yes -semicolon_as_colon
    virtual_connect                         -depth primary
    // virtual_connect                      -name 
    virtual_connect                         no -report
    virtual_connect                         no -incremental
    lvs_preserve_parameterized_cells        no
    lvs_check_color                         no
    // lvs_schematic_color_path              
    // lvs_assign_conflict_layer             
    // lvs_conflict_layer_check             
    lvs_check_color_label                   no
    // lvs_preserve_cells                    
    port                                    -depth -primary
                                             

Effective LVS Rule Values
-------------------------

    lvs_swap_non_cpoint_pins                yes -unbound_pin_threshold 10000
    layout_path                             /home/aa/users/cs199-anb/Desktop/tvip-analog-workspace/inverter_nmos3finger_3u.gds
    layout_format                           GDSII
    layout_primary                          inverter_nmos3finger_3u
    lvs_recognize_gates                     -none


##############################################################################################################
#
#                                               CELL COMPARISON                                               
#
##############################################################################################################

                          ##########################################################
                          #                                                        #
                          #           ------->>> $ MISMATCH $ <<<-------           #
                          #                                                        #
                          # inverter_nmos3finger_3u  <vs>  inverter_nmos3finger_3u #
                          #                                                        #
                          #                CONNECTIVITY MISMATCHES                 #
                          #                     PIN MISMATCHES                     #
                          #                                                        #
                          ##########################################################

+===[inverter_nmos3finger_3u]=================================================================================
|                                                 STATISTICS                                                  
+=============================================================================================================


                   |     Original      |      Reduced      |     Unmatched     
Cell               |   lay   :   sch   |   lay   :   sch   |   lay   :   sch
-------------------+---------+---------+---------+---------+---------+---------
MP [4 pins]        |         :         |         :         |         :         
 MP(PFET_01V8)     |      *3 :       1 |       1 :       1 |       0 :        0
MN [4 pins]        |         :         |         :         |         :         
 MN(NFET_01V8)     |      *3 :       1 |       1 :       1 |       0 :        0
-------------------+---------+---------+---------+---------+---------+---------
Total              |       6 :       2 |       2 :       2 |       0 :        0
===================+=========+=========+=========+=========+=========+=========
Pins               |         :         |      *0 :       4 |       0 :        0
Nets               |         :         |      *4 :       0 |       0 :        0
===================+=========+=========+=========+=========+=========+=========

+===[inverter_nmos3finger_3u]=================================================================================
|                                      DEVICES REMOVED DURING REDUCTION                                       
+=============================================================================================================


                   |     Parallel      |      Series       |     Deleted Nets     
Cell               |   lay   :   sch   |   lay   :   sch   |    lay    :   sch
-------------------+---------+---------+---------+---------+-----------+----------
MP [4 pins]        |         :         |         :         |           :          
 MP(PFET_01V8)     |       2 :       - |       - :       - |         0 :         0
MN [4 pins]        |         :         |         :         |           :          
 MN(NFET_01V8)     |       2 :       - |       - :       - |         0 :         0
-------------------+---------+---------+---------+---------+-----------+----------

+===[inverter_nmos3finger_3u]=================================================================================
|                                       UNMATCHED SCHEMATIC PIN LABELS                                        
+=============================================================================================================

Labeled Schematic Pin     | Matched Layout Pin     | Matched Layout Net
--------------------------+------------------------+-----------------------
VDD                       | ** missing pin **      | 3
VIN                       | ** missing pin **      | 1
VOUT                      | ** missing pin **      | 4
VSS                       | ** missing pin **      | 2


##############################################################################################################
#
#                                                END OF REPORT                                                
#
##############################################################################################################

