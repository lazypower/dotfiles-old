#!/bin/bash

#This script should be executed after cloning the git repository to setup your rvm/ruby installation
# after that, chain execute the setup ruby script

echo "Installing ruby dependencies"
sudo apt-get -y install build-essential openssl libreadline6 libreadline6-dev zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev autoconf libc6-dev libncurses5-dev automake libtool bison curl git-core

if [ -d $HOME/.rvm ]
 then
  rubyver="`ruby --version | awk '{print $2}'`"
  echo "Found ruby $rubyver and rvm. Skipping"
else
  curl -L https://get.rvm.io | bash -s stable --ruby
  source ~/.rvm/scripts/rvm
  rvm install 1.9.3
fi

echo "Installing core utilities"
sudo apt-get -y install vim tmux zsh
echo "Installing ruby bootstrap dependencies"
gem install colorize

