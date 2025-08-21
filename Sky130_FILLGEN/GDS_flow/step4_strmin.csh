#!/bin/csh -vf

strmin \
 -library 	 	CELLNAME_wFill_lib \
 -strmFile  	 	CELLNAME.wFill.gds.gz \
 -topCell        	CELLNAME \
 -view           	layout \
 -logFile        	strmin.log \
 -attachTechFileOfLib  	sky130_fd_pr_main	\
 -hierDepth      	32	\
 -layerMap       	./sky130_fd_pr_main.layermap    \
 -case           	Preserve 	\

