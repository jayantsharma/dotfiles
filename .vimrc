set t_Co=256
syntax enable
colors zenburn
set clipboard=unnamed

" pathogen
execute pathogen#infect()

" needed for enabling ruby extensions
set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

set expandtab
" size of a hard tabstop
" set tabstop=8
" size of an indent
set shiftwidth=2
" others
set softtabstop=2

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

" find smartly
set smartcase

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

:set autowrite
:set makeprg=python\ %

" tags file location
set tags+=.tags
