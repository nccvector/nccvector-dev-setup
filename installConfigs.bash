
#!/usr/bin/env bash

XDG_CONFIG_HOME=~/.config

# Getting current script directory
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Cloning
if [ ! -d "$SCRIPT_DIR/configs" ]; then
	# Cloning neovim
	git clone https://github.com/nccvector/configs.git
fi

# Pull the latest configs
cd configs
git pull
cd ..

# Copying the configs to XDG_CONFIG_HOME

yes | cp -rf $SCRIPT_DIR/configs/* $XDG_CONFIG_HOME/
