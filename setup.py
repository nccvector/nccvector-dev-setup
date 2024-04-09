#!/usr/bin/python3

import subprocess

# Utilities
subprocess.run(['sudo', 'apt', 'install', 'python3-pip', '-y'])
subprocess.run(['sudo', 'apt', 'install', 'gnome-tweaks', '-y'])

# Fonts, Icons, Configs
subprocess.run(['sudo', 'apt', 'install', 'fonts-firacode', '-y'])	# Needed for terminator config
subprocess.call(['sh', 'installConfigs.bash'])


# Terminal multiplexer
subprocess.run(['sudo', 'apt', 'install', 'cargo', '-y'])
subprocess.run(['cargo', 'install', 'alacritty', '-y'])
subprocess.run(['sudo', 'apt', 'install', 'tmux', '-y'])
# TODO: Set it to default using `sudo update-alternatives --config x-terminal-emulator` somehow pipe an <enter> key to it

# Text editors
subprocess.run(['sudo', 'apt', 'install', 'vim', '-y'])
# subprocess.run(['sudo', 'apt', 'install', 'neovim', '-y'])    # TODO: Build from source
subprocess.run(['pip', 'install', 'pynvim', '-y'])

#

# Dev essentials
subprocess.call(['sh', 'installLazygit.bash'])
subprocess.run(['sudo', 'apt', 'install', 'make', '-y'])
subprocess.run(['sudo', 'apt', 'install', 'cmake', '-y'])
subprocess.run(['sudo', 'apt', 'install', 'cmake-curses-gui', '-y'])
subprocess.run(['sudo', 'apt', 'install', 'pybind11-dev', '-y'])

# Tools
subprocess.run(['sudo', 'apt', 'install', 'ripgrep', '-y'])

# IDEs
subprocess.run(['sudo', 'snap', 'install', 'clion', '--classic', '--edge'])
subprocess.run(['sudo', 'snap', 'install', 'pycharm-professional', '--classic', '--edge'])
