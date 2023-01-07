set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"My bundles
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-sensible'
Plugin 'preservim/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

set number
set splitright
set splitbelow
set noswapfile

" Indentation
set autoindent
set ts=2 sw=2 sts=2 et

" Easy access to the start of the line
nmap 0 ^

" Set leader before usage
let mapleader = "\<Space>"

nmap <leader>vr :vsp $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>
map <leader>p "+p
map <leader>y "+y
nnoremap <leader>n :NERDTreeToggle<CR>
