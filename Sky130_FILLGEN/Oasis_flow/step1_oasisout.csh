#!/bin/csh -vf

oasisout \
 -library 	 MYLIBRARY \
 -oasisFile  	 CELLNAME.oas \
 -topCell        CELLNAME \
 -view           layout \
 -logFile        oasisout.log \
 -techLib        sky130_fd_pr_main	\
 -hierDepth      32	\
 -layerMap       ./sky130_fd_pr_main.layermap     \
 -labelDepth     32	\
 -case           Preserve 
  
