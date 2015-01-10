#!/bin/bash


if [ -f $HOME/.githelpers ]; then
    rm $HOME/.githelpers
fi
ln -s $HOME/.dotfiles/githelpers ~/.githelpers

if [ -f $HOME/.gitconfig ]; then
    rm $HOME/.gitconfig
fi
ln -s $HOME/.dotfiles/gitconfig ~/.gitconfig

if [ -d $HOME/.vim ]; then
    rm -rf $HOME/.vim
fi
ln -s $HOME/.dotfiles/dotvim ~/.vim

if [ -f $HOME/.vimrc ]; then
    rm $HOME/.vimrc
fi
ln -s $HOME/.dotfiles/dotvimrc ~/.vimrc

if [ -f $HOME/.bashrc ]; then
    rm $HOME/.bashrc
fi
ln -s $HOME/.dotfiles/bashrc $HOME/.bashrc

    
if [ -f $HOME/.bash_aliases ]; then
    rm $HOME/.bash_aliases
    ln -s $HOME/.dotfiles/bashaliases $HOME/.bash_aliases
else
    ln -s $HOME/.dotfiles/bashaliases $HOME/.bash_aliases
fi

