#!/bin/csh -vf

strmout \
 -library 	 MYLIBRARY \
 -strmFile  	 CELLNAME.gds.gz \
 -topCell        CELLNAME \
 -view           layout \
 -logFile        strmout.log \
 -techLib        sky130_fd_pr_main	\
 -hierDepth      32	\
 -layerMap       ./sky130_fd_pr_main.layermap     \
 -labelDepth     32	\
 -case           Preserve 
  
