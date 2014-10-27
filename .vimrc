syntax enable
set smartindent
set nu

setlocal listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" Delete trailing whitespace for Python
func! DeleteTrailingWs()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWs()

filetype plugin indent on
