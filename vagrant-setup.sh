#!/usr/bin/env bash

set -eu

# automatically restart services during apt install/upgrade
export NEEDRESTART_MODE=a

sudo apt update -y
sudo apt upgrade -y
sudo apt install -y python2 python-pip
sudo apt install -y g++ cmake git pkg-config libssl-dev libreadline-dev

if [ ! -d ~/ivy ]; then
  git clone https://github.com/kenmcmil/ivy ~/ivy
fi
cd ~/ivy
python2 setup.py develop --user

