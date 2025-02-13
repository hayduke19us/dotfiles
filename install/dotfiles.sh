brew install bork
ok brew bork
ok brew gh

# Set up dotfiles
ok directory $HOME/Code
cd $HOME/Code
ok github hayduke19us/dotfiles

cd $HOME

# Prepare vim
rm -rf .vim
mkdir -p Code/dotfiles/configs/vim/autoload
mkdir -p Code/dotfiles/configs/vim/bundle

# Prepare oh-my-zsh
rm .zshrc

# Symlink config files to HOME
for file in code/dotfiles/configs/*; do
  ok symlink ".$(basename $file)" $file
done

path=$HOME/code/dotfiles/configs/vim/autoload
cd $path
ok github tpope/vim-pathogen

if [ $? -gt 0 ]; then
  if [ -f $path/vim-pathogen/autoload/pathogen.vim ]; then
    echo "Copying pathogen.vim to .vim/autoload" && \
    cp $path/vim-pathogen/autoload/pathogen.vim $path/pathogen.vim
  elif [ -f  $path/pathogen.vim ]; then
    echo "The file has already been moved"
  else
    echo "The file can't be found"
  fi
fi

cd $HOME/code/dotfiles/configs/vim/bundle
ok github tpope/vim-bundler
ok github tpope/vim-fugitive
ok github tpope/vim-surround
ok github tpope/vim-rails
ok github tpope/vim-bundler
ok github vim-ruby/vim-ruby
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
ok github jpalardy/vim-slime --branch=main
ok github rstacruz/sparkup
ok github dense-analysis/ale

# development tools
ok brew tmux
ok brew tig
ok brew gh

# `https://github.com/rbenv/rbenv`, YAY no more rvm
ok brew rbenv
ok brew jenv
# HTTP Helpers
ok cask postman
ok cask insomnia
# System tools
ok brew htop
# Package Managers
ok brew npm
# Visuals
ok brew graphviz
