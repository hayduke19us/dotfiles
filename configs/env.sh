# Editor
export EDITOR=/usr/local/bin/vim

# Set xcode, homebrew & mysql paths
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/Applications/Postgres.app:$HOME/bin:$HOME/bork/bin:$PATH

# Add postgres app to path
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

# Added by the Heroku Toolbelt
export PATH=/usr/local/heroku/bin:$PATH

# rbenv
# use Homebrew's directories instead of ~/.rbenv
# export RBENV_ROOT=/usr/local/var/rbenv

# enable shims and autocompletion for .rbenv
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# dont allow tmux to rename my windows
export DISABLE_AUTO_TITLE="true"





