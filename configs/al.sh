# Set git command to use hub
alias git='nocorrect hub'

# Git shortcuts

# Careful, this will delete the GAR release branches
alias prune_merged='for file in $(gb --merged); do gb -d $file; done'
alias prune_no_remote='git fetch -p && git branch -vv | awk /'/: gone]/{print $1}/' | xargs git branch -D'
alias cherry-pick="git cherry-pick $1"

# Tmux short cuts
alias tmux-kill="tmux kill-session -t $1"

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

# git
alias graph='git log --graph --oneline --decorate'
alias graph_parents="git log --graph --oneline --decorate --first-parent"
alias rev_parents="git rev-list --max-parents=1 --reverse $1"
alias rev_parents_shollow="git rev-list --max-parents=1 --reverse --max-count=10 $1"
alias my_ip="curl ipecho.net/plain ; echo"
alias m_files="git ls-files -o --exclude-standard"

# Not working
alias only_commits="git log $1..HEAD | grep \"commit .*\" | grep -o \"[^commit].*\""

# Hotel Beds content x-Signature
alias hb_x_sig="echo -n 'ka7pg8s3577ckkpwnjzdbr2eMXybDMQWyJ$(date +%s)' | shasum -a 256"

# Pairing
alias vim_pair="vim -u ~/.vimrc-pair $1"

# ruby-version and ruby-gemset symbolic link
alias set_ruby="ln -s .ruby-version.example .ruby-version && ln -s .ruby-gemset.example .ruby-gemset"

# Pretty Printing
alias ppjson='python -m json.tool'

# Make a Pathogen plugin
# potion/
#     README
#     LICENSE
#     doc/
#         potion.txt
#     ftdetect/
#         potion.vim
#     ftplugin/
#         potion.vim
#     syntax/
#         potion.vim
#     ... etc ...


# kubectl 
alias kube-dash="open http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/"

alias date-all="date +%Y%m%d%H%M%S"
alias make-changelog="touch price-sheet-story-entries-$(date-all).md"
