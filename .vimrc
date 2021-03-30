"Basic Setting  (((
set nu
set encoding=utf-8
set nocompatible
set cindent
set tabstop=4
set mouse=i
set shiftwidth=4
set autoindent

set foldmarker=(((,)))
syntax on
set backspace=2
filetype on
filetype plugin indent on
"  )))

"<Leader>
let mapleader=","

"Plugin  (((
call plug#begin('~/.vim/bundle')
"Plug 'artur-shaik/vim-javacomplete2'
call plug#end()
"  )))

"Vimscript fold setting  (((
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
"  )))

autocmd FileType java setlocal omnifunc=javacomplete#Complete
autocmd FileType java inoremap <buffer> sop System.out.println();<ESC>hi
autocmd FileType java nnoremap <buffer> # I//<ESC> 
"Mappings  (((
inoremap { {<CR>}<ESC>k$i<Right><CR>
inoremap ' ''<ESC>i
"Press Ctrl+d to delete line in insert mode
inoremap <C-d> <ESC>ddi
"Press Ctrl+u to change word case
inoremap <C-u> <ESC>viw~i
nnoremap <C-u> <ESC>viw~

inoremap jk <ESC>

inoremap <CR> <ESC>$i<Right><CR>
"add "
nnoremap <Leader>" viw<ESC>a"<ESC>hbi"<ESC>lel

"  )))
