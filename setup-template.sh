#! /usr/bin/bash

# License file.
export LM_LICENSE_FILE=<INSERT LICENSE HERE>

# Location of various tools.
# Cadence.
export CDS_HOME=<INSERT CADENCE PATH HERE>

# If you are running on the BWRC servers
# export CDS_HOME=/tools/cadence/IC/IC231_ISR9. 
# If you are running on the Alcatraz server, 
# export CDS_HOME=/usr/eesww/cadence/IC618. 
# If you are running on the EDA servers, 
# export CDS_HOME=/share/instsww/cadence/IC618.


# Spectre.
# Spectre is needed to run simulations
export SPECTRE_HOME=<INSERT SPECTRE PATH HERE>

# EMX.
# Uncomment ONLY if you have EMX installed and are able to provide the path and license.
#export EMX_HOME=<INSERT EMX PATH HERE>

# If you are on the BWRC servers,
#EMX_HOME=/tools/cadence/EMX/EMX20232

# Coventor MEMS+
# Uncomment ONLY if you have MEMS+ installed and are able to provide the path and license.
#export MEMSPLUS_HOME=<INSERT MEMS+ PATH HERE>
#export MCOSMLD_LICENSE_FILE=<INSERT MEMS+ LICENSE HERE>