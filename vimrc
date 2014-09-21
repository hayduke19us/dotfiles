" =-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" BASIC OPTIONS
" =-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
set nocompatible          " Make vim behave better than vi-compatible mode
set wildmenu              " Use status line to show auto-complete & more
set cpoptions=aABceFsWZ   " Set various compatible options
set wildignore+=*.png,*.jpg,*.gif,*.ai,*.jpeg,*.psd,*.swp,*.jar,*.zip,*.gem,.DS_Store,log/**,tmp/**,coverage/**,rdoc/**
set list                  " Show whitespace
set noswapfile            " Swap files annoy me.
set textwidth=80
set colorcolumn=+1        " Stick with short lines.
set encoding=utf-8
set t_Co=256              " Use 256 colors
set splitright            " Make new vsplits open to the right of current buffer
set splitbelow            " Make new horiz splits open below current buffer

call pathogen#infect() " Load plugins via pathogen
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

" <leader>e to edit files
nmap <leader>e :e **/
cmap <leader>e **/

" keep selections when indenting in visual mode
xnoremap > >gv
xnoremap < <gv

" Split a line with CTRL-J
nnoremap <NL> i<CR><ESC>

" Remap the 'kj' keyboard input whilst in Insert mode to switch to Normal mode
" This is a handy way to go back to Normal mode without reaching for the <Esc>
" key and there aren't many english words that have 'k' and 'j' used next to
" each other.
inoremap kj <Esc>

if has("gui_running")
  source $HOME/.vim/gui
endif

" Use ag instead of ack
let g:ackprg = 'ag --nogroup --nocolor --column'

" PLUGIN OPTIONS
"NetRW
let g:netrw_liststyle=3

"EDITING OPTIONS
set number      " line numbers
set showbreak=+ " display a + at the beginning of a wrapped line
set showmatch   " flash the matching bracket on inserting a )]} etc
 
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
 
set softtabstop=2 " most of the time, we want a softtabstop of 2
set tabstop=2     " show tabs with 2 spaces
set shiftwidth=2  " shift by 2 spaces when using >> and <<, etc
set expandtab     " no tabs
 
" Using autocmd for this allows it to be reset every time you open a
" file, which keeps overrides from being persistent
autocmd FileType * set softtabstop=2 shiftwidth=2 tabstop=2 expandtab
 
set list                     " show whitespace
set listchars=tab:»·,trail:· " show tabs and trailing spaces
set listchars+=extends:»     " show a » when a line goes off the right edge of
set listchars+=precedes:«    " show a « when a line goes off the left edge of
 
"FOLDING OPTIONS
set foldenable       " enable folding
set foldlevelstart=0 " start with all folds collapsed when switching buffers
set foldcolumn=2     " adds two columns of fold status on the left-hand side of
 
"SEARCH OPTIONS
set ignorecase " makes search patterns case-insensitive by default
set smartcase  " overrides ignorecase when the pattern contains upper-case
set incsearch
 
"SWAP & UNDO OPTIONS
" global swapfile directory
set directory=~/.vim/swapfiles,/var/tmp,/tmp,.
" persistent undo
if has("persistent_undo")
  set undofile
  set undodir=~/.vim/undofiles,/var/tmp,/tmp,.
endif

"FILETYPE OPTIONS
" use filetype plugins to determine indent settings
filetype plugin indent on
 
" ruby and yaml indentation
autocmd FileType ruby,rdoc,cucumber,yaml,html,eruby set softtabstop=2 shiftwidth=2 tabstop=2
autocmd BufNewFile,BufRead Gemfile     setfiletype ruby
autocmd BufNewFile,BufRead config.ru   setfiletype ruby
autocmd BufNewFile,BufRead *.jst       setfiletype eruby.html
 
" markdown files
autocmd BufRead,BufNewFile *.mkd,*.markdown,*.md,*.mdown,*.mkdn set softtabstop=4 shiftwidth=4 tabstop=4
autocmd BufRead,BufNewFile *.mkd,*.markdown,*.md,*.mdown,*.mkdn set noexpandtab
 
" set filetype on config files
autocmd BufNewFile,BufRead ~/.vim/*  setfiletype vim
 
set ruler          " shows cursor position in the lower right
set showcmd        " shows incomplete command to the left of the ruler
set winminheight=0 " allow windows to be 0 lines tall
set winminwidth=0  " allow windows to be 0 lines wide
set laststatus=2   " always show statusline
 
" set up statusline, ends up looking like this:
"   [1] window.vimrc [Preview] [vim,+]            @ L22 C51 (66%)(14)
set statusline=
set statusline+=%n:\                      " buffer number
set statusline+=%f                        " filename
set statusline+=%<                        " truncate here if necessary
set statusline+=%10w                      " displays [Preview] if it is
set statusline+=\ [                       " fix spacing, open bracket
set statusline+=%{strlen(&ft)?&ft:'none'} " filetype
set statusline+=%M                        " + if modified, - if r/o
set statusline+=]                         " close bracket
set statusline+=%=                        " right-align remainder
set statusline+=@\ L%l\ C%c\ (%P)(%L)\    " position in file and number of lines

"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
"Extras, for testing out possible canidates
"=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=--=-=-=-=-=-=-=--=-=-=-=-=-=-=-

"Strip trailing whitespace
"function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
"  let _s=@/
"  let l = line(".")
"  let c = col(".")
  " Do the business:
"  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
"  let @/=_s
"  call cursor(l, c)
"endfunction
"autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

