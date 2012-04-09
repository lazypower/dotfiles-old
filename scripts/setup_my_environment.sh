#!/bin/bash

#This script should be executed after cloning the git repository to setup your local environment.
# or you can just ignore it and resume business as usual.


#create a variable to store the current directory the script is executing from
DIRECTORY=$(dirname $0)


#bootstrap sanity check
echo "Executing script from : " $DIR
cd $DIRECTORY


#I like having a bin and a lib folder in my $HOME
    mkdir -p ~/bin
    mkdir -p ~/lib



#I tend to keep my dotfiles in lib/dotfiles
if [ ! -d "~/lib/dotfiles" ]; then
    echo "Creating dotfiles symlink" 
    cd $DIRECTORY
    ln -s ~/lib/dotfiles ${DIRECTORY}/../dotfiles 
fi

# ##############################################
# Link files to their respective places
# ##############################################

#Check bashrc first
if [ -e "~/.bashrc" ]; then
    mv ~/.bashrc ~/bashrc.old
fi

ln -s ~/.bashrc ${DIRECTORY}/../dotfiles/bashrc

