#!/bin/csh -vf

oasisin \
 -library 	 	CELLNAME_wFill \
 -oasisFile  	 	CELLNAME.wFill.oas \
 -topCell        	CELLNAME \
 -view           	layout \
 -logFile        	oasisin.log \
 -attachTechFileOfLib  	sky130_fd_pr_main	\
 -hierDepth      	32	\
 -maxCellsInTargetLib	99999 \
 -layerMap       	./sky130_fd_pr_main.layermap    \
 -case           	Preserve 	\

