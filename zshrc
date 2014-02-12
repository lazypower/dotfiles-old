# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gallifrey"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=15

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby rbenv)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/home/charles/.rbenv/shims:/home/charles/.rbenv/bin:/home/charles/.rbenv/bin:/home/charles/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

eval "$(rbenv init -)"

#often times i setup environment variables that I dont want tracked in my
#script files, as they are context specific. Like my rails dev, not all projects use foreman

if [ -f ~/.zsh_env ]
 then
 	source $HOME/.zsh_env
fi	

#set environment editor to vim
export EDITOR='vi'


#git aliases
alias gs='git status'
alias gc='git commit -m'
alias gll="git log --stat --graph --decorate"

#ruby helpers
alias rs='rails start'
alias rc='rails console'
alias bi='bundle install'
alias be='bundle exec'

#vagrant/chef
alias vp='vagrant provision'

#locomotive
alias bewp='bundle exec wagon push'
alias bews='bundle exec wagon serve'
alias bewg='bundle exec wagon generate'


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
