#!/bin/csh -vf

pegasusDesignReview -batch dbmerge pdr_CTL_aref CELLNAME.fill_aref.gds.gz

pegasusDesignReview -batch dbmerge pdr_CTL CELLNAME.wFill.gds.gz

