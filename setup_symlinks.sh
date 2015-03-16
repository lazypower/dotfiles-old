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

if [ -f $HOME/.muttrc ]; then
    rm $HOME/.muttrc
fi
ln -s $HOME/.dotfiles/dotmuttrc $HOME/.muttrc

if [ ! -f $HOME/.gpgrc ]; then
    ln -s $HOME/.dotfiles/gpgrc $HOME/.gpgrc
fi

if [ -f $HOME/.bash_aliases ]; then
    rm $HOME/.bash_aliases
    ln -s $HOME/.dotfiles/bashaliases $HOME/.bash_aliases
else
    ln -s $HOME/.dotfiles/bashaliases $HOME/.bash_aliases
fi

if [[ "$1" = "mail" ]]; then
    echo "Setting up mail"
    if [ -d $HOME/.imapfilter ]; then
        mkdir -p $HOME/.imapfilter
        ln -s $HOME/.dotfiles/imapfilter $HOME/.imapfilter/config.lua
    fi
fi
