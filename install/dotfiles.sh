# Sets up dotfiles
ok directory $HOME/code
destination $HOME/code
ok github hayduke19us/dotfiles

destination $HOME
for file in $HOME/code/dotfiles/configs/*; do
  ok symlink ".$(basename $file)" $file
done

path=$HOME/code/dotfiles/configs/vim/autoload
destination $path
ok github tpope/vim-pathogen

if [ $? -gt 0 ]; then
  if [ -f $path/vim-pathogen/autoload/pathogen.vim ]; then
    echo "Copying pathogen.vim to .vim/autoload" && \
    cp $path/vim-pathogen/autoload/pathogen.vim $path/pathogen.vim
  elseif [ -f  $path/pathogen.vim ]; then
    echo "The file has already been moved"
  else
    echo "The file can't be found"
  fi
fi

destination $HOME/code/dotfiles/configs/vim/bundle
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

