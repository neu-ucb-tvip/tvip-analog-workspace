#! /usr/bin/env bash
# source /opt/env_rhel.sh # source for amd-2 support
export WORK_DIR=$(pwd)

source ./setup.sh


# Workaround for libssl for IC6.1.8 ISR20.
# See https://support.cadence.com/apex/ArticleAttachmentPortal?id=a1O0V000009Mo6IUAS&pageName=ArticleContent.
export LD_PRELOAD=/usr/lib64/libssl.so:/usr/lib64/libcrypto.so:/usr/lib64/libGL.so.1
export LD_LIBRARY_PATH=/usr/lib64

# PATH setup.
export PATH=${CDS_HOME}/tools/plot/bin:${PATH}
export PATH=${CDS_HOME}/tools/dfII/bin:${PATH}
export PATH=${CDS_HOME}/tools/bin:${PATH}
export PATH=${SPECTRE_HOME}/bin:${PATH}
export PATH=${EMX_HOME}/bin:${PATH}

# Virtuoso options
export SPECTRE_DEFAULTS=-E
export CDS_Netlisting_Mode="Analog"
export CDS_AUTO_64BIT=ALL
