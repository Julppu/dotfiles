" Pathogen
execute pathogen#infect()
call pathogen#helptags()

" Editor
set number
set relativenumber
set wrap
set showbreak=+++
set linebreak
set showmatch
set visualbell
 
" Search
set hlsearch
set smartcase
set incsearch
set ignorecase

" Indent
set autoindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4

" UI
set hid
set ruler
set magic

" History
set undolevels=1000
set backspace=indent,eol,start

" File stuff
filetype plugin indent on
syntax enable
set encoding=utf8
set ffs=unix,dos,mac

" Moving around
map j gj
map k gk

if has('mouse')
  set mouse=a
endif

" Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Map keys
map <C-n> :NERDTreeToggle<CR>

" syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" vim-javascript
let g:javascript_plugin_jsdoc = 1
