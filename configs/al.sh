# Set git command to use hub
alias git='nocorrect hub'

# alias for tmuxinator
alias mux="tmuxinator"

# alias for bork cli.sh and gem file
alias cli_run="cd && bork satisfy code/dotfiles/install/cli.sh"
alias cli_check="cd && bork status code/dotfiles/install/cli.sh"
alias gem_run="cd && bork satisfy code/dotfiles/install/gem.sh"
alias gem_check="cd && bork status code/dotfiles/install/gem.sh"

# papertrail alias
alias pt="papertrail"

# color papertrail alias
alias colorpaper="papertrail -f -d 5 | colortail -g papertrail"

# ack color alias
alias ack="ack --color-filename=Green"

# source .zshrc
alias reload=". ~/.zshrc && echo 'reloaded .zshrc'"

# git graph
alias graph='git log --graph --oneline --decorate'
alias graph_parents="git log --graph --oneline --decorate --first-parent"
alias rev_parents="git rev-list --max-parents=1 --reverse $1"
alias rev_parents_shollow="git rev-list --max-parents=1 --reverse --max-count=10 $1"
alias my_ip="curl ipecho.net/plain ; echo"