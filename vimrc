" =-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" BASIC OPTIONS
" =-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
set nocompatible          " Make vim behave better than vi-compatible mode
set wildmenu              " Use status line to show auto-complete & more
set cpoptions=aABceFsWZ   " Set various compatible options
set wildignore+=*.png,*.jpg,*.gif,*.ai,*.jpeg,*.psd,*.swp,*.jar,*.zip,*.gem,.DS_Store,log/**,tmp/**,coverage/**,rdoc/**
set list                  " Show whitespace
set noswapfile            " Swap files annoy me.
set colorcolumn=81        " Stick with short lines.
set encoding=utf-8
set t_Co=256 " Use 256 colors

call pathogen#runtime_append_all_bundles() " Load plugins via pathogen
syntax enable " Turn on syntax highlighting

" Set the color scheme
let g:solarized_termcolors=256
colorscheme solarized
set background=dark

" =-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
"KEY BINDINGS
" =-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
let mapleader=',' " set leader to ,

" format paragraphs (72 columns)
map ^^ {!}par w72qrg<CR>

" one-stroke window maximizing
map <C-H> <C-W>h<C-W><BAR>
map <C-L> <C-W>l<C-W><BAR>
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

" quick buffer switching
map <leader>[ :bprevious<CR>
map <leader>] :bnext<CR>

" shortcut to strip trailing whitespace
map <leader>s :s/\s\+$//g<CR>

" retab the document (tabs to spaces)
nmap <silent> <leader><S-t> :retab!<CR>

" Remap the 'kj' keyboard input whilst in Insert mode to switch to Normal mode
" This is a handy way to go back to Normal mode without reaching for the <Esc>
" key and there aren't many english words that have 'k' and 'j' used next to
" each other.
inoremap kj <Esc>

" Don't allow arrows for navigation. Gotta train myself.
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

source $HOME/.vim/plugins
source $HOME/.vim/window
source $HOME/.vim/editing
source $HOME/.vim/filetypes

if has("gui_running")
  source $HOME/.vim/gui
endif

" Use ag instead of ack
let g:ackprg = 'ag --nogroup --nocolor --column'
