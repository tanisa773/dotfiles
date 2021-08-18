" plugin manager
if &compatible
   set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/sinonata/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/sinonata/.vim/dein')
   call dein#begin('/home/sinonata/.vim/dein')

   " Let dein manage dein
   " Required:
   call dein#add('/home/sinonata/.vim/dein/repos/github.com/Shougo/dein.vim')

   " Add or remove your plugins here like this:
   call dein#add('mhinz/vim-janah')
   call dein#add('airblade/vim-gitgutter')
   call dein#add('dense-analysis/ale')
   call dein#add('preservim/nerdtree')
   "call dein#add('Shougo/neosnippet.vim')
   "call dein#add('Shougo/neosnippet-snippets')

   " Required:
   call dein#end()
   call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
   call dein#install()
endif

set number
set expandtab
set list
set listchars=tab:>.,trail:_,eol:↲,extends:>,precedes:<,nbsp:%
set ruler
set title
set tabstop=3
set shiftwidth=3
set backspace=indent,eol,start

set spell
set autoindent
set smartindent
filetype plugin indent on
syntax enable
set clipboard=unnamed,autoselect

" search
set hlsearch
set ignorecase
set incsearch
set smartcase
set wrapscan
set showmatch
set wildmenu
set formatoptions+=mM

set laststatus=2

set t_Co=256
set background=dark
colorscheme janah

" encoding
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

" key mapping
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h

" terminal
set splitbelow
set termwinsize=7x0

" backup files
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp
set viminfo+=n~/.vim/tmp/viminfo.txt

source $VIMRUNTIME/macros/matchit.vim

" NERDTree
autocmd vimenter * NERDTree

" ALE
let g:ale_open_list=1
let g:ale_keep_list_window_open=1
let g:ale_lint_window_size=6
let g:ale_lint_on_save=1
let g:ale_lint_on_text_changed=0

