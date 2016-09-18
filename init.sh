#!/bin/sh
set +x
echo "#########################################"
echo "Initialzing from assumed sctrach"
echo "#########################################"

sudo apt update && sudo apt install -yq git

if [ ! -d $HOME/.dotfiles ]
then
   git clone https://github.com/chuckbutler/dotfiles .dotfiles
   cd $HOME/.dotfiles
   git submodule update --init
fi

# Deploy preferences
$HOME/.dotfiles/setup_symlinks.sh

sudo apt install -y \
    vim \
    sysdig \
    htop \
    curl

cd /tmp
wget https://github.com/github/hub/releases/download/v2.2.8/hub-linux-amd64-2.2.8.tgz
tar xvfz hub-linux-*.tgz -C /tmp
sudo /tmp/*/install


