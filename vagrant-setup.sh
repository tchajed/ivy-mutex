#!/usr/bin/env bash

set -eu

# automatically restart services during apt install/upgrade
export NEEDRESTART_MODE=a

sudo apt update -y
sudo apt upgrade -y
sudo apt install -y python2 python-pip
sudo apt install -y g++ cmake git pkg-config libssl-dev libreadline-dev
sudo apt autoremove -y

if [ ! -d ~/ivy ]; then
  git clone --recurse-submodules https://github.com/kenmcmil/ivy ~/ivy
fi
cd ~/ivy
if [ ! -f submodules/z3/build/libz3.so ]; then
  sed -i "s|'python |'python2  |" build_submodules.py
  python2 build_submodules.py
fi
python2 setup.py install --user
