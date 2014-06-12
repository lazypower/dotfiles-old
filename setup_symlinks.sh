#!/bin/bash


if [ -f $HOME/.githelpers ]; then
    rm $HOME/.githelpers
     ln -s $HOME/.dotfiles/githelpers ~/.githelpers
fi

if [ -f $HOME/.gitconfig ]; then
    rm $HOME/.gitconfig
    ln -s $HOME/.dotfiles/gitconfig ~/.gitconfig
fi

if [ -d $HOME/.vim ]; then
    rm -rf $HOME/.vim
    ln -s $HOME/.dotfiles/dotvim ~/.vim
fi

if [ -f $HOME/.vimrc ]; then
    rm $HOME/.vimrc
    ln -s $HOME/.dotfiles/dotvimrc ~/.vimrc
fi

if [ -f $HOME/.bashrc ]; then
    rm $HOME/.bashrc
    ln -s $HOME/.dotfiles/bashrc $HOME/.bashrc
fi

    
if [ -f $HOME/.bash_aliases ]; then
    rm $HOME/.bash_aliases
    ln -s $HOME/.dotfiles/bashaliases $HOME/.bash_aliases
else
    ln -s $HOME/.dotfiles/bashaliases $HOME/.bash_aliases
fi

