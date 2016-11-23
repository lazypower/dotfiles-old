#!/bin/bash

set +ex

sudo apt-get install -y dconf-cli

if [ ! -d gnome-terminal-colors-solarized ]; then
  git submodule update --init --all
fi


cd gnome-terminal-colors-solarized
./install.sh
./set_dark.sh

