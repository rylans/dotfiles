" ~/.vimrc

syntax enable
colorscheme koehler

set smartindent
set nu
set stal=2

set autoread
set ignorecase
set si
set ai
set smarttab

set noswapfile
set nobackup
set nowb

set wildmenu
set nocompatible

set cursorline
set ruler
set showcmd

setlocal listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

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
