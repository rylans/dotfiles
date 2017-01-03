" ~/.vimrc
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
set laststatus=2

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

set showcmd

setlocal listchars=eol:¶,tab:>-,trail:␦,extends:>,precedes:<

"""""""""
" Plugins
"""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline_theme = 'powerlineish'
let g:airline_detect_modified=1

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
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>d :r! date "+\%Y-\%m-\%d \%H:\%M"<CR>
nnoremap <leader>o :r! echo "TODO:"<CR> A
nnoremap <leader>r :s/TODO/DONE/gI<CR>
nnoremap <leader>t :s/DONE/TODO/gI<CR>
nnoremap q: :q<cr>

inoremap jk <esc>
inoremap kj <esc>

nnoremap <leader>f <c-f>zz
nnoremap <leader>b <c-b>zz

" Surround word in double quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" cin( to change inside next pair of parens
onoremap in( :<c-u>normal! f(vi(<cr>

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
