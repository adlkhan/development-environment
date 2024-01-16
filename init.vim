call plug#begin(stdpath('data') . '/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'easymotion/vim-easymotion'
call plug#end()

let mapleader = ','

" move updown by visual (wrapped) lines
if exists('g:vscode')
  nmap j gj
  nmap k gk
else
  noremap j gj
  noremap k gk
endif

