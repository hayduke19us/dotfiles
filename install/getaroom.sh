# Homebrew, cask is included in hombrew now
ok brew

# git
ok brew git

# sizing images
ok brew imagemagick

# node package manager
ok brew npm

# lenigen clojure framework
ok brew leiningen

# swig
ok brew swig

# use `brew services list` to see available daemons
# redis key: value storage solution
ok brew redis

# msql
ok brew mysql@5.5
ok brew mysql++

# rabbitmq
ok brew rabbitmq

# mongodb
ok brew mongodb32

# chefdk
ok cask chefdk

# dev-server
# Initial Setup:
# sudo puma-dev -setup
# * Configuring /etc/resolver to be owned by mattsullivan
# * Changing '/etc/resolver/dev' to be owned by mattsullivan
# puma-dev install
# * Adding certification to login keychain as trusted
# ! There is probably a dialog open that you must type your password into
# * Certificates setup, ready for https operations!
# * Use '/usr/local/Cellar/puma-dev/0.10/bin/puma-dev' as the location of puma-dev
# * Installed puma-dev on ports: http 80, https 443
ok brew puma/puma/puma-dev

# rvm
if [ -z 'rvm' ]; then
  echo "Installing rvm in ~/.rvm"
  cd $HOME && curl -sSL https://get.rvm.io | bash
else
  echo "rvm is already installed"
fi

# Install rubies
# last_ruby='ruby-1.9.3-p327-falcon'
current_ruby=ruby-2.1.9

if [ -z "rvm $current_ruby" ]; then
  echo "Installing $current_ruby"
  rvm $falcon
else
  echo "Current ruby $current_ruby is already installed"
fi
