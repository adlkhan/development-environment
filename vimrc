call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'

call plug#end()

"" Shortcuts start
let mapleader = ","
"" Shorcuts end

" Write swp files to /tmp instead of current directory
set number
set swapfile
set dir=/tmp

set splitright
set splitbelow

" Two space tabs
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" move updown by visual (wrapped) lines
noremap j gj
noremap k gk

" Don't wrap long lines
set nowrap           " do not automatically wrap on load
set formatoptions-=t " do not automatically wrap text when typing

" No error bells
set noerrorbells visualbell t_vb=
