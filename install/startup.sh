#!/bin/bash

echo "`date`"
echo `whoami`

# update zsh
cd $HOME/.oh-my-zsh/tools
. upgrade.sh

# update vim plugins
. $HOME/dotfiles/install/pathogen.sh

# update brew
brew update

# update rvm gems
gem update --system
gem update

