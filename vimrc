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
Plugin 'lifepillar/vim-solarized8'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

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

set guifont=Monaco:h14
set guicursor+=a:blinkon0

" Disable error bells
if has("gui_running")
  autocmd GUIEnter * set vb t_vb=
endif

" move updown by visual (wrapped) lines
noremap j gj
noremap k gk

" Color scheme
autocmd vimenter * ++nested colorscheme solarized8
let g:solarized_old_cursor_style = 1
