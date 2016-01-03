# Homebrew, cask is included in hombrew now
ok brew

# git
ok brew git

# sizing images
ok brew imagemagick

# extends git CLI with more commands
ok brew hub

# tool for visualizing git logs
ok brew tig

# screen multi plexer
ok brew tmux

# ssh pairig
ok brew tmate

# tool making http request easy from the command line
ok brew httpie

# needed for copy and paste in tmux
ok brew reattach-to-user-namespace

# node package manager
ok brew npm

# graphing
ok brew graphviz

# lenigen clojure framework
ok brew lenigen

# swig
ok brew swig

# brew versions, gives access to older versions
ok brew versions

# use `brew services list` to see available daemons
# redis key: value storage solution
ok brew redis

# msql
ok brew mysql55
ok brew mysql++

# rabbitmq
ok brew rabbitmq

# mongodb
ok brew mongodb26

# rvm
if [ -z 'rvm' ]; then
  echo "Installing rvm in ~/.rvm"
  cd $HOME && curl -sSL https://get.rvm.io | bash
else
  echo "rvm is already installed"
fi

# Install rubies
falcon='ruby-1.9.3-p327-falcon'

if [ -z "rvm $falcon" ]; then
  echo 'Installing ruby-1.9.3-p327-falcon'
  rvm $falcon
else
  echo "Falcon has landed"
fi
