" ~/.vimrc
call pathogen#infect()

set nocompatible

syntax enable
colorscheme koehler

set sw=2
set sts=2

set smartindent
set nu
set stal=2

set ignorecase
set incsearch

set autoread
set si
set ai
set smarttab

set noswapfile
set nobackup
set nowb

set wildmenu

set cursorline
set ruler
set showcmd

setlocal listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" Keybindings
let mapleader=" "
nmap <Leader><Leader> <c-w><c-w>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>s ddp
map q: :q

" Delete trailing whitespace
func! DeleteTrailingWs()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

" Return to edit position on file open
func! ReturnCursor()
  if line("'\"") > 0 && line("'\"") < line("$") |
    exe "normal! g`\"" |
   endif
endfunc

autocmd BufWrite *.py :call DeleteTrailingWs()
autocmd BufReadPost * :call ReturnCursor()

filetype plugin indent on
