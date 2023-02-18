#!/usr/bin/env bash

XDG_CONFIG_HOME=~/.config

# Moving into .config and attaching config remote
cd $XDG_CONFIG_HOME

git init
git remote add origin git@github.com:nccvector/configs.git
git checkout -f main
