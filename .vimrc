syntax enable
set smartindent
set nu

set autoread
set ignorecase
set si
set ai
set smarttab

setlocal listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" Delete trailing whitespace for Python
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
