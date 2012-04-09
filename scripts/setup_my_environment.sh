#!/bin/bash

#This script should be executed after cloning the git repository to setup your local environment.
# or you can just ignore it and resume business as usual.


#create a variable to store the current directory the script is executing from
#DIRECTORY=$(dirname $0)
#the above was making some assumptions - so if i'm going to do that I may as well
# stick with the assumptions of my own heirarchy. this will live in $HOME/repository/dotfiles


cd $HOME

#I like having a bin and a lib folder in my $HOME
    mkdir -p ~/bin
    mkdir -p ~/lib



#I tend to keep my dotfiles in lib/dotfiles
if [ ! -d "~/lib/dotfiles" ]; then
    echo "Creating dotfiles symlink" 
    ln -s $HOME/repository/dotfiles/dotfiles $HOME/lib/dotfiles
fi

# ##############################################
# Link files to their respective places
# ##############################################

#Check bashrc first
if [ -f ${MYBASHRC:=$HOME'/.bashrc'} ]; then      
    echo "Moving existing ~/.bashrc to ~/bashrc-old"  
    mv ~/.bashrc ~/bashrc.old
fi

#ln -s $HOME/lib/dotfiles/bashrc ~/.bashrc 
ln -s $HOME/lib/dotfiles/dot-vimrc ~/.vimrc
ln -s $HOME/lib/dotfiles/dot-vim ~/.vim
ln -s $HOME/lib/dotfiles/dot-screenrc ~/.screenrc

ln -s $HOME/lib/dotfiles/oh-my-zsh ~/.oh-my-zsh
ln -s $HOME/lib/dotfiles/zshdotrc ~/.zshrc
chsh -s /usr/bin/zsh


