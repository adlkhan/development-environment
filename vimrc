set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"My bundles
Plugin 'ctrlpvim/ctrlp.vim' " Respects .gitignore
Plugin 'tpope/vim-surround'
Plugin 'vim-ruby/vim-ruby'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-sensible'
Plugin 'preservim/nerdtree'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'pbrisbin/vim-mkdir'
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Make CtrlP use ag for listing the files. Way faster and no useless files.
" Also, does not cache
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor --ignore .git -g ""'
let g:ctrlp_use_caching = 0

" Write swp files to /tmp instead of current directory
set swapfile
set dir=/tmp

set number
set splitright
set splitbelow

" Two space tabs
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Easy access to the start of the line
nmap 0 ^

" Set leader before usage
let mapleader = "\<Space>"

map <leader>p "+p
map <leader>y "+y
nnoremap <leader>n :NERDTreeToggle<CR>
nmap <leader>s :mksession! session.vim<cr>
nmap <leader>l :source session.vim<cr>

"" Gui options start
set guifont=Menlo:h15
set guicursor+=a:blinkon0

" Disable error bells
if has("gui_running")
  autocmd GUIEnter * set vb t_vb=
endif

set guioptions+=k "Keep toolbar always visible so window is not resized
"" Gui options end

" move updown by visual (wrapped) lines
noremap j gj
noremap k gk

" Color scheme
syntax enable
set background=dark
colorscheme solarized


" Don't wrap long lines
" set nowrap           " do not automatically wrap on load
" set formatoptions-=t " do not automatically wrap text when typing

set guitablabel=%M%f "Show relative path of files in tab so files with same name are not confused
