#!/bin/sh
set +e
echo "#########################################"
echo "Initialzing from assumed sctrach"
echo "#########################################"

sudo apt update && sudo apt install -yq git 2>&1 /dev/null

if [ ! -d $HOME/.dotfiles ]
then
   git clone https://github.com/chuckbutler/dotfiles .dotfiles
   cd $HOME/.dotfiles
   git submodule update --init
fi

# Deploy preferences
$HOME/.dotfiles/setup_symlinks.sh

sudo apt install -qq -y \
    vim \
    sysdig \
    htop \
    curl \
    tree

cd /tmp
wget https://github.com/github/hub/releases/download/v2.2.8/hub-linux-amd64-2.2.8.tgz
tar xvfz hub-linux-*.tgz -C /tmp
sudo /tmp/*/install


# Make the dotfiles repo less annoying
cd $HOME/.dotfiles
git remote rm origin
git remote add origin git@github.com/chuckbutler/dotfiles.git
