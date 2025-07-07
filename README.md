# TVIP Analog Workspace

[![Static Badge](https://img.shields.io/badge/%F0%9F%93%93-Documentation-blue?labelColor=white)](https://neu-ucb-tvip.github.io/tvip-analog-workspace/)

This is a Cadence Virtuoso workspace for working with the Cadence-provided Skywater 130nm PDK for the Northeastern University (NEU) - UC Berkeley (UCB) test vehicle innovation program for CMOS + X integration.

## Setup Instructions

### General Setup

1. **Configure the setup script:**
   - Rename `setup-template.sh` to `setup.sh`
   - The `.bashrc` file will automatically source `setup.sh` to configure your environment

2. **Populate the required paths in `setup.sh`:**
   - `LM_LICENSE_FILE`: Path to your license file
   - `CDS_HOME`: Path to your Cadence installation
   - `PVS_HOME`: Path to your PVS installation
   - `SPECTRE_HOME`: Path to your Spectre installation

### Server-Specific Configuration

#### BWRC Servers

For BWRC servers, use the configuration as shown in the existing `setup.sh`:

```bash
# License file
source /tools/flexlm/flexlm.sh

# Cadence
export CDS_HOME=/tools/cadence/IC/IC231_ISR9

# PVS
export PVS_HOME=/tools/cadence/PVS/PVS231

# Spectre
export SPECTRE_HOME=/tools/cadence/SPECTRE/SPECTRE231
```

#### EDA Servers

For EDA servers, configure your `setup.sh` as follows:

```bash
# License file
export LM_LICENSE_FILE=<POPULATE ME>

# Cadence
export CDS_HOME=/share/instsww/cadence/IC618

# PVS
export PVS_HOME=<POPULATE ME>

# Spectre
export SPECTRE_HOME=<POPULATE ME>
```

#### Alcatraz Server

For Alcatraz server, use:
```bash
# License file
export LM_LICENSE_FILE=<POPULATE ME>

# Cadence
export CDS_HOME=/usr/eesww/cadence/IC618

# PVS
export PVS_HOME=<POPULATE ME>

# Spectre
export SPECTRE_HOME=<POPULATE ME>
```

### Optional Tools

The workspace also supports optional tools that can be uncommented and configured if available:

- **EMX**: Uncomment and set `EMX_HOME` if you have EMX installed

## Usage

After setup, simply source the `.bashrc` file or start a new shell session. The environment will be automatically configured for Cadence Virtuoso development with the Skywater 130nm PDK.

```bash
source .bashrc
```

Then start Virtuoso:
```bash
virtuoso &
```

## Licensing

The custom designs in this repository are licensed under the BSD 3-Clause license, as specified in the `LICENSE` file.

The Sky130 PDK resources provided by Cadence are covered by the Cadence Public License Version 1.0. A copy of this license, `LICENSE.cadence`, is included in the directories containing these resources.
