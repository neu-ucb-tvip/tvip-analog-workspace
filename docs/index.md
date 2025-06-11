---
# https://vitepress.dev/reference/default-theme-home-page
layout: home

hero:
  name: "tvip-analog-workspace"
  
  tagline: "Analog Design Workspace for Sky130 PDK"

features:
  - title: Analog Layout Guide
    details: Best practices for analog layout, including device matching, common-centroid techniques, and parasitic mitigation to ensure robust, circuit design.
    link: /Analog_Layout_Guide
  - title: Power Grids in VLSI
    details: Learn how to design and implement power distribution networks (PDNs) using power straps, rings, and on-chip decoupling to maintain supply integrity for sensitive analog circuits.
    link: /Power_Grids
  - title: Impedance Matching
    details: A guide to impedance matching for voltage, current, and power. Covers two-port models, optimal impedances for various amplifier types, and conjugate matching for RF systems.
    link: /impedance-matching

---

# TVIP Analog Workspace


This is a Cadence Virtuoso workspace for working with the Cadence-provided Skywater 130nm PDK for the Northeastern University (NEU) - UC Berkeley (UCB) test vehicle innovation program for CMOS + X integration.

## Setup Instructions

### General Setup

1. **Configure the setup script:**
   - Rename `setup-template.sh` to `setup.sh`
   - The `.bashrc` file will automatically source `setup.sh` to configure your environment

2. **Populate the required paths in `setup.sh`:**
   - `LM_LICENSE_FILE`: Path to your license file
   - `CDS_HOME`: Path to your Cadence installation
   - `SPECTRE_HOME`: Path to your Spectre installation

### Server-Specific Configuration

#### BWRC Servers

For BWRC servers, use the configuration as shown in the existing `setup.sh`:

```bash
# License file
source /tools/flexlm/flexlm.sh

# Cadence
export CDS_HOME=/tools/cadence/IC/IC231_ISR9

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
