#!/bin/bash


if [ -f $HOME/.githelpers ]; then
    rm $HOME/.githelpers
fi
ln -s $HOME/.dotfiles/git/githelpers ~/.githelpers

if [ -f $HOME/.gitconfig ]; then
    rm $HOME/.gitconfig
fi
ln -s $HOME/.dotfiles/git/gitconfig ~/.gitconfig

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

if [[ "$1" = "mail" ]]; then
    echo "Setting up mail"
    if [ -d $HOME/.imapfilter ]; then
        mkdir -p $HOME/.imapfilter
        ln -s $HOME/.dotfiles/mail/imapfilter $HOME/.imapfilter/config.lua
    fi

    if [ -f $HOME/.muttrc ]; then
        rm $HOME/.muttrc
    fi
    ln -s $HOME/.dotfiles/mail/dotmuttrc $HOME/.muttrc

    if [ ! -f $HOME/.gpgrc ]; then
        ln -s $HOME/.dotfiles/mail/gpgrc $HOME/.gpgrc
    fi
fi

if [ ! -d $HOME/bin ]; then
  mkdir -p $HOME/bin
fi

ln -s $HOME/.dotfiles/bin/backup $HOME/bin/backup

