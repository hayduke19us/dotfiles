# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

export EDITOR=/usr/local/bin/vim

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="xiong-chiamiov"

# Set tmux in 256 color mode (make vim look better)
alias tmux='TERM=xterm-256color tmux'

alias git='nocorrect hub'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rails git git-extras ruby web-search)


# Set xcode, homebrew & mysql paths
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/Applications/Postgres.app:$HOME/bin:$HOME/code/bork/bin:$PATH
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

source $ZSH/oh-my-zsh.sh

# rbenv
# use Homebrew's directories instead of ~/.rbenv
export RBENV_ROOT=/usr/local/var/rbenv

# enable shims and autocompletion for .rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Added by the Heroku Toolbelt
export PATH=/usr/local/heroku/bin:$PATH

# alias for tmuxinator
alias mux="tmuxinator"

# alias for bork cli.sh file
alias cli_run="cd && bork satisfy code/dotfiles/install/cli.sh"
alias gem_run="cd && bork satisfy code/dotfiles/install/gem.sh"
alias gem_check="cd && bork satisfy code/dotfiles/install/gem.sh"
alias cli_check="cd && bork status code/dotfiles/install/cli.sh"

# dont allow tmux to rename my windows
export DISABLE_AUTO_TITLE="true"

# papertrail alias
alias pt="papertrail"

# color papertrail alias
alias colorpaper="papertrail -f -d 5 | colortail -g papertrail"
