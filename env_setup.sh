#!/usr/bin/env bash

# Make sure to run the following script with
# Linux terminal shell. Do not run with chronos shell.
# Enable Linux terminal shell in settings.
# Make sure that you are logged in to get this option
# No need to go into developer mode.
#

# Push to the root linux directory.
pushd ~

# Install our necessarily c++ binary
sudo apt-get update
sudo apt-get install gcc g++ python3-dev

# Python 3 already bundled with linux shell
# Install pip
#
sudo curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python3 get-pip.py
rm -rf get-pip.py

# Reset bash
#
source ~/.bashrc

# Install Jupyter Notebook Locally
#
pip3 install --user jupyter

# Install other libraries here
#
pip3 install --user numpy

# Update PATH
#
if [[ ":$PATH:" == *":$HOME/.local/bin:"* ]]; then
	echo ""
	echo "Path already set for bin."
else
	echo ""
	echo 'export PATH=$PATH:$HOME/.local/bin' >> ~/.bashrc
	echo "PLEASE RELOAD TERMINAL"
fi

popd
