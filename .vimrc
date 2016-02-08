set t_Co=256
syntax enable
colors zenburn
set clipboard=unnamed

" needed for enabling ruby extensions
set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" size of a hard tabstop
set tabstop=4
" size of an indent
set shiftwidth=4
" others
set softtabstop=4

" use system ruby, against which vim was compiled, else omni-completion
" doesn't work
" Rvm use system

" rectify paste indenting
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" set mapleader
let mapleader = ";"
" ctags shortcut
nnoremap <Leader>c :! ctags -R .<CR>
" tagbar shortcut
nnoremap <Leader>t <F9> :TagbarToggle<CR>
" CtrlP shortcut
nnoremap <Leader>. <F9> :CtrlP<CR>

" wildmenu tab completion
set wildmenu

" quick buffer nav
" map gn :bn<cr>
" map gp :bp<cr>
" map gd :bd<cr> 

" modify path for rails projects
set path+=app/,models/,config/

" code folding by syntax
set foldmethod=indent
