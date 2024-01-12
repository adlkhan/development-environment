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
Plug 'lifepillar/vim-solarized8'
Plug 'airblade/vim-gitgutter'
Plug 'honza/vim-snippets'

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

"" Two space tabs
set autoindent
set expandtab " Use spaces instead of tab characters
set tabstop=2
set shiftwidth=2
set softtabstop=2

set mouse=a " Enable mouse for all modes
set linebreak " Break words to next line while wrapping instead of parts
set signcolumn=yes
set updatetime=100


"" Easy access to the start of the line
nmap 0 ^

"" Set leader before usage
let mapleader = ","

noremap <leader>p "+p
noremap <leader>y "+y
nnoremap <leader>s :mksession! session.vim<cr>
nnoremap <leader>l :source session.vim<cr>
" toggle background light/dark
nnoremap <expr><leader>1 &background == 'light' ? ':set bg=dark<cr>' : ':set bg=light<cr>'
nnoremap <leader>2 :source ~/.vimrc <CR>
nnoremap <leader>a ggVG

"" move updown by visual (wrapped) lines
noremap j gj
noremap k gk

"" Color options
set termguicolors
autocmd vimenter * ++nested colorscheme solarized8

"" Gui options
set guifont=Menlo:h15
"" End Gui options

"" No error bells
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

"" NERDTree Options
nnoremap <silent><leader>b :NERDTreeToggle<CR>
nnoremap <silent><leader>n :NERDTreeFocus<CR>
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen = 0
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Nerdtree open by default
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"" NERDTree Options End

" Ignore some files
let NERDTreeIgnore = ['\.git$', '\.gitattributes']
"" NERDTree Options End

"" Markdown Options
let markdown_recommended_style = 0 " Use two spaces for indent
let g:markdown_fenced_languages = ['html', 'js=javascript', 'ruby', 'ts=typescript', 'jsx=javascript', 'scss=sass', 'css']
"" Markdown Options End

"" CoC Options
let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-snippets']

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)


" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Use tab for trigger completion with characters ahead and navigate
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
"" CoC Options End

