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
