#!/usr/bin/env bash

XDG_CONFIG_HOME=~/.config

# Getting current script directory
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

source installEssentials.bash
source configureConfigs.bash
source configureNeovim.bash
source configureTerminator.bash
source configurePythonPip.bash
source configureCustomCommands.bash

