#!/bin/bash -i

# Go to customcommands directory
cd configs/customcommands

NCCVECTOR_PWD=$(pwd)
echo $NCCVECTOR_PWD

# Source customcommands if the following variable does not exist
# And add this variable to the ~/.bashrc 
if [ ! -v NCCVECTOR_CUSTOM_COMMANDS ] ; then
  echo "Sourcing customcommands"
  echo "source $NCCVECTOR_PWD/*" >> ~/.bashrc
  echo "NCCVECTOR_CUSTOM_COMMANDS=true" >> ~/.bashrc
  source ~/.bashrc
fi
