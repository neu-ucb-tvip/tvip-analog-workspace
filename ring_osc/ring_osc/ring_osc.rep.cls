##############################################################################################################
#####  
#####                                         PVS LVS COMPARISON
#####  
#####  Version                       :   23.11-s036
#####  NVN Run Start                 :   Sun Aug 10 18:51:37 2025
#####  ERC Summary File              :   ring_osc.sum
#####  Extraction Report File        :   ring_osc.rep
#####  Comparison Report File        :   ring_osc.rep.cls
#####  Top Cell                      :   ring_osc  <vs>  ring_osc
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
#####                                :   [ERROR] Parameter Mismatches
#####                                :   [WARN]  Extraction Warnings (refer to Extraction Report File)
#####                                :   [INFO]  ERC Results: Empty
#####  
#####  Layout Design                 :   ring_osc ring_osc layout
#####  Schematic File                :   /home/aa/users/cs199-anb/Desktop/tvip-analog-workspace/ring_osc/ring_osc/ring_osc.cdl (cdl)
#####  Rules File                    :   /home/aa/users/cs199-anb/Desktop/tvip-analog-workspace/Sky130_LVS/sky130.lvs.pvl
#####  Pin Swap File                 :   ring_osc.rep.cps
#####  
#####  Extraction CPU Time           :   0h 0m 0s - (0s)
#####  Extraction Exec Time          :   0h 0m 1s - (1s)
#####  Extraction Peak Memory Usage  :   24.00MB
#####  NVN CPU Time                  :   0h 0m 0s - (0s)                 
#####  NVN Exec Time                 :   0h 0m 0s - (0s)                 
#####  NVN Peak Memory Usage         :   332.12MB
#####  LVS Total CPU Time            :   0h 0m 0s - (0s)                 
#####  LVS Total Exec Time           :   0h 0m 1s - (1s)                 
#####  LVS Total Peak Memory Usage   :   332.12MB
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
Cells with parameter mismatches              |         1
Cells with mismatched instance subtypes      |         0
Cells that have been blackboxed              |         0


##############################################################################################################
#
#                                             CELL MATCH SUMMARY                                              
#
##############################################################################################################

             |     Initial Pins     |     Compare Pins     |              | 
Cell         |   lay    :    sch    |   lay    :    sch    | Status       | Detail
-------------+----------+-----------+----------+-----------+--------------+-----------
ring_osc     |       *0 :         3 |       *0 :         3 | mismatch     | 


##############################################################################################################
#
#                                                  LVS RULES                                                  
#
##############################################################################################################

Command Line LVS Rule Values
----------------------------

    layout_primary                          ring_osc {-top_cell ring_osc}
    schematic_primary                       ring_osc {-source_top_cell ring_osc}

LVS Rules Given in the Rules File
---------------------------------

    lvs_abort                               -softchk                               no  
    lvs_abort                               -supply_error                          no  
    lvs_abort                               -check_device_for_property_rule        no  
    layout_path                             /home/aa/users/cs199-anb/Desktop/tvip-analog-workspace/ring_osc/ring_osc/ring_osc.gds
    layout_format                           gdsii
    layout_primary                          sky130_fd_sc_ls__bufinv_16
    schematic_path                          /home/aa/users/cs199-anb/Desktop/tvip-analog-workspace/ring_osc/ring_osc/ring_osc.cdl
    schematic_format                        cdl
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
    lvs_ignore_ports                        no  
    lvs_find_shorts                         no  
    lvs_break_ambig_max                     32
    lvs_reduce_split_gates                  no  
    lvs_recognize_gates                     -none
    lvs_reduce                              yes -parallel_mos
    lvs_reduce                              yes -series_mos
    lvs_expand_cell_on_error                no  
    lvs_check_property                      MP L l
    lvs_check_property                      MP W w
    lvs_check_property                      MN L l
    lvs_check_property                      MN W w
    lvs_check_property                      R W W
    lvs_check_property                      R L L
    lvs_check_property                      C L L
    lvs_check_property                      C W W
    lvs_report_file                         ring_osc.rep
    lvs_report_max                          50 -mismatched_net_limit 100 
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
    virtual_connect                         no  -colon
    virtual_connect                         yes -semicolon_as_colon
    virtual_connect                         no  -report
    virtual_connect                         -depth primary
    text_depth                              -primary

Default LVS Rule Values
-----------------------

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
    lvs_cname                               no  -cell
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
    lvs_compare_port_names                  no
    lvs_global_sigs_are_ports               yes
    lvs_discard_pins                        no
    lvs_filter                              no  -bipolar
    lvs_filter                              no  -capacitors
    lvs_filter                              no  -diodes
    lvs_filter                              no  -mos
    lvs_filter                              no  -resistors
    // lvs_filter_option                     
    // lvs_filter_device                     
    // lvs_filter_device_keep_net            
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
    // lvs_check_all_properties_by_name      
    // lvs_property_map                      
    // lvs_transfer_property                 
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
    layout_primary                          ring_osc
    lvs_recognize_gates                     -none
    virtual_connect                         no  -report


##############################################################################################################
#
#                                               CELL COMPARISON                                               
#
##############################################################################################################

                              ##################################################
                              #                                                #
                              #       ------->>> $ MISMATCH $ <<<-------       #
                              #                                                #
                              #            ring_osc  <vs>  ring_osc            #
                              #                                                #
                              #            CONNECTIVITY MISMATCHES             #
                              #              PARAMETER MISMATCHES              #
                              #                                                #
                              ##################################################

+===[ring_osc]================================================================================================
|                                                 STATISTICS                                                  
+=============================================================================================================


                          |     Original      |      Reduced      |     Unmatched     
Cell                      |   lay   :   sch   |   lay   :   sch   |   lay   :   sch
--------------------------+---------+---------+---------+---------+---------+---------
MP [4 pins]               |         :         |         :         |         :         
 MP(PFET_01V8)            |     *30 :      10 |      *8 :      10 |      *1 :        3
MN [4 pins]               |         :         |         :         |         :         
 MN(NFET_01V8)  .  .  .  .|.  . *32 :.  .  12 |.  .  12 :.  .  12 |.  .   4 :.  .  . 4
R [3 pins]                |         :         |         :         |         :         
 R(RES_XHIGH_PO_0P35) .  .|.  . *14 :.  .   1 |.  .   1 :.  .   1 |.  .   0 :.  .  . 0
C [2 pins]                |         :         |         :         |         :         
 C(CAP_MIM_M3__BASE)      |       1 :       1 |       1 :       1 |       0 :        0
--------------------------+---------+---------+---------+---------+---------+---------
Total                     |      77 :      24 |      22 :      24 |       5 :        7
==========================+=========+=========+=========+=========+=========+=========
Pins                      |         :         |      *0 :       3 |       0 :        0
Nets                      |         :         |     *24 :      16 |     *13 :        8
==========================+=========+=========+=========+=========+=========+=========

+===[ring_osc]================================================================================================
|                                      DEVICES REMOVED DURING REDUCTION                                       
+=============================================================================================================


                          |     Parallel      |      Series       |     Deleted Nets     
Cell                      |   lay   :   sch   |   lay   :   sch   |    lay    :   sch
--------------------------+---------+---------+---------+---------+-----------+----------
MP [4 pins]               |         :         |         :         |           :          
 MP(PFET_01V8)            |      22 :       - |       - :       - |         0 :         0
MN [4 pins]               |         :         |         :         |           :          
 MN(NFET_01V8)            |      20 :       - |       - :       - |         0 :         0
R [3 pins]                |         :         |         :         |           :          
 R(RES_XHIGH_PO_0P35)     |      13 :       - |       - :       - |         0 :         0
--------------------------+---------+---------+---------+---------+-----------+----------

+===[ring_osc]================================================================================================
|                                              SHORTS AND OPENS                                               
+=============================================================================================================
                                            
                                            
Layout Net: 1      | Schematic Net: net8
===================+=================(sao 1)
Layout Net: 10     |          OPEN
===================+========================


+===[ring_osc]================================================================================================
|                                               MISMATCHED NETS                                               
+=============================================================================================================
                                                                                          
                                                                                          
Layout Net: 13                                      | Schematic Pin: VSS
====================================================+===============================(mn 1)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+-------------------------------------
S: X108/X111/M2 @(2.300,10.175)  MN(NFET_01V8)      | ** missing connection **
B: X108/X111/M2 @(2.300,10.175)  MN(NFET_01V8)      | ** missing connection **
S: X109/X111/M2 @(7.420,10.175)  MN(NFET_01V8)      | ** missing connection **
B: X109/X111/M2 @(7.420,10.175)  MN(NFET_01V8)  .  .| ** missing connection **
S: X110/X111/M2 @(12.540,10.175)  MN(NFET_01V8)     | ** missing connection **
B: X110/X111/M2 @(12.540,10.175)  MN(NFET_01V8) .  .| ** missing connection **
S: X111/X111/M2 @(17.660,10.175)  MN(NFET_01V8)     | ** missing connection **
B: X111/X111/M2 @(17.660,10.175)  MN(NFET_01V8) .  .| ** missing connection **
S: X112/X111/M2 @(22.780,10.175)  MN(NFET_01V8)     | ** missing connection **
B: X112/X111/M2 @(22.780,10.175)  MN(NFET_01V8) .  .| ** missing connection **
B: X113/M0 @(25.995,1.520)  MN(NFET_01V8)           | ** missing connection **
B: X113/M2 @(27.155,1.520)  MN(NFET_01V8) .  .  .  .| ** missing connection **
B: X113/M3 @(27.735,1.520)  MN(NFET_01V8)           | ** missing connection **
B: X118/M0 @(10.735,3.895)  MN(NFET_01V8) .  .  .  .| ** missing connection **
** missing connection **                            | S: XI26/MNM0  MN(NFET_01V8)
** missing connection **   .  .  .  .  .  .  .  .  .| S: XI25/MNM0  MN(NFET_01V8)
** missing connection **                            | S: MNM11  MN(NFET_01V8)
** missing connection **   .  .  .  .  .  .  .  .  .| S: MNM5  MN(NFET_01V8)
** missing connection **                            | B: MNM5  MN(NFET_01V8)
** missing connection **   .  .  .  .  .  .  .  .  .| S: MNM9  MN(NFET_01V8)
** missing connection **                            | S: MNM0  MN(NFET_01V8)
** missing connection **   .  .  .  .  .  .  .  .  .| B: MNM0  MN(NFET_01V8)
                                                                                          
                                                                                          
Layout Net: X117/X84/2                              | Schematic Pin: VDDA
====================================================+===============================(mn 2)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+-------------------------------------
** missing connection **                            | S: XI25/MPM0  MP(PFET_01V8)
** missing connection **                            | B: XI25/MPM0  MP(PFET_01V8)
** missing connection **                            | S: MPM5  MP(PFET_01V8)
** missing connection **   .  .  .  .  .  .  .  .  .| S: MPM2  MP(PFET_01V8)
** missing connection **                            | B: MPM2  MP(PFET_01V8)
** missing connection **   .  .  .  .  .  .  .  .  .| S: MPM6  MP(PFET_01V8)
** missing connection **                            | S: XI32/MPM0  MP(PFET_01V8)
** missing connection **   .  .  .  .  .  .  .  .  .| B: XI32/MPM0  MP(PFET_01V8)
** missing connection **                            | S: XI34/MPM0  MP(PFET_01V8)
** missing connection **   .  .  .  .  .  .  .  .  .| B: XI34/MPM0  MP(PFET_01V8)
** missing connection **                            | S: XI33/MPM0  MP(PFET_01V8)
** missing connection **   .  .  .  .  .  .  .  .  .| B: XI33/MPM0  MP(PFET_01V8)
** missing connection **                            | S: XI30/MPM0  MP(PFET_01V8)
** missing connection **   .  .  .  .  .  .  .  .  .| B: XI30/MPM0  MP(PFET_01V8)
** missing connection **                            | S: XI31/MPM0  MP(PFET_01V8)
** missing connection **   .  .  .  .  .  .  .  .  .| B: XI31/MPM0  MP(PFET_01V8)
                                                                                          
                                                                                          
Layout Net: 9                                       | Schematic Net: VOSC
====================================================+===============================(mn 3)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+-------------------------------------
G: X113/M0 @(25.995,1.520)  MN(NFET_01V8)           | ** missing connection **
G: X113/M2 @(27.155,1.520)  MN(NFET_01V8)           | ** missing connection **
G: X113/M3 @(27.735,1.520)  MN(NFET_01V8)           | ** missing connection **
G: X114/M2 @(27.155,3.220)  MP(PFET_01V8) .  .  .  .| ** missing connection **
** missing connection **                            | D: XI34/MNM0  MN(NFET_01V8)
** missing connection **   .  .  .  .  .  .  .  .  .| D: XI34/MPM0  MP(PFET_01V8)
** missing connection **                            | G: XI31/MNM0  MN(NFET_01V8)
** missing connection **   .  .  .  .  .  .  .  .  .| G: XI31/MPM0  MP(PFET_01V8)
                                                                                          
                                                                                          
Layout Net: 20                                      | Schematic Net: net7
====================================================+===============================(mn 4)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+-------------------------------------
D: X112/X111/M2 @(22.780,10.175)  MN(NFET_01V8)     | ** missing connection **
S: X112/X112/M1 @(22.200,11.020)  MP(PFET_01V8)     | ** missing connection **
** missing connection **                            | G: MNM5  MN(NFET_01V8)
** missing connection **   .  .  .  .  .  .  .  .  .| G: MPM2  MP(PFET_01V8)
** missing connection **                            | PLUS: RR1  R(RES_XHIGH_PO_0P35)
                                                                                          
                                                                                          
Layout Net: X120/2                                  | Schematic Net: net9
====================================================+===============================(mn 5)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+-------------------------------------
** missing connection **                            | G: XI25/MNM0  MN(NFET_01V8)
** missing connection **                            | G: XI25/MPM0  MP(PFET_01V8)
** missing connection **                            | D: MNM5  MN(NFET_01V8)
** missing connection **   .  .  .  .  .  .  .  .  .| D: MPM2  MP(PFET_01V8)
                                                                                          
                                                                                          
Layout Net: ** missing net **                       | Schematic Net: net3
====================================================+===============================(mn 6)
                                                                                          
                                                                                          
Layout Net: 5                                       | Schematic Net: ** missing net **
====================================================+===============================(mn 7)
                                                                                          
                                                                                          
Layout Net: 8                                       | Schematic Net: ** missing net **
====================================================+===============================(mn 8)
                                                                                          
                                                                                          
Layout Net: ** missing net **                       | Schematic Net: net10
====================================================+===============================(mn 9)
                                                                                          
                                                                                          
Layout Net: ** missing net **                       | Schematic Net: net12
====================================================+==============================(mn 10)
                                                                                          
                                                                                          
Layout Net: X114/1                                  | Schematic Net: ** missing net **
====================================================+==============================(mn 11)
                                                                                          
                                                                                          
Layout Net: X116/X84/2                              | Schematic Net: ** missing net **
====================================================+==============================(mn 12)
                                                                                          
                                                                                          
Layout Net: 15                                      | Schematic Net: ** missing net **
====================================================+==============================(mn 13)
                                                                                          
                                                                                          
Layout Net: 18                                      | Schematic Net: ** missing net **
====================================================+==============================(mn 14)
                                                                                          
                                                                                          
Layout Net: ** missing net **                       | Schematic Net: net15
====================================================+==============================(mn 15)
                                                                                          
                                                                                          
Layout Net: X113/3                                  | Schematic Net: ** missing net **
====================================================+==============================(mn 16)
                                                                                          
                                                                                          
Layout Net: X113/4                                  | Schematic Net: ** missing net **
====================================================+==============================(mn 17)
                                                                                          
                                                                                          
Layout Net: X120/3                                  | Schematic Net: ** missing net **
====================================================+==============================(mn 18)
                                                                                          
                                                                                          
Layout Net: X113/1                                  | Schematic Net: ** missing net **
====================================================+==============================(mn 19)
                                                                                          
                                                                                          
Layout Net: ** missing net **                       | Schematic Net: net14
====================================================+==============================(mn 20)
                                                                                          
                                                                                          
Layout Net: ** missing net **                       | Schematic Net: net11
====================================================+==============================(mn 21)
                                                                                          
                                                                                          
Layout Net: 2                                       | Schematic Net: ** missing net **
====================================================+==============================(mn 22)
                                                                                          
                                                                                          
Layout Net: ** missing net **                       | Schematic Net: net13
====================================================+==============================(mn 23)


+===[ring_osc]================================================================================================
|                                            MISMATCHED INSTANCES                                             
+=============================================================================================================
                                                                                           
                                                                                           
Layout Inst : ** missing inst **                | Schematic Inst : MNM11
Layout Model:                                   | Schematic Model: MN(NFET_01V8)
================================================+====================================(mi 1)
                                                                                           
                                                                                           
Layout Inst : ** missing inst **                | Schematic Inst : MNM5
Layout Model:                                   | Schematic Model: MN(NFET_01V8)
================================================+====================================(mi 2)
                                                                                           
                                                                                           
Layout Inst : ** missing inst **                | Schematic Inst : MNM9
Layout Model:                                   | Schematic Model: MN(NFET_01V8)
================================================+====================================(mi 3)
                                                                                           
                                                                                           
Layout Inst : ** missing inst **                | Schematic Inst : MNM0
Layout Model:                                   | Schematic Model: MN(NFET_01V8)
================================================+====================================(mi 4)
                                                                                           
                                                                                           
Layout Inst : ** missing inst **                | Schematic Inst : MPM5
Layout Model:                                   | Schematic Model: MP(PFET_01V8)
================================================+====================================(mi 5)
                                                                                           
                                                                                           
Layout Inst : ** missing inst **                | Schematic Inst : MPM2
Layout Model:                                   | Schematic Model: MP(PFET_01V8)
================================================+====================================(mi 6)
                                                                                           
                                                                                           
Layout Inst : ** missing inst **                | Schematic Inst : MPM6
Layout Model:                                   | Schematic Model: MP(PFET_01V8)
================================================+====================================(mi 7)
                                                                                           
                                                                                           
Layout Inst : X113/M0 @(25.995,1.520)           | Schematic Inst : ** missing inst **
Layout Model: MN(NFET_01V8)                     | Schematic Model: 
================================================+====================================(mi 8)
                                                                                           
                                                                                           
Layout Inst : X113/M2 @(27.155,1.520)           | Schematic Inst : ** missing inst **
Layout Model: MN(NFET_01V8)                     | Schematic Model: 
================================================+====================================(mi 9)
                                                                                           
                                                                                           
Layout Inst : X113/M3 @(27.735,1.520)           | Schematic Inst : ** missing inst **
Layout Model: MN(NFET_01V8)                     | Schematic Model: 
================================================+===================================(mi 10)
                                                                                           
                                                                                           
Layout Inst : X114/M2 @(27.155,3.220)           | Schematic Inst : ** missing inst **
Layout Model: MP(PFET_01V8)                     | Schematic Model: 
================================================+===================================(mi 11)
                                                                                           
                                                                                           
Layout Inst : X118/M0 @(10.735,3.895)           | Schematic Inst : ** missing inst **
Layout Model: MN(NFET_01V8)                     | Schematic Model: 
================================================+===================================(mi 12)
                                                                                           
                                                                                           
Layout Inst : X117/X85/M2 @(35.560,2.515)       | Schematic Inst : XI26/MNM0
Layout Model: MN(NFET_01V8)                     | Schematic Model: MN(NFET_01V8)
================================================+===================================(mi 13)
Terminal: Layout Net                            | Terminal: Schematic Net
------------------------------------------------+------------------------------------------
S: 2                                            | ** missing net **
** 13 **                                        | S: VSS
                                                | 
D: 22   .  .  .  .  .  .  .  .  .  .  .  .  .  .| D: VOUT
G: 21                                           | G: net2
B: 13   .  .  .  .  .  .  .  .  .  .  .  .  .  .| B: VSS
                                                                                           
                                                                                           
Layout Inst : X116/X85/M2 @(31.685,2.515)       | Schematic Inst : XI25/MNM0
Layout Model: MN(NFET_01V8)                     | Schematic Model: MN(NFET_01V8)
================================================+===================================(mi 14)
Terminal: Layout Net                            | Terminal: Schematic Net
------------------------------------------------+------------------------------------------
G: 5                                            | ** missing net **
** X120/2 **                                    | G: net9
                                                | 
S: 2 .  .  .  .  .  .  .  .  .  .  .  .  .  .  .| ** missing net **
** 13 **                                        | S: VSS
                                                | 
D: 21                                           | D: net2
B: 13   .  .  .  .  .  .  .  .  .  .  .  .  .  .| B: VSS
                                                                                           
                                                                                           
Layout Inst : X116/X84/M1 @(31.105,3.545)       | Schematic Inst : XI25/MPM0
Layout Model: MP(PFET_01V8)                     | Schematic Model: MP(PFET_01V8)
================================================+===================================(mi 15)
Terminal: Layout Net                            | Terminal: Schematic Net
------------------------------------------------+------------------------------------------
B: X116/X84/2                                   | ** missing net **
** X117/X84/2 **                                | B: VDDA
                                                | 
G: 5 .  .  .  .  .  .  .  .  .  .  .  .  .  .  .| ** missing net **
** X120/2 **                                    | G: net9
                                                | 
D: X116/X84/2                                   | ** missing net **
** X117/X84/2 ** .  .  .  .  .  .  .  .  .  .  .| S: VDDA
                                                | 
S: 21   .  .  .  .  .  .  .  .  .  .  .  .  .  .| D: net2
                                                                                           
                                                                                           
Layout Inst : X119/M0 @(11.960,3.895)           | Schematic Inst : MNM1
Layout Model: MN(NFET_01V8)                     | Schematic Model: MN(NFET_01V8)
================================================+===================================(mi 16)
Terminal: Layout Net                            | Terminal: Schematic Net
------------------------------------------------+------------------------------------------
G: 10                                           | ** missing net **
** missing net **                               | G: net8
                                                | 
S: 2 .  .  .  .  .  .  .  .  .  .  .  .  .  .  .| ** missing net **
** missing net **                               | D: net8
                                                | 
D: 13                                           | S: VSS
B: 13   .  .  .  .  .  .  .  .  .  .  .  .  .  .| B: VSS
                                                                                           
                                                                                           
Layout Inst : X110/X111/M2 @(12.540,10.175)     | Schematic Inst : XI32/MNM0
Layout Model: MN(NFET_01V8)                     | Schematic Model: MN(NFET_01V8)
================================================+===================================(mi 17)
Terminal: Layout Net                            | Terminal: Schematic Net
------------------------------------------------+------------------------------------------
B: 13                                           | ** VSS **
** missing net **                               | B: net3
                                                | 
S: 13   .  .  .  .  .  .  .  .  .  .  .  .  .  .| ** VSS **
** missing net **                               | S: net3
                                                | 
D: 17                                           | D: net5
G: 16   .  .  .  .  .  .  .  .  .  .  .  .  .  .| G: net4
                                                                                           
                                                                                           
Layout Inst : X110/X112/M2 @(12.540,11.020)     | Schematic Inst : XI32/MPM0
Layout Model: MP(PFET_01V8)                     | Schematic Model: MP(PFET_01V8)
================================================+===================================(mi 18)
Terminal: Layout Net                            | Terminal: Schematic Net
------------------------------------------------+------------------------------------------
B: 18                                           | ** missing net **
** X117/X84/2 **                                | B: VDDA
                                                | 
S: 18   .  .  .  .  .  .  .  .  .  .  .  .  .  .| ** missing net **
** X117/X84/2 **                                | S: VDDA
                                                | 
D: 17                                           | D: net5
G: 16   .  .  .  .  .  .  .  .  .  .  .  .  .  .| G: net4
                                                                                           
                                                                                           
Layout Inst : X112/X111/M2 @(22.780,10.175)     | Schematic Inst : XI34/MNM0
Layout Model: MN(NFET_01V8)                     | Schematic Model: MN(NFET_01V8)
================================================+===================================(mi 19)
Terminal: Layout Net                            | Terminal: Schematic Net
------------------------------------------------+------------------------------------------
B: 13                                           | ** VSS **
** missing net **                               | B: net3
                                                | 
D: 20   .  .  .  .  .  .  .  .  .  .  .  .  .  .| ** net7 **
S: 13                                           | ** VSS **
** 9 ** .  .  .  .  .  .  .  .  .  .  .  .  .  .| D: VOSC
** missing net **                               | S: net3
                                                | 
G: 19                                           | G: net6
                                                                                           
                                                                                           
Layout Inst : X112/X112/M1 @(22.200,11.020)     | Schematic Inst : XI34/MPM0
Layout Model: MP(PFET_01V8)                     | Schematic Model: MP(PFET_01V8)
================================================+===================================(mi 20)
Terminal: Layout Net                            | Terminal: Schematic Net
------------------------------------------------+------------------------------------------
B: 8                                            | ** missing net **
** X117/X84/2 **                                | B: VDDA
                                                | 
D: 8 .  .  .  .  .  .  .  .  .  .  .  .  .  .  .| ** missing net **
S: 20                                           | ** net7 **
** 9 ** .  .  .  .  .  .  .  .  .  .  .  .  .  .| D: VOSC
** X117/X84/2 **                                | S: VDDA
                                                | 
G: 19                                           | G: net6
                                                                                           
                                                                                           
Layout Inst : X111/X111/M2 @(17.660,10.175)     | Schematic Inst : XI33/MNM0
Layout Model: MN(NFET_01V8)                     | Schematic Model: MN(NFET_01V8)
================================================+===================================(mi 21)
Terminal: Layout Net                            | Terminal: Schematic Net
------------------------------------------------+------------------------------------------
B: 13                                           | ** VSS **
** missing net **                               | B: net3
                                                | 
S: 13   .  .  .  .  .  .  .  .  .  .  .  .  .  .| ** VSS **
** missing net **                               | S: net3
                                                | 
D: 19                                           | D: net6
G: 17   .  .  .  .  .  .  .  .  .  .  .  .  .  .| G: net5
                                                                                           
                                                                                           
Layout Inst : X111/X112/M1 @(17.080,11.020)     | Schematic Inst : XI33/MPM0
Layout Model: MP(PFET_01V8)                     | Schematic Model: MP(PFET_01V8)
================================================+===================================(mi 22)
Terminal: Layout Net                            | Terminal: Schematic Net
------------------------------------------------+------------------------------------------
B: 8                                            | ** missing net **
** X117/X84/2 **                                | B: VDDA
                                                | 
D: 8 .  .  .  .  .  .  .  .  .  .  .  .  .  .  .| ** missing net **
** X117/X84/2 **                                | S: VDDA
                                                | 
S: 19                                           | D: net6
G: 17   .  .  .  .  .  .  .  .  .  .  .  .  .  .| G: net5
                                                                                           
                                                                                           
Layout Inst : X109/X111/M2 @(7.420,10.175)      | Schematic Inst : XI30/MNM0
Layout Model: MN(NFET_01V8)                     | Schematic Model: MN(NFET_01V8)
================================================+===================================(mi 23)
Terminal: Layout Net                            | Terminal: Schematic Net
------------------------------------------------+------------------------------------------
B: 13                                           | ** VSS **
** missing net **                               | B: net3
                                                | 
S: 13   .  .  .  .  .  .  .  .  .  .  .  .  .  .| ** VSS **
** missing net **                               | S: net3
                                                | 
D: 16                                           | D: net4
G: 14   .  .  .  .  .  .  .  .  .  .  .  .  .  .| G: net1
                                                                                           
                                                                                           
Layout Inst : X109/X112/M2 @(7.420,11.020)      | Schematic Inst : XI30/MPM0
Layout Model: MP(PFET_01V8)                     | Schematic Model: MP(PFET_01V8)
================================================+===================================(mi 24)
Terminal: Layout Net                            | Terminal: Schematic Net
------------------------------------------------+------------------------------------------
B: 8                                            | ** missing net **
** X117/X84/2 **                                | B: VDDA
                                                | 
S: 8 .  .  .  .  .  .  .  .  .  .  .  .  .  .  .| ** missing net **
** X117/X84/2 **                                | S: VDDA
                                                | 
D: 16                                           | D: net4
G: 14   .  .  .  .  .  .  .  .  .  .  .  .  .  .| G: net1
                                                                                           
                                                                                           
Layout Inst : X108/X111/M2 @(2.300,10.175)      | Schematic Inst : XI31/MNM0
Layout Model: MN(NFET_01V8)                     | Schematic Model: MN(NFET_01V8)
================================================+===================================(mi 25)
Terminal: Layout Net                            | Terminal: Schematic Net
------------------------------------------------+------------------------------------------
B: 13                                           | ** VSS **
** missing net **                               | B: net3
                                                | 
G: 15   .  .  .  .  .  .  .  .  .  .  .  .  .  .| ** missing net **
** 9 **                                         | G: VOSC
                                                | 
S: 13                                           | ** VSS **
** missing net **   .  .  .  .  .  .  .  .  .  .| S: net3
                                                | 
D: 14   .  .  .  .  .  .  .  .  .  .  .  .  .  .| D: net1
                                                                                           
                                                                                           
Layout Inst : X108/X112/M2 @(2.300,11.020)      | Schematic Inst : XI31/MPM0
Layout Model: MP(PFET_01V8)                     | Schematic Model: MP(PFET_01V8)
================================================+===================================(mi 26)
Terminal: Layout Net                            | Terminal: Schematic Net
------------------------------------------------+------------------------------------------
B: 8                                            | ** missing net **
** X117/X84/2 **                                | B: VDDA
                                                | 
G: 15   .  .  .  .  .  .  .  .  .  .  .  .  .  .| ** missing net **
** 9 **                                         | G: VOSC
                                                | 
S: 8                                            | ** missing net **
** X117/X84/2 ** .  .  .  .  .  .  .  .  .  .  .| S: VDDA
                                                | 
D: 14   .  .  .  .  .  .  .  .  .  .  .  .  .  .| D: net1
                                                                                           
                                                                                           
Layout Inst : X120/R0 @(26.315,11.850)          | Schematic Inst : RR1
Layout Model: R(RES_XHIGH_PO_0P35)              | Schematic Model: R(RES_XHIGH_PO_0P35)
================================================+===================================(mi 27)
Terminal: Layout Net                            | Terminal: Schematic Net
------------------------------------------------+------------------------------------------
MINUS: X120/3                                   | ** missing net **
** 20 **                                        | PLUS: net7
                                                | 
PLUS: X120/2  .  .  .  .  .  .  .  .  .  .  .  .| MINUS: net9
B: 13                                           | B: VSS


+===[ring_osc]================================================================================================
|                                       UNMATCHED SCHEMATIC PIN LABELS                                        
+=============================================================================================================

Labeled Schematic Pin     | Matched Layout Pin     | Matched Layout Net
--------------------------+------------------------+-----------------------
VDDA                      | ** missing pin **      | X117/X84/2
VOUT                      | ** missing pin **      | 22
VSS                       | ** missing pin **      | 13


+===[ring_osc]================================================================================================
|                                       MISMATCHED INSTANCE PARAMETERS                                        
+=============================================================================================================


                 Merged Instance Detail                  
=========+=====================+=========================
         |                     | 
Side     | Master Instance     | Instances
---------+---------------------+-----------------(midl 2)
Lay      | <X120/R0>           | X120/R0
         |                     +-------------------------
         |                     | X120/R1
         |                     +-------------------------
         |                     | X120/R2
         |                     +-------------------------
         |                     | X120/R3
         |                     +-------------------------
         |                     | X120/R4
         |                     +-------------------------
         |                     | X120/R5
         |                     +-------------------------
         |                     | X120/R6
         |                     +-------------------------
         |                     | X120/R7
         |                     +-------------------------
         |                     | X120/R8
         |                     +-------------------------
         |                     | X120/R9
         |                     +-------------------------
         |                     | X120/R10
         |                     +-------------------------
         |                     | X120/R11
         |                     +-------------------------
         |                     | X120/R12
         |                     +-------------------------
         |                     | X120/R13


Layout Instance                                     | Schematic Instance           |     Parameter Error     
----------------------------------------------------+------------------------------+------------------(mip 1)
X115/C0 @(13.250,3.085) C(CAP_MIM_M3__BASE)         | CC0 C(CAP_MIM_M3__BASE)      |                         
W: 11 u                                             | w: 7.5 u                     | 46.6667%                
L: 4 u                                              | l: 5.7 u                     | 29.8246%                
----------------------------------------------------+------------------------------+------------------(mip 2)
<X120/R0> @(26.315,11.850) R(RES_XHIGH_PO_0P35)     | RR1 R(RES_XHIGH_PO_0P35)     |                         
l: 6 u                                              | l: 84 u                      | 92.8571%                
w: 4.9 u                                            | w: 0.35 u                    | 1300%                   


##############################################################################################################
#
#                                                END OF REPORT                                                
#
##############################################################################################################

