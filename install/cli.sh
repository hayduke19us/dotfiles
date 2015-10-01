ok brew
ok brew brew-cask

ok brew git
# sizing images
ok brew imagemagick
# extends git CLI with more commands
ok brew hub
# tool for visualizing git logs
ok brew tig
# ruby version management
ok brew rbenv
# screen multi plexer
ok brew tmux
# tool making http request easy from the command line
ok brew httpie
# needed for copy and paste in tmux
ok brew reattach-to-user-namespace
ok brew ruby-build
# node package manager
ok brew npm
# open database connection tool, needed for ruby-obcd
ok brew unixodbc
# CLI tool for heroku
ok cask heroku-toolbelt

ok directory $HOME/code
ok directory $HOME/code/dotfiles
ok directory $HOME/code/dotfiles/configs
ok directory $HOME/code/dotfiles/configs/.vim
ok directory $HOME/code/dotfiles/configs/.vim/bundle
ok directory $HOME/code/dotfiles/configs/.vim/autoload

destination $HOME/code/dotfiles/configs/.vim/autoload
ok github tpope/vim-pathogen

destination $HOME/code/dotfiles/configs/.vim/bundle
ok github tpope/vim-bundler
ok github tpope/vim-fugitive
ok github tpope/vim-surround
ok github tpope/vim-rails
ok github tpope/vim-bundler
ok github mattn/gist-vim
ok github kien/ctrlp.vim
ok github scrooloose/syntastic
ok github altercation/vim-colors-solarized
ok github skammer/vim-css-color
ok github reedes/vim-colors-pencil
ok github reedes/vim-pencil
ok github mattn/webapi-vim
ok github chrisbra/csv.vim
ok github Raimondi/delimitMate
ok github majutsushi/tagbar

ok brew ctags
ok brew graphviz
