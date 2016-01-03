# Sets up dotfiles

destination $HOME
ok directory $HOME/code
ok github hayduke19us/dotfiles

ok directory $HOME/code/dotfiles
ok directory $HOME/code/dotfiles/configs
ok directory $HOME/code/dotfiles/configs/.vim
ok directory $HOME/code/dotfiles/configs/.vim/bundle
ok directory $HOME/code/dotfiles/configs/.vim/autoload
ok directory $HOME/code/dotfiles/configs/.vim/colors

path=$HOME/code/dotfiles/configs/.vim/autoload
destination $path
ok github tpope/vim-pathogen
mv $path/vim-pathogen/autoload/pathogen.vim pathogen.vim

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
ok github jpalardy/vim-slime
ok github rstacruz/sparkup

