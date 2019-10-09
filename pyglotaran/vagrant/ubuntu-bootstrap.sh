#!/usr/bin/env bash

set -e

sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install git-core -y
git config --global color.ui true

# Install deps
sudo apt-get install python3 libfreetype6-dev libpng-dev python-setuptools python3-dev -y
sudo apt-get install curl -y
sudo apt-get install tmux -y
sudo apt-get install build-essential gcc make g++ -y

cd ~
wget https://bootstrap.pypa.io/get-pip.py
sudo -H python3 get-pip.py
python3 --version
pip3 --version

# work dependency
sudo -H  pip3 install jupyterlab

# Intall minimal latex environment to allow print to pdf in jupyter
sudo apt-get install --no-install-recommends texlive-latex-base texlive-latex-extra texlive-fonts-recommended cm-super -y
sudo apt-get install --no-install-recommends pandoc -y

# clean-up
sudo setfacl -m user:1000:r-x /usr/local/bin
rm ~/get-pip.py

