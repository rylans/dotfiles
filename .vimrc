﻿" ~/.vimrc
scriptencoding utf-8
set encoding=utf-8

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

setlocal listchars=eol:¶,tab:>-,trail:␦,extends:>,precedes:<

"""""""""""""""
" Keybindings
"""""""""""""""
let mapleader=" "
nnoremap <Leader><Leader> <c-w><c-w>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <leader>l :set list!<CR>
nnoremap <Leader>z ddp
nnoremap <Leader>v V}
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap q: :q<cr>

inoremap jk <esc>
inoremap kj <esc>
inoremap <esc> <nop>

nnoremap <leader>f <c-f>
nnoremap <leader>b <c-b>

" Surround word in double quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel


"""""""""""""""
" Abbreviations
"""""""""""""""

" Python keyword abbreviations
iabbrev clas class
iabbrev clss class
iabbrev calss class

iabbrev dfe def
iabbrev df def

iabbrev impot import
iabbrev impor import
iabbrev iport import
iabbrev imprt import

iabbrev frm from
iabbrev frmo from

iabbrev raies raise
iabbrev rais raise
iabbrev rase raise

iabbrev ni in
iabbrev fi if
iabbrev sa as

iabbrev elfi elif
iabbrev elf elif

iabbrev eles else
iabbrev els else
iabbrev esle else

iabbrev retur return
iabbrev retun return
iabbrev retunr return
iabbrev retrun return
iabbrev retrn return

iabbrev supre super
iabbrev supe super
iabbrev supr super

iabbrev tyr try
iabbrev tr try
iabbrev ty try

iabbrev nt not
iabbrev nto not

iabbrev wit with
iabbrev wiht with
iabbrev wth with

iabbrev fro for
iabbrev fr for

iabbrev true True
iabbrev false False

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

augroup ft_python
  autocmd!
  autocmd FileType python nnoremap <buffer> <leader>/ I#<esc>
  autocmd FileType python :iabbrev <buffer> iff if:<left>
  autocmd FileType python :iabbrev <buffer> deff def (self):<c-c>Bi<bs>
augroup END

filetype plugin indent on
