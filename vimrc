call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim' " Respects .gitignore
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'pbrisbin/vim-mkdir'
Plug 'easymotion/vim-easymotion'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'altercation/vim-colors-solarized'

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'MaxMEllon/vim-jsx-pretty'

" Ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

" Plugins go before this line
call plug#end()

"" Make CtrlP use ag for listing the files. Way faster and no useless files.
" Also, does not cache
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor --ignore-dir={.git,node_modules} -g ""' 
let g:ctrlp_use_caching = 0

"" Write swp files to /tmp instead of current directory
set swapfile
set dir=/tmp

set number
set splitright
set splitbelow
set showtabline=2 " Always show the tabline

"" Two space tabs
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

"" Easy access to the start of the line
nmap 0 ^

"" Set leader before usage
let mapleader = ","

map <leader>p "+p
map <leader>y "+y
nnoremap <leader>n :NERDTreeToggle<CR>
nmap <leader>s :mksession! session.vim<cr>
nmap <leader>l :source session.vim<cr>
" Source Vim configuration file and install plugins
nnoremap <silent><leader>1 :source ~/.vimrc \| :PlugInstall<CR>

"" move updown by visual (wrapped) lines
noremap j gj
noremap k gk

"" Don't wrap long lines
set nowrap           " do not automatically wrap on load
set formatoptions-=t " do not automatically wrap text when typing

"" Color options
colorscheme solarized

"" Gui options
set guifont=Menlo:h15
"" End Gui options

"" No error bells
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

"" NERDTree Options
let NERDTreeShowHidden=1

" Nerdtree open by default
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
let NERDTreeQuitOnOpen = 0
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
"" NERDTree Options End

" Ignore some files
let NERDTreeIgnore = ['\.git$', '\.gitattributes']
"" NERDTree Options End

"" Markdown Options
let g:markdown_fenced_languages = ['html', 'js=javascript', 'ruby', 'ts=typescript']
"" Markdown Options End

"" CoC Options
let g:coc_global_extensions = ['coc-tsserver']
set updatetime=300

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
"" CoC Options End
