" Load plugins via pathogen
call pathogen#runtime_append_all_bundles()
syntax enable
set background=dark
set encoding=utf-8
colorscheme solarized

" Remap the "kj" keyboard input whilst in Insert mode to switch to Normal mode 
" This is a handy way to go back to Normal mode without reaching for the <Esc>
" key and there aren't many english words that have "k" and "j" used next to
" each other.
inoremap kj <Esc>

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

source $HOME/.vim/basic
source $HOME/.vim/bindings
source $HOME/.vim/plugins
source $HOME/.vim/window
source $HOME/.vim/editing
source $HOME/.vim/filetypes

if has("gui_running")
  source $HOME/.vim/gui
endif

let g:ackprg = 'ag --nogroup --nocolor --column'
