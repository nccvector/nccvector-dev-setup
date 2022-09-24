#!/usr/bin/env bash

XDG_CONFIG_HOME=~/.config

# Getting current script directory
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Install essentials
sudo apt install git cmake make -y
sudo apt install fonts-firacode -y	# Needed for terminator config
sudo apt install brightnessctl -y # Needed for qtile brightness widget

# Configure the configs
source configureConfigs.bash

source configureNeovim.bash

source configureTerminator.bash

source configurePythonPip.bash

source configureQtile.bash

source configurePicom.bash
