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
sudo apt-get install gcc g++

# Python 3 already bundled with linux shell
# Install pip
#
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py

# Install Jupyter Notebook Locally
#
pip3 install --user jupyter

# Install other libraries here
#
pip3 install --user numpy
pip3 install --user pandas

popd
